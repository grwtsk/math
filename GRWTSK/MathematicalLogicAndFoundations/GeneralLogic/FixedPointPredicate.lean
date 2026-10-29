/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import Init

/-! # The exact fixed-point predicate
The predicate below is extracted verbatim from `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedPoint/Variantc79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a.lean` at math `bb35bdf6fd826e3183a7c89cbcc57fb4565c449f`
(Git blob `6e5a66d6dead2bab70dc5e1529d51565d4904e61`, SHA-256 `c79cd4201b68ec19c0261cdf8a11a46b499dce675256ca776f5cd4f79cb1c15a`).
It records only the equation at the supplied point. No existence, uniqueness,
contractivity, completeness, convergence or basin claim is supplied.
Native compilation and axiom verification for this source are NOT_RUN. -/

set_option autoImplicit false
namespace GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.FixedPointPredicate

def IsFixedPoint {X : Type} (construction : X → X) (point : X) : Prop :=
  construction point = point

/-- The predicate is exactly the fixed-point equation. -/
theorem isFixedPoint_iff {X : Type} (construction : X → X) (point : X) :
    IsFixedPoint construction point ↔ construction point = point := Iff.rfl

end GRWTSK.Analysis.NonlinearAnalysis.FixedPointTheory.FixedPointPredicate
