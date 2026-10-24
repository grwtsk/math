# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiMetricDefect.Variant0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0ad548ef18eeb4d56c3459bfbc5a8a5bd2eb8b4` · SHA-256 `0fb4d1ddb33a0bc762a89132887d9d90335ca5ea7896a017e306ebb5c67879b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.XiSectionStrip
import Mathlib.LinearAlgebra.Matrix.PosDef
/-!
# Metric-adjoint defect and the raw-section obstruction

The eigenvector identity is exact for arbitrary complex matrices. Positive
definiteness supplies a strictly positive real energy, so a relative form
bound controls imaginary eigenvalue displacement. Combined with the actual
source section theorem, this rules out a vanishing bound for every family
of finite matrices whose eigenvalues include all raw-section zeros.
No spectral reality or unproved positive metric is assumed for the source.
-/

namespace FormalResearch.RiemannHypothesis.XiMetricDefect
open Matrix
open scoped ComplexConjugate ComplexOrder
open Filter
open scoped Topology
noncomputable section

/-- The metric-adjoint defect evaluated on an eigenvector records its full
imaginary spectral displacement. -/
theorem eigenvector_defect_identity {ι : Type*} [Fintype ι]
    (L G : Matrix ι ι ℂ) (v : ι → ℂ) (z : ℂ) (hLv : L *ᵥ v = z • v) :
    star v ⬝ᵥ ((G * L - Lᴴ * G) *ᵥ v) =
      ((2 * z.im : ℝ) : ℂ) * Complex.I * (star v ⬝ᵥ (G *ᵥ v)) := by
  have hb : star v ⬝ᵥ (Lᴴ *ᵥ (G *ᵥ v)) =
      star z * (star v ⬝ᵥ (G *ᵥ v)) := by
    rw [dotProduct_mulVec, vecMul_conjTranspose, star_star, hLv,
      star_smul, smul_dotProduct, smul_eq_mul]
  rw [sub_mulVec, ← mulVec_mulVec, ← mulVec_mulVec, dotProduct_sub,
    hLv, mulVec_smul, dotProduct_smul, hb, smul_eq_mul, ← sub_mul]
  rw [show star z = conj z from rfl, Complex.sub_conj]

/-- A proved positive metric and relative quadratic bound control eigenvalue displacement. -/
theorem eigenvalue_im_le_of_relative_defect {ι : Type*} [Fintype ι]
    (L G : Matrix ι ι ℂ) (hG : G.PosDef) (v : ι → ℂ) (hv : v ≠ 0)
    (z : ℂ) (hLv : L *ᵥ v = z • v) (ε : ℝ)
    (hdef : ‖star v ⬝ᵥ ((G * L - Lᴴ * G) *ᵥ v)‖ ≤
      2 * ε * (star v ⬝ᵥ (G *ᵥ v)).re) : |z.im| ≤ ε := by
  have hq := Complex.pos_iff.mp (hG.dotProduct_mulVec_pos hv)
  have hQ : (star v ⬝ᵥ (G *ᵥ v)) = ((star v ⬝ᵥ (G *ᵥ v)).re : ℂ) := by
    apply Complex.ext
    · simp
    · simpa using hq.2.symm
  rw [eigenvector_defect_identity L G v z hLv, hQ] at hdef
  norm_num only [norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Real.norm_eq_abs,
    abs_mul, abs_of_pos hq.1, Complex.ofReal_re] at hdef
  nlinarith

/-- No positive-metric realization covering every raw-section zero can have
a relative adjoint-defect bound tending to zero. The dimensions may vary freely. -/
theorem no_vanishing_relative_defect_for_sections
    (d : ℕ → ℕ) (L G : ∀ n, Matrix (Fin (d n)) (Fin (d n)) ℂ)
    (hG : ∀ n, (G n).PosDef)
    (hcover : ∀ n, 4 ≤ n → ∀ z : ℂ, XiReconstruction.spectralSection n z = 0 →
      ∃ v : Fin (d n) → ℂ, v ≠ 0 ∧ L n *ᵥ v = z • v)
    (ε : ℕ → ℝ) (hε : Tendsto ε atTop (𝓝 0)) :
    ¬ ∀ᶠ n in atTop, ∀ v : Fin (d n) → ℂ,
      ‖star v ⬝ᵥ ((G n * L n - (L n)ᴴ * G n) *ᵥ v)‖ ≤
        2 * ε n * (star v ⬝ᵥ (G n *ᵥ v)).re := by
  intro h
  have hsq : Tendsto (fun n => ε n ^ 2) atTop (𝓝 0) := by
    simpa using hε.pow 2
  apply XiSectionObstruction.spectralSection_no_vanishing_strip (fun n => ε n ^ 2) hsq
  filter_upwards [h, eventually_ge_atTop 4] with n hn hn4
  intro z hz
  obtain ⟨v, hv, heig⟩ := hcover n hn4 z hz
  have hb := eigenvalue_im_le_of_relative_defect (L n) (G n) (hG n)
    v hv z heig (ε n) (hn v)
  have heps : 0 ≤ ε n := (abs_nonneg _).trans hb
  simpa only [sq_abs] using (sq_le_sq₀ (abs_nonneg z.im) heps).mpr hb

end
end FormalResearch.RiemannHypothesis.XiMetricDefect
```
