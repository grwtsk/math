# Complete source: GRWTSK.Analysis.Fourier.ZModExpectedLayers

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fb5160815c51d110b620c33380cd9677fe7223e` · SHA-256 `e2ff91e488392d1b5765556f686c3cc0040d7c1ed2bd734f70e5dbbfac51da33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors; Lean implementation: OpenAI Codex.
Mathlib authorship and licensing retained. -/
import GRWTSK.Analysis.Fourier.ZModBalancedPartition
import GRWTSK.Analysis.Fourier.ZModSmallEnergySpectrum

/-!
# Expected cardinalities of finite Fourier layers

Finite averaging and splitting are proved by counting. The generic reductions
with explicit event-bound hypotheses are conditional lemmas: they do not prove
the partition concentration estimates of Pham--Sauermann, arXiv:2602.15797v1,
Lemmas 3.1 and 3.3. All spectral and numerical estimates invoked here are proved.
-/

namespace GRWTSK.ZModExpectedLayers
open scoped BigOperators
open GRWTSK.ZModIndependentSelection GRWTSK.ZModSmallEnergySets
open GRWTSK.ZModSmallEnergySpectrum GRWTSK.ZModBalancedPartition
open GRWTSK.ZModPartitionEnergy GRWTSK.FiniteExponentialLayers
noncomputable section
attribute [local instance] Classical.propDecidable

variable {Ω Λ : Type*} [Fintype Ω]

/-- Uniform finite mean, with zero value on an empty sample space. -/
def mean (f : Ω → ℝ) : ℝ := (Fintype.card Ω : ℝ)⁻¹ * ∑ ω, f ω

theorem mean_mono {f g : Ω → ℝ} (h : ∀ ω, f ω ≤ g ω) : mean f ≤ mean g :=
  mul_le_mul_of_nonneg_left (Finset.sum_le_sum (fun ω _ => h ω)) (by positivity)

theorem mean_const [Nonempty Ω] (c : ℝ) : mean (fun _ : Ω => c) = c := by
  simp [mean, Fintype.card_ne_zero]

theorem mean_add (f g : Ω → ℝ) : mean (fun ω => f ω + g ω) = mean f + mean g := by
  simp only [mean, Finset.sum_add_distrib, mul_add]

/-- Normalized finite event counts lie in `[0,1]`, including the empty space. -/
theorem eventProbability_nonneg (E : Ω → Prop) : 0 ≤ eventProbability E := by
  unfold eventProbability
  positivity

theorem eventProbability_le_one (E : Ω → Prop) : eventProbability E ≤ 1 := by
  unfold eventProbability
  apply div_le_one_of_le₀ _ (by positivity)
  exact_mod_cast Finset.card_le_card (Finset.filter_subset E (Finset.univ : Finset Ω))

