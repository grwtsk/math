# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ZetaDiskCurvature

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55576e68843c3929f7a60c843c648e30138bdc3c` · SHA-256 `d7585bb35ee502dd7e3f5b6c4be31a25880aacbdacafe148932eab60755eba4e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CubicZetaCircleBound
import Mathlib.Analysis.Complex.Liouville

set_option autoImplicit false

/-!
# Actual zeta curvature on the inner Jensen disks

The inherited all-point cubic modulus bound and a radius-one-half Cauchy circle
supply a bound for the actual SECOND derivative on the radius-5/2 disk. The
factor 2! and the radius square are retained. No derivative sample, supplied
curvature bound, or zero-free assertion at an unknown zero is used.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ZetaDiskCurvature

open Set Metric
open LocalJensenCount CubicCircleGeometry CubicZetaCircleBound

noncomputable section

/-- The pole is outside the entire closed outer disk, including its boundary. -/
theorem analyticOnNhd_zeta_disk (N : ℕ) (hN : 2 ≤ N) (C : ℂ)
    (hC : C = upperCenter N ∨ C = lowerCenter N) :
    AnalyticOnNhd ℂ riemannZeta (closedBall C (3 : ℝ)) := by
  intro z hz
  apply analyticOn_riemannZeta z
  intro he
  have hi := (disk_geometry N hN C z hC hz).2.1
  rw [he] at hi
  norm_num at hi

/-- A Cauchy circle of radius 1/2 around the closed 5/2 core stays in radius 3. -/
theorem half_disk_subset (C z : ℂ) (hz : z ∈ closedBall C (5 / 2 : ℝ)) :
    closedBall z (1 / 2 : ℝ) ⊆ closedBall C (3 : ℝ) := by
  intro w hw
  have hz' : dist z C ≤ 5 / 2 := hz
  have hw' : dist w z ≤ 1 / 2 := hw
  have ht := dist_triangle w z C
  change dist w C ≤ 3
  linarith

/-- Cauchy's n=2 estimate is 2*M/(1/2)^2 = 8*M, at every inner point. -/
theorem norm_zeta_second_le (N : ℕ) (hN : 2 ≤ N) (C z : ℂ)
    (hC : C = upperCenter N ∨ C = lowerCenter N)
    (hz : z ∈ closedBall C (5 / 2 : ℝ)) :
    ‖deriv (deriv riemannZeta) z‖ ≤ 8 * ((N : ℝ) + 2) ^ 3 := by
  have hsub := half_disk_subset C z hz
  have ha := analyticOnNhd_zeta_disk N hN C hC
  have hd : DiffContOnCl ℂ riemannZeta (ball z (1 / 2 : ℝ)) :=
    DiffContOnCl.mk_ball
      (fun w hw => (ha w (hsub (ball_subset_closedBall hw))).differentiableAt.differentiableWithinAt)
      (fun w hw => (ha w (hsub hw)).continuousAt.continuousWithinAt)
  have hb := Complex.norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le 2
    (by norm_num : (0 : ℝ) < 1 / 2) hd
    (fun w hw => norm_zeta_le_cube_on_disk N hN C w hC
      (hsub (sphere_subset_closedBall hw)))
  norm_num [iteratedDeriv_succ, iteratedDeriv_zero] at hb
  convert hb using 1 <;> ring

/-- Nonreal location excludes the pole and every trivial zero, without RH. -/
theorem nontrivial_of_zero_in_disk (N : ℕ) (hN : 2 ≤ N) (C z : ℂ)
    (hC : C = upperCenter N ∨ C = lowerCenter N)
    (hz : z ∈ closedBall C (3 : ℝ)) (hzero : riemannZeta z = 0) :
    NontrivialZetaZero z := by
  have hi := (disk_geometry N hN C z hC hz).2.1
  refine ⟨hzero, ?_, ?_⟩
  · rintro ⟨j, hj⟩
    rw [hj] at hi
    norm_num at hi
  · intro he
    rw [he] at hi
    norm_num at hi

end
end GRWTSK.RiemannHypothesis.ZetaDiskCurvature
```
