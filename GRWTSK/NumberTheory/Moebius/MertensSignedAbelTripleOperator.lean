/- Copyright (c) 2026 grwtsk. MIT.
Mathlib and imported GRWTSK results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences

/-!
# The actual three-cofactor arithmetic operator and a quantitative residual comparison

The three-prime quotient has cofactor v=1,2,3 on the original kernel support.
For each v, build the finite operator on the shifted input f(n-h) BEFORE
specializing to Mobius. The prime band, ordered triples, ordinary prefix window,
repeated-prime guards, depths, and outer factor 2/Y are unchanged.

The actual triple channel is A(mu)(1)-A(mu)(2)-A(mu)(3). A candidate response
profile b has squared signed-readout error at most three times the sum of the
three squared response residuals. Including its coefficient 1/6, the complete
packet comparison costs at most 2+epsilon/6 when that residual energy is at most
epsilon^2/3. The unsifted, one-prime, and two-prime terms remain exact and signed.

No arithmetic cancellation, spectral realization, or small residual is supplied.
The three outputs do NOT bound their sizes: an explicit elementary allowance
still depends on the cube of the prime-band cardinality.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBoundaryCore
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeExtraction
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelDyadicPrimeRange
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelBandMultiplicity
open GRWTSK.NumberTheory.Moebius.MertensSignedAbelPrimeIncidences

/-- One fixed cofactor, without its Mobius coefficient. All source guards remain literal. -/
def cofactorPrefix (j v h N : ℕ) (f : ℕ → ℝ) : ℝ :=
  ∑ p ∈ primeBand j, ∑ q ∈ primeBand j, ∑ r ∈ primeBand j,
    if (h < p * (q * (r * v)) ∧ p * (q * (r * v)) ≤ N + h) ∧
        (¬ p ∣ q * (r * v) ∧ ¬ q ∣ r * v ∧ ¬ r ∣ v) then
      f (p * (q * (r * v)) - h)
    else 0

/-- The same existing weighted depth functional, with a freely specified shifted input. -/
def cofactorResponse (width : ℕ → ℕ) (j v : ℕ) (f : ℕ → ℝ) : ℝ :=
  bulkPrefixFunctional width j (fun h N => cofactorPrefix j v h N f)

/-- Signed finite linearity, without an independence or mean-zero hypothesis. -/
theorem cofactorPrefix_linear (j v h N : ℕ) (c d : ℝ) (f g : ℕ → ℝ) :
    cofactorPrefix j v h N (fun a => c * f a + d * g a) =
      c * cofactorPrefix j v h N f + d * cofactorPrefix j v h N g := by
  unfold cofactorPrefix
  simp_rw [Finset.mul_sum]
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro p _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro q _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro r _
  split_ifs <;> ring

@[simp] theorem cofactorPrefix_zero (j v h N : ℕ) :
    cofactorPrefix j v h N (fun _ => 0) = 0 := by simp [cofactorPrefix]

/-- Only the original ordinary prefix inputs 1,...,N are read. -/
theorem cofactorPrefix_congr_on_window (j v h N : ℕ) (f g : ℕ → ℝ)
    (hfg : ∀ a : ℕ, 1 ≤ a → a ≤ N → f a = g a) :
    cofactorPrefix j v h N f = cofactorPrefix j v h N g := by
  unfold cofactorPrefix
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro q _
  apply Finset.sum_congr rfl
  intro r _
  split_ifs with hs
  · exact hfg _ (by omega) (by omega)
  · rfl

/-- The operator factors through a fixed finite source interval, even for arbitrary inputs. -/
theorem cofactorResponse_congr_on_source (width : ℕ → ℕ) (j v : ℕ) (f g : ℕ → ℝ)
    (hfg : ∀ a : ℕ, 1 ≤ a → a ≤ 2 ^ (j + 1) → f a = g a) :
    cofactorResponse width j v f = cofactorResponse width j v g := by
  unfold cofactorResponse bulkPrefixFunctional
  apply congrArg (fun z : ℝ => 2 * (((2 ^ (j + 1) : ℕ) : ℝ))⁻¹ * z)
  apply Finset.sum_congr rfl
  intro t ht
  have htY := Finset.mem_range.mp ht
  split_ifs
  · apply Finset.sum_congr rfl
    intro h _
    rw [cofactorPrefix_congr_on_window j v h (t + 1) f g
      (fun a ha han => hfg a ha (by omega))]
  · rfl

