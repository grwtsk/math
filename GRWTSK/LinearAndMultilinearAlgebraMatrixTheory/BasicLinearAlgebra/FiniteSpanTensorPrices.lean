import OAI.LinearAlgebra.SpectralBooks.SpectralFlatLaw

/-!
# Tensor prices of finite configurations in real inner-product charts

The finite-site Gaussian width is evaluated in the linear span of the sites.
The price theorem assumes a compatible spectral placement with synchronized
diagonal convexity, as in the upstream CAT(0) chart theorem.
-/

open OAI.HyperbolicObstruction
open OAI.LinearAlgebra.SpectralBooks
open scoped Classical

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSpanTensorPrices

noncomputable section

variable {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℝ E]

private abbrev siteSpan (S : Finset E) := Submodule.span ℝ (S : Set E)

private def liftToSpan (S : Finset E) (s : S) : siteSpan S :=
  ⟨s, Submodule.subset_span s.property⟩

private def sitesInSpan (S : Finset E) : Finset (siteSpan S) :=
  S.attach.image (liftToSpan S)

private theorem sitesInSpan_nonempty {S : Finset E} (hS : S.Nonempty) :
    (sitesInSpan S).Nonempty :=
  hS.attach.image _

private theorem sitesInSpan_image (S : Finset E) {X : Type*} (e : E → X) :
    (sitesInSpan S).image (fun x => e x.val) = S.image e := by
  ext y
  constructor
  · intro hy
    obtain ⟨u, hu, rfl⟩ := Finset.mem_image.mp hy
    obtain ⟨x, _, rfl⟩ := Finset.mem_image.mp hu
    exact Finset.mem_image.mpr ⟨x.val, x.property, rfl⟩
  · intro hy
    obtain ⟨x, hx, rfl⟩ := Finset.mem_image.mp hy
    let x' : S := ⟨x, hx⟩
    exact Finset.mem_image.mpr ⟨liftToSpan S x',
      Finset.mem_image_of_mem _ (Finset.mem_attach _ _), rfl⟩

/-- Normalized Gaussian mean width of finite nonempty sites, computed in their finite
linear span. The ambient real inner-product space can have any dimension. -/
def finiteSpanMeanWidth (S : Finset E) (hS : S.Nonempty) : ℝ :=
  letI : MeasurableSpace (siteSpan S) := borel _
  letI : BorelSpace (siteSpan S) := ⟨rfl⟩
  meanWidth (sitesInSpan S) (sitesInSpan_nonempty hS)

private theorem meanWidth_congr [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E]
    {S T : Finset E} (h : S = T) (hS : S.Nonempty) (hT : T.Nonempty) :
    meanWidth S hS = meanWidth T hT := by
  subst T
  rfl

/-- Computing the width in the finite span agrees with the upstream definition in a
finite-dimensional ambient space. -/
theorem finiteSpanMeanWidth_eq_meanWidth [FiniteDimensional ℝ E]
    [MeasurableSpace E] [BorelSpace E] (S : Finset E) (hS : S.Nonempty) :
    finiteSpanMeanWidth S hS = meanWidth S hS := by
  letI : MeasurableSpace (siteSpan S) := borel _
  letI : BorelSpace (siteSpan S) := ⟨rfl⟩
  have h := meanWidth_linearIsometry (siteSpan S).subtypeₗᵢ
    (sitesInSpan S) (sitesInSpan_nonempty hS)
  have hsites : (sitesInSpan S).image (siteSpan S).subtypeₗᵢ = S := by
    simpa using sitesInSpan_image S (id : E → E)
  exact h.symm.trans (meanWidth_congr hsites _ hS)

/-- A single site has zero width, including when its linear span is zero-dimensional. -/
theorem finiteSpanMeanWidth_singleton (x : E) :
    finiteSpanMeanWidth {x} (Finset.singleton_nonempty x) = 0 := by
  let S : Finset E := {x}
  letI : MeasurableSpace (siteSpan S) := borel _
  letI : BorelSpace (siteSpan S) := ⟨rfl⟩
  let x' : siteSpan S := liftToSpan S ⟨x, Finset.mem_singleton_self x⟩
  have hsites : sitesInSpan S = {x'} := by
    ext y
    simp only [sitesInSpan, Finset.mem_image, Finset.mem_attach, true_and, Finset.mem_singleton]
    constructor
    · rintro ⟨z, rfl⟩
      apply Subtype.ext
      exact Finset.mem_singleton.mp z.property
    · rintro rfl
      exact ⟨⟨x, Finset.mem_singleton_self x⟩, rfl⟩
  change meanWidth (sitesInSpan S) (sitesInSpan_nonempty (Finset.singleton_nonempty x)) = 0
  refine (meanWidth_congr hsites _ (Finset.singleton_nonempty x')).trans ?_
  simpa using meanWidth_pair x' x'

/-- Given synchronized prices on a CAT(0) space, the mean-width law applies to
every nonempty finite configuration in a convex real inner-product chart. -/
theorem diagonalPrice_eq_finiteSpanMeanWidth {K : Type*} {X : Type} [Field K] [MetricSpace X]
    (P : SpectralPlacementPrices K X) (hX : CATZero X) (hjoint : P.JointlyConvexDiagonal hX)
    {C : Set E} (hc : Convex ℝ C) {e : E → X}
    (he : ∀ x ∈ C, ∀ y ∈ C, dist (e x) (e y) = dist x y)
    (S : Finset E) (hS : S.Nonempty) (hSC : (S : Set E) ⊆ C) :
    P.diagonal (S.image e) = finiteSpanMeanWidth S hS := by
  letI : MeasurableSpace (siteSpan S) := borel _
  letI : BorelSpace (siteSpan S) := ⟨rfl⟩
  let C' : Set (siteSpan S) := (siteSpan S).subtype ⁻¹' C
  have hc' : Convex ℝ C' := hc.linear_preimage (siteSpan S).subtype
  have he' : ∀ x ∈ C', ∀ y ∈ C', dist (e x.val) (e y.val) = dist x y := by
    intro x hx y hy
    exact he _ hx _ hy
  have hsubset : ((sitesInSpan S : Finset (siteSpan S)) : Set (siteSpan S)) ⊆ C' := by
    intro x hx
    obtain ⟨y, _, rfl⟩ := Finset.mem_image.mp hx
    exact hSC y.property
  rw [← sitesInSpan_image S e]
  exact P.flatDiagonalLaw_chart hX hjoint hc' he' (sitesInSpan S)
    (sitesInSpan_nonempty hS) hsubset

end

end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSpanTensorPrices
