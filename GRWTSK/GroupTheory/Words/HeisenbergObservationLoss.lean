/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI; prior source identities retained.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No hyperbolic group construction, PFR theorem, Heisenberg flow, or
Sarnak disjointness is imported or established by this module.
-/
import GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive
import GRWTSK.Logic.InformationLoss.FactorizationFiber
import Mathlib.Tactic

/-!
# Nonabelian central memory is invisible to commutative channels

The source-identified integral Heisenberg group contains the nonidentity
unit central commutator Z=[X,Y]. Its genuine Mathlib abelianization sends
Z to 1. Thus one cannot reconstruct the elementary yes/no question
"is this group element the identity?" from its abelianization.

The obstruction is stronger than the failure of one chosen character:
every group homomorphism to a commutative group kills this commutator.
In particular a scalar multiplicative one-dimensional character
cannot read the central area/commutator signal. This is the exact
finite-observation obstruction; it does not rule out a nonabelian
representation or a genuinely constructed Heisenberg nilflow.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.GroupTheory.Words.HeisenbergObservationLoss

open GRWTSK.GroupTheory.Words.IntegralHeisenbergPrimitive
open GRWTSK.Logic.InformationLoss

/-- Genuine Mathlib abelianization of the SOURCE integral Heisenberg group. -/
def abelianized :
    IntegralHeisenberg → Abelianization IntegralHeisenberg :=
  fun g => Abelianization.of g

/-- The source central unit commutator is invisible in the genuine
abelianization; no coordinatewise approximation is substituted. -/
theorem abelianized_commutator_eq_identity :
    abelianized IntegralHeisenberg.Z =
      abelianized (1 : IntegralHeisenberg) := by
  simpa [abelianized] using IntegralHeisenberg.Z_abelianization_eq_one

/-- A concrete query that separates the nonidentity central element
from the identity. This is a BOOL readout, not an integer character. -/
def isIdentityFlag (g : IntegralHeisenberg) : Bool :=
  decide (g = 1)

theorem central_flag_differs :
    isIdentityFlag IntegralHeisenberg.Z ≠
      isIdentityFlag (1 : IntegralHeisenberg) := by
  simp [isIdentityFlag, IntegralHeisenberg.Z_ne_one]

/-- Exact information-loss witness: no decoder can reconstruct even
the identity query from only the abelianized group observation. -/
theorem identity_flag_not_factorsThrough_abelianization :
    ¬ FactorsThrough abelianized isIdentityFlag :=
  not_factorsThrough_of_collision abelianized isIdentityFlag
    IntegralHeisenberg.Z 1
    abelianized_commutator_eq_identity central_flag_differs

/-- Any actual homomorphism into a COMMUTATIVE group kills the
specific source commutator. Noncommutative representations are not
covered by this result. -/
theorem commutative_character_kills_central_memory
    {H : Type*} [CommGroup H]
    (character : IntegralHeisenberg →* H) :
    character IntegralHeisenberg.Z = 1 := by
  rw [← IntegralHeisenberg.comm_X_Y]
  simp [wordCommutator, map_mul, map_inv, mul_comm, mul_left_comm, mul_assoc]

/-- Every such character identifies the same two source group elements
despite the genuine nontrivial central component of Z. -/
theorem commutative_character_cannot_separate
    {H : Type*} [CommGroup H]
    (character : IntegralHeisenberg →* H) :
    character IntegralHeisenberg.Z =
      character (1 : IntegralHeisenberg) := by
  simpa using commutative_character_kills_central_memory character

end GRWTSK.GroupTheory.Words.HeisenbergObservationLoss
