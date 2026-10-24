-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.HyperbolaPairs.Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.HyperbolaPairs.Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass24/arithmetic_decay/RamareCorrectedBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Gershon Bialer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import MathExtras.NumberTheory.Mertens.RamareEq22
import MathExtras.NumberTheory.Mertens.RamareCorrectedRemainder
import AnalyticNT.Bilinear.ProductHyperbola
import Mathlib.NumberTheory.AbelSummation

/-!
# The corrected Ramaré Lemma 6.1 bridge

This module proves the exact finite-sum and Abel identities connecting
`r2Star` to the corrected `R3` and `R4` quantities.  It contains no numerical
or analytic assertion.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.HyperbolaPairs.Variant81f726d5378897d571e163617f463b9707ad4b0b5708f62d003133e74e771ff7

noncomputable section

namespace MathExtras.RamareMertens2025

open scoped BigOperators ArithmeticFunction
open ArithmeticFunction Finset MeasureTheory

private noncomputable def hyperbolaPairs (N : Nat) : Finset (Nat × Nat) :=
  ((Finset.Icc 1 N) ×ˢ (Finset.Icc 1 N)).filter
    (fun p => p.1 * p.2 <= N)

private noncomputable def hyperbolaLeft (N : Nat) : Finset (Nat × Nat) :=
  ((Finset.Icc 1 (Nat.sqrt N)) ×ˢ (Finset.Icc 1 N)).filter
    (fun p => p.1 * p.2 <= N)

private noncomputable def hyperbolaRight (N : Nat) : Finset (Nat × Nat) :=
  ((Finset.Icc 1 N) ×ˢ (Finset.Icc 1 (Nat.sqrt N))).filter
    (fun p => p.1 * p.2 <= N)

private noncomputable def hyperbolaSquare (N : Nat) : Finset (Nat × Nat) :=
  (Finset.Icc 1 (Nat.sqrt N)) ×ˢ (Finset.Icc 1 (Nat.sqrt N))

private theorem hyperbolaPairs_eq_union (N : Nat) :
    hyperbolaPairs N = hyperbolaLeft N ∪ hyperbolaRight N := by
  classical
  ext p
  simp only [hyperbolaPairs, hyperbolaLeft, hyperbolaRight,
    Finset.mem_filter, Finset.mem_product, Finset.mem_Icc,
    Finset.mem_union]
  constructor
  · intro hp
    rcases hp with ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
    by_cases hleft : p.1 <= Nat.sqrt N
    · exact Or.inl ⟨⟨⟨hp1, hleft⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
    · have hp1s : Nat.sqrt N + 1 <= p.1 := by omega
      by_cases hright : p.2 <= Nat.sqrt N
      · exact Or.inr ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hright⟩⟩, hprod⟩
      · have hp2s : Nat.sqrt N + 1 <= p.2 := by omega
        have hsprod : (Nat.sqrt N + 1) * (Nat.sqrt N + 1) <=
            p.1 * p.2 := Nat.mul_le_mul hp1s hp2s
        have hlt : N < (Nat.sqrt N + 1) * (Nat.sqrt N + 1) := by
          simpa [Nat.succ_eq_add_one] using Nat.lt_succ_sqrt N
        omega
  · intro hp
    rcases hp with hp | hp
    · rcases hp with ⟨⟨⟨hp1, hp1s⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
      have hp1N : p.1 <= N := hp1s.trans (Nat.sqrt_le_self N)
      exact ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
    · rcases hp with ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2s⟩⟩, hprod⟩
      have hp2N : p.2 <= N := hp2s.trans (Nat.sqrt_le_self N)
      exact ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2N⟩⟩, hprod⟩