/-- Finite Fubini: expected event cardinality is the sum of its pointwise
probabilities. There is no independence requirement. -/
theorem mean_filter_card (F : Finset Λ) (E : Ω → Λ → Prop) :
    mean (fun ω => ((F.filter (E ω)).card : ℝ)) =
      ∑ χ ∈ F, eventProbability (fun ω => E ω χ) := by
  classical
  have hc (ω : Ω) : ((F.filter (E ω)).card : ℝ) =
      ∑ χ ∈ F, if E ω χ then (1 : ℝ) else 0 := (Finset.sum_boole _ _).symm
  simp_rw [hc]
  unfold mean eventProbability
  rw [Finset.sum_comm, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro χ _
  rw [div_eq_inv_mul, Finset.sum_boole]

/-- A pointwise exceptional-set split for finite expected cardinalities.
The event bounds are explicit hypotheses, not a manufactured probability law. -/
theorem mean_filter_card_le_exceptional [DecidableEq Λ]
    (F B : Finset Λ) (E : Ω → Λ → Prop) (ε : ℝ) (hε : 0 ≤ ε)
    (hsmall : ∀ χ ∈ F, χ ∉ B → eventProbability (fun ω => E ω χ) ≤ ε) :
    mean (fun ω => ((F.filter (E ω)).card : ℝ)) ≤
      (F.card : ℝ) * ε + (F ∩ B).card := by
  rw [mean_filter_card]
  have hp (χ : Λ) (hχ : χ ∈ F) : eventProbability (fun ω => E ω χ) ≤
      ε + if χ ∈ B then 1 else 0 := by
    by_cases hb : χ ∈ B
    · rw [if_pos hb]
      exact (eventProbability_le_one _).trans (by linarith)
    · simpa only [if_neg hb, add_zero] using hsmall χ hχ hb
  calc
    _ ≤ ∑ χ ∈ F, (ε + if χ ∈ B then (1 : ℝ) else 0) := Finset.sum_le_sum hp
    _ = _ := by
      rw [Finset.sum_add_distrib]
      simp only [Finset.sum_const, nsmul_eq_mul, Finset.sum_boole]
      congr 1

variable {p m : ℕ} [NeZero p]

/-- The nontrivial frequencies of random energy less than `2t`. -/
def nonzeroLowEnergy (energy : Ω → ZMod p → ℝ) (t : ℝ) (ω : Ω) : Finset (ZMod p) :=
  (Finset.univ.erase 0).filter (fun χ => energy ω χ < 2 * t)

/-- The exact finite expectation reduction used after source Lemmas 3.1 and 3.3.
Only the displayed outside-`B` event estimate is a premise. -/
theorem mean_nonzeroLowEnergy_le (S : Finset (ZMod p)) (energy : Ω → ZMod p → ℝ)
    (m t : ℝ) (hsmall : ∀ χ : ZMod p, χ ≠ 0 →
      χ ∉ smallEnergyFrequencies S m (2000 * t) →
        eventProbability (fun ω => energy ω χ < 2 * t) ≤ 1 / (S.card : ℝ) ^ 9) :
    mean (fun ω => ((nonzeroLowEnergy energy t ω).card : ℝ)) ≤
      (p : ℝ) / (S.card : ℝ) ^ 9 +
        ((smallEnergyFrequencies S m (2000 * t)).erase 0).card := by
  classical
  have h := mean_filter_card_le_exceptional (Finset.univ.erase (0 : ZMod p))
    (smallEnergyFrequencies S m (2000 * t)) (fun ω χ => energy ω χ < 2 * t)
    (1 / (S.card : ℝ) ^ 9) (by positivity)
    (fun χ hχ hb => hsmall χ (Finset.mem_erase.mp hχ).1 hb)
  have hs : (Finset.univ.erase (0 : ZMod p)) ∩ smallEnergyFrequencies S m (2000 * t) =
      (smallEnergyFrequencies S m (2000 * t)).erase 0 := by ext χ; simp
  have hc : ((Finset.univ.erase (0 : ZMod p)).card : ℝ) ≤ p := by
    have hcard := Finset.card_le_card (Finset.erase_subset (0 : ZMod p) Finset.univ)
    simp only [Finset.card_univ, ZMod.card] at hcard
    exact_mod_cast hcard
  unfold nonzeroLowEnergy
  rw [hs] at h
  apply h.trans
  apply add_le_add _ le_rfl
  simpa only [div_eq_mul_inv, one_div, one_mul] using
    mul_le_mul_of_nonneg_right hc (by positivity : 0 ≤ ((S.card : ℝ) ^ 9)⁻¹)

/-- Removing the trivial frequency removes the additive `1` in the proved
spectral bound. -/
theorem smallEnergyFrequencies_erase_zero_card_le (hp : p.Prime)
    (S : Finset (ZMod p)) (hn : 10 ≤ S.card) (m t : ℝ)
    (hm : 0 < m) (ht : 0 < t) (htm : t ≤ m / 2000) :
    (((smallEnergyFrequencies S m t).erase 0).card : ℝ) ≤
      200 * p * Real.sqrt t / ((S.card : ℝ) * Real.sqrt m) := by
  have hb := smallEnergyFrequencies_card_le hp S hn m t hm ht htm
  have hz := zero_mem_smallEnergyFrequencies S m t ht.le
  have hc := Finset.card_erase_add_one hz
  have hc' : (((smallEnergyFrequencies S m t).erase 0).card : ℝ) + 1 =
      (smallEnergyFrequencies S m t).card := by exact_mod_cast hc
  linarith

/-- The numerical absorption in the source proof, with a margin: the spectral
coefficient is bounded by `9000`, and the error contributes at most one more. -/
theorem absorb_spectral_error (n m t q : ℝ) (hn : 1 ≤ n) (hm : 1 ≤ m)
    (hmn : m ≤ n) (ht : 1 ≤ t) (hq : 0 ≤ q) :
    q / n ^ 9 + 200 * q * Real.sqrt (2000 * t) / (n * Real.sqrt m) ≤
      10000 * q * Real.sqrt t / (n * Real.sqrt m) := by
  have hnp : 0 < n := by linarith
  have hmp : 0 < m := by linarith
  have htp : 0 ≤ t := by linarith
  have hsm : 0 < Real.sqrt m := Real.sqrt_pos.mpr hmp
  have hsm1 := Real.one_le_sqrt.mpr hm
  have hsmle : Real.sqrt m ≤ m := by nlinarith [Real.sq_sqrt hmp.le]
  have hst1 := Real.one_le_sqrt.mpr ht
  have hden : n * Real.sqrt m ≤ n ^ 9 := by
    calc
      _ ≤ n * n := mul_le_mul_of_nonneg_left (hsmle.trans hmn) hnp.le
      _ = n ^ 2 := by ring
      _ ≤ n ^ 9 := pow_le_pow_right₀ hn (by norm_num)
  have herr : q / n ^ 9 ≤ q * Real.sqrt t / (n * Real.sqrt m) := by
    apply (div_le_div_iff₀ (by positivity : 0 < n ^ 9) (mul_pos hnp hsm)).mpr
    calc
      q * (n * Real.sqrt m) ≤ q * n ^ 9 := mul_le_mul_of_nonneg_left hden hq
      _ ≤ (q * Real.sqrt t) * n ^ 9 :=
        mul_le_mul_of_nonneg_right (by nlinarith) (by positivity)
  have hs : Real.sqrt (2000 : ℝ) ≤ 45 := by
    have hs0 := Real.sqrt_nonneg (2000 : ℝ)
    nlinarith [Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 2000)]
  have hs' : Real.sqrt (2000 * t) ≤ 45 * Real.sqrt t := by
    rw [Real.sqrt_mul (by norm_num : (0 : ℝ) ≤ 2000)]
    exact mul_le_mul_of_nonneg_right hs (Real.sqrt_nonneg _)
  have hmain : 200 * q * Real.sqrt (2000 * t) / (n * Real.sqrt m) ≤
      9000 * q * Real.sqrt t / (n * Real.sqrt m) := by
    apply div_le_div_of_nonneg_right _ (mul_pos hnp hsm).le
    nlinarith [mul_le_mul_of_nonneg_left hs' (show 0 ≤ 200 * q by positivity)]
  calc
    _ ≤ q * Real.sqrt t / (n * Real.sqrt m) +
        9000 * q * Real.sqrt t / (n * Real.sqrt m) := add_le_add herr hmain
    _ = 9001 * q * Real.sqrt t / (n * Real.sqrt m) := by ring
    _ ≤ _ := by
      apply div_le_div_of_nonneg_right _ (mul_pos hnp hsm).le
      nlinarith [mul_nonneg hq (Real.sqrt_nonneg t)]

/-- Conditional expected-frequency bound after the explicit outside-`B`
concentration estimate. The spectral and numerical parts of the source argument
are proved, rather than included as additional hypotheses. -/
theorem mean_nonzeroLowEnergy_le_10000 (hp : p.Prime)
    (S : Finset (ZMod p)) (hn : 10 ≤ S.card) (energy : Ω → ZMod p → ℝ)
    (m t : ℝ) (hm : 1 ≤ m) (hmn : m ≤ S.card) (ht : 1 ≤ t)
    (htm : t ≤ m / 2000 ^ 2)
    (hsmall : ∀ χ : ZMod p, χ ≠ 0 →
      χ ∉ smallEnergyFrequencies S m (2000 * t) →
        eventProbability (fun ω => energy ω χ < 2 * t) ≤ 1 / (S.card : ℝ) ^ 9) :
    mean (fun ω => ((nonzeroLowEnergy energy t ω).card : ℝ)) ≤
      10000 * p * Real.sqrt t / ((S.card : ℝ) * Real.sqrt m) := by
  have hm0 : 0 < m := by linarith
  have ht0 : 0 < t := by linarith
  have hB := smallEnergyFrequencies_erase_zero_card_le hp S hn m (2000 * t)
    hm0 (by positivity) (by norm_num at htm ⊢; linarith)
  exact (mean_nonzeroLowEnergy_le S energy m t hsmall).trans
    ((add_le_add le_rfl hB).trans (absorb_spectral_error S.card m t p
      (by exact_mod_cast (show 1 ≤ S.card by omega)) hm hmn ht (by positivity)))

/-- Finite means preserve pointwise inclusions of random finite sets. -/
theorem mean_card_le_of_subset [DecidableEq Λ] (F G : Ω → Finset Λ)
    (h : ∀ ω, F ω ⊆ G ω) : mean (fun ω => ((F ω).card : ℝ)) ≤
      mean (fun ω => ((G ω).card : ℝ)) :=
  mean_mono (fun ω => by exact_mod_cast Finset.card_le_card (h ω))

/-- The trivial frequency costs at most one in the expected low band. The
remaining low band is included in the source threshold with `t = 1`. -/
theorem mean_lowBand_le_one_add [Nonempty Ω] (energy : Ω → ZMod p → ℝ) :
    mean (fun ω => ((lowBand (energy ω)).card : ℝ)) ≤
      1 + mean (fun ω => ((nonzeroLowEnergy energy 1 ω).card : ℝ)) := by
  classical
  have hs (ω : Ω) : lowBand (energy ω) ⊆ insert 0 (nonzeroLowEnergy energy 1 ω) := by
    intro χ hχ
    by_cases hz : χ = 0
    · simp [hz]
    · apply Finset.mem_insert_of_mem
      have hχ' := (Finset.mem_filter.mp hχ).2
      simp only [nonzeroLowEnergy, Finset.mem_filter, Finset.mem_erase,
        Finset.mem_univ, and_true]
      exact ⟨hz, by linarith⟩
  calc
    _ ≤ mean (fun ω => 1 + ((nonzeroLowEnergy energy 1 ω).card : ℝ)) := by
      apply mean_mono
      intro ω
      have hc := (Finset.card_le_card (hs ω)).trans
        (Finset.card_insert_le 0 (nonzeroLowEnergy energy 1 ω))
      have hc' : ((lowBand (energy ω)).card : ℝ) ≤
          (nonzeroLowEnergy energy 1 ω).card + 1 := by exact_mod_cast hc
      linarith
    _ = _ := by rw [mean_add, mean_const]

/-- Every positive dyadic band contains only nontrivial frequencies if the
energy vanishes at zero, and is contained in its source low-energy threshold. -/
theorem mean_dyadicBand_le_nonzeroLowEnergy (energy : Ω → ZMod p → ℝ)
    (hzero : ∀ ω, energy ω 0 = 0) (k : ℕ) :
    mean (fun ω => ((dyadicBand (energy ω) k).card : ℝ)) ≤
      mean (fun ω => ((nonzeroLowEnergy energy ((2 : ℝ) ^ k) ω).card : ℝ)) := by
  apply mean_card_le_of_subset
  intro ω χ hχ
  have hb := (Finset.mem_filter.mp hχ).2
  have hz : χ ≠ 0 := by
    intro hz
    rw [hz, hzero ω] at hb
    exact (not_le_of_gt (by positivity : 0 < (2 : ℝ) ^ k)) hb.1
  simp only [nonzeroLowEnergy, Finset.mem_filter, Finset.mem_erase,
    Finset.mem_univ, and_true]
  refine ⟨hz, ?_⟩
  have heq : (2 : ℝ) ^ (k + 1) = 2 * (2 : ℝ) ^ k := by ring
  exact hb.2.trans_eq heq

/-- The source expected `A₀` bound, conditional only on the actual outside-`B`
partition event estimate at threshold two. -/
theorem mean_lowBand_le_10000 [Nonempty Ω] (hp : p.Prime)
    (S : Finset (ZMod p)) (hn : 10 ≤ S.card) (energy : Ω → ZMod p → ℝ)
    (m : ℝ) (hm : (2000 : ℝ) ^ 2 ≤ m) (hmn : m ≤ S.card)
    (hsmall : ∀ χ : ZMod p, χ ≠ 0 →
      χ ∉ smallEnergyFrequencies S m 2000 →
        eventProbability (fun ω => energy ω χ < 2) ≤ 1 / (S.card : ℝ) ^ 9) :
    mean (fun ω => ((lowBand (energy ω)).card : ℝ)) ≤
      1 + 10000 * p / ((S.card : ℝ) * Real.sqrt m) := by
  have h := mean_nonzeroLowEnergy_le_10000 hp S hn energy m 1
    (by norm_num at hm; linarith) hmn (by norm_num) (by norm_num at hm ⊢; linarith)
    (by simpa using hsmall)
  have h' := (mean_lowBand_le_one_add energy).trans (add_le_add le_rfl h)
  simpa using h'

/-- The source expected dyadic-layer bound, conditional only on the actual
outside-`B` concentration estimate for this dyadic threshold. -/
theorem mean_dyadicBand_le_10000 (hp : p.Prime)
    (S : Finset (ZMod p)) (hn : 10 ≤ S.card) (energy : Ω → ZMod p → ℝ)
    (hzero : ∀ ω, energy ω 0 = 0) (m : ℝ) (hm : 1 ≤ m) (hmn : m ≤ S.card)
    (k : ℕ) (htm : (2 : ℝ) ^ k ≤ m / 2000 ^ 2)
    (hsmall : ∀ χ : ZMod p, χ ≠ 0 →
      χ ∉ smallEnergyFrequencies S m (2000 * (2 : ℝ) ^ k) →
        eventProbability (fun ω => energy ω χ < 2 * (2 : ℝ) ^ k) ≤
          1 / (S.card : ℝ) ^ 9) :
    mean (fun ω => ((dyadicBand (energy ω) k).card : ℝ)) ≤
      10000 * p * Real.sqrt ((2 : ℝ) ^ k) / ((S.card : ℝ) * Real.sqrt m) := by
  exact (mean_dyadicBand_le_nonzeroLowEnergy energy hzero k).trans
    (mean_nonzeroLowEnergy_le_10000 hp S hn energy m ((2 : ℝ) ^ k)
      hm hmn (one_le_pow₀ (by norm_num : (1 : ℝ) ≤ 2)) htm hsmall)

/-- The square-root weights in the source layer sum are dominated by the
proved universal exponential series. -/
theorem sqrt_dyadic_exp_term_le (k : ℕ) :
    Real.sqrt ((2 : ℝ) ^ k) * Real.exp (-(2 : ℝ) ^ k) ≤
      Real.exp ((k : ℝ) / 2 - (2 : ℝ) ^ k) := by
  have htwo : (2 : ℝ) ≤ Real.exp 1 := by
    have h := Real.add_one_le_exp (1 : ℝ)
    linarith
  have hpow : (2 : ℝ) ^ k ≤ Real.exp (k : ℝ) := by
    have h := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 2) htwo k
    simpa only [← Real.exp_nat_mul, mul_one] using h
  have heq : Real.exp ((k : ℝ) / 2) ^ 2 = Real.exp (k : ℝ) := by
    rw [← Real.exp_nat_mul]
    congr 1
    push_cast
    ring
  have hsqrt : Real.sqrt ((2 : ℝ) ^ k) ≤ Real.exp ((k : ℝ) / 2) := by
    have hsq := Real.sq_sqrt (by positivity : (0 : ℝ) ≤ (2 : ℝ) ^ k)
    have hp := Real.exp_pos ((k : ℝ) / 2)
    nlinarith [Real.sqrt_nonneg ((2 : ℝ) ^ k)]
  calc
    _ ≤ Real.exp ((k : ℝ) / 2) * Real.exp (-(2 : ℝ) ^ k) :=
      mul_le_mul_of_nonneg_right hsqrt (Real.exp_nonneg _)
    _ = _ := by rw [← Real.exp_add]; congr 1

