# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ConductorThreeHalfPlusEpsilon.Variant6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b75b21433614f86c097c9b3683ea0cab0ec1160` · SHA-256 `6dfe0b89af172ce1dc7e9e50cdf85cce190042531f69aae09169b8e2dc3bf88b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeCriticalPredicates
public import Surface.Core.ConductorThreeCritical
import Mathlib.Tactic

/-!
# Conductor-three half-plus-epsilon bounds

The logarithmic critical estimate is stronger than every square-root estimate
with an arbitrarily small power loss.  This file proves that implication with
an explicit power majorant for `log x` and an explicit finite-prefix constant.
No GRH, explicit formula, or packet estimate is assumed.
-/

public section

namespace Surface.Core.ConductorThreeHalfPlusEpsilon

noncomputable section

open Surface.Core.ConductorThreeCriticalPredicates
open Surface.Core.ConductorThreeCritical
open Surface.Core.ConductorThreeVonMangoldt
open Filter

/-- A square-root bound with an arbitrarily small power loss. -/
@[expose]
def TwistedPsiHalfPlusEpsilon : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ x : ℕ, 2 ≤ x →
        |conductorThreePsi x| ≤
          C * (x : ℝ) ^ (1 / 2 + epsilon)

/-- Finite mass used to absorb the initial segment omitted by an eventual
critical estimate. -/
private noncomputable def halfPlusEpsilonEarlyMass (x₀ : ℕ) : ℝ :=
  ∑ x ∈ Finset.Icc 2 x₀, |conductorThreePsi x|

private lemma halfPlusEpsilonEarlyMass_nonneg (x₀ : ℕ) :
    0 ≤ halfPlusEpsilonEarlyMass x₀ := by
  unfold halfPlusEpsilonEarlyMass
  positivity

private lemma conductorThreePsi_abs_le_earlyMass
    {x x₀ : ℕ} (hx : 2 ≤ x) (hxx₀ : x ≤ x₀) :
    |conductorThreePsi x| ≤ halfPlusEpsilonEarlyMass x₀ := by
  unfold halfPlusEpsilonEarlyMass
  exact Finset.single_le_sum
    (fun n hn ↦ abs_nonneg (conductorThreePsi n))
    (by simp [hx, hxx₀])

/-- The logarithmic critical rate is bounded by every half-plus-epsilon
power, with an explicit constant. -/
private lemma twistedPsiCriticalRate_le_halfPlusEpsilon
    {epsilon : ℝ} (hepsilon : 0 < epsilon) (x : ℕ) (hx : 1 ≤ x) :
    twistedPsiCriticalRate x ≤
      (4 / epsilon ^ 2) * (x : ℝ) ^ (1 / 2 + epsilon) := by
  have hhalf : 0 < epsilon / 2 := by positivity
  have hx0 : 0 ≤ (x : ℝ) := Nat.cast_nonneg x
  have hlog0 : 0 ≤ Real.log (x : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hx)
  have hlog := Real.log_le_rpow_div hx0 hhalf
  have hpow0 : 0 ≤ (x : ℝ) ^ (epsilon / 2) := Real.rpow_nonneg hx0 _
  have hdiv0 : 0 ≤ (x : ℝ) ^ (epsilon / 2) / (epsilon / 2) :=
    div_nonneg hpow0 hhalf.le
  have hlog2 : Real.log (x : ℝ) ^ 2 ≤
      ((x : ℝ) ^ (epsilon / 2) / (epsilon / 2)) ^ 2 := by
    exact (sq_le_sq₀ hlog0 hdiv0).2 hlog
  unfold twistedPsiCriticalRate
  rw [Real.sqrt_eq_rpow]
  calc
    (x : ℝ) ^ ((1 : ℝ) / 2) * Real.log (x : ℝ) ^ 2 ≤
        (x : ℝ) ^ ((1 : ℝ) / 2) *
          ((x : ℝ) ^ (epsilon / 2) / (epsilon / 2)) ^ 2 := by
      exact mul_le_mul_of_nonneg_left hlog2 (Real.rpow_nonneg hx0 _)
    _ = (4 / epsilon ^ 2) * (x : ℝ) ^ (1 / 2 + epsilon) := by
      rw [div_pow, ← Real.rpow_natCast]
      rw [← Real.rpow_mul hx0]
      norm_num only [Nat.cast_ofNat]
      have hexp : epsilon / 2 * (2 : ℝ) = epsilon := by ring
      rw [hexp]
      have hxpos : 0 < (x : ℝ) := by exact_mod_cast (show 0 < x by omega)
      have hden : ((epsilon / 2) ^ 2)⁻¹ = 4 / epsilon ^ 2 := by
        field_simp
        <;> ring
      rw [show (x : ℝ) ^ epsilon / (epsilon / 2) ^ 2 =
          (x : ℝ) ^ epsilon * ((epsilon / 2) ^ 2)⁻¹ by
        rw [div_eq_mul_inv]]
      rw [hden]
      calc
        (x : ℝ) ^ ((1 : ℝ) / 2) *
            ((x : ℝ) ^ epsilon * (4 / epsilon ^ 2)) =
            (4 / epsilon ^ 2) *
              ((x : ℝ) ^ ((1 : ℝ) / 2) * (x : ℝ) ^ epsilon) := by
                ring
        _ = (4 / epsilon ^ 2) * (x : ℝ) ^ ((1 : ℝ) / 2 + epsilon) := by
          rw [← Real.rpow_add hxpos]

