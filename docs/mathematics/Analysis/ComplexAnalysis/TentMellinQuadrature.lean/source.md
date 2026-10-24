# Complete source: GRWTSK.Analysis.Complex.TentMellinQuadrature

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a22d196a5aaf22cc7ef2665eda3f005f7ab2ef4e` · SHA-256 `7e2d29e92fd7527faf04b2ba79d29cc2ec77e6e9ba03af14f11009b5760fe4e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.TentMellinKernel
import GRWTSK.Analysis.Complex.IntervalMellinQuadrature
import GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure

set_option autoImplicit false

/-!
# Positive-mass midpoint quadrature for the existing tent transform

Integrate the affine weight exactly on each cell and approximate only the
unchanged density. This avoids numerical calls at z+1, which would leave the
rational node checker's Re(z)<=1 domain. No quotient at z=0 or z=-1 is used.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.TentMellinQuadrature

open MeasureTheory Set Filter
open scoped Interval BigOperators
open IntervalMellinKernel IntervalMellinQuadrature TentMellinKernel
open GRWTSK.Analysis.Real.TentWeight
open GRWTSK.Analysis.ErrorBounds.ComplexTaylorEnclosure
noncomputable section

/-- Exact mass of an affine weight on a cell. -/
def affineMass (α β c d : ℝ) : ℝ := (d - c) * (α * ((c + d) / 2) + β)

theorem integral_affine (α β c d : ℝ) :
    (∫ t in c..d, α * t + β) = affineMass α β c d := by
  rw [intervalIntegral.integral_add (f := fun t : ℝ => α * t) (g := fun _ : ℝ => β)
    ((continuous_const.mul continuous_id).intervalIntegrable c d) intervalIntegrable_const,
    intervalIntegral.integral_const_mul, integral_id,
    intervalIntegral.integral_const]
  simp only [smul_eq_mul, affineMass]
  ring

theorem affine_density_integrable {c d : ℝ} (hc : 1 < c) (hcd : c ≤ d)
    (α β : ℝ) (z : ℂ) :
    IntervalIntegrable (fun t => (α * t + β) • density z t) volume c d := by
  apply ContinuousOn.intervalIntegrable_of_Icc hcd
  exact ((continuous_const.mul continuous_id).add continuous_const).continuousOn.smul
    (density_continuousOn hc z)

/-- The midpoint is at most half the cell width from every point of that cell. -/
theorem midpoint_distance {c d t : ℝ} (_hcd : c ≤ d) (ht : t ∈ Icc c d) :
    |t - (c + d) / 2| ≤ (d - c) / 2 := by
  apply abs_le.mpr
  constructor <;> linarith [ht.1, ht.2]