/-- The weighted finite dyadic exponential sum has the source universal bound. -/
theorem sum_sqrt_dyadic_exp_le_two (N : ℕ) :
    (∑ k ∈ Finset.range N, Real.sqrt ((2 : ℝ) ^ k) * Real.exp (-(2 : ℝ) ^ k)) ≤ 2 :=
  (Finset.sum_le_sum (fun k _ => sqrt_dyadic_exp_term_le k)).trans
    (sum_exp_dyadic_le_two N)

/-- A finite group of at most 22 high-energy layers has the source tail bound. -/
theorem high_layers_sum_le (I : Finset ℕ) (m : ℝ) (hcard : I.card ≤ 22)
    (hlarge : ∀ k ∈ I, m / (2 : ℝ) ^ 22 ≤ (2 : ℝ) ^ k) :
    ∑ k ∈ I, Real.exp (-(2 : ℝ) ^ k) ≤ 22 * Real.exp (-m / (2 : ℝ) ^ 22) := by
  calc
    _ ≤ ∑ _k ∈ I, Real.exp (-m / (2 : ℝ) ^ 22) := by
      apply Finset.sum_le_sum
      intro k hk
      apply Real.exp_le_exp.mpr
      have h := hlarge k hk
      linarith
    _ = (I.card : ℝ) * Real.exp (-m / (2 : ℝ) ^ 22) := by simp
    _ ≤ _ := mul_le_mul_of_nonneg_right (by exact_mod_cast hcard) (Real.exp_nonneg _)

