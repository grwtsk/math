# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2Variance.Variant6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8a1cc95d13b3d2b848c12cfdae83cef7754ee5a` · SHA-256 `6a555020199f201f798690ecd1fa51b19c9e3b431d090c4d8520bd421d8396e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaTailSignRegularLowRank

open Set
namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

lemma weighted_sub_sq_summable {p g : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n)^2)) (c : ℝ) :
    Summable (fun n => p n * (g n-c)^2) := by
  apply ((hg2.sub (hg.mul_left (2*c))).add (hp.mul_left (c^2))).congr
  intro n
  ring

lemma tsum_weighted_sub_sq {p g : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n)^2)) (c : ℝ) :
    (∑' n, p n * (g n-c)^2) =
      (∑' n, p n*(g n)^2) - 2*c*(∑' n, p n*g n) + c^2*(∑' n, p n) := by
  calc
    _ = ∑' n, ((p n*(g n)^2 - (2*c)*(p n*g n)) + c^2*p n) := by
      apply tsum_congr
      intro n
      ring
    _ = _ := by
      rw [(hg2.sub (hg.mul_left (2*c))).tsum_add (hp.mul_left (c^2)),
        hg2.tsum_sub (hg.mul_left (2*c)), tsum_mul_left, tsum_mul_left]

lemma weighted_variance_le_center {p g : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n)^2))
    (hp1 : ∑' n, p n = 1) (c : ℝ) :
    (∑' n, p n * (g n-(∑' i, p i*g i))^2) ≤ ∑' n, p n*(g n-c)^2 := by
  rw [tsum_weighted_sub_sq hp hg hg2, tsum_weighted_sub_sq hp hg hg2, hp1]
  nlinarith [sq_nonneg (c-∑' i, p i*g i)]

lemma weighted_variance_le_tail_bound {p g b : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n)^2))
    (hp1 : ∑' n, p n = 1) (hb : Summable b) (K : ℝ)
    (hbound : ∀ n, p (n+1)*(g (n+1)-g 0)^2 ≤ K*b n) :
    (∑' n, p n*(g n-(∑' i, p i*g i))^2) ≤ K*(∑' n, b n) := by
  have hs := weighted_sub_sq_summable hp hg hg2 (g 0)
  have hshift : Summable (fun n => p (n+1)*(g (n+1)-g 0)^2) :=
    (summable_nat_add_iff 1).mpr hs
  calc
    _ ≤ ∑' n, p n*(g n-g 0)^2 := weighted_variance_le_center hp hg hg2 hp1 _
    _ = ∑' n, p (n+1)*(g (n+1)-g 0)^2 := by
      rw [hs.tsum_eq_zero_add]
      simp
    _ ≤ ∑' n, K*b n := hshift.tsum_le_tsum hbound (hb.mul_left K)
    _ = _ := tsum_mul_left

lemma weighted_curvature_variance_identity {p g h : ℕ → ℝ}
    (hp : Summable p) (hg : Summable (fun n => p n * g n))
    (hg2 : Summable (fun n => p n * (g n)^2))
    (hh : Summable (fun n => p n*h n)) (hp1 : ∑' n, p n = 1) :
    (∑' n, p n*((g n)^2+h n)) - (∑' n, p n*g n)^2 =
      (∑' n, p n*h n) + ∑' n, p n*(g n-(∑' i, p i*g i))^2 := by
  have he : (∑' n, p n*((g n)^2+h n)) =
      (∑' n, p n*(g n)^2)+(∑' n, p n*h n) := by
    simp_rw [mul_add]
    exact hg2.tsum_add hh
  rw [he, tsum_weighted_sub_sq hp hg hg2, hp1]
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
