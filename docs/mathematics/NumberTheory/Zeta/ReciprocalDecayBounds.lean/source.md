# Complete source: GRWTSK.NumberTheory.Zeta.ReciprocalDecayBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `774e40eaeffa54c84e5eb25e6abe1889da780eb8` · SHA-256 `859834ff247d980c1873adfc0435a31d52e8c3aa8a0f4eb3f39c36019367c2d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.MoebiusEulerProduct
import GRWTSK.Analysis.AsymptoticAnalysis.SignedEnergyDecomposition

/-! Unconditional scalar right-line decay for the exact reciprocal-zeta pickup
kernel. This estimates no finite-time Bessel or Mellin residual until an exact
source adapter has been supplied. Constants depend on the chosen c > 1.
-/
noncomputable section
open MeasureTheory Set
namespace EulerP04RH.RightLine

def absoluteDirichletBudget (c : ℝ) : ℝ :=
  ∑' n : ℕ, ‖FEMI.moebiusDirichletTerm (c:ℂ) n‖

theorem absoluteDirichletBudget_nonnegative (c : ℝ) :
    0 ≤ absoluteDirichletBudget c := tsum_nonneg (fun _ => norm_nonneg _)

theorem reciprocal_zeta_uniform_bound {c : ℝ} (hc : 1 < c) {s : ℂ} (hs : s.re=c) :
    ‖(riemannZeta s)⁻¹‖ ≤ absoluteDirichletBudget c := by
  rw [←FEMI.moebiusDirichlet_eq_inv_zeta s (by simpa [hs] using hc)]
  have hnorm : (fun n => ‖FEMI.moebiusDirichletTerm s n‖) =
      fun n => ‖FEMI.moebiusDirichletTerm (c:ℂ) n‖ := by
    funext n
    rw [FEMI.moebiusDirichletTerm_eq,FEMI.moebiusDirichletTerm_eq,
      LSeries.norm_term_eq,LSeries.norm_term_eq,hs,Complex.ofReal_re]
  have hsum := (FEMI.moebiusDirichlet_summable (c:ℂ) (by simpa using hc)).norm
  have ht := norm_tsum_le_tsum_norm
    (f := FEMI.moebiusDirichletTerm s) (by rwa [hnorm])
  simpa only [hnorm,absoluteDirichletBudget] using ht

def pickupKernel (c t : ℝ) : ℂ :=
  let z : ℂ := (c-1/2:ℝ)+t*Complex.I
  1/(z*(z+1/2)*riemannZeta (z+1/2))

theorem pickupKernel_norm_decay {c t : ℝ} (hc : 1 < c) (ht : 1 ≤ |t|) :
    ‖pickupKernel c t‖ ≤ absoluteDirichletBudget c * |t|^(-2:ℝ) := by
  let z : ℂ := (c-1/2:ℝ)+t*Complex.I
  have hzIm : z.im=t := by simp [z]
  have hplusIm : (z+1/2).im=t := by simp [z]
  have hplusRe : (z+1/2).re=c := by simp [z]
  have htpos : 0 < |t| := by linarith
  have hnz : |t| ≤ ‖z‖ := by simpa only [hzIm] using Complex.abs_im_le_norm z
  have hnplus : |t| ≤ ‖z+1/2‖ := by
    simpa only [hplusIm] using Complex.abs_im_le_norm (z+1/2)
  have hzBound := reciprocal_zeta_uniform_bound hc hplusRe
  have hprod : |t|^2 ≤ ‖z‖*‖z+1/2‖ := by
    simpa only [pow_two] using mul_le_mul hnz hnplus (abs_nonneg _) (norm_nonneg _)
  have hdpos : 0 < ‖z‖*‖z+1/2‖ := mul_pos (htpos.trans_le hnz) (htpos.trans_le hnplus)
  change ‖1/(z*(z+1/2)*riemannZeta (z+1/2))‖ ≤ _
  calc
    _ = ‖(riemannZeta (z+1/2))⁻¹‖/(‖z‖*‖z+1/2‖) := by
      simp only [one_div,mul_inv_rev,norm_mul,norm_inv]
      ring
    _ ≤ absoluteDirichletBudget c/(|t|^2) :=
      div_le_div₀ (absoluteDirichletBudget_nonnegative c) hzBound (by positivity) hprod
    _ = _ := by rw [Real.rpow_neg (abs_nonneg _),Real.rpow_two]; simp [div_eq_mul_inv]

theorem pickupKernel_continuous {c : ℝ} (hc : 1 < c) : Continuous (pickupKernel c) := by
  let z : ℝ → ℂ := fun t => (c-1/2:ℝ)+t*Complex.I
  have hz : Continuous z := by fun_prop
  have hp : Continuous (fun t => z t+1/2) := by fun_prop
  have hre (t : ℝ) : (z t+1/2).re=c := by simp [z]
  have hp0 (t : ℝ) : z t+1/2 ≠ 0 :=
    Complex.ne_zero_of_re_pos (by rw [hre]; linarith)
  have hz0 (t : ℝ) : z t ≠ 0 :=
    Complex.ne_zero_of_re_pos (by simp [z]; linarith)
  have hζ0 (t : ℝ) : riemannZeta (z t+1/2) ≠ 0 :=
    riemannZeta_ne_zero_of_one_lt_re (by rw [hre]; exact hc)
  have hζ : Continuous (fun t => riemannZeta (z t+1/2)) := by
    rw [continuous_iff_continuousAt]
    intro t
    have hs1 : z t+1/2 ≠ 1 := by
      intro h
      have hh := congrArg Complex.re h
      rw [hre] at hh
      norm_num at hh
      linarith
    simpa only [Function.comp_def] using
      (differentiableAt_riemannZeta hs1).continuousAt.comp
        (f := fun t : ℝ => z t+1/2) (x := t) hp.continuousAt
  exact continuous_const.div ((hz.mul hp).mul hζ)
    (fun t => mul_ne_zero (mul_ne_zero (hz0 t) (hp0 t)) (hζ0 t))

/-- A genuinely convergent tail of the exact reciprocal pickup kernel. -/
theorem pickupKernel_right_tail {c H : ℝ} (hc : 1 < c) (hH : 1 ≤ H) :
    IntegrableOn (pickupKernel c) (Ioi H) ∧
      ‖∫ t : ℝ in Ioi H, pickupKernel c t‖ ≤
        absoluteDirichletBudget c*H^(-1:ℝ) := by
  have hm := EulerP04RH.right_tail_bound (F := pickupKernel c)
    (A := absoluteDirichletBudget c) (m := 2) (by norm_num) (by linarith : 0 < H)
    (pickupKernel_continuous hc).aestronglyMeasurable
    (by
      intro t ht
      have htpos : 0 < t := lt_of_lt_of_le (by linarith : 0 < H) ht.le
      have hdec := pickupKernel_norm_decay hc
        (show 1 ≤ |t| by rw [abs_of_pos htpos]; exact hH.trans ht.le)
      simpa only [abs_of_pos htpos] using hdec)
  norm_num at hm
  exact hm

end EulerP04RH.RightLine
#print axioms EulerP04RH.RightLine.reciprocal_zeta_uniform_bound
#print axioms EulerP04RH.RightLine.pickupKernel_norm_decay
```