/-- An exact finite superposition through the original bulk functional. -/
theorem bulkPrefixFunctional_finset_sum (S : Finset ℕ) (width : ℕ → ℕ) (j : ℕ)
    (F : ℕ → ℕ → ℕ → ℝ) :
    bulkPrefixFunctional width j (fun h N => ∑ v ∈ S, F v h N) =
      ∑ v ∈ S, bulkPrefixFunctional width j (F v) := by
  have hslice (t : ℕ) :
      (if width j ≤ t ∧ t < 2 ^ (j + 1) - width j then
        ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          normalizedSignedAbelShiftKernel j t h * (∑ v ∈ S, F v h (t + 1))
       else 0) =
      ∑ v ∈ S, if width j ≤ t ∧ t < 2 ^ (j + 1) - width j then
        ∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          normalizedSignedAbelShiftKernel j t h * F v h (t + 1) else 0 := by
    by_cases ht : width j ≤ t ∧ t < 2 ^ (j + 1) - width j
    · simp only [if_pos ht]
      simp_rw [Finset.mul_sum]
      exact Finset.sum_comm
    · simp [ht]
  unfold bulkPrefixFunctional
  simp_rw [hslice]
  rw [Finset.sum_comm, Finset.mul_sum]

/-- Additivity is derived from the existing signed three-term linearity. -/
theorem bulkPrefixFunctional_add (width : ℕ → ℕ) (j : ℕ) (F G : ℕ → ℕ → ℝ) :
    bulkPrefixFunctional width j (fun h N => F h N + G h N) =
      bulkPrefixFunctional width j F + bulkPrefixFunctional width j G := by
  have hz : bulkPrefixFunctional width j (fun _ _ => 0) = 0 := by
    simp [bulkPrefixFunctional]
  simpa only [sub_zero, hz] using
    bulkPrefixFunctional_sub_add width j F (fun _ _ => 0) G

/-- The operator is fixed by arithmetic support and the kernel, not fitted to the input. -/
theorem cofactorResponse_linear (width : ℕ → ℕ) (j v : ℕ)
    (c d : ℝ) (f g : ℕ → ℝ) :
    cofactorResponse width j v (fun a => c * f a + d * g a) =
      c * cofactorResponse width j v f + d * cofactorResponse width j v g := by
  have hfun : (fun h N => cofactorPrefix j v h N (fun a => c * f a + d * g a)) =
      (fun h N => c * cofactorPrefix j v h N f + d * cofactorPrefix j v h N g) := by
    funext h N
    exact cofactorPrefix_linear j v h N c d f g
  unfold cofactorResponse
  rw [hfun, bulkPrefixFunctional_add,
    bulkPrefixFunctional_const_mul, bulkPrefixFunctional_const_mul]

@[simp] theorem cofactorResponse_zero (width : ℕ → ℕ) (j v : ℕ) :
    cofactorResponse width j v (fun _ => 0) = 0 := by
  simp [cofactorResponse, cofactorPrefix, bulkPrefixFunctional]

/-- A concrete three-output real-linear operator, with outputs ordered v=1,2,3. -/
def cofactorOperator (width : ℕ → ℕ) (j : ℕ) :
    (ℕ → ℝ) →ₗ[ℝ] (Fin 3 → ℝ) where
  toFun f v := cofactorResponse width j (v.val + 1) f
  map_add' f g := by
    funext v
    simpa only [one_mul, Pi.add_apply] using
      cofactorResponse_linear width j (v.val + 1) 1 1 f g
  map_smul' c f := by
    funext v
    simpa only [zero_mul, add_zero, Pi.smul_apply, smul_eq_mul] using
      cofactorResponse_linear width j (v.val + 1) c 0 f (fun _ => 0)

