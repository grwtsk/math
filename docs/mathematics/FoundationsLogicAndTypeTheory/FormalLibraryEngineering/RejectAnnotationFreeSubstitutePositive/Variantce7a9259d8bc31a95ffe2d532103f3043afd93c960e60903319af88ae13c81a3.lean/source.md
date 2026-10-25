# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectAnnotationFreeSubstitutePositive.Variantce7a9259d8bc31a95ffe2d532103f3043afd93c960e60903319af88ae13c81a3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a29e5614f6fe4a0ca3c077b1961d56bc583a6caf` · SHA-256 `ce7a9259d8bc31a95ffe2d532103f3043afd93c960e60903319af88ae13c81a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PortPureTypeSystem
-- The deliberately weaker substitute omits lambda/product annotation reduction.
inductive AnnotationFreeBeta : Expr Unit → Expr Unit → Prop
  | head (A b a) : AnnotationFreeBeta (.app (.lam A b) a) (b.instantiate a)
  | app_left {f f' a} : AnnotationFreeBeta f f' → AnnotationFreeBeta (.app f a) (.app f' a)
  | app_right {f a a'} : AnnotationFreeBeta a a' → AnnotationFreeBeta (.app f a) (.app f a')
  | lam_body {A b b'} : AnnotationFreeBeta b b' → AnnotationFreeBeta (.lam A b) (.lam A b')
  | pi_body {A B B'} : AnnotationFreeBeta B B' → AnnotationFreeBeta (.pi A B) (.pi A B')
def annotationRedex : Expr Unit := .app (.lam (.sort ()) (.var 0)) (.sort ())
def lambdaWithRedex : Expr Unit := .lam annotationRedex (.var 0)
def lambdaReduced : Expr Unit := .lam (.sort ()) (.var 0)
def productWithRedex : Expr Unit := .pi annotationRedex (.var 0)
def productReduced : Expr Unit := .pi (.sort ()) (.var 0)
example : Beta lambdaWithRedex lambdaReduced :=
  Beta.lam_domain (Beta.head (.sort ()) (.var 0) (.sort ()))
example : Beta productWithRedex productReduced :=
  Beta.pi_domain (Beta.head (.sort ()) (.var 0) (.sort ()))
-- Both actual annotation reductions are absent from the substitute relation.
example : ¬ AnnotationFreeBeta lambdaWithRedex lambdaReduced := by
  intro h
  cases h
example : ¬ AnnotationFreeBeta productWithRedex productReduced := by
  intro h
  cases h
```
