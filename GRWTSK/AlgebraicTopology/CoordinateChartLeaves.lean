/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean / kernel / axiom checks: NOT_RUN.
-/
import Mathlib

/-!
# A concrete coordinate-leaf structure on the sixteen-dimensional cube

The real geometric carrier is distinct from the binary processing
hypercube. Its first-coordinate projection has level sets that are
parallel fifteen-dimensional affine slices in the ambient Euclidean
space. The source proves their exact partition laws and nonempty
intersection with the cube for levels in [0,1].

No formal smooth-manifold atlas or Frobenius-integrability theorem is
asserted. The boundary has separate natural strata.
-/

set_option autoImplicit false

namespace GRWTSK.AlgebraicTopology.CoordinateChartLeaves

/-- The real chart in sixteen independent coordinates. -/
abbrev Chart := Fin 16 → ℝ

/-- The first coordinate is the foliation parameter. -/
def level (x : Chart) : ℝ := x (0 : Fin 16)

/-- The closed sixteen-dimensional unit cube. -/
def cube : Set Chart :=
  {x | ∀ i : Fin 16, x i ∈ Set.Icc (0 : ℝ) 1}

/-- The exact level set of the coordinate projection. -/
def leaf (t : ℝ) : Set Chart :=
  {x | level x = t}

/-- The associated compact cube leaf. -/
def cubeLeaf (t : ℝ) : Set Chart :=
  cube ∩ leaf t

/-- Every ambient point lies on the leaf indexed by its own level. -/
theorem lies_on_own_leaf (x : Chart) : x ∈ leaf (level x) := rfl

/-- A point cannot have two distinct coordinate-leaf labels. -/
theorem unique_leaf_label (x : Chart) (a b : ℝ)
    (ha : x ∈ leaf a) (hb : x ∈ leaf b) : a = b :=
  ha.symm.trans hb

/-- Every real level has an explicit constant-coordinate point. -/
theorem leaf_nonempty (t : ℝ) : (leaf t).Nonempty := by
  refine ⟨(fun _ => t), ?_⟩
  rfl

/-- Every level in [0,1] meets the actual compact cube. -/
theorem cubeLeaf_nonempty (t : ℝ) (ht : t ∈ Set.Icc (0 : ℝ) 1) :
    (cubeLeaf t).Nonempty := by
  refine ⟨(fun _ => t), ?_⟩
  exact ⟨(fun _ => ht), rfl⟩

/-- Every point of the cube belongs to the corresponding cube leaf. -/
theorem cubeLeaf_covers (x : Chart) (hx : x ∈ cube) :
    x ∈ cubeLeaf (level x) :=
  ⟨hx, rfl⟩

/-- A geometric transformation preserves leaves when it preserves level. -/
def LeafPreserving (T : Chart → Chart) : Prop :=
  ∀ x, level (T x) = level x

/-- The identity map preserves all coordinate leaves. -/
theorem leafPreserving_id : LeafPreserving (id : Chart → Chart) :=
  fun _ => rfl

/-- Composing leaf-preserving transformations preserves the same leaves. -/
theorem leafPreserving_comp (T U : Chart → Chart)
    (hT : LeafPreserving T) (hU : LeafPreserving U) :
    LeafPreserving (T ∘ U) := by
  intro x
  exact (hT (U x)).trans (hU x)

end GRWTSK.AlgebraicTopology.CoordinateChartLeaves
