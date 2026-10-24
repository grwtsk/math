# Complete source: GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicReduction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b3058064dad56af3aa4dbd57147607af7dc805f` · SHA-256 `68f8f43dcc5c166774ae4abcf6d75e527ac9a79dccb8d574caef7c390ffcf95b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Actual good-prime nonvacuity, ramified quotient and primary-generator obstruction controls.
OpenAI/Mathlib Apache-2.0 notices and individual author credits remain in the imported source. -/
import GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction
namespace GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction.Checks
noncomputable section
open GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicIdeals

lemma actual_omega_cube : omega^3=1 := omega_primitive.pow_eq_one
lemma actual_omega_not_one : omega≠1 := omega_primitive.ne_one (by decide)
lemma actual_lambda_nonzero : lambda≠0 := lambda_ne_zero
lemma actual_ramified_norm : Ideal.absNorm ramifiedIdeal=3 := ramifiedIdeal_absNorm

/-- Actual ramified maximal ideal with actual root collapse, refuting maximality alone as good reduction. -/
theorem actual_ramified_good_condition_counter :
    ramifiedIdeal.IsMaximal ∧ ramifiedIdeal≠0 ∧ ramifiedIdeal≠⊤ ∧
      lambda∈ramifiedIdeal ∧ Ideal.Quotient.mk ramifiedIdeal omega=1 ∧
      ¬IsPrimitiveRoot (Ideal.Quotient.mk ramifiedIdeal omega) 3 :=
  ⟨ramifiedIdeal_isMaximal,ramifiedIdeal_ne_zero,ramifiedIdeal_proper,
    lambda_mem_ramifiedIdeal,omega_ramified_eq_one,omega_ramified_not_primitive⟩

lemma actual_ramified_quotient_card : Nat.card (O⧸ramifiedIdeal)=3 := by
  simpa only [Ideal.absNorm_apply,Submodule.cardQuot_apply] using ramifiedIdeal_absNorm

lemma actual_three_reduces_zero : Ideal.Quotient.mk ramifiedIdeal (3:O)=0 :=
  Ideal.Quotient.eq_zero_iff_mem.mpr three_mem_ramifiedIdeal

lemma actual_two_not_ramified : (2:O)∉ramifiedIdeal := two_not_mem_ramifiedIdeal

/-- A genuine good maximal ideal is produced above (2), then the actual reduction theorem applies. -/
theorem actual_good_reduction_nonvacuous :
    ∃P : Ideal O,P.IsMaximal ∧ (2:O)∈P ∧ lambda∉P ∧
      IsPrimitiveRoot (Ideal.Quotient.mk P omega) 3 := by
  obtain ⟨P,hP,h2,hgood⟩ := exists_good_maximal_above_two
  let : P.IsMaximal := hP
  exact ⟨P,hP,h2,hgood,omega_reduced_primitive P hgood⟩

/-- Its quotient root has actual order3; the existence is not an assumed good-prime oracle. -/
theorem actual_good_order_nonvacuous :
    ∃P : Ideal O,P.IsMaximal ∧ (2:O)∈P ∧ lambda∉P ∧
      orderOf (Ideal.Quotient.mk P omega)=3 := by
  obtain ⟨P,hP,h2,hgood,hprimitive⟩ := actual_good_reduction_nonvacuous
  exact ⟨P,hP,h2,hgood,hprimitive.eq_orderOf.symm⟩

lemma actual_ramified_not_good : ¬(lambda∉ramifiedIdeal) := by
  intro h
  exact h lambda_mem_ramifiedIdeal

/-- Even the literal generator lambda cannot meet the primary normalization at its ramified ideal. -/
theorem actual_lambda_generator_not_primary : ¬(lambda^2∣lambda-1) := by
  intro h
  exact ramified_primary_generator_obstruction ⟨lambda,rfl,h⟩

lemma actual_no_ramified_primary_generator :
    ¬∃p : O,ramifiedIdeal=Ideal.span ({p} : Set O) ∧ lambda^2∣p-1 :=
  ramified_primary_generator_obstruction

end
end GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction.Checks
```