/-- The exact source lower slice restriction turns the high-energy exponential
factor into a fourth-power reciprocal. -/
theorem source_tail_exp_le (n m : ℝ) (hn : 0 < n)
    (hl : (2 : ℝ) ^ 24 * Real.log n ≤ m) :
    Real.exp (-m / (2 : ℝ) ^ 22) ≤ 1 / n ^ 4 := by
  have harg : -m / (2 : ℝ) ^ 22 ≤ -(4 * Real.log n) := by
    norm_num at hl ⊢
    linarith
  apply (Real.exp_le_exp.mpr harg).trans_eq
  rw [Real.exp_neg, show (4 : ℝ) * Real.log n = (4 : ℕ) * Real.log n by norm_num,
    Real.exp_nat_mul, Real.exp_log hn, one_div]

/-- The source's final rational tail is absorbed by the original physical
slice-size bound `1 ≤ m ≤ n`. -/
theorem reciprocal_tail_le (n m : ℝ) (hn : 1 ≤ n) (hm : 1 ≤ m) (hmn : m ≤ n) :
    22 / n ^ 4 ≤ 22 / (n * Real.sqrt m) := by
  have hnp : 0 < n := by linarith
  have hmp : 0 < m := by linarith
  have hs1 := Real.one_le_sqrt.mpr hm
  have hsle : Real.sqrt m ≤ m := by nlinarith [Real.sq_sqrt hmp.le]
  have hden : n * Real.sqrt m ≤ n ^ 4 := by
    calc
      _ ≤ n * n := mul_le_mul_of_nonneg_left (hsle.trans hmn) hnp.le
      _ = n ^ 2 := by ring
      _ ≤ n ^ 4 := pow_le_pow_right₀ hn (by norm_num)
  exact div_le_div_of_nonneg_left (by norm_num) (mul_pos hnp (Real.sqrt_pos.mpr hmp)) hden

