import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ConvergentLocalProduct
import Mathlib.Analysis.Analytic.Uniqueness
import Mathlib.Analysis.Analytic.Order

/-! Conditional continuation of actual local-factor products (E4/E5).
Convergence, actual source identities and analyticity are supplied on exact domains;
no completed L-function, bad-place factor or meromorphic continuation is constructed. -/
namespace GRWTSK.Analysis.ComplexAnalysis
open Filter Set
open scoped Topology
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory

/-- Matched convergent factors identify analytic functions on a connected domain. -/
theorem analytic_eqOn_of_local_products {n v : Type*} [Fintype n] [DecidableEq n]
    (F G : ℂ → ℂ) (D V : Set ℂ) (hD : IsPreconnected D)
    (hV : IsOpen V) (hne : V.Nonempty) (hVD : V ⊆ D)
    (hF : AnalyticOnNhd ℂ F D) (hG : AnalyticOnNhd ℂ G D)
    (A B U W : v → Matrix n n ℂ) (t : ℂ → v → ℂ)
    (hUW : ∀ p, U p * W p = 1) (hWU : ∀ p, W p * U p = 1)
    (hAB : ∀ p, A p * U p = U p * B p)
    (hprodF : ∀ s ∈ V, HasProd (fun p => (Matrix.det (1 - t s p • A p))⁻¹) (F s))
    (hprodG : ∀ s ∈ V, HasProd (fun p => (Matrix.det (1 - t s p • B p))⁻¹) (G s)) :
    EqOn F G D := by
  obtain ⟨a, ha⟩ := hne
  have heq : F =ᶠ[𝓝 a] G := by
    filter_upwards [hV.mem_nhds ha] with s hs
    exact local_product_limits_eq A B U W (t s) (F s) (G s)
      hUW hWU hAB (hprodF s hs) (hprodG s hs)
  exact hF.eqOn_of_preconnected_of_eventuallyEq hG hD (hVD ha) heq

/-- Equality on an open domain gives the actual full-neighborhood germ comparison. -/
theorem germ_eq_of_eqOn_open (F G : ℂ → ℂ) (D : Set ℂ) (hD : IsOpen D)
    (heq : EqOn F G D) (a : ℂ) (ha : a ∈ D) : F =ᶠ[𝓝 a] G := by
  filter_upwards [hD.mem_nhds ha] with s hs
  exact heq hs

/-- Analytic orders agree, including infinite order, once the domain equality is proved. -/
theorem analytic_order_eq_of_eqOn_open (F G : ℂ → ℂ) (D : Set ℂ) (hD : IsOpen D)
    (heq : EqOn F G D) (a : ℂ) (ha : a ∈ D) :
    analyticOrderAt F a = analyticOrderAt G a :=
  analyticOrderAt_congr (germ_eq_of_eqOn_open F G D hD heq a ha)
end GRWTSK.Analysis.ComplexAnalysis