private theorem sum_three_comm_last (P S : Finset ℕ) (F : ℕ → ℕ → ℕ → ℕ → ℝ) :
    (∑ p ∈ P, ∑ q ∈ P, ∑ r ∈ P, ∑ v ∈ S, F p q r v) =
      ∑ v ∈ S, ∑ p ∈ P, ∑ q ∈ P, ∑ r ∈ P, F p q r v := by
  calc
    _ = ∑ p ∈ P, ∑ q ∈ P, ∑ v ∈ S, ∑ r ∈ P, F p q r v := by
      apply Finset.sum_congr rfl
      intro p _
      apply Finset.sum_congr rfl
      intro q _
      exact Finset.sum_comm
    _ = ∑ p ∈ P, ∑ v ∈ S, ∑ q ∈ P, ∑ r ∈ P, F p q r v := by
      apply Finset.sum_congr rfl
      intro p _
      exact Finset.sum_comm
    _ = _ := Finset.sum_comm

/-- The short-cofactor theorem is matched to the concrete operator on actual supported windows. -/
theorem threePrimePrefix_eq_cofactor_sum (j h N : ℕ)
    (hwindow : N + h < 2 ^ (j + 1)) :
    threePrimePrefix j h N =
      ∑ v ∈ Finset.Icc 1 3, moebiusReal v * cofactorPrefix j v h N moebiusReal := by
  rw [threePrimePrefix_eq_short_sum j h N hwindow, sum_three_comm_last]
  apply Finset.sum_congr rfl
  intro v _
  unfold cofactorPrefix
  simp_rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p _
  apply Finset.sum_congr rfl
  intro q _
  apply Finset.sum_congr rfl
  intro r _
  split_ifs <;> ring

/-- Transport only uses source-supported equality; no assertion outside N+h<Y is needed. -/
theorem triple_bulk_eq_cofactor_sum (width : ℕ → ℕ) (j : ℕ) :
    bulkPrefixFunctional width j (threePrimePrefix j) =
      ∑ v ∈ Finset.Icc 1 3, moebiusReal v * cofactorResponse width j v moebiusReal := by
  calc
    _ = bulkPrefixFunctional width j (fun h N =>
        ∑ v ∈ Finset.Icc 1 3, moebiusReal v * cofactorPrefix j v h N moebiusReal) := by
      apply bulkPrefixFunctional_congr_supported
      intro h N _ hw
      exact threePrimePrefix_eq_cofactor_sum j h N hw
    _ = _ := by
      rw [bulkPrefixFunctional_finset_sum]
      apply Finset.sum_congr rfl
      intro v _
      exact bulkPrefixFunctional_const_mul width j (moebiusReal v) _

/-- Actual coefficients mu(1)=1, mu(2)=mu(3)=-1; no probabilistic model. -/
theorem triple_bulk_eq_three_responses (width : ℕ → ℕ) (j : ℕ) :
    bulkPrefixFunctional width j (threePrimePrefix j) =
      cofactorResponse width j 1 moebiusReal - cofactorResponse width j 2 moebiusReal -
        cofactorResponse width j 3 moebiusReal := by
  have h1 : moebiusReal 1 = 1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_one]
  have h2 : moebiusReal 2 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_two]
  have h3 : moebiusReal 3 = -1 := by
    simp [moebiusReal, ArithmeticFunction.moebius_apply_prime Nat.prime_three]
  rw [triple_bulk_eq_cofactor_sum, show Finset.Icc 1 3 = ({1, 2, 3} : Finset ℕ) by decide]
  norm_num [h1, h2, h3]
  <;> ring

/-- The actual response error at v=1,2,3, squared only AFTER the original weighted sums. -/
def responseResidualEnergy (width : ℕ → ℕ) (j : ℕ) (b : ℕ → ℝ) : ℝ :=
  ∑ v ∈ Finset.Icc 1 3, (cofactorResponse width j v moebiusReal - b v) ^ 2

