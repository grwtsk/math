/-
Actual nonvacuous Jacobi primary-congruence and zero-extension controls.
OpenAI/Mathlib Apache-2.0 source notices and individual author credits, including
Michael Stoll and Alexander Spahl, remain in the imported library source.
Human mathematical direction: grwtsk contributors; formalization: OpenAI Codex.
-/
import GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi.Checks.Positive

noncomputable section

open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicCharacters

private instance quotientFintype (P : Ideal O) [P.IsMaximal] : Fintype (O ⧸ P) :=
  Fintype.ofFinite _

private instance quotientField (P : Ideal O) [P.IsMaximal] : Field (O ⧸ P) :=
  Ideal.Quotient.field P

private instance quotientDecidableEq (P : Ideal O) : DecidableEq (O ⧸ P) :=
  Classical.decEq _

/-- Zero extension makes the actual x=0 Jacobi summand vanish. -/
theorem actual_zero_summand (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood 0 * cubicChar P hgood (1 - 0) = 0 := by
  rw [(cubicChar P hgood).map_zero, zero_mul]

/-- Zero extension also makes the actual x=1 Jacobi summand vanish. -/
theorem actual_one_summand (P : Ideal O) [P.IsMaximal] (hgood : lambda ∉ P) :
    cubicChar P hgood 1 * cubicChar P hgood (1 - 1) = 0 := by
  rw [sub_self, (cubicChar P hgood).map_zero, mul_zero]

/-- The full actual sum agrees with deletion of exactly the two zero endpoint summands. -/
theorem actual_sum_excludes_endpoints (P : Ideal O) [P.IsMaximal]
    (hgood : lambda ∉ P) :
    jacobiSum (cubicChar P hgood) (cubicChar P hgood) =
      ∑ x ∈ (Finset.univ : Finset (O ⧸ P)) \ {0, 1},
        cubicChar P hgood x * cubicChar P hgood (1 - x) := by
  classical
  exact jacobiSum_eq_sum_sdiff _ _

/-- A genuine good maximal ideal above (2) carries the actual sum, coefficient and both signs. -/
theorem actual_good_jacobi_nonvacuous :
    ∃ (P : Ideal O) (hP : P.IsMaximal),
      letI : P.IsMaximal := hP
      ∃ (hgood : lambda ∉ P) (z : O),
        (2 : O) ∈ P ∧ z ∈ Algebra.adjoin ℤ {omega} ∧
          jacobiSum (cubicChar P hgood) (cubicChar P hgood) = -1 + z * lambda ^ 2 ∧
          lambda ^ 2 ∣ jacobiSum (cubicChar P hgood) (cubicChar P hgood) + 1 ∧
          lambda ^ 2 ∣ -(jacobiSum (cubicChar P hgood) (cubicChar P hgood)) - 1 ∧
          ¬lambda ^ 2 ∣ jacobiSum (cubicChar P hgood) (cubicChar P hgood) - 1 := by
  obtain ⟨P, hP, htwo, hgood⟩ := exists_good_maximal_above_two
  let : P.IsMaximal := hP
  obtain ⟨z, hz, hJ⟩ := cubicJacobi_primary P hgood
  exact ⟨P, hP, hgood, z, htwo, hz, hJ,
    lambda_sq_dvd_cubicJacobi_add_one P hgood,
    lambda_sq_dvd_neg_cubicJacobi_sub_one P hgood,
    lambda_sq_not_dvd_cubicJacobi_sub_one P hgood⟩

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicJacobi.Checks.Positive
