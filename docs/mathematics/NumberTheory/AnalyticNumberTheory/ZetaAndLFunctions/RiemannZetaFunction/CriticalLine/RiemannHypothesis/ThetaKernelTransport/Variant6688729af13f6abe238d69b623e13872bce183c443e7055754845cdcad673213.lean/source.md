# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaKernelTransport.Variant6688729af13f6abe238d69b623e13872bce183c443e7055754845cdcad673213

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff7a54ab935c2fec7644c039196d0bca32c91eed` · SHA-256 `f478d3bfc22fa232110b7b65bd9f0fd5635c2fa765195ec077f9b5e8688d7a69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorsSumEqFilteredProduct.Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.DivisorsSumEqFilteredProduct.Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"bf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/ThetaKernelTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.MobiusSampling


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorsSumEqFilteredProduct.Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25

set_option autoImplicit false

namespace ThetaKernelTransportScratch

open Finset ArithmeticFunction
open scoped ArithmeticFunction.zeta
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open MobiusQuadratic SourceSampling

noncomputable section

theorem divisors_sum_eq_filtered_product (B : ℕ) (T : Finset ℕ)
    (hT : T ⊆ Icc 1 B) (F : ℕ × ℕ → ℝ) :
    (∑ n ∈ T, ∑ p ∈ n.divisorsAntidiagonal, F p) =
      ∑ d ∈ Icc 1 B, ∑ k ∈ Icc 1 B, if d * k ∈ T then F (d, k) else 0 := by
  let S := (Icc 1 B) ×ˢ (Icc 1 B)
  have hfiber (n : ℕ) (hn : n ∈ T) :
      S.filter (fun p : ℕ × ℕ ↦ p.1 * p.2 = n) = n.divisorsAntidiagonal := by
    have hnB := mem_Icc.mp (hT hn)
    ext p
    simp only [S, mem_filter, mem_product, mem_Icc, Nat.mem_divisorsAntidiagonal]
    constructor
    · rintro ⟨⟨hd, hk⟩, hp⟩
      exact ⟨hp, by omega⟩
    · rintro ⟨hp, hn0⟩
      have hd0 : 0 < p.1 := Nat.pos_of_ne_zero (by intro h; simp [h] at hp; omega)
      have hk0 : 0 < p.2 := Nat.pos_of_ne_zero (by intro h; simp [h] at hp; omega)
      have hd : p.1 ≤ n := hp ▸ Nat.le_mul_of_pos_right _ hk0
      have hk : p.2 ≤ n := by
        rw [← hp, mul_comm]
        exact Nat.le_mul_of_pos_right _ hd0
      exact ⟨⟨⟨by omega, hd.trans hnB.2⟩, ⟨by omega, hk.trans hnB.2⟩⟩, hp⟩
  calc
    _ = ∑ n ∈ T, ∑ p ∈ S.filter (fun p : ℕ × ℕ ↦ p.1 * p.2 = n), F p := by
      apply sum_congr rfl
      intro n hn
      rw [hfiber n hn]
    _ = ∑ p ∈ S.filter (fun p : ℕ × ℕ ↦ p.1 * p.2 ∈ T), F p :=
      sum_fiberwise_eq_sum_filter S T (fun p : ℕ × ℕ ↦ p.1 * p.2) F
    _ = ∑ p ∈ S, if p.1 * p.2 ∈ T then F p else 0 := sum_filter _ _
    _ = _ := sum_product _ _ _


theorem weighted_convolution (f g : ArithmeticFunction ℝ) (B : ℕ) (W : ℕ → ℝ)
    (hW : ∀ n : ℕ, B < n → W n = 0) :
    (∑ n ∈ Icc 1 B, (f * g) n * W n) =
      ∑ i ∈ Icc 1 B, f i * ∑ j ∈ Icc 1 B, g j * W (i * j) := by
  let F : ℕ × ℕ → ℝ := fun p ↦ f p.1 * g p.2 * W (p.1 * p.2)
  calc
    _ = ∑ n ∈ Icc 1 B, ∑ p ∈ n.divisorsAntidiagonal, F p := by
      apply sum_congr rfl
      intro n _
      rw [ArithmeticFunction.mul_apply, sum_mul]
      apply sum_congr rfl
      intro p hp
      simp only [F, (Nat.mem_divisorsAntidiagonal.mp hp).1]
    _ = ∑ i ∈ Icc 1 B, ∑ j ∈ Icc 1 B,
        if i * j ∈ Icc 1 B then F (i, j) else 0 :=
      divisors_sum_eq_filtered_product B (Icc 1 B) (fun _ h ↦ h) F
    _ = _ := by
      apply sum_congr rfl
      intro i hi
      rw [mul_sum]
      apply sum_congr rfl
      intro j hj
      by_cases hij : i * j ∈ Icc 1 B
      · simp only [if_pos hij, F]
        ring
      · have hprod : 1 ≤ i * j := by
          have := (mem_Icc.mp hi).1
          have := (mem_Icc.mp hj).1
          nlinarith
        have hB : B < i * j := by
          by_contra h
          exact hij (mem_Icc.mpr ⟨hprod, Nat.le_of_not_lt h⟩)
        simp only [if_neg hij, hW _ hB, mul_zero]

