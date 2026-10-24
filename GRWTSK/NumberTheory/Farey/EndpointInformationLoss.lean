/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
This adapter consumes a standalone Farey source candidate, not a checked
public-root theorem. The finite witness does not prove a root from signs.
-/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss.FactorizationFiber
import GRWTSK.NumberTheory.Farey.ResolvableQuinticEndpointControls

/-!
# Exact Farey endpoint-sign observation versus rational-root membership

Two different polynomials can have the same complete pair of *propositional*
oriented endpoint sign tests on an authentic Farey cell while differing in
root membership at a specified rational point. The witness is the same
quadratic-times-linear example proved in ResolvableQuinticEndpointControls.

The obstruction is specific to endpoint-sign data, not to all rational
coefficient data and not to the globally-positive quadratic X²+1 used in the
Record 4239 quintic.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey

open Polynomial
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.InformationLoss

/-- Both separate endpoint-sign predicates, not merely the truth value of
their conjunction. This makes the information loss stronger than a collision
of Boolean `PolynomialResolves` certificates. -/
def endpointSignProfile (I : Cell) (p : Polynomial ℚ) : Prop × Prop :=
  (p.eval I.left ≤ 0, 0 ≤ p.eval I.right)

/-- A specific rational-point root query, carrying exactly its proposition. -/
def rationalRootAt (x : ℚ) (p : Polynomial ℚ) : Prop :=
  p.eval x = 0

/-- The previously authored exact rational counterexample produces a
collision in both endpoint-sign predicates but not in root membership. -/
theorem exists_endpointSignProfile_collision :
    ∃ (I : Cell) (x : ℚ) (p c : Polynomial ℚ),
      endpointSignProfile I p = endpointSignProfile I c ∧
      rationalRootAt x p ≠ rationalRootAt x c := by
  obtain ⟨q, c, I, x, hleft, hright, _, _, hroot, hnotroot⟩ :=
    exists_endpoint_positive_factor_with_extra_rational_root
  refine ⟨I, x, q * c, c, ?_, ?_⟩
  · apply Prod.ext
    · exact propext (eval_mul_nonpos_iff_of_pos q c I.left hleft)
    · exact propext (eval_mul_nonneg_iff_of_pos q c I.right hright)
  · intro heq
    change ((q * c).eval x = 0) = (c.eval x = 0) at heq
    exact hnotroot (Eq.mp heq hroot)

/-- There exist an actual Farey cell and a rational root query that cannot
be reconstructed by any function of the two endpoint-sign predicates. -/
theorem exists_root_query_not_factorsThrough_endpointSignProfile :
    ∃ (I : Cell) (x : ℚ),
      ¬ FactorsThrough (endpointSignProfile I) (rationalRootAt x) := by
  obtain ⟨I, x, p, c, hprofile, hroot⟩ :=
    exists_endpointSignProfile_collision
  refine ⟨I, x, ?_⟩
  exact not_factorsThrough_of_collision
    (endpointSignProfile I) (rationalRootAt x) p c hprofile hroot

/-- Adding the particular root query separates the witness, but this is not
a claim that one extra query reconstructs all roots of every polynomial. -/
theorem exists_augmented_endpointProfile_separates :
    ∃ (I : Cell) (x : ℚ) (p c : Polynomial ℚ),
      endpointSignProfile I p = endpointSignProfile I c ∧
      augmentedProfile (endpointSignProfile I) (rationalRootAt x) p ≠
        augmentedProfile (endpointSignProfile I) (rationalRootAt x) c := by
  obtain ⟨I, x, p, c, hprofile, hroot⟩ :=
    exists_endpointSignProfile_collision
  exact ⟨I, x, p, c, hprofile,
    augmentedProfile_separates (endpointSignProfile I)
      (rationalRootAt x) p c hroot⟩

end GRWTSK.NumberTheory.Farey