private theorem hyperbolaLeft_inter_right (N : Nat) :
    hyperbolaLeft N ∩ hyperbolaRight N = hyperbolaSquare N := by
  classical
  ext p
  simp only [hyperbolaLeft, hyperbolaRight, hyperbolaSquare,
    Finset.mem_inter, Finset.mem_filter,
    Finset.mem_product, Finset.mem_Icc]
  constructor
  · intro hp
    rcases hp with
      ⟨⟨⟨⟨hp1, hp1s⟩, ⟨hp2, hp2N⟩⟩, hprod⟩,
       ⟨⟨⟨hp1', hp1N⟩, ⟨hp2', hp2s⟩⟩, hprod'⟩⟩
    exact ⟨⟨hp1, hp1s⟩, ⟨hp2, hp2s⟩⟩
  · intro hp
    rcases hp with ⟨⟨hp1, hp1s⟩, ⟨hp2, hp2s⟩⟩
    have hsprod : p.1 * p.2 <= Nat.sqrt N * Nat.sqrt N :=
      Nat.mul_le_mul hp1s hp2s
    have hprod : p.1 * p.2 <= N := hsprod.trans (Nat.sqrt_le N)
    have hpN1 : p.1 <= N := by
      exact hp1s.trans (Nat.sqrt_le_self N)
    have hpN2 : p.2 <= N := by
      exact hp2s.trans (Nat.sqrt_le_self N)
    exact ⟨⟨⟨⟨hp1, hp1s⟩, ⟨hp2, hpN2⟩⟩, hprod⟩,
      ⟨⟨⟨hp1, hpN1⟩, ⟨hp2, hp2s⟩⟩, hprod⟩⟩

