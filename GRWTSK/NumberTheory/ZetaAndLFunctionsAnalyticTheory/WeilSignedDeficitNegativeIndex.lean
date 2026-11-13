/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFullFrequencyTail
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic

/-!
# Signed Weil-frequency deficit and finite-family trace counting

MSC2020: 11M41 (primary), 11M26, 46E35, 42A38.

Keep the EXACT primitive Dirichlet frequency symbol from
FullFrequencyTail, including all von Mangoldt prime powers, character
phases, conductor and gamma/parity. For a threshold eta, the deficiency
max(eta - fullFrequencySymbol,0) is nonnegative and vanishes beyond the
existing source-exact highFrequencyCutoff.

For an arbitrary finite family of Fourier coefficients with a pointwise
Bessel budget, the integral of this deficiency imposes a sharp
dimension/trace inequality. This is the finite-family analytical
calculation, not an imposed sign hypothesis.

The complete original-source Plancherel return, Bessel's inequality
for an orthonormal family of supported tests, and pole-inclusive
negative-index theorem are proved in the adjacent analytical companion
WeilSignedDeficitNegativeIndex.md. Those Fourier and zeta
linear-algebra bridges are WRITTEN, NOT Lean declarations here.
This module does not create or assume a substitute positive form.

Primary comparison: E. Bombieri (2000), Remarks on Weil's quadratic
functional, I, §§2--3 and finite negative-eigenvalue analysis;
classical Bessel/Fourier time-band limiting. This fixed-window
trace budget is not claimed novel.

SOURCE_PROOF_CANDIDATE; Lean elaboration, complete dependency build,
kernel replay, transitive axiom audit, numerical certification and
independent analytical review NOT_RUN. Novelty UNASSESSED.
No sorry, admit, research axioms, RH or primitive GRH proof.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.SignedDeficitNegativeIndex

open FullFrequencyTail

/-- Original complete signed Fourier symbol, charged only where it is
strictly below the prescribed threshold eta. The symbol itself is not
replaced by a majorant. -/
def frequencyDeficit {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (A η ξ : ℝ) : ℝ :=
  max (η - fullFrequencySymbol χ A ξ) 0

theorem frequencyDeficit_nonneg {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (A η ξ : ℝ) :
    0 ≤ frequencyDeficit χ A η ξ := by
  simp [frequencyDeficit]

/-- The negative signed-deficit frequency region is supported inside the
EXPLICIT cutoff from the original arithmetic multiplier. -/
theorem frequencyDeficit_eq_zero_of_highCutoff {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) (A η ξ : ℝ)
    (hcut : highFrequencyCutoff χ A η ≤ |ξ|) :
    frequencyDeficit χ A η ξ = 0 := by
  have h := fullFrequencySymbol_ge_of_highCutoff χ A ξ η hcut
  unfold frequencyDeficit
  rw [max_eq_right (by linarith : η - fullFrequencySymbol χ A ξ ≤ 0)]

/-- The finite-family Bessel/trace step. On its own this is not the
physical Weil sign theorem; its legitimate consumer takes u i ξ to be
the ACTUAL squared angular Fourier transform of an orthonormal
supported complex source and w the signed-frequency deficit.
The separately proved original-source Plancherel return supplies
each hnegative when the original Q is nonpositive. -/
theorem finite_family_weighted_trace_bound
    {ι : Type*} (s : Finset ι) (A η : ℝ)
    (w : ℝ → ℝ) (u : ι → ℝ → ℝ)
    (hw : Integrable w volume)
    (hwu : ∀ i ∈ s, Integrable (fun ξ => w ξ * u i ξ) volume)
    (hw0 : ∀ᵐ ξ ∂volume, 0 ≤ w ξ)
    (hBessel : ∀ᵐ ξ ∂volume, (∑ i ∈ s, u i ξ) ≤ 2 * A)
    (hnegative : ∀ i ∈ s, η ≤ ∫ ξ : ℝ, w ξ * u i ξ) :
    (s.card : ℝ) * η ≤ (2 * A) * (∫ ξ : ℝ, w ξ) := by
  have hsum_int : Integrable
      (fun ξ : ℝ => ∑ i ∈ s, w ξ * u i ξ) volume :=
    integrable_finsetSum s (fun i hi => hwu i hi)
  have hpoint :
      ∀ᵐ ξ : ℝ ∂volume,
        (∑ i ∈ s, w ξ * u i ξ) ≤ (2 * A) * w ξ := by
    filter_upwards [hw0, hBessel] with ξ hwξ hξ
    calc
      (∑ i ∈ s, w ξ * u i ξ) = w ξ * (∑ i ∈ s, u i ξ) := by
        rw [Finset.mul_sum]
      _ ≤ w ξ * (2 * A) := mul_le_mul_of_nonneg_left hξ hwξ
      _ = (2 * A) * w ξ := mul_comm _ _
  have hintegral :
      (∫ ξ : ℝ, ∑ i ∈ s, w ξ * u i ξ) ≤
        (2 * A) * (∫ ξ : ℝ, w ξ) := by
    calc
      _ ≤ ∫ ξ : ℝ, (2 * A) * w ξ :=
        integral_mono_ae hsum_int (hw.const_mul _) hpoint
      _ = _ := integral_const_mul _ _
  have hlower :
      (s.card : ℝ) * η ≤
        ∑ i ∈ s, ∫ ξ : ℝ, w ξ * u i ξ := by
    calc
      (s.card : ℝ) * η = ∑ _i ∈ s, η := by simp
      _ ≤ _ := Finset.sum_le_sum (fun i hi => hnegative i hi)
  have hsum :
      (∑ i ∈ s, ∫ ξ : ℝ, w ξ * u i ξ) =
        ∫ ξ : ℝ, ∑ i ∈ s, w ξ * u i ξ :=
    (integral_finsetSum s (fun i hi => hwu i hi)).symm
  exact hlower.trans (hsum.le.trans hintegral)

end GRWTSK.NumberTheory.WeilQuadraticForm.SignedDeficitNegativeIndex
