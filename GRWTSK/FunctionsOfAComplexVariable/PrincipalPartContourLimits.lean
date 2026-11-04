/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FunctionsOfAComplexVariable.FiniteLogDerivativeCircle

set_option autoImplicit false

/-!
# Source-bound finite contour balances and their limits

A finite balance is an oriented equality, not a meromorphic theorem by fiat.
For rectangles the right and left edges are oriented upwards, and bottom and
top edges left-to-right. Thus the finite boundary is right-left+bottom-top.
A caller using rectangles must supply that actual finite identity.

There is also a fully constructed circle adapter: the preceding local-germ
contour theorem supplies every finite balance. The resulting limit theorem
therefore consumes actual contour integrals and finite coefficient sums, rather
than an arbitrary predicate named residue convergence.

Only convergence along the supplied filter/exhaustion is concluded. Neither
absolute summability nor invariance under arbitrary rearrangements is inferred.
The horizontal DIFFERENCE tending to zero suffices; separately vanishing edges
are a convenient stronger input. Exact error accounting is retained.

Reuse: FinitePrincipalPartCircle.Data.integral_eq and
FiniteLogDerivativeCircle.FactorData.weighted_circleIntegral.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No zero-exclusion premise is discharged.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.PrincipalPartContourLimits

open Filter
open scoped Topology BigOperators
open GRWTSK.Analysis.ComplexAnalysis.FinitePrincipalPartCircle
open GRWTSK.Analysis.ComplexAnalysis.FiniteLogDerivativeCircle

noncomputable section

/-- The normalization is the same period used in the finite analytic theorem.
No finite boundary identity is hidden in a type-class instance. -/
structure Balance (κ : Type*) where
  right : κ → ℂ
  left : κ → ℂ
  bottom : κ → ℂ
  top : κ → ℂ
  mass : κ → ℂ
  identity : ∀ k, right k - left k + bottom k - top k = mass k * period

namespace Balance

variable {κ : Type*}

theorem mass_eq (B : Balance κ) (k : κ) :
    B.mass k = (B.right k - B.left k + B.bottom k - B.top k) / period := by
  apply (eq_div_iff period_ne_zero).mpr
  exact (B.identity k).symm

/-- All four edge errors are retained before any estimate is taken. -/
theorem error_eq (B : Balance κ) (k : κ) (R L : ℂ) :
    B.mass k - (R - L) / period =
      ((B.right k - R) - (B.left k - L) + B.bottom k - B.top k) / period := by
  rw [B.mass_eq k]
  simp only [div_eq_mul_inv]
  ring

/-- A finite-height error bound with no sign assumptions on complex residues. -/
theorem norm_error_le (B : Balance κ) (k : κ) (R L : ℂ) :
    ‖B.mass k - (R - L) / period‖ ≤
      (‖B.right k - R‖ + ‖B.left k - L‖ + ‖B.bottom k‖ + ‖B.top k‖) /
        ‖period‖ := by
  rw [B.error_eq k R L, norm_div]
  apply div_le_div_of_nonneg_right _ (norm_nonneg period)
  have h₁ := norm_sub_le
    ((B.right k - R) - (B.left k - L) + B.bottom k) (B.top k)
  have h₂ := norm_add_le ((B.right k - R) - (B.left k - L)) (B.bottom k)
  have h₃ := norm_sub_le (B.right k - R) (B.left k - L)
  linarith

/-- Horizontal cancellation, rather than separate absolute decay, is enough. -/
theorem mass_tendsto_of_horizontal_difference (B : Balance κ) (l : Filter κ)
    (R L : ℂ) (hR : Tendsto B.right l (𝓝 R)) (hL : Tendsto B.left l (𝓝 L))
    (hH : Tendsto (fun k => B.bottom k - B.top k) l (𝓝 0)) :
    Tendsto B.mass l (𝓝 ((R - L) / period)) := by
  have h := ((hR.sub hL).add hH).div_const period
  have he : (fun k => (B.right k - B.left k + (B.bottom k - B.top k)) / period)
      = B.mass := by
    funext k
    rw [B.mass_eq k]
    congr 1
    ring
  simpa only [add_zero, he] using h

/-- The conventional infinite-rectangle limit, with all finite identities and
all four boundary limits explicit. It assumes no pole simplicity. -/
theorem mass_tendsto (B : Balance κ) (l : Filter κ) (R L : ℂ)
    (hR : Tendsto B.right l (𝓝 R)) (hL : Tendsto B.left l (𝓝 L))
    (hB : Tendsto B.bottom l (𝓝 0)) (hT : Tendsto B.top l (𝓝 0)) :
    Tendsto B.mass l (𝓝 ((R - L) / period)) := by
  apply B.mass_tendsto_of_horizontal_difference l R L hR hL
  simpa only [sub_self] using hB.sub hT

