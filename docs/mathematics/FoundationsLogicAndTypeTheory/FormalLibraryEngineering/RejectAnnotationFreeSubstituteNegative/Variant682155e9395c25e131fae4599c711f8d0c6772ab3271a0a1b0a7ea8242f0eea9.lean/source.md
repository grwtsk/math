# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectAnnotationFreeSubstituteNegative.Variant682155e9395c25e131fae4599c711f8d0c6772ab3271a0a1b0a7ea8242f0eea9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84cfd2ba38a35f88916530d92ad010b9958e06b6` · SHA-256 `682155e9395c25e131fae4599c711f8d0c6772ab3271a0a1b0a7ea8242f0eea9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
-- Hostile mutation: the weaker relation is offered as the full annotated Beta relation.
example : AnnotationFreeBeta lambdaWithRedex lambdaReduced :=
  Beta.lam_domain (Beta.head (.sort ()) (.var 0) (.sort ()))
```