theorem responseResidualEnergy_nonneg (width : ℕ → ℕ) (j : ℕ) (b : ℕ → ℝ) :
    0 ≤ responseResidualEnergy width j b :=
  Finset.sum_nonneg (fun _ _ => sq_nonneg _)

/-- A three-coordinate squared Cauchy bound, retaining the signed readout. -/
theorem triple_residual_sq_le (width : ℕ → ℕ) (j : ℕ) (b : ℕ → ℝ) :
    (bulkPrefixFunctional width j (threePrimePrefix j) - (b 1 - b 2 - b 3)) ^ 2 ≤
      3 * responseResidualEnergy width j b := by
  have he : responseResidualEnergy width j b =
      (cofactorResponse width j 1 moebiusReal - b 1) ^ 2 +
      (cofactorResponse width j 2 moebiusReal - b 2) ^ 2 +
      (cofactorResponse width j 3 moebiusReal - b 3) ^ 2 := by
    unfold responseResidualEnergy
    rw [show Finset.Icc 1 3 = ({1, 2, 3} : Finset ℕ) by decide]
    norm_num
    <;> ring
  rw [triple_bulk_eq_three_responses, he]
  nlinarith [
    sq_nonneg ((cofactorResponse width j 1 moebiusReal - b 1) +
      (cofactorResponse width j 2 moebiusReal - b 2)),
    sq_nonneg ((cofactorResponse width j 1 moebiusReal - b 1) +
      (cofactorResponse width j 3 moebiusReal - b 3)),
    sq_nonneg ((cofactorResponse width j 2 moebiusReal - b 2) -
      (cofactorResponse width j 3 moebiusReal - b 3))]

/-- A supplied response error pays the signed triple error, with the exact constant. -/
theorem abs_triple_residual_le (width : ℕ → ℕ) (j : ℕ) (b : ℕ → ℝ)
    {ε : ℝ} (hε : 0 ≤ ε)
    (he : responseResidualEnergy width j b ≤ ε ^ 2 / 3) :
    |bulkPrefixFunctional width j (threePrimePrefix j) - (b 1 - b 2 - b 3)| ≤ ε := by
  have hs := triple_residual_sq_le width j b
  have hb : (bulkPrefixFunctional width j (threePrimePrefix j) - (b 1 - b 2 - b 3)) ^ 2
      ≤ ε ^ 2 := by nlinarith
  exact (sq_le_sq₀ (abs_nonneg _) hε).mp (by simpa only [sq_abs] using hb)

/-- The first three original signed terms; no smallness of the unsifted term is inferred. -/
def headPacket (width : ℕ → ℕ) (j : ℕ) : ℝ :=
  bulkPrefixFunctional width j (unsiftedPrefix (primeBand j)) -
    bulkPrefixFunctional width j (bandMomentPrefix 0 j) -
    (1 / 2 : ℝ) * bulkPrefixFunctional width j (twoPrimePrefix j)

/-- Exact source identification of the full bulk before any norm estimate. -/
theorem bulk_eq_head_sub_triple (width : ℕ → ℕ) (j : ℕ) :
    bulkPacket width j = headPacket width j -
      (1 / 6 : ℝ) * bulkPrefixFunctional width j (threePrimePrefix j) := by
  exact bulk_eq_unsifted_sub_prime_incidences width j

