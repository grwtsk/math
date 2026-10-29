/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Stone--Weierstrass retains Kim Morrison and Heather Macbeth's
authorship and Apache-2.0 license. Other imports retain attribution/licenses. -/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramIntegral
import Mathlib.Topology.ContinuousMap.StoneWeierstrass
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Data.Fin.Tuple.Basic

/-!
# The real coordinate-polynomial subalgebra as finite spans of actual words

Empty words supply constants; concatenation proves closure under products.
Thus the linear span of ALL coordinate words is an actual real subalgebra,
not an assumed polynomial-density field. An injective coordinate map supplies
point separation. Real Stone--Weierstrass then gives its closure in the actual
compact continuous-map topology, which is the supremum-norm topology.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Topology.FiniteRealCoordinateAlgebra

open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral

variable {X C : Type*} [Fintype C] [TopologicalSpace X]
variable (f : X → C → ℝ) (hf : ∀ k, Continuous (fun x => f x k))

def coordinateMap (k : C) : C(X, ℝ) := ⟨fun x => f x k, hf k⟩

def wordMap {n : ℕ} (w : Fin n → C) : C(X, ℝ) :=
  ⟨wordFeature f w, continuous_wordFeature f hf w⟩

theorem wordMap_empty : wordMap f hf (Fin.elim0 : Fin 0 → C) = 1 := by
  ext x
  simp only [wordMap, wordFeature_zero, ContinuousMap.one_apply]

theorem wordMap_single (k : C) :
    wordMap f hf (fun _ : Fin 1 => k) = coordinateMap f hf k := by
  ext x
  simp [wordMap, wordFeature, coordinateMap]

theorem wordMap_append {n m : ℕ} (w : Fin n → C) (v : Fin m → C) :
    wordMap f hf (Fin.append w v) = wordMap f hf w * wordMap f hf v := by
  ext x
  change (∏ i : Fin (n + m), f x (Fin.append w v i)) =
    (∏ i : Fin n, f x (w i)) * ∏ i : Fin m, f x (v i)
  rw [Fin.prod_univ_add]
  simp only [Fin.append_left, Fin.append_right]

def wordSpan : Submodule ℝ C(X, ℝ) :=
  Submodule.span ℝ (Set.range (fun w : Σ n : ℕ, Fin n → C => wordMap f hf w.2))

theorem one_mem_wordSpan : (1 : C(X, ℝ)) ∈ wordSpan f hf := by
  rw [← wordMap_empty f hf]
  exact Submodule.subset_span ⟨⟨0, Fin.elim0⟩, rfl⟩

/-- The product proof retains words, multiplicities and repeated coordinates. -/
theorem wordSpan_mul {p q : C(X, ℝ)} (hp : p ∈ wordSpan f hf)
    (hq : q ∈ wordSpan f hf) : p * q ∈ wordSpan f hf := by
  refine Submodule.span_induction₂
    (p := fun u v _ _ => u * v ∈ wordSpan f hf) ?_ ?_ ?_ ?_ ?_ ?_ ?_ hp hq
  · intro u v hu hv
    rcases hu with ⟨⟨n, w⟩, rfl⟩
    rcases hv with ⟨⟨m, z⟩, rfl⟩
    rw [← wordMap_append f hf]
    exact Submodule.subset_span ⟨⟨n + m, Fin.append w z⟩, rfl⟩
  · intro v _
    simpa only [zero_mul] using (wordSpan f hf).zero_mem
  · intro u _
    simpa only [mul_zero] using (wordSpan f hf).zero_mem
  · intro u v z _ _ _ huz hvz
    rw [add_mul]
    exact (wordSpan f hf).add_mem huz hvz
  · intro u v z _ _ _ huv huz
    rw [mul_add]
    exact (wordSpan f hf).add_mem huv huz
  · intro r u v _ _ huv
    simpa only [smul_mul_assoc] using (wordSpan f hf).smul_mem r huv
  · intro r u v _ _ huv
    simpa only [mul_smul_comm] using (wordSpan f hf).smul_mem r huv

def coordinateAlgebra : Subalgebra ℝ C(X, ℝ) where
  carrier := wordSpan f hf
  zero_mem' := (wordSpan f hf).zero_mem
  add_mem' := (wordSpan f hf).add_mem
  mul_mem' := wordSpan_mul f hf
  algebraMap_mem' r := by
    simpa only [Algebra.algebraMap_eq_smul_one] using
      (wordSpan f hf).smul_mem r (one_mem_wordSpan f hf)

theorem coordinate_mem (k : C) : coordinateMap f hf k ∈ coordinateAlgebra f hf := by
  change coordinateMap f hf k ∈ wordSpan f hf
  rw [← wordMap_single f hf k]
  exact Submodule.subset_span ⟨⟨1, fun _ => k⟩, rfl⟩

theorem coordinateAlgebra_separatesPoints (hinj : Function.Injective f) :
    (coordinateAlgebra f hf).SeparatesPoints := by
  classical
  intro x y hxy
  have hs : ∃ k, f x k ≠ f y k := by
    by_contra hs
    apply hxy
    apply hinj
    funext k
    by_contra hk
    exact hs ⟨k, hk⟩
  obtain ⟨k, hk⟩ := hs
  exact ⟨_, ⟨coordinateMap f hf k, coordinate_mem f hf k, rfl⟩, hk⟩

variable [CompactSpace X]

theorem coordinateAlgebra_topologicalClosure (hinj : Function.Injective f) :
    (coordinateAlgebra f hf).topologicalClosure = ⊤ :=
  ContinuousMap.subalgebra_topologicalClosure_eq_top_of_separatesPoints _
    (coordinateAlgebra_separatesPoints f hf hinj)

end GRWTSK.Topology.FiniteRealCoordinateAlgebra
