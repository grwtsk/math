# Complete source: GRWTSK.Analysis.Inequalities.AdaptiveResidualBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `721dbf722972911c9ca48bcf006d5da294ed7fcc` · SHA-256 `601ba0cce4287ee79c3d99771c1cc25fc5f8ad7075b393d7e720f62d9addf61a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Status: candidate proof source; not elaborated in the pinned environment.
-/
import Mathlib

/-! # Quantile interior certificates and the complete residual budget

These are finite algebraic consumers, not constructed prime-energy witnesses.
The source, prime-base bound, operator projection, and quantitative integration
adapters remain exactly as identified in the accompanying mathematical note.
-/
set_option autoImplicit false
noncomputable section
namespace GRWTSK.NumberTheory.VonMangoldt.AdaptiveResidualBudget

/-- Consecutive quantile thresholds control the open-cell interior. -/
theorem quantile_interior (L U V : ℝ) (j M : ℕ)
    (hM : 0<(M:ℝ))
    (hL : (j:ℝ)*V≤(M:ℝ)*L)
    (hU : (M:ℝ)*U≤((j:ℝ)+1)*V) : U-L≤V/(M:ℝ) := by
  apply (le_div_iff₀ hM).2
  nlinarith

/-- Rounding to the grid keeps the last background interval, not its atom. -/
theorem add_last_background (interior last total : ℝ) (M X : ℕ)
    (hi : interior≤total/(M:ℝ)) (hb : last≤1/(X:ℝ)) :
    interior+last≤total/(M:ℝ)+1/(X:ℝ) := by linarith

/-- The exact rational padding used in the executable quantile construction. -/
theorem rational_padding :
    (3*(347:ℝ)/500+1/32+1/2048+71/100)^2<8 := by norm_num

/-- If sqrt(X) times the oscillation is at most this padded constant,
its range-variance allowance is strictly below 2/X. -/
theorem padded_fine_budget (X delta s : ℝ)
    (hX : 0<X) (hs : 0≤s) (hss : s^2=X) (hd : 0≤delta)
    (hdelta : s*delta≤3*(347:ℝ)/500+1/32+1/2048+71/100) :
    X*delta^2/4<2 := by
  have hnon : 0≤s*delta := mul_nonneg hs hd
  have hc : 0≤3*(347:ℝ)/500+1/32+1/2048+71/100 := by norm_num
  have hsq := (sq_le_sq₀ hnon hc).2 hdelta
  nlinarith [rational_padding]

/-- Every contribution is counted once; the pair residual may be negative. -/
theorem complete_linear_budget (X e ep removed R D V l L : ℝ)
    (hX : 0≤X) (he : e≤2*ep+2*removed) (hrec : ep=R+D+V)
    (hD : X*D≤l*L/2) (hV : X*V≤2) (hr : X*removed≤32*l^2) :
    X*e≤2*X*R+l*L+4+64*l^2 := by
  have hh := mul_le_mul_of_nonneg_left he hX
  rw [hrec] at hh
  nlinarith

/-- A convenient rational weakening of the logarithmic constant. -/
theorem rational_linear_budget (X e R l L : ℝ)
    (hl : 0≤l) (hlhi : l≤7/10) (hL : 0≤L)
    (h : X*e≤2*X*R+l*L+4+64*l^2) :
    X*e≤2*X*R+(7/10)*L+36 := by
  have hs : l^2≤49/100 := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hlhi hL
  nlinarith

/-- A data-dependent partition still supplies a complete fixed-instance identity. -/
theorem residual_lower (C D R : ℝ) (hC : 0≤C) (h : C=D+R) : -D≤R := by linarith

theorem residual_upper (C D R : ℝ) (hD : 0≤D) (h : C=D+R) : R≤C := by linarith

/-- Equal observed totals cannot replace the complete weighted energy. -/
theorem zero_mass_nonzero_pair : (1:ℝ)+(-1)=0 ∧ (1:ℝ)^2+(-1)^2=2 := by norm_num

/-- Returning from any specified partition restores its fine part and subtracts
only the diagonal part of that same fine energy. -/
theorem partition_independent_residual (ep C D R V Dfull gap : ℝ)
    (he : ep=C+V) (hc : C=D+R) (hd : Dfull=D+gap) :
    ep-Dfull=R+V-gap := by rw [he,hc,hd]; ring

/-- The complete Green diagonal leaves a partition-independent signed residual. -/
theorem canonical_linear_budget (X e ep removed R D l L : ℝ)
    (hX : 0≤X) (he : e≤2*ep+2*removed) (hrec : ep=R+D)
    (hD : X*D≤l*L/2) (hr : X*removed≤32*l^2) :
    X*e≤2*X*R+l*L+64*l^2 := by
  have hh := mul_le_mul_of_nonneg_left he hX
  rw [hrec] at hh
  nlinarith

theorem canonical_rational_budget (X e R l L : ℝ)
    (hl : 0≤l) (hlhi : l≤7/10) (hL : 0≤L)
    (h : X*e≤2*X*R+l*L+64*l^2) :
    X*e≤2*X*R+(7/10)*L+32 := by
  have hs : l^2≤49/100 := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hlhi hL
  nlinarith

end GRWTSK.NumberTheory.VonMangoldt.AdaptiveResidualBudget
```
