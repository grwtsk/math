/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteAdditiveProjector
import GRWTSK.NumberTheory.Primes.GoldbachWeighted
import Mathlib.Data.Complex.BigOperators
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact finite additive Fourier projector for Goldbach mass

The canonical `ZMod q` additive-character average reconstructs the actual
ordered logarithmic Goldbach mass when `2 * N < q`. The explicit no-wrap
hypothesis is essential: without it, the character average detects only a
congruence modulo `q`.

This is a finite algebraic identity. It supplies neither the continuous
circle-method integral nor a major/minor-arc estimate.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachFiniteFourier

open scoped BigOperators
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiniteAdditiveProjector
open GRWTSK.NumberTheory.Primes.GoldbachWeighted

/-- The prime-log weighted additive-character projector on the complete box. -/
noncomputable def goldbachProjectorMass (q N : ℕ) [NeZero q] : ℂ :=
  ∑ uv ∈ goldbachBox N,
    (primeLogWeight uv.1 : ℂ) * (primeLogWeight uv.2 : ℂ) *
      characterProjector q uv.1 uv.2 N

/-- The projector is literally the normalized full-frequency character
average from `FiniteAdditiveProjector`. -/
theorem goldbachProjectorMass_eq_fullFrequency (q N : ℕ) [NeZero q] :
    goldbachProjectorMass q N =
      ∑ uv ∈ goldbachBox N,
        (primeLogWeight uv.1 : ℂ) * (primeLogWeight uv.2 : ℂ) *
          ((q : ℂ)⁻¹ * ∑ k : ZMod q,
            ZMod.stdAddChar
              (k * ((uv.1 : ZMod q) + (uv.2 : ZMod q) - (N : ZMod q)))) := by
  unfold goldbachProjectorMass
  apply Finset.sum_congr rfl
  intro uv _
  rw [characterProjector_eq_average]

/-- Under the explicit no-wrap bound, the finite character average recovers
the same real logarithmic mass, embedded in `ℂ`. -/
theorem goldbachProjectorMass_eq_logMass {q N : ℕ} [NeZero q]
    (hq : 2 * N < q) :
    goldbachProjectorMass q N = (goldbachLogMass N : ℂ) := by
  unfold goldbachProjectorMass goldbachLogMass
  rw [Complex.ofReal_sum]
  apply Finset.sum_congr rfl
  intro uv huv
  rcases uv with ⟨u, v⟩
  have hbounds : u ≤ N ∧ v ≤ N := (mem_goldbachBox).mp huv
  by_cases hu : Nat.Prime u
  · by_cases hv : Nat.Prime v
    · have huI : u ∈ Finset.Icc 1 N :=
        Finset.mem_Icc.mpr ⟨hu.one_le, hbounds.1⟩
      have hvI : v ∈ Finset.Icc 1 N :=
        Finset.mem_Icc.mpr ⟨hv.one_le, hbounds.2⟩
      have hNI : N ∈ Finset.Icc 1 N :=
        Finset.mem_Icc.mpr ⟨hu.one_le.trans hbounds.1, le_rfl⟩
      rw [characterProjector_eq_indicator_of_noWrap hq huI hvI hNI]
      by_cases hsum : u + v = N
      · simp [primeLogWeight, goldbachLogTerm, hu, hv, hsum]
      · simp [primeLogWeight, goldbachLogTerm, hu, hv, hsum]
    · simp [primeLogWeight, goldbachLogTerm, hu, hv]
  · simp [primeLogWeight, goldbachLogTerm, hu]

end GRWTSK.NumberTheory.Primes.GoldbachFiniteFourier