/-- Derive the local bound from the original density, not a claimed integral error. -/
theorem affine_cell_error {c d α β e : ℝ} {z v : ℂ}
    (hc : 1 < c) (hcd : c ≤ d) (hz : z.re ≤ 2)
    (hw : ∀ t ∈ Icc c d, 0 ≤ α * t + β)
    (hv : ‖density z ((c + d) / 2) - v‖ ≤ e) :
    ‖(∫ t in c..d, (α * t + β) • density z t) - affineMass α β c d • v‖ ≤
      affineMass α β c d * (componentBound (z - 1) * (d - c) / 2 + e) := by
  let q := componentBound (z - 1)
  let R := q * (d - c) / 2 + e
  have hm : (c + d) / 2 ∈ Icc c d := ⟨by linarith, by linarith⟩
  have hf : ∀ t ∈ Icc c d, ‖density z t - v‖ ≤ R := by
    intro t ht
    have hd := density_spatial_lipschitz hc hm ht hz
    have hD : spatialSlopeBound c d 2 z ≤ q := by
      norm_num [spatialSlopeBound, densityBound, q]
      exact norm_le_componentBound (z - 1)
    have hl : ‖density z t - density z ((c + d) / 2)‖ ≤ q * (d - c) / 2 := by
      apply hd.trans
      calc
        _ ≤ q * |t - (c + d) / 2| :=
          mul_le_mul_of_nonneg_right hD (abs_nonneg _)
        _ ≤ q * ((d - c) / 2) :=
          mul_le_mul_of_nonneg_left (midpoint_distance hcd ht) (componentBound_nonneg _)
        _ = _ := by ring
    calc
      _ = ‖(density z t - density z ((c + d) / 2)) +
        (density z ((c + d) / 2) - v)‖ := by congr 1; abel
      _ ≤ _ := norm_add_le _ _
      _ ≤ R := add_le_add hl hv
  have hbound := intervalIntegral.norm_integral_le_of_norm_le
    (a := c) (b := d) (μ := volume) (f := fun t => (α * t + β) • (density z t - v))
    (g := fun t : ℝ => (α * t + β) * R) hcd
    (Eventually.of_forall fun t ht => by
      have ht' : t ∈ Icc c d := ⟨ht.1.le, ht.2⟩
      simpa only [norm_smul, Real.norm_eq_abs, abs_of_nonneg (hw t ht')] using
        mul_le_mul_of_nonneg_left (hf t ht') (hw t ht'))
    ((((continuous_const.mul continuous_id).add continuous_const).mul
      continuous_const).intervalIntegrable c d)
  have hid : (∫ t in c..d, (α * t + β) • (density z t - v)) =
      (∫ t in c..d, (α * t + β) • density z t) - affineMass α β c d • v := by
    simp only [smul_sub]
    rw [intervalIntegral.integral_sub
      (f := fun t : ℝ => (α*t+β) • density z t) (g := fun t : ℝ => (α*t+β) • v)
      (affine_density_integrable hc hcd α β z)
      ((((continuous_const.mul continuous_id).add continuous_const).smul
        continuous_const).intervalIntegrable c d),
      intervalIntegral.integral_smul_const, integral_affine]
  rw [hid, intervalIntegral.integral_mul_const, integral_affine] at hbound
  exact hbound

/-- Finite cell coverage and each positive affine mass are retained. -/
theorem affine_partition_error (u : ℕ → ℝ) (N : ℕ) (hu : Monotone u)
    (ha : 1 < u 0) (α β : ℝ) {z : ℂ} (hz : z.re ≤ 2)
    (hw : ∀ i < N, ∀ t ∈ Icc (u i) (u (i + 1)), 0 ≤ α * t + β)
    (v : ℕ → ℂ) (e : ℕ → ℝ)
    (hv : ∀ i < N, ‖density z ((u i + u (i + 1)) / 2) - v i‖ ≤ e i) :
    ‖(∫ t in (u 0)..(u N), (α * t + β) • density z t) -
      ∑ i ∈ Finset.range N, affineMass α β (u i) (u (i + 1)) • v i‖ ≤
      ∑ i ∈ Finset.range N, affineMass α β (u i) (u (i + 1)) *
        (componentBound (z - 1) * (u (i + 1) - u i) / 2 + e i) := by
  have hc := intervalIntegral.sum_integral_adjacent_intervals
    (a := u) (n := N) (f := fun t => (α * t + β) • density z t) (μ := volume)
    (fun i _ => affine_density_integrable (ha.trans_le (hu (Nat.zero_le i)))
      (hu (Nat.le_succ i)) α β z)
  rw [← hc, ← Finset.sum_sub_distrib]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro i hi
  exact affine_cell_error (ha.trans_le (hu (Nat.zero_le i))) (hu (Nat.le_succ i)) hz
    (hw i (Finset.mem_range.mp hi)) (hv i (Finset.mem_range.mp hi))

/-- All nodes belong to the original parameter z, including both removable parameters. -/
def halfNode (x h : ℝ) (N i : ℕ) (right : Bool) : ℝ :=
  (if right then x else x - h) + ((i : ℝ) + 1 / 2) * (h / (N : ℝ))

/-- Integrated tent mass, not interval width or a user-provided weight. -/
def halfMass (h : ℝ) (N i : ℕ) (right : Bool) : ℝ :=
  h / (N : ℝ) *
    (if right then 1 - ((i : ℝ) + 1 / 2) / (N : ℝ)
      else ((i : ℝ) + 1 / 2) / (N : ℝ))

theorem halfMass_nonneg {h : ℝ} (hh : 0 ≤ h) {N i : ℕ} (hi : i < N) (right : Bool) :
    0 ≤ halfMass h N i right := by
  have hN : (0 : ℝ) < N := by exact_mod_cast (Nat.zero_lt_of_lt hi)
  have hi' : (i : ℝ) + 1 ≤ N := by exact_mod_cast (Nat.succ_le_of_lt hi)
  unfold halfMass
  apply mul_nonneg (div_nonneg hh hN.le)
  cases right
  · exact div_nonneg (by positivity) hN.le
  · apply sub_nonneg.mpr
    apply (div_le_one hN).mpr
    linarith

/-- The two masses in each matched cell pair sum to one cell width. -/
theorem paired_mass (h : ℝ) (N i : ℕ) :
    halfMass h N i false + halfMass h N i true = h / (N : ℝ) := by
  simp only [halfMass, Bool.false_eq_true, if_false, if_true]
  ring

theorem total_mass (h : ℝ) (N : ℕ) (hN : 0 < N) :
    (∑ i ∈ Finset.range N, halfMass h N i false) +
      (∑ i ∈ Finset.range N, halfMass h N i true) = h := by
  rw [← Finset.sum_add_distrib]
  simp only [paired_mass, Finset.sum_const, Finset.card_range, nsmul_eq_mul]
  have hN0 : (N : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hN)
  field_simp [hN0]

/-- Direct quadrature of the selected tent: no numerical shifted-parameter call. -/
theorem tent_samples_error (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (N : ℕ) (hN : 0 < N) {z : ℂ} (hz : z.re ≤ 2)
    (vL vR : ℕ → ℂ) (eL eR : ℕ → ℝ)
    (hvL : ∀ i < N, ‖density z (halfNode x h N i false) - vL i‖ ≤ eL i)
    (hvR : ∀ i < N, ‖density z (halfNode x h N i true) - vR i‖ ≤ eR i) :
    ‖tentKernel x h z -
      ((∑ i ∈ Finset.range N, halfMass h N i false • vL i) +
        ∑ i ∈ Finset.range N, halfMass h N i true • vR i)‖ ≤
      componentBound (z - 1) * h ^ 2 / (2 * (N : ℝ)) +
      ((∑ i ∈ Finset.range N, halfMass h N i false * eL i) +
        ∑ i ∈ Finset.range N, halfMass h N i true * eR i) := by
  have hh0 : h ≠ 0 := ne_of_gt hh
  have hN0 : (N : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hN)
  have hleft : x - h ≤ x := by linarith
  have hright : x ≤ x + h := by linarith
  have hLc (i : ℕ) :
      (uniformNodes (x - h) x N i + uniformNodes (x - h) x N (i + 1)) / 2 =
        halfNode x h N i false := by
    simp only [halfNode, Bool.false_eq_true, if_false, uniformNodes, Nat.cast_add, Nat.cast_one]
    ring
  have hRc (i : ℕ) :
      (uniformNodes x (x + h) N i + uniformNodes x (x + h) N (i + 1)) / 2 =
        halfNode x h N i true := by
    simp only [halfNode, if_true, uniformNodes, Nat.cast_add, Nat.cast_one]
    ring
  have hLm (i : ℕ) :
      affineMass (1 / h) (-(x - h) / h)
        (uniformNodes (x - h) x N i) (uniformNodes (x - h) x N (i + 1)) =
      halfMass h N i false := by
    simp only [affineMass, halfMass, Bool.false_eq_true, if_false, uniformNodes,
      Nat.cast_add, Nat.cast_one]
    field_simp [hh0, hN0]
    ring
  have hRm (i : ℕ) :
      affineMass (-1 / h) ((x + h) / h)
        (uniformNodes x (x + h) N i) (uniformNodes x (x + h) N (i + 1)) =
      halfMass h N i true := by
    simp only [affineMass, halfMass, if_true, uniformNodes, Nat.cast_add, Nat.cast_one]
    field_simp [hh0, hN0]
    ring
  have hL := affine_partition_error (uniformNodes (x - h) x N) N
    (uniformNodes_monotone hleft N) (by simpa using ha) (1 / h) (-(x - h) / h) hz
    (fun i hi t ht => by
      have hl := (uniformNodes_monotone hleft N) (Nat.zero_le i)
      simp only [uniformNodes_zero] at hl
      have : 0 ≤ (t - (x - h)) / h := div_nonneg (by linarith [ht.1]) hh.le
      convert this using 1
      ring)
    vL eL (fun i hi => by simpa only [hLc] using hvL i hi)
  have hR := affine_partition_error (uniformNodes x (x + h) N) N
    (uniformNodes_monotone hright N) (by simp; linarith) (-1 / h) ((x + h) / h) hz
    (fun i hi t ht => by
      have hr := (uniformNodes_monotone hright N) (Nat.succ_le_of_lt hi)
      rw [uniformNodes_end x (x + h) N hN] at hr
      have : 0 ≤ (x + h - t) / h := div_nonneg (by linarith [ht.2]) hh.le
      convert this using 1
      ring)
    vR eR (fun i hi => by simpa only [hRc] using hvR i hi)
  have intL : (∫ t in (x - h)..x, (tent x h t : ℂ) * density z t) =
      ∫ t in (x - h)..x, ((1 / h) * t + (-(x - h) / h)) • density z t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [uIcc_of_le hleft] at ht
    rw [tent_on_left x h t hh ht.1 ht.2, Complex.real_smul]
    congr 1
    push_cast
    ring
  have intR : (∫ t in x..(x + h), (tent x h t : ℂ) * density z t) =
      ∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [uIcc_of_le hright] at ht
    rw [tent_on_right x h t hh ht.1 ht.2, Complex.real_smul]
    congr 1
    push_cast
    ring
  simp only [uniformNodes_zero, uniformNodes_end _ _ N hN, hLm, hRm,
    uniformNodes_step, sub_sub_cancel, add_sub_cancel_left] at hL hR
  have htri := (norm_add_le
    ((∫ t in (x - h)..x, ((1 / h) * t + (-(x - h) / h)) • density z t) -
      ∑ i ∈ Finset.range N, halfMass h N i false • vL i)
    ((∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t) -
      ∑ i ∈ Finset.range N, halfMass h N i true • vR i)).trans (add_le_add hL hR)
  rw [tentKernel_eq_split_integral x h hh ha z, intL, intR]
  have hmesh :
      (∑ i ∈ Finset.range N, halfMass h N i false * (componentBound (z - 1) * (h / (N : ℝ)) / 2)) +
      (∑ i ∈ Finset.range N, halfMass h N i true * (componentBound (z - 1) * (h / (N : ℝ)) / 2)) =
        componentBound (z - 1) * h ^ 2 / (2 * (N : ℝ)) := by
    rw [← Finset.sum_mul, ← Finset.sum_mul, ← add_mul, total_mass h N hN]
    ring
  calc
    _ = ‖((∫ t in (x - h)..x, ((1 / h) * t + (-(x - h) / h)) • density z t) -
        ∑ i ∈ Finset.range N, halfMass h N i false • vL i) +
      ((∫ t in x..(x + h), ((-1 / h) * t + (x + h) / h) • density z t) -
        ∑ i ∈ Finset.range N, halfMass h N i true • vR i)‖ := by congr 1; abel
    _ ≤ _ := htri
    _ = _ := by
      simp only [mul_add, Finset.sum_add_distrib]
      linear_combination hmesh

end
end GRWTSK.Analysis.Complex.TentMellinQuadrature
```
