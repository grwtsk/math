import GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofEvidence.GraphHodgePortCore

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.PortPureTypeSystem
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
