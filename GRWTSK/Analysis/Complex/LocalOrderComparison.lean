import GRWTSK.Analysis.Complex.LogarithmicOrderDetection

/-! Uniqueness and germ comparison of supplied local integer orders for E5/B3.
No completed-function comparison or global divisor is supplied by these lemmas. -/
namespace GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
open Filter
open scoped Topology

/-- Two analytic-unit local factorizations of the same function have the same order. -/
theorem local_factorization_order_unique (f u v : ℂ → ℂ) (a : ℂ) (k l : ℤ)
    (hu : AnalyticAt ℂ u a) (hu0 : u a ≠ 0)
    (hv : AnalyticAt ℂ v a) (hv0 : v a ≠ 0)
    (hf : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * u s)
    (hg : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ l * v s) : k = l := by
  have heq := scaled_coefficient_unique f u a (-(l : ℂ)) k hu hu0 hf
    (tendsto_scaled_neg_logDeriv_of_factorization f v a l hv hv0 hg)
  have hc : (l : ℂ) = (k : ℂ) := neg_inj.mp heq
  exact_mod_cast hc.symm

/-- An actual punctured-germ equality transports the signed order. -/
theorem local_order_eq_of_germ_eq (f g u v : ℂ → ℂ) (a : ℂ) (k l : ℤ)
    (hu : AnalyticAt ℂ u a) (hu0 : u a ≠ 0)
    (hv : AnalyticAt ℂ v a) (hv0 : v a ≠ 0)
    (hf : f =ᶠ[𝓝[≠] a] fun s => (s - a) ^ k * u s)
    (hg : g =ᶠ[𝓝[≠] a] fun s => (s - a) ^ l * v s)
    (heq : f =ᶠ[𝓝[≠] a] g) : k = l :=
  local_factorization_order_unique f u v a k l hu hu0 hv hv0 hf (heq.trans hg)
end GRWTSK.Analysis.Complex.LogarithmicPrincipalPart