def sourceFiniteWeight (A : ℝ) (n : ℕ) : ℝ :=
  if (n : ℝ) < Real.exp (2 * A) then
    1 / Real.sqrt (n : ℝ) *
      sourceCorrelation Realization.explicitSecondDerivative A (Real.log n)
  else 0

theorem sourceFiniteWeight_zero (A : ℝ) (n : ℕ) (hn : ⌊Real.exp (2 * A)⌋₊ < n) :
    sourceFiniteWeight A n = 0 := by
  rw [sourceFiniteWeight, if_neg]
  exact not_lt.mpr ((Nat.floor_lt (Real.exp_pos _).le).mp hn).le

theorem sourceFiniteWeight_mul_zero (A : ℝ) (q n : ℕ) (hq : 1 ≤ q)
    (hn : ⌊Real.exp (2 * A)⌋₊ < n) : sourceFiniteWeight A (q * n) = 0 := by
  apply sourceFiniteWeight_zero
  exact hn.trans_le (Nat.le_mul_of_pos_left _ (by omega))

theorem weightedContribution_eq_finiteWeight (A : ℝ) (f : ArithmeticFunction ℝ)
    (hf : f 1 = 0) : weightedContribution A f =
      ∑ n ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, f n * sourceFiniteWeight A n := by
  have hsub : Cutoff.primeIndices A ⊆ Icc 1 ⌊Real.exp (2 * A)⌋₊ := by
    intro n hn
    have hn' := (mem_Icc.mp (mem_filter.mp hn).1)
    exact mem_Icc.mpr ⟨by omega, hn'.2⟩
  calc
    _ = ∑ n ∈ Cutoff.primeIndices A, f n * sourceFiniteWeight A n := by
      apply sum_congr rfl
      intro n hn
      rw [sourceFiniteWeight, if_pos ((Cutoff.mem_primeIndices_iff A n).mp hn).2]
      ring
    _ = _ := sum_subset hsub (fun n hn hnot ↦ by
      by_cases hn1 : n = 1
      · simp [hn1, hf]
      · have hn2 : 2 ≤ n := by have := (mem_Icc.mp hn).1; omega
        have hcut : ¬(n : ℝ) < Real.exp (2 * A) := by
          intro h
          exact hnot ((Cutoff.mem_primeIndices_iff A n).mpr ⟨hn2, h⟩)
        simp [sourceFiniteWeight, hcut])