/-- Quantitative handoff to a candidate response profile. The boundary cost is still two.
The residual hypothesis is substantive and is NOT proved by finite-dimensionality. -/
theorem abs_full_packet_sub_profile_model_le (j : ℕ) (b : ℕ → ℝ)
    {ε : ℝ} (hε : 0 ≤ ε)
    (he : responseResidualEnergy sqrtWidth j b ≤ ε ^ 2 / 3) :
    |weightedMertensDyadicSignedAbelDepthPacket j -
      (headPacket sqrtWidth j - (1 / 6 : ℝ) * (b 1 - b 2 - b 3))| ≤ 2 + ε / 6 := by
  have hr := abs_triple_residual_le sqrtWidth j b hε he
  have hb : |bulkPacket sqrtWidth j -
      (headPacket sqrtWidth j - (1 / 6 : ℝ) * (b 1 - b 2 - b 3))| ≤ ε / 6 := by
    rw [bulk_eq_head_sub_triple]
    have hid : headPacket sqrtWidth j -
        (1 / 6 : ℝ) * bulkPrefixFunctional sqrtWidth j (threePrimePrefix j) -
        (headPacket sqrtWidth j - (1 / 6 : ℝ) * (b 1 - b 2 - b 3)) =
        -(1 / 6 : ℝ) * (bulkPrefixFunctional sqrtWidth j (threePrimePrefix j) -
          (b 1 - b 2 - b 3)) := by ring
    rw [hid, abs_mul]
    norm_num
    nlinarith
  have ht := abs_add
    (weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j)
    (bulkPacket sqrtWidth j -
      (headPacket sqrtWidth j - (1 / 6 : ℝ) * (b 1 - b 2 - b 3)))
  have hid : (weightedMertensDyadicSignedAbelDepthPacket j - bulkPacket sqrtWidth j) +
      (bulkPacket sqrtWidth j -
        (headPacket sqrtWidth j - (1 / 6 : ℝ) * (b 1 - b 2 - b 3))) =
      weightedMertensDyadicSignedAbelDepthPacket j -
        (headPacket sqrtWidth j - (1 / 6 : ℝ) * (b 1 - b 2 - b 3)) := by ring
  rw [hid] at ht
  exact ht.trans (add_le_add (abs_packet_sub_sqrt_bulk_le_two j) hb)

/-- Finite elementary scale allowance; three outputs do not imply a small operator. -/
theorem abs_cofactorPrefix_le_card_cube (j v h N : ℕ) (f : ℕ → ℝ)
    (hf : ∀ a : ℕ, |f a| ≤ 1) :
    |cofactorPrefix j v h N f| ≤ ((primeBand j).card : ℝ) ^ 3 := by
  unfold cofactorPrefix
  calc
    _ ≤ ∑ _p ∈ primeBand j, ∑ _q ∈ primeBand j, ∑ _r ∈ primeBand j, (1 : ℝ) := by
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro p _
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro q _
      apply (Finset.abs_sum_le_sum_abs _ _).trans
      apply Finset.sum_le_sum
      intro r _
      split_ifs
      · exact hf _
      · norm_num
    _ = _ := by simp; ring

/-- A genuine quantitative but only elementary operator estimate. It has no cancellation saving. -/
theorem abs_cofactorResponse_le_card_cube (width : ℕ → ℕ) (j v : ℕ) (f : ℕ → ℝ)
    (hf : ∀ a : ℕ, |f a| ≤ 1) :
    |cofactorResponse width j v f| ≤ 2 * ((primeBand j).card : ℝ) ^ 3 := by
  exact abs_bulkPrefixFunctional_le_two_mul width j
    (fun h N => cofactorPrefix j v h N f) (by positivity)
    (fun h N _ _ => abs_cofactorPrefix_le_card_cube j v h N f hf)

/-- The zero profile exposes the actual three-response energy, not a computed small value. -/
theorem zero_profile_sq_bound (width : ℕ → ℕ) (j : ℕ) :
    bulkPrefixFunctional width j (threePrimePrefix j) ^ 2 ≤
      3 * responseResidualEnergy width j (fun _ => 0) := by
  simpa using triple_residual_sq_le width j (fun _ => 0)

/-- Signed cancellation need not make every response small: the norm supplier is stronger. -/
theorem signed_readout_zero_with_nonzero_energy :
    (1 : ℝ) - 1 - 0 = 0 ∧ (1 : ℝ) ^ 2 + 1 ^ 2 + 0 ^ 2 = 2 := by norm_num

end GRWTSK.NumberTheory.Moebius.MertensSignedAbelTripleOperator
