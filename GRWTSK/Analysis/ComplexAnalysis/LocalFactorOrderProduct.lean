import GRWTSK.Analysis.ComplexAnalysis.LogarithmicOrderDetection

/-! Local signed-order addition for E5 in the two exceptional-group versions.
Completed sources, every extra factor and their factorizations remain premises. -/
namespace GRWTSK.Analysis.ComplexAnalysis.LogarithmicPrincipalPart
open Filter
open scoped Topology

/-- Multiplication adds the signed integer orders of actual local factorizations. -/
theorem product_local_factorization (f g u v : ℂ → ℂ) (a : ℂ) (k l : ℤ)
    (hf : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * u s)
    (hg : g =ᶠ[𝓝[≠] a] fun s => (s - a) ^ l * v s) :
    (fun s => f s * g s) =ᶠ[𝓝[≠] a]
      fun s => (s - a) ^ (k + l) * (u s * v s) := by
  filter_upwards [hf, hg, self_mem_nhdsWithin] with s hs ht hsa
  have hs0 : s - a ≠ 0 := sub_ne_zero.mpr (by simpa using hsa)
  rw [hs, ht, zpow_add₀ hs0]
  ring

/-- The scaled coefficient of negative logDeriv records the sum, with its sign. -/
theorem product_scaled_neg_logDeriv (f g u v : ℂ → ℂ) (a : ℂ) (k l : ℤ)
    (hu : AnalyticAt ℂ u a) (hu0 : u a ≠ 0)
    (hv : AnalyticAt ℂ v a) (hv0 : v a ≠ 0)
    (hf : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * u s)
    (hg : g =ᶠ[𝓝[≠] a] fun s => (s - a) ^ l * v s) :
    Tendsto (fun s => (s - a) * (-logDeriv (fun z => f z * g z) s))
      (𝓝[≠] a) (𝓝 (-((k + l : ℤ) : ℂ))) :=
  tendsto_scaled_neg_logDeriv_of_factorization _ _ a (k + l)
    (hu.mul hv) (mul_ne_zero hu0 hv0) (product_local_factorization f g u v a k l hf hg)

/-- An analytic nonvanishing extra factor contributes order zero, not a new residue. -/
theorem analytic_unit_preserves_scaled_coefficient (f u H : ℂ → ℂ) (a : ℂ) (k : ℤ)
    (hu : AnalyticAt ℂ u a) (hu0 : u a ≠ 0)
    (hH : AnalyticAt ℂ H a) (hH0 : H a ≠ 0)
    (hf : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * u s) :
    Tendsto (fun s => (s - a) * (-logDeriv (fun z => f z * H z) s))
      (𝓝[≠] a) (𝓝 (-(k : ℂ))) := by
  simpa using product_scaled_neg_logDeriv f H u H a k 0 hu hu0 hH hH0 hf
    (Filter.Eventually.of_forall (fun s => by simp))
end GRWTSK.Analysis.ComplexAnalysis.LogarithmicPrincipalPart