/-- Source small dyadic layers, through `floor(log₂ m)-22`. -/
def smallLayerRange (m : ℕ) : Finset ℕ := Finset.range (Nat.log 2 m - 22 + 1)

/-- The at most 22 remaining layers in the complete finite decomposition. -/
def largeLayerRange (m : ℕ) : Finset ℕ :=
  Finset.range (Nat.log 2 m + 1) \ smallLayerRange m

theorem smallLayerRange_subset (m : ℕ) :
    smallLayerRange m ⊆ Finset.range (Nat.log 2 m + 1) :=
  Finset.range_mono (by omega)

theorem largeLayerRange_card_le (m : ℕ) : (largeLayerRange m).card ≤ 22 := by
  unfold largeLayerRange
  rw [Finset.card_sdiff_of_subset (smallLayerRange_subset m)]
  simp only [smallLayerRange, Finset.card_range]
  omega

/-- Every small source layer lies within the proven spectral-estimate range. -/
theorem smallLayerRange_size_le (m : ℕ) (hm : 2 ^ 22 ≤ m)
    (k : ℕ) (hk : k ∈ smallLayerRange m) :
    (2 : ℝ) ^ k ≤ (m : ℝ) / 2000 ^ 2 := by
  have hL : 22 ≤ Nat.log 2 m := Nat.le_log_of_pow_le (by decide) hm
  have hkL : k + 22 ≤ Nat.log 2 m := by
    have := Finset.mem_range.mp hk
    omega
  have hm0 : m ≠ 0 := by norm_num at hm; omega
  have hpow : 2 ^ (k + 22) ≤ m :=
    (Nat.pow_le_pow_right (by decide : 0 < 2) hkL).trans (Nat.pow_log_le_self 2 hm0)
  have hpowR : (2 : ℝ) ^ k * 2 ^ 22 ≤ m := by
    exact_mod_cast (show 2 ^ k * 2 ^ 22 ≤ m by simpa only [← pow_add] using hpow)
  apply (le_div_iff₀ (by norm_num : (0 : ℝ) < 2000 ^ 2)).mpr
  have hpos : (0 : ℝ) ≤ 2 ^ k := by positivity
  norm_num at hpowR ⊢
  nlinarith

