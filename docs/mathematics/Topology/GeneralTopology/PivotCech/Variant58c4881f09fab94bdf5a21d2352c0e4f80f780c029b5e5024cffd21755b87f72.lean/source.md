# Complete source: GRWTSK.Topology.GeneralTopology.PivotCech.Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1f13fe7d0620709e27fa882da8e740d611cf7ba` · SHA-256 `d87ac4dc2eeb853669d41ec1612770fa0dddd993fb7b4e22c8388306c3d550aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ContinuousColumnSubmatrix.Variant71a145a96be15c968f225021d67b90e5aa61f33f21d861c91019e16754f5228f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71a145a96be15c968f225021d67b90e5aa61f33f21d861c91019e16754f5228f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ContinuousColumnSubmatrix.Variant71a145a96be15c968f225021d67b90e5aa61f33f21d861c91019e16754f5228f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"71a145a96be15c968f225021d67b90e5aa61f33f21d861c91019e16754f5228f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/FormalResearch/PositiveAtlas/Grassmannian/PivotCech.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PivotTransitions
import Mathlib.Topology.Instances.Matrix
import Mathlib.Topology.Algebra.Field
import Mathlib.Topology.Instances.Real.Lemmas
import Mathlib.Topology.Constructions

/-!
# Pivot domains and the point-retaining topological Čech object

The intrinsic topology is the final topology of all actual normalized-frame
parametrizations. Its open pivot domains cover the full dimension-k subspace
locus. Čech degrees contain the points in the overlaps, with their subtype
topology and coproduct topology; deleting a point or replacing an overlap by
an edge is not part of this construction.

This file does not claim a formal realization weak-equivalence theorem.
Dugger--Isaksen's topological Čech comparison applies to an open cover, but
its mathematical realization/homotopy-group adapter remains separate work.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/


namespace GRWTSK.Topology.GeneralTopology.ContinuousColumnSubmatrix.Variant71a145a96be15c968f225021d67b90e5aa61f33f21d861c91019e16754f5228f

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

variable {k n : ℕ}

/-- The actual matrix-valued restriction is continuous in the entry topology. -/
theorem continuous_columnSubmatrix (c : Fin k → Fin n) :
    Continuous (fun A : Matrix (Fin k) (Fin n) ℝ => columnSubmatrix A c) := by
  apply continuous_matrix
  intro i j
  exact (continuous_apply (c j)).comp (continuous_apply i)

/-- The pivot determinant is a continuous polynomial in the frame entries. -/
theorem continuous_columnMinor (c : Fin k → Fin n) :
    Continuous (fun A : Matrix (Fin k) (Fin n) ℝ => columnMinor A c) :=
  (continuous_columnSubmatrix c).matrix_det

/-- Actual frame pivot domain, including its determinant hypothesis. -/
def framePivotDomain (c : Fin k → Fin n) : Set (Matrix (Fin k) (Fin n) ℝ) :=
  {A | columnMinor A c ≠ 0}

/-- Matrix pivot domains are open, independent of a global pivot choice. -/
theorem isOpen_framePivotDomain (c : Fin k → Fin n) : IsOpen (framePivotDomain c) :=
  isOpen_ne_fun (continuous_columnMinor c) continuous_const

