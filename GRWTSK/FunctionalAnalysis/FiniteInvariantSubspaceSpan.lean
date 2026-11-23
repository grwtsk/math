/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

/-!
# Dense image on the span of finite-dimensional invariant subspaces

For the theta-coefficient companion in `XiTaylorFredholmLinearization.md`, the
ambient operator is injective and has non-dense image. The closed span used
there to obtain a densely defined inverse can be specified from the operator
alone. The range calculation below works for any injective continuous linear
endomorphism. It does not require compactness or information about eigenvalues.
-/

namespace GRWTSK.FunctionalAnalysis

variable {𝕜 E : Type*} [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/-- The algebraic span of all finite-dimensional invariant subspaces of `K`. -/
def finiteInvariantSpan (K : E →L[𝕜] E) : Submodule 𝕜 E :=
  ⨆ P : {P : Submodule 𝕜 E // FiniteDimensional 𝕜 P ∧ ∀ x ∈ P, K x ∈ P}, P.val

/-- Injectivity makes the restriction to each finite-dimensional invariant
subspace surjective, so the entire algebraic span maps onto itself. -/
theorem map_finiteInvariantSpan (K : E →L[𝕜] E) (hinj : Function.Injective K) :
    (finiteInvariantSpan K).map K.toLinearMap = finiteInvariantSpan K := by
  unfold finiteInvariantSpan
  rw [Submodule.map_iSup]
  apply iSup_congr
  intro P
  let _ : FiniteDimensional 𝕜 P.val := P.property.1
  let f : P.val →ₗ[𝕜] P.val := K.toLinearMap.restrict P.property.2
  have hf : Function.Injective f := fun x y h ↦ Subtype.ext (hinj (congrArg Subtype.val h))
  apply le_antisymm
  · rintro _ ⟨x, hx, rfl⟩
    exact P.property.2 x hx
  · intro x hx
    obtain ⟨y, hy⟩ := LinearMap.surjective_of_injective hf ⟨x, hx⟩
    exact ⟨y.val, y.property, congrArg Subtype.val hy⟩

/-- If `M` is the closure of the finite-dimensional invariant span, the
ambient closure of `K(M)` is precisely `M`. In particular `K(M) ⊆ M`
and the restriction has dense range in the subspace topology of `M`. -/
theorem closure_map_closure_finiteInvariantSpan (K : E →L[𝕜] E)
    (hinj : Function.Injective K) :
    ((finiteInvariantSpan K).topologicalClosure.map K.toLinearMap).topologicalClosure =
      (finiteInvariantSpan K).topologicalClosure := by
  let S := finiteInvariantSpan K
  have hmap : S.map K.toLinearMap = S := map_finiteInvariantSpan K hinj
  apply le_antisymm
  · apply Submodule.topologicalClosure_minimal _ _ S.isClosed_topologicalClosure
    simpa only [hmap] using S.topologicalClosure_map K
  · apply Submodule.topologicalClosure_mono
    calc
      S = S.map K.toLinearMap := hmap.symm
      _ ≤ S.topologicalClosure.map K.toLinearMap := Submodule.map_mono S.le_topologicalClosure

end GRWTSK.FunctionalAnalysis