private theorem sum_hyperbolaPairs_eq_cutoff (N : Nat) (F : Nat -> Nat -> Real) :
    (∑ p ∈ hyperbolaPairs N, F p.1 p.2) =
      AnalyticNT.Bilinear.productCutoffSum N F := by
  classical
  unfold AnalyticNT.Bilinear.productCutoffSum
  rw [Finset.sum_sigma']
  refine Finset.sum_bij (fun p _ => ⟨p.1, p.2⟩) ?_ ?_ ?_ ?_
  · intro p hp
    simp only [hyperbolaPairs, Finset.mem_filter, Finset.mem_product,
      Finset.mem_Icc] at hp
    rcases hp with ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
    simp only [Finset.mem_sigma, Finset.mem_Icc]
    exact ⟨⟨hp1, hp1N⟩, hp2,
      (Nat.le_div_iff_mul_le (by omega : 0 < p.1)).2
        (by simpa [Nat.mul_comm] using hprod)⟩
  · intro p _ q _ heq
    apply Prod.ext
    · exact congrArg Sigma.fst heq
    · exact congrArg (fun z => z.2) heq
  · intro q hq
    rcases q with ⟨d, m⟩
    simp only [Finset.mem_sigma, Finset.mem_Icc] at hq
    rcases hq with ⟨⟨hd1, hdN⟩, hm1, hmdiv⟩
    have hmN : m <= N := hmdiv.trans (Nat.div_le_self N d)
    have hprod : d * m <= N := by
      simpa [Nat.mul_comm] using
        (Nat.le_div_iff_mul_le (by omega : 0 < d)).1 hmdiv
    refine ⟨(d, m), ?_, rfl⟩
    simp only [hyperbolaPairs, Finset.mem_filter, Finset.mem_product,
      Finset.mem_Icc]
    exact ⟨⟨⟨hd1, hdN⟩, ⟨hm1, hmN⟩⟩, hprod⟩
  · intro p hp
    rfl

private theorem sum_hyperbolaLeft_eq_cutoff (N : Nat) (F : Nat -> Nat -> Real) :
    (∑ p ∈ hyperbolaLeft N, F p.1 p.2) =
      ∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
        ∑ m ∈ Finset.Icc 1 (N / d), F d m := by
  classical
  rw [Finset.sum_sigma']
  refine Finset.sum_bij (fun p _ => ⟨p.1, p.2⟩) ?_ ?_ ?_ ?_
  · intro p hp
    simp only [hyperbolaLeft, Finset.mem_filter, Finset.mem_product,
      Finset.mem_Icc] at hp
    rcases hp with ⟨⟨⟨hp1, hp1s⟩, ⟨hp2, hp2N⟩⟩, hprod⟩
    simp only [Finset.mem_sigma, Finset.mem_Icc]
    exact ⟨⟨hp1, hp1s⟩, hp2,
      (Nat.le_div_iff_mul_le (by omega : 0 < p.1)).2
        (by simpa [Nat.mul_comm] using hprod)⟩
  · intro p _ q _ heq
    apply Prod.ext
    · exact congrArg Sigma.fst heq
    · exact congrArg (fun z => z.2) heq
  · intro q hq
    rcases q with ⟨d, m⟩
    simp only [Finset.mem_sigma, Finset.mem_Icc] at hq
    rcases hq with ⟨⟨hd1, hds⟩, hm1, hmdiv⟩
    have hmN : m <= N := hmdiv.trans (Nat.div_le_self N d)
    have hprod : d * m <= N := by
      simpa [Nat.mul_comm] using
        (Nat.le_div_iff_mul_le (by omega : 0 < d)).1 hmdiv
    refine ⟨(d, m), ?_, rfl⟩
    simp only [hyperbolaLeft, Finset.mem_filter, Finset.mem_product,
      Finset.mem_Icc]
    exact ⟨⟨⟨hd1, hds⟩, ⟨hm1, hmN⟩⟩, hprod⟩
  · intro p hp
    rfl

private theorem sum_hyperbolaRight_eq_left (N : Nat) (F : Nat -> Nat -> Real)
    (hsymm : ∀ a b, F a b = F b a) :
    (∑ p ∈ hyperbolaRight N, F p.1 p.2) =
      ∑ p ∈ hyperbolaLeft N, F p.1 p.2 := by
  classical
  refine Finset.sum_bij (fun p _ => (p.2, p.1)) ?_ ?_ ?_ ?_
  · intro p hp
    simp only [hyperbolaRight, hyperbolaLeft,
      Finset.mem_filter, Finset.mem_product, Finset.mem_Icc] at hp ⊢
    rcases hp with ⟨⟨⟨hp1, hp1N⟩, ⟨hp2, hp2s⟩⟩, hprod⟩
    exact ⟨⟨⟨hp2, hp2s⟩, ⟨hp1, hp1N⟩⟩,
      by simpa [Nat.mul_comm] using hprod⟩
  · intro p hp q hq heq
    exact Prod.swap_injective heq
  · intro q hq
    refine ⟨(q.2, q.1), ?_, by simp⟩
    simp only [hyperbolaRight, hyperbolaLeft,
      Finset.mem_filter, Finset.mem_product, Finset.mem_Icc] at hq ⊢
    rcases hq with ⟨⟨⟨hq1, hq1s⟩, ⟨hq2, hq2N⟩⟩, hprod⟩
    exact ⟨⟨⟨hq2, hq2N⟩, ⟨hq1, hq1s⟩⟩,
      by simpa [Nat.mul_comm] using hprod⟩
  · intro p hp
    exact hsymm p.1 p.2

/-- Balanced Dirichlet-hyperbola identity for a symmetric weight. -/
theorem balanced_productCutoffSum (N : Nat) (F : Nat -> Nat -> Real)
    (hsymm : ∀ a b, F a b = F b a) :
    AnalyticNT.Bilinear.productCutoffSum N F =
      2 * (∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
        ∑ m ∈ Finset.Icc 1 (N / d), F d m) -
      ∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
        ∑ m ∈ Finset.Icc 1 (Nat.sqrt N), F d m := by
  classical
  have hunion := Finset.sum_union_inter
    (s₁ := hyperbolaLeft N) (s₂ := hyperbolaRight N)
    (f := fun p => F p.1 p.2)
  rw [← hyperbolaPairs_eq_union N, hyperbolaLeft_inter_right N] at hunion
  rw [sum_hyperbolaPairs_eq_cutoff,
    sum_hyperbolaRight_eq_left N F hsymm] at hunion
  repeat rw [sum_hyperbolaLeft_eq_cutoff] at hunion
  have hsquare :
      (∑ p ∈ hyperbolaSquare N, F p.1 p.2) =
        ∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
          ∑ m ∈ Finset.Icc 1 (Nat.sqrt N), F d m := by
    unfold hyperbolaSquare
    rw [Finset.sum_product]
  rw [hsquare] at hunion
  linarith

theorem sum_vonMangoldt_Icc_eq_psi_nat (N : Nat) :
    (∑ n ∈ Finset.Icc 1 N, ArithmeticFunction.vonMangoldt n) =
      Chebyshev.psi (N : Real) := by
  rw [Chebyshev.psi_eq_sum_Icc, Nat.floor_natCast]
  apply Finset.sum_subset
  · intro n hn
    simp only [Finset.mem_Icc] at hn ⊢
    omega
  · intro n hn hnsmall
    simp only [Finset.mem_Icc] at hn hnsmall
    have hnlt : n < 1 := by
      by_contra h
      exact hnsmall ⟨by omega, hn.2⟩
    have hn0 : n = 0 := by omega
    subst n
    rfl

/-- Dirichlet's balanced hyperbola formula for `Lambda * Lambda`. -/
theorem vonMangoldt_convolution_hyperbola (N : Nat) :
    (∑ n ∈ Finset.Icc 1 N,
        (ArithmeticFunction.vonMangoldt *
          ArithmeticFunction.vonMangoldt) n) =
      2 * (∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
        ArithmeticFunction.vonMangoldt d *
          Chebyshev.psi (N / d : Nat)) -
        Chebyshev.psi (Nat.sqrt N : Nat) ^ 2 := by
  have hrect := sum_Icc_dirichletConvolution_eq_rectangular
    ArithmeticFunction.vonMangoldt ArithmeticFunction.vonMangoldt N
  have hbal := balanced_productCutoffSum N
    (fun d m => ArithmeticFunction.vonMangoldt d *
      ArithmeticFunction.vonMangoldt m) (by
        intro a b
        ring)
  have hcutoff :
      AnalyticNT.Bilinear.productCutoffSum N
          (fun d m => ArithmeticFunction.vonMangoldt d *
            ArithmeticFunction.vonMangoldt m) =
        ∑ d ∈ Finset.Icc 1 N,
          ArithmeticFunction.vonMangoldt d *
            ∑ m ∈ Finset.Icc 1 (N / d),
              ArithmeticFunction.vonMangoldt m := by
    unfold AnalyticNT.Bilinear.productCutoffSum
    apply Finset.sum_congr rfl
    intro d hd
    rw [Finset.mul_sum]
  rw [hcutoff] at hbal
  rw [hrect]
  rw [hbal]
  congr 1
  · apply congrArg (fun z : Real => 2 * z)
    apply Finset.sum_congr rfl
    intro d hd
    rw [← Finset.mul_sum, sum_vonMangoldt_Icc_eq_psi_nat]
  · have hsquare :
        (∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
          ∑ m ∈ Finset.Icc 1 (Nat.sqrt N),
            ArithmeticFunction.vonMangoldt d *
              ArithmeticFunction.vonMangoldt m) =
          (∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
            ArithmeticFunction.vonMangoldt d) ^ 2 := by
      rw [pow_two, Finset.sum_mul_sum]
    rw [hsquare, sum_vonMangoldt_Icc_eq_psi_nat]

/-- Abel summation for the logarithm-weighted von-Mangoldt sum. -/
theorem vonMangoldt_log_sum_eq (N : Nat) (hN : 1 <= N) :
    (∑ n ∈ Finset.Icc 1 N,
        ArithmeticFunction.vonMangoldt n * Real.log n) =
      Chebyshev.psi (N : Real) * Real.log N -
        ∫ t in (1 : Real)..N, Chebyshev.psi t / t := by
  let f : Real -> Real := Real.log
  have hNreal : (1 : Real) <= N := by exact_mod_cast hN
  have hdiff : ∀ t ∈ Set.Icc (1 : Real) N,
      DifferentiableAt Real f t := by
    intro t ht
    rw [Set.mem_Icc] at ht
    have ht0 : t ≠ 0 := by linarith
    exact (Real.hasDerivAt_log ht0).differentiableAt
  have hint : IntegrableOn (deriv f) (Set.Icc (1 : Real) N) := by
    refine ContinuousOn.integrableOn_Icc fun t ht => ?_
    rw [Set.mem_Icc] at ht
    have ht0 : t ≠ 0 := by
      have ht1 : (1 : Real) <= t := ht.1
      linarith
    refine ContinuousAt.continuousWithinAt (show ContinuousAt (fun u : Real => u⁻¹) t by
      fun_prop) |>.congr ?_ ?_
    · intro u hu
      have hu0 : u ≠ 0 := by linarith [hu.1]
      exact (Real.hasDerivAt_log hu0).deriv
    · exact (Real.hasDerivAt_log ht0).deriv
  have habel := sum_mul_eq_sub_sub_integral_mul
    (c := fun n => (ArithmeticFunction.vonMangoldt n : Real))
    (f := f) (by norm_num : (0 : Real) <= 1) hNreal hdiff hint
  simp only [Nat.floor_one, Nat.floor_natCast] at habel
  have hleft :
      (∑ n ∈ Finset.Ioc 1 N,
        f n * ArithmeticFunction.vonMangoldt n) =
      ∑ n ∈ Finset.Icc 1 N,
        ArithmeticFunction.vonMangoldt n * Real.log n := by
    calc
      (∑ n ∈ Finset.Ioc 1 N,
          f n * ArithmeticFunction.vonMangoldt n) =
          ∑ n ∈ Finset.Icc 1 N,
            f n * ArithmeticFunction.vonMangoldt n := by
              apply Finset.sum_subset
              · intro n hn
                simp only [Finset.mem_Ioc, Finset.mem_Icc] at hn ⊢
                omega
              · intro n hn hnopen
                simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn hnopen
                have hn1 : n = 1 := by omega
                subst n
                simp [f, ArithmeticFunction.vonMangoldt_apply_one]
      _ = ∑ n ∈ Finset.Icc 1 N,
          ArithmeticFunction.vonMangoldt n * Real.log n := by
            apply Finset.sum_congr rfl
            intro n hn
            simp [f, mul_comm]
  have hintegral :
      (∫ t in Set.Ioc (1 : Real) N,
        deriv f t * ∑ k ∈ Finset.Icc 0 ⌊t⌋₊,
          (ArithmeticFunction.vonMangoldt k : Real)) =
        ∫ t in (1 : Real)..N, Chebyshev.psi t / t := by
    rw [← intervalIntegral.integral_of_le hNreal]
    apply intervalIntegral.integral_congr
    intro t ht
    rw [Set.uIcc_of_le hNreal] at ht
    have ht0 : t ≠ 0 := by linarith [ht.1]
    dsimp [f]
    rw [(Real.hasDerivAt_log ht0).deriv]
    rw [← Chebyshev.psi_eq_sum_Icc]
    ring
  rw [hleft, hintegral] at habel
  change
    (∑ n ∈ Finset.Icc 1 N,
        ArithmeticFunction.vonMangoldt n * Real.log n) =
      Real.log N *
          (∑ k ∈ Finset.Icc 0 N,
            (ArithmeticFunction.vonMangoldt k : Real)) -
        Real.log 1 *
          (∑ k ∈ Finset.Icc 0 1,
            (ArithmeticFunction.vonMangoldt k : Real)) -
        ∫ t in (1 : Real)..N, Chebyshev.psi t / t at habel
  have hpsiN :
      (∑ k ∈ Finset.Icc 0 N,
        (ArithmeticFunction.vonMangoldt k : Real)) =
        Chebyshev.psi (N : Real) := by
    rw [Chebyshev.psi_eq_sum_Icc, Nat.floor_natCast]
  rw [hpsiN] at habel
  simpa [mul_comm] using habel

theorem floor_real_sqrt_natCast (N : Nat) :
    ⌊Real.sqrt (N : Real)⌋₊ = Nat.sqrt N := by
  rw [Nat.floor_eq_iff (Real.sqrt_nonneg _)]
  let s := Nat.sqrt N
  have hs0 : (0 : Real) <= s := by positivity
  have hsqlo : (s : Real) ^ 2 <= (N : Real) := by
    have h := Nat.sqrt_le N
    dsimp [s]
    have h' : ((Nat.sqrt N * Nat.sqrt N : Nat) : Real) <= (N : Real) := by
      exact_mod_cast h
    simpa [pow_two, Nat.cast_mul] using h'
  have hsqhi : (N : Real) < ((s : Real) + 1) ^ 2 := by
    have h := Nat.lt_succ_sqrt N
    dsimp [s]
    simp only [Nat.succ_eq_add_one] at h
    have h' : (N : Real) <
        (((Nat.sqrt N + 1) * (Nat.sqrt N + 1) : Nat) : Real) := by
      exact_mod_cast h
    simpa [pow_two, Nat.cast_mul, Nat.cast_add, Nat.cast_one] using h'
  have hlo : (s : Real) <= Real.sqrt N := by
    rw [← Real.sqrt_sq hs0]
    exact Real.sqrt_le_sqrt hsqlo
  have hsqrt2 : Real.sqrt (N : Real) ^ 2 = N :=
    Real.sq_sqrt (by positivity)
  have hhi : Real.sqrt (N : Real) < (s : Real) + 1 := by
    nlinarith [Real.sqrt_nonneg (N : Real)]
  exact ⟨hlo, hhi⟩

private theorem psi_natDiv_eq_psi_realDiv (N d : Nat) :
    Chebyshev.psi (N / d : Nat) =
      Chebyshev.psi ((N : Real) / (d : Real)) := by
  simp only [Chebyshev.psi_eq_sum_Icc, Nat.floor_natCast,
    Nat.floor_div_natCast]

theorem firstMertensSum_sqrt_natCast (N : Nat) :
    MathExtras.MertensFirstSharp.firstMertensSum (Real.sqrt (N : Real)) =
      ∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
        ArithmeticFunction.vonMangoldt d / (d : Real) := by
  unfold MathExtras.MertensFirstSharp.firstMertensSum
  rw [floor_real_sqrt_natCast]
  apply Finset.sum_congr
  · ext d
    simp only [Finset.mem_Ioc, Finset.mem_Icc]
    omega
  · intro d hd
    rfl

/-- Corrected Ramaré--Zúñiga Alterman `R4` at a natural endpoint. -/
noncomputable def correctedR4 (N : Nat) : Real :=
  ∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
    ArithmeticFunction.vonMangoldt d *
      chebyshevRemainder ((N : Real) / (d : Real))

/-- Corrected Ramaré--Zúñiga Alterman `R3` at a natural endpoint. -/
noncomputable def correctedR3 (N : Nat) : Real :=
  let X : Real := N
  let y := Real.sqrt X
  2 * y * |y * firstMertensRemainder y - chebyshevRemainder y| +
    chebyshevRemainder y ^ 2 +
    |chebyshevRemainder X| * Real.log X +
    |∫ t in (1 : Real)..X, chebyshevRemainder t / t|

private theorem hyperbola_small_sum_eq (N : Nat) :
    (∑ d ∈ Finset.Icc 1 (Nat.sqrt N),
      ArithmeticFunction.vonMangoldt d * Chebyshev.psi (N / d : Nat)) =
      (N : Real) *
          MathExtras.MertensFirstSharp.firstMertensSum (Real.sqrt (N : Real)) +
        correctedR4 N := by
  rw [firstMertensSum_sqrt_natCast]
  unfold correctedR4
  rw [Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro d hd
  simp only [Finset.mem_Icc] at hd
  have hdNat : d ≠ 0 := by omega
  have hd0 : (d : Real) ≠ 0 := Nat.cast_ne_zero.mpr hdNat
  rw [psi_natDiv_eq_psi_realDiv]
  unfold chebyshevRemainder MathExtras.MertensFirstSharp.psiError
  field_simp [hd0]
  ring

private theorem psi_sqrt_natCast (N : Nat) :
    Chebyshev.psi (Nat.sqrt N : Nat) =
      Chebyshev.psi (Real.sqrt (N : Real)) := by
  simp only [Chebyshev.psi_eq_sum_Icc, Nat.floor_natCast,
    floor_real_sqrt_natCast]

/-- Expanded hyperbola formula in the corrected `r-R/x` normalization. -/
theorem vonMangoldt_convolution_eq_corrected (N : Nat) (hN : 1 <= N) :
    (∑ n ∈ Finset.Icc 1 N,
        (ArithmeticFunction.vonMangoldt *
          ArithmeticFunction.vonMangoldt) n) =
      (N : Real) * Real.log N - 2 * (N : Real) *
          Real.eulerMascheroniConstant - (N : Real) +
        2 * (N : Real) * firstMertensRemainder (Real.sqrt (N : Real)) -
        2 * Real.sqrt (N : Real) *
          chebyshevRemainder (Real.sqrt (N : Real)) -
        chebyshevRemainder (Real.sqrt (N : Real)) ^ 2 +
        2 * correctedR4 N := by
  rw [vonMangoldt_convolution_hyperbola, hyperbola_small_sum_eq,
    psi_sqrt_natCast]
  unfold firstMertensRemainder chebyshevRemainder
  unfold MathExtras.MertensFirstSharp.firstMertensError
  unfold MathExtras.MertensFirstSharp.psiError
  have hN0 : (0 : Real) <= N := by positivity
  have hs2 : Real.sqrt (N : Real) ^ 2 = N := Real.sq_sqrt hN0
  have hlogsqrt := Real.log_sqrt hN0
  ring_nf at hlogsqrt ⊢
  nlinarith

theorem r2Star_eq_convolution_sub_log (N : Nat) :
    r2Star N =
      (∑ n ∈ Finset.Icc 1 N,
        (ArithmeticFunction.vonMangoldt *
          ArithmeticFunction.vonMangoldt) n) -
      (∑ n ∈ Finset.Icc 1 N,
        ArithmeticFunction.vonMangoldt n * Real.log n) +
      2 * (N : Real) * Real.eulerMascheroniConstant := by
  unfold r2Star r2Coeff
  rw [Finset.sum_add_distrib, Finset.sum_sub_distrib]
  simp only [Finset.sum_const, Nat.card_Icc]
  push_cast
  ring

private theorem intervalIntegrable_psi_div {N : Nat} (hN : 1 <= N) :
    IntervalIntegrable (fun t : Real => Chebyshev.psi t / t) volume 1 N := by
  have hNreal : (1 : Real) <= N := by exact_mod_cast hN
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hNreal]
  have hbase := integrableOn_mul_sum_Icc
    (c := fun n => (ArithmeticFunction.vonMangoldt n : Real))
    (m := 0) (a := (1 : Real)) (b := (N : Real)) (by norm_num)
    (show IntegrableOn (fun t : Real => t⁻¹) (Set.Icc 1 N) by
      refine ContinuousOn.integrableOn_Icc fun t ht =>
        ContinuousAt.continuousWithinAt ?_
      rw [Set.mem_Icc] at ht
      have ht0 : t ≠ 0 := by linarith [ht.1]
      fun_prop)
  refine hbase.congr_fun (fun t _ => ?_) measurableSet_Icc
  dsimp only
  rw [Chebyshev.psi_eq_sum_Icc]
  ring

private theorem intervalIntegrable_chebyshevRemainder_div
    {N : Nat} (hN : 1 <= N) :
    IntervalIntegrable (fun t : Real => chebyshevRemainder t / t)
      volume 1 N := by
  have hpsi := intervalIntegrable_psi_div hN
  have hone : IntervalIntegrable (fun _t : Real => (1 : Real)) volume 1 N :=
    intervalIntegrable_const
  refine (hpsi.sub hone).congr (fun t ht => ?_)
  rw [Set.uIoc_of_le (by exact_mod_cast hN : (1 : Real) <= N)] at ht
  have ht0 : t ≠ 0 := by linarith [ht.1.le]
  unfold chebyshevRemainder MathExtras.MertensFirstSharp.psiError
  field_simp

theorem integral_psi_div_eq_corrected (N : Nat) (hN : 1 <= N) :
    (∫ t in (1 : Real)..N, Chebyshev.psi t / t) =
      (N : Real) - 1 +
        ∫ t in (1 : Real)..N, chebyshevRemainder t / t := by
  have hNreal : (1 : Real) <= N := by exact_mod_cast hN
  have hR := intervalIntegrable_chebyshevRemainder_div hN
  have hone : IntervalIntegrable (fun _t : Real => (1 : Real)) volume 1 N :=
    intervalIntegrable_const
  calc
    (∫ t in (1 : Real)..N, Chebyshev.psi t / t) =
        ∫ t in (1 : Real)..N, (1 + chebyshevRemainder t / t) := by
          apply intervalIntegral.integral_congr
          intro t ht
          rw [Set.uIcc_of_le hNreal] at ht
          have ht0 : t ≠ 0 := by linarith [ht.1]
          unfold chebyshevRemainder MathExtras.MertensFirstSharp.psiError
          field_simp
          ring
    _ = (∫ _t in (1 : Real)..N, (1 : Real)) +
          ∫ t in (1 : Real)..N, chebyshevRemainder t / t := by
            rw [intervalIntegral.integral_add hone hR]
    _ = (N : Real) - 1 +
          ∫ t in (1 : Real)..N, chebyshevRemainder t / t := by
            simp

/-- Exact corrected Lemma 6.1 identity at a natural endpoint. -/
theorem r2Star_eq_corrected (N : Nat) (hN : 1 <= N) :
    r2Star N =
      -1 + 2 * correctedR4 N +
        (2 * (N : Real) * firstMertensRemainder (Real.sqrt (N : Real)) -
          2 * Real.sqrt (N : Real) *
            chebyshevRemainder (Real.sqrt (N : Real))) -
        chebyshevRemainder (Real.sqrt (N : Real)) ^ 2 -
        chebyshevRemainder (N : Real) * Real.log N +
        ∫ t in (1 : Real)..N, chebyshevRemainder t / t := by
  rw [r2Star_eq_convolution_sub_log,
    vonMangoldt_convolution_eq_corrected N hN,
    vonMangoldt_log_sum_eq N hN,
    integral_psi_div_eq_corrected N hN]
  unfold chebyshevRemainder MathExtras.MertensFirstSharp.psiError
  ring

/-- Corrected Ramaré--Zúñiga Alterman Lemma 6.1.  This is the exact
arithmetic/Abel bridge; no estimate for `R3` or `R4` is assumed here. -/
theorem r2Star_abs_le_corrected (N : Nat) (hN : 1 <= N) :
    |r2Star N| <= 1 + correctedR3 N + 2 * |correctedR4 N| := by
  rw [r2Star_eq_corrected N hN]
  let y := Real.sqrt (N : Real)
  let q := 2 * (N : Real) * firstMertensRemainder y -
    2 * y * chebyshevRemainder y
  let s := chebyshevRemainder y ^ 2
  let e := chebyshevRemainder (N : Real) * Real.log N
  let i := ∫ t in (1 : Real)..N, chebyshevRemainder t / t
  have hraw :
      |-1 + 2 * correctedR4 N + q - s - e + i| <=
        1 + 2 * |correctedR4 N| + |q| + |s| + |e| + |i| := by
    rw [abs_le]
    constructor <;>
      nlinarith [le_abs_self (correctedR4 N), neg_le_abs (correctedR4 N),
        le_abs_self q, neg_le_abs q, le_abs_self s, neg_le_abs s,
        le_abs_self e, neg_le_abs e, le_abs_self i, neg_le_abs i]
  have hNreal : (1 : Real) <= N := by exact_mod_cast hN
  have hlog0 : 0 <= Real.log (N : Real) := Real.log_nonneg hNreal
  have hy0 : 0 <= y := Real.sqrt_nonneg _
  have hy2 : y ^ 2 = (N : Real) := Real.sq_sqrt (by positivity)
  have hq : |q| =
      2 * y * |y * firstMertensRemainder y - chebyshevRemainder y| := by
    have hqeq : q =
        2 * y * (y * firstMertensRemainder y - chebyshevRemainder y) := by
      dsimp [q]
      rw [← hy2]
      ring
    rw [hqeq, abs_mul, abs_mul, abs_of_nonneg (by norm_num : (0 : Real) <= 2),
      abs_of_nonneg hy0]
  have hs : |s| = chebyshevRemainder y ^ 2 := by
    dsimp [s]
    exact abs_of_nonneg (sq_nonneg _)
  have he : |e| =
      |chebyshevRemainder (N : Real)| * Real.log N := by
    dsimp [e]
    rw [abs_mul, abs_of_nonneg hlog0]
  change
    |-1 + 2 * correctedR4 N + q - s - e + i| <=
      1 + correctedR3 N + 2 * |correctedR4 N|
  rw [hq, hs, he] at hraw
  unfold correctedR3
  dsimp [y, i]
  dsimp [y, q, s, e] at hraw
  nlinarith

#print axioms balanced_productCutoffSum
#print axioms vonMangoldt_convolution_hyperbola
#print axioms vonMangoldt_log_sum_eq
#print axioms vonMangoldt_convolution_eq_corrected
#print axioms integral_psi_div_eq_corrected
#print axioms r2Star_eq_corrected
#print axioms r2Star_abs_le_corrected

end MathExtras.RamareMertens2025