/-- Normalization is continuous at every point of its actual pivot domain. -/
theorem continuousAt_pivotNormalize (c : Fin k → Fin n)
    (A : Matrix (Fin k) (Fin n) ℝ) (hc : columnMinor A c ≠ 0) :
    ContinuousAt (fun B => pivotNormalize B c) A := by
  change (columnSubmatrix A c).det ≠ 0 at hc
  have hinv := continuousAt_matrix_inv (columnSubmatrix A c)
    (by simpa only [Ring.inverse_eq_inv'] using continuousAt_inv₀ hc)
  have hframe := hinv.comp
    (f := fun B : Matrix (Fin k) (Fin n) ℝ => columnSubmatrix B c)
    (x := A) (continuous_columnSubmatrix c).continuousAt
  have hmul : Continuous (fun p : Matrix (Fin k) (Fin k) ℝ ×
      Matrix (Fin k) (Fin n) ℝ => p.1 * p.2) :=
    continuous_fst.matrix_mul continuous_snd
  exact hmul.continuousAt.comp
    (f := fun B : Matrix (Fin k) (Fin n) ℝ => ((columnSubmatrix B c)⁻¹, B))
    (x := A) (hframe.prodMk continuous_id.continuousAt)

/-- Transition matrices vary continuously on the overlap domain. -/
theorem continuousAt_pivotTransition (c d : Fin k → Fin n)
    (A : Matrix (Fin k) (Fin n) ℝ) (hd : columnMinor A d ≠ 0) :
    ContinuousAt (fun B => pivotTransition B c d) A := by
  rw [show (fun B => pivotTransition B c d) =
    (fun B => columnSubmatrix (pivotNormalize B d) c) from
      funext fun B => pivotTransition_eq_normalized_submatrix B c d]
  exact (continuous_columnSubmatrix c).continuousAt.comp
    (f := fun B : Matrix (Fin k) (Fin n) ℝ => pivotNormalize B d) (x := A)
      (continuousAt_pivotNormalize d A hd)

/-- Actual affine normalized-frame domain; free entries carry their Euclidean topology. -/
abbrev NormalizedPivotFrame (I : Fin k ↪o Fin n) :=
  {A : Matrix (Fin k) (Fin n) ℝ // columnSubmatrix A I = 1}

/-- A normalized matrix has full rank, with no chosen basis hypothesis. -/
theorem normalizedPivotFrame_rank (I : Fin k ↪o Fin n) (A : NormalizedPivotFrame I) :
    A.val.rank = k := by
  apply rank_eq_of_columnMinor_ne_zero A.val I
  simp only [columnMinor, A.property, Matrix.det_one]
  exact one_ne_zero

/-- The geometric plane represented by an actual normalized frame. -/
def normalizedPivotPlane (I : Fin k ↪o Fin n) (A : NormalizedPivotFrame I) :
    IntrinsicPlane k n :=
  representedPlane ⟨A.val, normalizedPivotFrame_rank I A⟩

/-- The disjoint union of all normalized-frame domains parametrizes every plane. -/
def intrinsicAtlasMap (p : Σ I : Fin k ↪o Fin n, NormalizedPivotFrame I) :
    IntrinsicPlane k n := normalizedPivotPlane p.1 p.2

/-- The intended atlas topology, retaining the topology of its actual chart domains. -/
instance intrinsicAtlasTopology : TopologicalSpace (IntrinsicPlane k n) :=
  TopologicalSpace.coinduced intrinsicAtlasMap inferInstance

/-- Parametrizations are continuous by the declared final topology. -/
theorem continuous_normalizedPivotPlane (I : Fin k ↪o Fin n) :
    Continuous (normalizedPivotPlane I) := by
  rw [continuous_def]
  intro s hs
  change IsOpen (intrinsicAtlasMap ⁻¹' s) at hs
  change IsOpen (Sigma.mk I ⁻¹' (intrinsicAtlasMap ⁻¹' s))
  exact (isOpen_sigma_iff.mp hs) I

/-- The pivot domain consists of planes admitting an actual normalized frame. -/
def intrinsicPivotDomain (I : Fin k ↪o Fin n) : Set (IntrinsicPlane k n) :=
  Set.range (normalizedPivotPlane I)

/-- A domain is recognized on every full-rank representative by its actual minor. -/
theorem representedPlane_mem_intrinsicPivotDomain_iff
    (A : FullRankFrame k n) (I : Fin k ↪o Fin n) :
    representedPlane A ∈ intrinsicPivotDomain I ↔ columnMinor A.val I ≠ 0 := by
  constructor
  · rintro ⟨B, hB⟩
    have hr : frameRowSpace A.val = frameRowSpace B.val :=
      (congrArg Subtype.val hB).symm
    obtain ⟨t, _, ht⟩ := columnMinor_proportional_of_frameRowSpace_eq
      A.val B.val (normalizedPivotFrame_rank I B) hr
    intro hz
    have hb := ht I
    simp only [columnMinor, B.property, Matrix.det_one] at hb
    change (columnSubmatrix A.val I).det = 0 at hz
    rw [hz, mul_zero] at hb
    exact one_ne_zero hb
  · intro hA
    refine ⟨⟨pivotNormalize A.val I, pivotNormalize_pivot A.val I hA⟩, ?_⟩
    exact Subtype.ext (frameRowSpace_pivotNormalize A.val I hA)

/-- Each intrinsic pivot domain is open in the constructed actual atlas topology. -/
theorem isOpen_intrinsicPivotDomain (I : Fin k ↪o Fin n) :
    IsOpen (intrinsicPivotDomain I) := by
  rw [isOpen_coinduced, isOpen_sigma_iff]
  intro J
  have he : (Sigma.mk J ⁻¹' (intrinsicAtlasMap ⁻¹' intrinsicPivotDomain I)) =
      {B : NormalizedPivotFrame J | columnMinor B.val I ≠ 0} := by
    ext B
    exact representedPlane_mem_intrinsicPivotDomain_iff
      ⟨B.val, normalizedPivotFrame_rank J B⟩ I
  rw [he]
  exact (isOpen_framePivotDomain I).preimage continuous_subtype_val

/-- Every point lies in an actual open increasing-pivot domain, including rank zero. -/
theorem intrinsicPivotDomain_cover (P : IntrinsicPlane k n) :
    ∃ I : Fin k ↪o Fin n, P ∈ intrinsicPivotDomain I := by
  obtain ⟨A, hA⟩ := representedPlane_surjective P
  obtain ⟨I, hI⟩ := exists_orderedMinor_ne_zero_of_rank A.val A.property
  refine ⟨I, ?_⟩
  rw [← hA, representedPlane_mem_intrinsicPivotDomain_iff]
  exact hI

/-- The full atlas map is surjective as a map of actual geometric points. -/
theorem intrinsicAtlasMap_surjective :
    Function.Surjective (intrinsicAtlasMap (k := k) (n := n)) := by
  intro P
  obtain ⟨I, A, hA⟩ := intrinsicPivotDomain_cover P
  exact ⟨⟨I, A⟩, hA⟩

/-- The actual overlap in a normalized coordinate domain, with its subtype topology. -/
abbrev NormalizedPivotOverlap (I J : Fin k ↪o Fin n) :=
  {B : NormalizedPivotFrame I // columnMinor B.val J ≠ 0}

/-- A chart transition carries normalized matrices, with both domain conditions proved. -/
def normalizedOverlapChange (I J : Fin k ↪o Fin n) (B : NormalizedPivotOverlap I J) :
    NormalizedPivotOverlap J I :=
  ⟨⟨pivotNormalize B.val.val J, pivotNormalize_pivot B.val.val J B.property⟩, by
    apply columnMinor_pivotNormalize_ne_zero B.val.val J I B.property
    simp only [columnMinor, B.val.property, Matrix.det_one]
    exact one_ne_zero⟩

/-- Returning across an overlap recovers the actual normalized matrix. -/
theorem normalizedOverlapChange_inverse (I J : Fin k ↪o Fin n)
    (B : NormalizedPivotOverlap I J) :
    normalizedOverlapChange J I (normalizedOverlapChange I J B) = B := by
  apply Subtype.ext
  apply Subtype.ext
  change pivotNormalize (pivotNormalize B.val.val J) I = B.val.val
  have hI : columnMinor B.val.val I ≠ 0 := by
    simp only [columnMinor, B.val.property, Matrix.det_one]
    exact one_ne_zero
  rw [pivotNormalize_transition B.val.val J I B.property hI,
    pivotNormalize_fixed B.val.val I B.val.property]

/-- Actual transition maps are continuous on their declared overlap domains. -/
theorem continuous_normalizedOverlapChange (I J : Fin k ↪o Fin n) :
    Continuous (normalizedOverlapChange I J) := by
  have h : Continuous (fun B : NormalizedPivotOverlap I J => pivotNormalize B.val.val J) := by
    apply continuous_iff_continuousAt.mpr
    intro B
    exact (continuousAt_pivotNormalize J B.val.val B.property).comp
      (f := fun C : NormalizedPivotOverlap I J => C.val.val) (x := B)
      (continuous_subtype_val.comp continuous_subtype_val).continuousAt
  exact (h.subtype_mk (fun B => pivotNormalize_pivot B.val.val J B.property)).subtype_mk
    (fun B => (normalizedOverlapChange I J B).property)

/-- Coordinate changes are homeomorphisms of the actual overlap spaces. -/
def normalizedOverlapHomeomorph (I J : Fin k ↪o Fin n) :
    NormalizedPivotOverlap I J ≃ₜ NormalizedPivotOverlap J I where
  toFun := normalizedOverlapChange I J
  invFun := normalizedOverlapChange J I
  left_inv := normalizedOverlapChange_inverse I J
  right_inv := normalizedOverlapChange_inverse J I
  continuous_toFun := continuous_normalizedOverlapChange I J
  continuous_invFun := continuous_normalizedOverlapChange J I

section Cech

variable {X ι : Type*} [TopologicalSpace X]

/-- A degree has an index tuple and the retained points of its full overlap. -/
abbrev OpenCoverCech (U : ι → Set X) (p : ℕ) :=
  Σ labels : Fin (p + 1) → ι, {x : X // ∀ j, x ∈ U (labels j)}

/-- Coproduct of overlap subtype topologies, not a discrete index nerve. -/
instance openCoverCechTopology (U : ι → Set X) (p : ℕ) :
    TopologicalSpace (OpenCoverCech U p) := inferInstanceAs
      (TopologicalSpace (Σ labels : Fin (p + 1) → ι, {x : X // ∀ j, x ∈ U (labels j)}))

/-- Every simplicial operator reindexes labels while preserving the geometric point. -/
def cechReindex (U : ι → Set X) {p q : ℕ} (f : Fin (q + 1) → Fin (p + 1))
    (a : OpenCoverCech U p) : OpenCoverCech U q :=
  ⟨a.1 ∘ f, ⟨a.2.val, fun j => a.2.property (f j)⟩⟩

omit [TopologicalSpace X] in
/-- Identity law for all labels and actual overlap points. -/
theorem cechReindex_id (U : ι → Set X) {p : ℕ} (a : OpenCoverCech U p) :
    cechReindex U id a = a := by
  cases a
  rfl

omit [TopologicalSpace X] in
/-- All face/degeneracy relations follow from this contravariant composition law. -/
theorem cechReindex_comp (U : ι → Set X) {p q r : ℕ}
    (f : Fin (q + 1) → Fin (p + 1)) (g : Fin (r + 1) → Fin (q + 1))
    (a : OpenCoverCech U p) :
    cechReindex U g (cechReindex U f a) = cechReindex U (f ∘ g) a := rfl

/-- Simplicial operators are actual continuous maps between overlap spaces. -/
theorem continuous_cechReindex (U : ι → Set X) {p q : ℕ}
    (f : Fin (q + 1) → Fin (p + 1)) : Continuous (cechReindex U f) := by
  apply continuous_sigma_iff.mpr
  intro labels
  change Continuous (fun x : {x : X // ∀ j, x ∈ U (labels j)} =>
    (⟨labels ∘ f, ⟨x.val, fun j => x.property (f j)⟩⟩ : OpenCoverCech U q))
  have h : Continuous (fun x : {x : X // ∀ j, x ∈ U (labels j)} =>
      (⟨x.val, fun j => x.property (f j)⟩ : {x : X // ∀ j, x ∈ U ((labels ∘ f) j)})) :=
    continuous_subtype_val.subtype_mk _
  exact (continuous_sigmaMk (σ := fun labels : Fin (q + 1) → ι =>
    {x : X // ∀ j, x ∈ U (labels j)}) (i := labels ∘ f)).comp h

/-- The augmentation keeps the retained point. -/
def cechAugment (U : ι → Set X) {p : ℕ} (a : OpenCoverCech U p) : X := a.2.val

/-- Every augmentation is continuous for the full topological Čech degree. -/
theorem continuous_cechAugment (U : ι → Set X) (p : ℕ) :
    Continuous (cechAugment U (p := p)) := by
  exact continuous_sigma_iff.mpr (fun _ => continuous_subtype_val)

omit [TopologicalSpace X] in
/-- Coverage proves that every degree augmentation reaches every geometric point. -/
theorem cechAugment_surjective (U : ι → Set X) (hU : ∀ x, ∃ i, x ∈ U i) (p : ℕ) :
    Function.Surjective (cechAugment U (p := p)) := by
  intro x
  obtain ⟨i, hi⟩ := hU x
  exact ⟨⟨fun _ => i, ⟨x, fun _ => hi⟩⟩, rfl⟩

/-- The overlap fiber keeps all its actual points by an explicit equivalence. -/
def cechOverlapFiberEquiv (U : ι → Set X) {p : ℕ} (labels : Fin (p + 1) → ι) :
    {a : OpenCoverCech U p // a.1 = labels} ≃ {x : X // ∀ j, x ∈ U (labels j)} where
  toFun a := ⟨a.val.2.val, by rcases a with ⟨⟨l, x, hx⟩, rfl⟩; exact hx⟩
  invFun x := ⟨⟨labels, x⟩, rfl⟩
  left_inv a := by rcases a with ⟨⟨l, x, hx⟩, rfl⟩; rfl
  right_inv x := rfl

end Cech

/-- The actual general Grassmannian Čech spaces, with the proved open cover. -/
abbrev IntrinsicPivotCech (k n p : ℕ) :=
  OpenCoverCech (intrinsicPivotDomain (k := k) (n := n)) p

/-- Every degree of the actual pivot Čech object retains every plane. -/
theorem intrinsicPivotCech_augmentation_surjective (p : ℕ) :
    Function.Surjective (cechAugment (intrinsicPivotDomain (k := k) (n := n)) (p := p)) :=
  cechAugment_surjective _ intrinsicPivotDomain_cover p

end

end FormalResearch.PositiveAtlas.Grassmannian
```