theorem finite_log_sum_eq_sourceSamplingKernel (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    (∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, Real.log (k : ℝ) *
      sourceFiniteWeight A (q * k)) = sourceSamplingKernel A q := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hsub : samplingIndices A q ⊆ Icc 1 ⌊Real.exp (2 * A)⌋₊ := by
    intro k hk
    obtain ⟨hk1, hcut⟩ := (mem_samplingIndices_iff A q k hq0).mp hk
    have hkq : (k : ℝ) ≤ (q : ℝ) * k := by
      nlinarith [show (0 : ℝ) ≤ k by positivity]
    exact mem_Icc.mpr ⟨hk1, (Nat.le_floor_iff (Real.exp_pos _).le).mpr
      (hkq.trans hcut.le)⟩
  symm
  calc
    _ = ∑ k ∈ samplingIndices A q,
        Real.log (k : ℝ) * sourceFiniteWeight A (q * k) := by
      apply sum_congr rfl
      intro k hk
      have hcut := ((mem_samplingIndices_iff A q k hq0).mp hk).2
      rw [sourceFiniteWeight, Nat.cast_mul, if_pos hcut]
      ring
    _ = _ := sum_subset hsub (fun k hk hnot ↦ by
      have hcut : ¬((q * k : ℕ) : ℝ) < Real.exp (2 * A) := by
        intro h
        exact hnot ((mem_samplingIndices_iff A q k hq0).mpr
          ⟨(mem_Icc.mp hk).1, by simpa only [Nat.cast_mul] using h⟩)
      rw [sourceFiniteWeight, if_neg hcut, mul_zero])

def thetaKernel (A : ℝ) (q : ℕ) : ℝ :=
  ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
    ∑ l ∈ (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
      (fun l : ℕ ↦ ((q * k * l : ℕ) : ℝ) < Real.exp (2 * A)),
      Real.log (l : ℝ) / Real.sqrt ((q * k * l : ℕ) : ℝ) *
        sourceCorrelation Realization.explicitSecondDerivative A (Real.log (q * k * l : ℕ))

theorem theta_indices_iff (A : ℝ) (q k l : ℕ) (hq : 1 ≤ q) :
    (k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊ ∧
      l ∈ (Icc 1 ⌊Real.exp (2 * A)⌋₊).filter
        (fun l : ℕ ↦ ((q * k * l : ℕ) : ℝ) < Real.exp (2 * A))) ↔
      1 ≤ k ∧ 1 ≤ l ∧ ((q * k * l : ℕ) : ℝ) < Real.exp (2 * A) := by
  constructor
  · rintro ⟨hk, hl⟩
    exact ⟨(mem_Icc.mp hk).1, (mem_Icc.mp (mem_filter.mp hl).1).1,
      (mem_filter.mp hl).2⟩
  · rintro ⟨hk, hl, hcut⟩
    have hprod : q * k * l ≤ ⌊Real.exp (2 * A)⌋₊ :=
      (Nat.le_floor_iff (Real.exp_pos _).le).mpr hcut.le
    have hqk : 0 < q * k := Nat.mul_pos (by omega) (by omega)
    have hkprod : k ≤ q * k * l :=
      (Nat.le_mul_of_pos_left _ (by omega : 0 < q)).trans
        (Nat.le_mul_of_pos_right _ (by omega : 0 < l))
    have hlprod : l ≤ q * k * l := Nat.le_mul_of_pos_left _ hqk
    exact ⟨mem_Icc.mpr ⟨hk, hkprod.trans hprod⟩,
      mem_filter.mpr ⟨mem_Icc.mpr ⟨hl, hlprod.trans hprod⟩, hcut⟩⟩

theorem thetaKernel_eq_finiteWeight (A : ℝ) (q : ℕ) :
    thetaKernel A q = ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
      ∑ l ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
        Real.log (l : ℝ) * sourceFiniteWeight A (q * k * l) := by
  unfold thetaKernel
  apply sum_congr rfl
  intro k _
  rw [sum_filter]
  apply sum_congr rfl
  intro l _
  unfold sourceFiniteWeight
  split_ifs <;> ring

theorem thetaKernel_eq_sum_sourceSamplingKernel (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    thetaKernel A q = ∑ k ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
      sourceSamplingKernel A (q * k : ℕ) := by
  rw [thetaKernel_eq_finiteWeight]
  apply sum_congr rfl
  intro k hk
  exact finite_log_sum_eq_sourceSamplingKernel A (q * k)
    (by have := (mem_Icc.mp hk).1; nlinarith)

theorem sum_truncatedMoebius (B N : ℕ) (hNB : N ≤ B) (V : ℕ → ℝ) :
    (∑ i ∈ Icc 1 B, truncatedMoebius N i * V i) =
      ∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius i : ℝ) * V i := by
  have hsub : Icc 1 N ⊆ Icc 1 B := by
    intro i hi
    exact mem_Icc.mpr ⟨(mem_Icc.mp hi).1, (mem_Icc.mp hi).2.trans hNB⟩
  calc
    _ = ∑ i ∈ Icc 1 N, truncatedMoebius N i * V i := by
      symm
      apply sum_subset hsub
      intro i hi hout
      have hiN : ¬i ≤ N := by
        intro h
        exact hout (mem_Icc.mpr ⟨(mem_Icc.mp hi).1, h⟩)
      simp [truncatedMoebius, hiN]
    _ = _ := by
      apply sum_congr rfl
      intro i hi
      simp [truncatedMoebius, (mem_Icc.mp hi).2]

theorem linear_source_transport (A : ℝ) (N : ℕ) (hN : N ≤ ⌊Real.exp (2 * A)⌋₊) :
    weightedContribution A (truncatedMoebius N * ArithmeticFunction.log) =
      ∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius i : ℝ) * sourceSamplingKernel A i := by
  rw [weightedContribution_eq_finiteWeight A _ (by simp [ArithmeticFunction.mul_apply]),
    weighted_convolution _ _ _ _ (sourceFiniteWeight_zero A)]
  calc
    _ = ∑ i ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
        truncatedMoebius N i * sourceSamplingKernel A i := by
      apply sum_congr rfl
      intro i hi
      congr 1
      exact finite_log_sum_eq_sourceSamplingKernel A i (mem_Icc.mp hi).1
    _ = _ := sum_truncatedMoebius _ N hN _

theorem quadratic_source_transport (A : ℝ) (N : ℕ) (hN : N ≤ ⌊Real.exp (2 * A)⌋₊) :
    weightedContribution A (truncatedMoebius N ^ 2 * ζ * ArithmeticFunction.log) =
      ∑ i ∈ Icc 1 N, ∑ j ∈ Icc 1 N,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          thetaKernel A (i * j) := by
  rw [weightedContribution_eq_finiteWeight A _ (by simp [ArithmeticFunction.mul_apply])]
  simp only [pow_two, mul_assoc]
  rw [weighted_convolution _ _ _ _ (sourceFiniteWeight_zero A)]
  have hi (i : ℕ) (hi : i ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊) :
      (∑ n ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
        (truncatedMoebius N * (ζ * ArithmeticFunction.log)) n * sourceFiniteWeight A (i * n)) =
        ∑ j ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, truncatedMoebius N j * thetaKernel A (i * j) := by
    rw [weighted_convolution _ _ _ _
      (fun n hn ↦ sourceFiniteWeight_mul_zero A i n (mem_Icc.mp hi).1 hn)]
    apply sum_congr rfl
    intro j hj
    congr 1
    have hij : 1 ≤ i * j := by
      have := (mem_Icc.mp hi).1
      have := (mem_Icc.mp hj).1
      nlinarith
    simp only [← Nat.mul_assoc]
    rw [weighted_convolution _ _ _ _
      (fun n hn ↦ sourceFiniteWeight_mul_zero A (i * j) n hij hn),
      thetaKernel_eq_finiteWeight]
    apply sum_congr rfl
    intro k hk
    have hk0 : k ≠ 0 := by have := (mem_Icc.mp hk).1; omega
    simp only [ArithmeticFunction.natCoe_apply, ArithmeticFunction.zeta_apply_ne hk0,
      Nat.cast_one, one_mul,
      Nat.mul_assoc]
    rfl
  calc
    _ = ∑ i ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
        truncatedMoebius N i * ∑ j ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
          truncatedMoebius N j * thetaKernel A (i * j) := by
      apply sum_congr rfl
      intro i hi'
      rw [hi i hi']
    _ = ∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius i : ℝ) *
        ∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) * thetaKernel A (i * j) := by
      rw [sum_truncatedMoebius _ N hN]
      apply sum_congr rfl
      intro i _
      rw [sum_truncatedMoebius _ N hN]
    _ = _ := by
      apply sum_congr rfl
      intro i _
      rw [mul_sum]