/-- Any already established residue-sum limit has the normalization forced by
this same source balance. A nontrivial filter is necessary for uniqueness. -/
theorem limit_eq (B : Balance κ) (l : Filter κ) [NeBot l] (R L M : ℂ)
    (hR : Tendsto B.right l (𝓝 R)) (hL : Tendsto B.left l (𝓝 L))
    (hH : Tendsto (fun k => B.bottom k - B.top k) l (𝓝 0))
    (hM : Tendsto B.mass l (𝓝 M)) : M = (R - L) / period :=
  tendsto_nhds_unique hM (B.mass_tendsto_of_horizontal_difference l R L hR hL hH)

/-- Reindex only the same finite identities; no new analytic assumptions are introduced. -/
def reindex {ι : Type*} (B : Balance κ) (u : ι → κ) : Balance ι where
  right := B.right ∘ u
  left := B.left ∘ u
  bottom := B.bottom ∘ u
  top := B.top ∘ u
  mass := B.mass ∘ u
  identity := fun i => B.identity (u i)

/-- Every cofinal/admissible reindexing inheriting the boundary limits has the
same limit. This says nothing about arbitrary reorderings of individual poles. -/
theorem reindex_mass_tendsto {ι : Type*} (B : Balance κ) (u : ι → κ)
    (l : Filter ι) (m : Filter κ) (hu : Tendsto u l m) (R L : ℂ)
    (hR : Tendsto B.right m (𝓝 R)) (hL : Tendsto B.left m (𝓝 L))
    (hH : Tendsto (fun k => B.bottom k - B.top k) m (𝓝 0)) :
    Tendsto (B.reindex u).mass l (𝓝 ((R - L) / period)) :=
  (B.mass_tendsto_of_horizontal_difference m R L hR hL hH).comp hu

end Balance

/-- Actual finite circle residue data supply the finite-balance hypothesis. -/
def circleBalance {κ ι : Type*} (f : ℂ → ℂ) (c : κ → ℂ) (r : κ → ℝ)
    (data : ∀ k, Data ι f (c k) (r k)) : Balance κ where
  right k := ∮ z in C(c k, r k), f z
  left := fun _ => 0
  bottom := fun _ => 0
  top := fun _ => 0
  mass k := (data k).parts.residueSum
  identity k := by simpa only [sub_zero, add_zero] using (data k).integral_eq

/-- A source-derived circle limit, not an assumed finite residue theorem. -/
theorem circle_residue_sums_tendsto {κ ι : Type*} (f : ℂ → ℂ)
    (c : κ → ℂ) (r : κ → ℝ) (data : ∀ k, Data ι f (c k) (r k))
    (l : Filter κ) (J : ℂ)
    (hJ : Tendsto (fun k => ∮ z in C(c k, r k), f z) l (𝓝 J)) :
    Tendsto (fun k => (data k).parts.residueSum) l (𝓝 (J / period)) := by
  simpa only [circleBalance, sub_zero] using
    (circleBalance f c r data).mass_tendsto l J 0 hJ
      tendsto_const_nhds tendsto_const_nhds tendsto_const_nhds

/-- The finite circle formula also exposes a direct quantitative convergence bound. -/
theorem circle_residue_error {κ ι : Type*} (f : ℂ → ℂ)
    (c : κ → ℂ) (r : κ → ℝ) (data : ∀ k, Data ι f (c k) (r k))
    (k : κ) (J : ℂ) :
    ‖(data k).parts.residueSum - J / period‖ ≤
      ‖(∮ z in C(c k, r k), f z) - J‖ / ‖period‖ := by
  simpa only [circleBalance, sub_zero, norm_zero, add_zero] using
    (circleBalance f c r data).norm_error_le k J 0

/-- Connect signed genuine local orders directly to a limiting contour family.
The multiplier is the same source function at every index, and is evaluated at
actual divisor points. The analytic hypotheses are retained for each disk. -/
theorem weighted_logDeriv_residue_sums_tendsto {κ : Type*}
    (f w : ℂ → ℂ) (c : κ → ℂ) (r : κ → ℝ)
    (data : ∀ k, FactorData f (c k) (r k))
    (hw : ∀ k, AnalyticOnNhd ℂ w (Metric.closedBall (c k) (r k)))
    (l : Filter κ) (J : ℂ)
    (hJ : Tendsto (fun k => ∮ z in C(c k, r k), logDeriv f z * w z) l (𝓝 J)) :
    Tendsto (fun k => ∑ a ∈ (data k).singular,
      ((data k).signedOrder a : ℂ) * w a) l (𝓝 (J / period)) := by
  have h := hJ.div_const period
  have he : (fun k => (∮ z in C(c k, r k), logDeriv f z * w z) / period) =
      (fun k => ∑ a ∈ (data k).singular, ((data k).signedOrder a : ℂ) * w a) := by
    funext k
    exact (data k).normalized_weighted_circleIntegral w (hw k)
  rwa [he] at h

end
end GRWTSK.Analysis.ComplexAnalysis.PrincipalPartContourLimits