/-- The sharp logarithmic critical bound implies every half-plus-epsilon
bound. -/
@[surface_novel, surface_published]
theorem twistedPsiCriticalBound_implies_halfPlusEpsilon :
    TwistedPsiCriticalBound → TwistedPsiHalfPlusEpsilon := by
  rintro ⟨C₀, hC₀, x₀, hx₀, hCritical⟩ epsilon hepsilon
  let A : ℝ := halfPlusEpsilonEarlyMass x₀
  let B : ℝ := 4 / epsilon ^ 2
  refine ⟨C₀ * B + A, ?_, ?_⟩
  · have hB : 0 ≤ B := by
      dsimp [B]
      positivity
    have hA : 0 ≤ A := halfPlusEpsilonEarlyMass_nonneg x₀
    positivity
  · intro x hx
    have hxpow : 1 ≤ (x : ℝ) ^ (1 / 2 + epsilon) := by
      apply Real.one_le_rpow
      · exact_mod_cast (by omega : 1 ≤ x)
      · linarith
    by_cases hmain : x₀ ≤ x
    · have hcrit := hCritical x hmain
      have hrate := twistedPsiCriticalRate_le_halfPlusEpsilon hepsilon x (by omega)
      have hB : 0 ≤ B := by
        dsimp [B]
        positivity
      have hpow0 : 0 ≤ (x : ℝ) ^ (1 / 2 + epsilon) :=
        le_trans (by norm_num) hxpow
      calc
        |conductorThreePsi x| ≤ C₀ * twistedPsiCriticalRate x := hcrit
        _ ≤ C₀ * (B * (x : ℝ) ^ (1 / 2 + epsilon)) :=
          mul_le_mul_of_nonneg_left hrate hC₀
        _ ≤ (C₀ * B + A) * (x : ℝ) ^ (1 / 2 + epsilon) := by
          have hA : 0 ≤ A := halfPlusEpsilonEarlyMass_nonneg x₀
          nlinarith
    · have hearly : |conductorThreePsi x| ≤ A := by
        exact conductorThreePsi_abs_le_earlyMass hx
          (Nat.le_of_lt (lt_of_not_ge hmain))
      have hCB : 0 ≤ C₀ * B := by positivity
      have hA : 0 ≤ A := halfPlusEpsilonEarlyMass_nonneg x₀
      calc
        |conductorThreePsi x| ≤ A := hearly
        _ ≤ A * (x : ℝ) ^ (1 / 2 + epsilon) := by nlinarith
        _ ≤ (C₀ * B + A) * (x : ℝ) ^ (1 / 2 + epsilon) := by
          nlinarith

/-- Matrix decay with an arbitrarily small power loss. -/
@[expose]
def MatrixHalfPlusEpsilonDecay
    (counts : Surface.Core.AnalyticPrimeWalk.ResidueSixCounts) : Prop :=
  ∀ epsilon : ℝ, 0 < epsilon →
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ᶠ K : ℕ in atTop,
        ‖indexedDiscrepancyOperator counts K‖ ≤
          C * (((K + 2 : ℕ) : ℝ) ^ (-1 / 2 + epsilon))