/-- Every remaining source layer is above the exponential-tail cutoff. -/
theorem largeLayerRange_size_ge (m k : ℕ) (hk : k ∈ largeLayerRange m) :
    (m : ℝ) / (2 : ℝ) ^ 22 ≤ (2 : ℝ) ^ k := by
  have hk' := Finset.mem_sdiff.mp hk
  have hklo : Nat.log 2 m + 1 ≤ k + 22 := by
    have hnot : ¬k < Nat.log 2 m - 22 + 1 := by
      simpa only [smallLayerRange, Finset.mem_range] using hk'.2
    omega
  have hmR : (m : ℝ) < (2 : ℝ) ^ (Nat.log 2 m + 1) := by
    exact_mod_cast Nat.lt_pow_succ_log_self (by decide : 1 < 2) m
  apply (div_le_iff₀ (by positivity : (0 : ℝ) < 2 ^ 22)).mpr
  calc
    (m : ℝ) ≤ 2 ^ (Nat.log 2 m + 1) := hmR.le
    _ ≤ 2 ^ (k + 22) := pow_le_pow_right₀ (by norm_num : (1 : ℝ) ≤ 2) hklo
    _ = (2 : ℝ) ^ k * 2 ^ 22 := pow_add _ _ _

/-- The source tail summation and its count of 22 terms are both derived from
the actual finite layer ranges. -/
theorem largeLayerRange_exp_sum_le (m : ℕ) :
    (∑ k ∈ largeLayerRange m, Real.exp (-(2 : ℝ) ^ k)) ≤
      22 * Real.exp (-(m : ℝ) / (2 : ℝ) ^ 22) :=
  high_layers_sum_le _ m (largeLayerRange_card_le m) (largeLayerRange_size_ge m)

end
end GRWTSK.ZModExpectedLayers
```