theorem source_prime_decomposition_theta (A : ℝ) (hA : 1 ≤ A) :
    primePowerContribution Realization.explicitSecondDerivative A =
      2 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
        (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
        ∑ i ∈ Icc 1 ⌊Real.exp A⌋₊, ∑ j ∈ Icc 1 ⌊Real.exp A⌋₊,
          (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
            thetaKernel A (i * j) := by
  have hN : ⌊Real.exp A⌋₊ ≤ ⌊Real.exp (2 * A)⌋₊ :=
    Nat.floor_le_floor (Real.exp_le_exp.mpr (by linarith))
  rw [MobiusQuadratic.source_prime_decomposition, linear_source_transport A _ hN,
    quadratic_source_transport A _ hN]

end
end ThetaKernelTransportScratch

#print axioms ThetaKernelTransportScratch.divisors_sum_eq_filtered_product
#print axioms ThetaKernelTransportScratch.weighted_convolution
#print axioms ThetaKernelTransportScratch.sourceFiniteWeight
#print axioms ThetaKernelTransportScratch.sourceFiniteWeight_zero
#print axioms ThetaKernelTransportScratch.sourceFiniteWeight_mul_zero
#print axioms ThetaKernelTransportScratch.weightedContribution_eq_finiteWeight
#print axioms ThetaKernelTransportScratch.finite_log_sum_eq_sourceSamplingKernel
#print axioms ThetaKernelTransportScratch.thetaKernel
#print axioms ThetaKernelTransportScratch.theta_indices_iff
#print axioms ThetaKernelTransportScratch.thetaKernel_eq_finiteWeight
#print axioms ThetaKernelTransportScratch.thetaKernel_eq_sum_sourceSamplingKernel
#print axioms ThetaKernelTransportScratch.sum_truncatedMoebius
#print axioms ThetaKernelTransportScratch.linear_source_transport
#print axioms ThetaKernelTransportScratch.quadratic_source_transport
#print axioms ThetaKernelTransportScratch.source_prime_decomposition_theta
#check ThetaKernelTransportScratch.source_prime_decomposition_theta
```