private lemma criticalRate_le_halfPlusEpsilonRate
    {epsilon : ℝ} (hepsilon : 0 < epsilon) {K : ℕ} (hK : 1 ≤ K) :
    conductorThreeCriticalRate K ≤
      (4 / epsilon ^ 2) *
        (((K + 2 : ℕ) : ℝ) ^ (-1 / 2 + epsilon)) := by
  let y : ℝ := ((K + 2 : ℕ) : ℝ)
  have hy3 : (3 : ℝ) ≤ y := by
    dsimp [y]
    exact_mod_cast (by omega : 3 ≤ K + 2)
  have hy1 : 1 ≤ y := by linarith
  have hy0 : 0 ≤ y := by linarith
  have hypos : 0 < y := lt_of_lt_of_le zero_lt_one hy1
  have hlog1 : 1 ≤ Real.log y := by
    rw [← Real.exp_le_exp, Real.exp_log hypos]
    exact le_trans Real.exp_one_lt_three.le hy3
  have hlog0 : 0 ≤ Real.log y := le_trans (by norm_num) hlog1
  have hsqrtLog : Real.sqrt (Real.log y) ≤ Real.log y := by
    have hsqrt0 := Real.sqrt_nonneg (Real.log y)
    have hsqrtSq := Real.sq_sqrt hlog0
    nlinarith
  have hlogPow := Real.log_le_rpow_div hy0 (show 0 < epsilon / 2 by positivity)
  have hquot0 : 0 ≤ y ^ (epsilon / 2) / (epsilon / 2) := by positivity
  have hlogSq : Real.log y ^ 2 ≤
      (y ^ (epsilon / 2) / (epsilon / 2)) ^ 2 :=
    (sq_le_sq₀ hlog0 hquot0).2 hlogPow
  have hlogSq' : Real.log y ^ 2 ≤ (4 / epsilon ^ 2) * y ^ epsilon := by
    calc
      Real.log y ^ 2 ≤ (y ^ (epsilon / 2) / (epsilon / 2)) ^ 2 := hlogSq
      _ = (4 / epsilon ^ 2) * y ^ epsilon := by
        rw [div_pow, ← Real.rpow_natCast, ← Real.rpow_mul hy0]
        norm_num only [Nat.cast_ofNat]
        have hexp : epsilon / 2 * (2 : ℝ) = epsilon := by ring
        rw [hexp]
        field_simp
        <;> ring
  have hsqrtYpos : 0 < Real.sqrt y := Real.sqrt_pos.2 hypos
  unfold conductorThreeCriticalRate
  change Real.log y * Real.sqrt (Real.log y) / Real.sqrt y ≤ _
  calc
    Real.log y * Real.sqrt (Real.log y) / Real.sqrt y ≤
        Real.log y ^ 2 / Real.sqrt y := by
      apply div_le_div_of_nonneg_right _ hsqrtYpos.le
      nlinarith
    _ ≤ ((4 / epsilon ^ 2) * y ^ epsilon) / Real.sqrt y := by
      exact div_le_div_of_nonneg_right hlogSq' hsqrtYpos.le
    _ = (4 / epsilon ^ 2) * y ^ (-1 / 2 + epsilon) := by
      rw [Real.sqrt_eq_rpow]
      have hinv : (y ^ ((1 : ℝ) / 2))⁻¹ = y ^ (-((1 : ℝ) / 2)) := by
        rw [← Real.rpow_neg hy0]
      rw [div_eq_mul_inv, hinv]
      calc
        (4 / epsilon ^ 2) * y ^ epsilon * y ^ (-((1 : ℝ) / 2)) =
            (4 / epsilon ^ 2) * (y ^ (-((1 : ℝ) / 2)) * y ^ epsilon) := by
              ring
        _ = (4 / epsilon ^ 2) * y ^ (-((1 : ℝ) / 2) + epsilon) := by
          rw [← Real.rpow_add hypos]
        _ = (4 / epsilon ^ 2) * y ^ (-1 / 2 + epsilon) := by
          congr 2 <;> ring

/-- The exact logarithmic matrix rate implies the weaker half-plus-epsilon
matrix rate. -/
@[surface_novel, surface_published]
theorem matrixCriticalDecay_implies_halfPlusEpsilon
    {counts : Surface.Core.AnalyticPrimeWalk.ResidueSixCounts} :
    MatrixCriticalDecay counts → MatrixHalfPlusEpsilonDecay counts := by
  rintro ⟨C₀, hC₀, hCritical⟩ epsilon hepsilon
  refine ⟨C₀ * (4 / epsilon ^ 2), by positivity, ?_⟩
  filter_upwards [hCritical,
    eventually_atTop.2 ⟨1, fun K hK ↦ hK⟩] with K hmain hK
  calc
    ‖indexedDiscrepancyOperator counts K‖ ≤
        C₀ * conductorThreeCriticalRate K := hmain
    _ ≤ C₀ * ((4 / epsilon ^ 2) *
        (((K + 2 : ℕ) : ℝ) ^ (-1 / 2 + epsilon))) :=
      mul_le_mul_of_nonneg_left
        (criticalRate_le_halfPlusEpsilonRate hepsilon hK) hC₀
    _ = (C₀ * (4 / epsilon ^ 2)) *
        (((K + 2 : ℕ) : ℝ) ^ (-1 / 2 + epsilon)) := by ring

end

end Surface.Core.ConductorThreeHalfPlusEpsilon
```
