-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IntrinsicPlane.Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IntrinsicPlane.Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/0e758eb255363eabc11a932344efd4db91b18fc32b99b4f8a82782d3b6a073b1/FormalResearch/PositiveAtlas/Grassmannian/IntrinsicGrassmannian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition
import Mathlib.LinearAlgebra.Dimension.StrongRankCondition

/-!
# Intrinsic real subspaces and full-rank frame presentations

Every dimension-k subspace is realized by actual matrix rows. Quotienting
full-rank frames by equality of their independently defined row spaces gives
an explicit equivalence with these intrinsic subspaces. Positivity means
existence of a correctly oriented representative, not positivity of an
arbitrary choice of basis. This is the subspace convention; no equivalence
with Mathlib's quotient-rank Grassmannian is asserted here.
-/


namespace GRWTSK.Algebra.LinearAlgebra.IntrinsicPlane.Variant17f5f8688752b3ad42e121254cb477ea01d1505add7cf2e7b5c9c62d03226477

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

variable {k n : ℕ}

/-- The ordinary dimension-k real-subspace convention for the Grassmannian. -/
def IntrinsicPlane (k n : ℕ) :=
  {S : Submodule ℝ (Fin n → ℝ) // Module.finrank ℝ S = k}

/-- An actual real matrix with full row rank, including the rank-zero case. -/
def FullRankFrame (k n : ℕ) :=
  {A : Matrix (Fin k) (Fin n) ℝ // A.rank = k}

/-- A full-rank frame presents its actual row subspace. -/
def representedPlane (A : FullRankFrame k n) : IntrinsicPlane k n :=
  ⟨frameRowSpace A.val, finrank_frameRowSpace_of_rank A.val A.property⟩

/-- Equality of presented planes is exactly equality of actual row subspaces. -/
theorem representedPlane_eq_iff (A B : FullRankFrame k n) :
    representedPlane A = representedPlane B ↔
      frameRowSpace A.val = frameRowSpace B.val := by
  constructor
  · intro h
    exact congrArg Subtype.val h
  · intro h
    exact Subtype.ext h

/-- Construct a full-rank matrix from a spanning family inside the given subspace. -/
theorem exists_frame_of_intrinsicPlane (P : IntrinsicPlane k n) :
    ∃ A : FullRankFrame k n, frameRowSpace A.val = P.val := by
  have hspan : Submodule.span ℝ (P.val : Set (Fin n → ℝ)) = P.val := by
    apply le_antisymm
    · exact Submodule.span_le.mpr (fun _ hx => hx)
    · intro x hx
      exact Submodule.subset_span hx
  have hfamily := Submodule.exists_fun_fin_finrank_span_eq ℝ
    (P.val : Set (Fin n → ℝ))
  rw [hspan, P.property] at hfamily
  obtain ⟨v, _, hv, _⟩ := hfamily
  let A : Matrix (Fin k) (Fin n) ℝ := Matrix.of v
  have hrow : frameRowSpace A = P.val := by
    change Submodule.span ℝ (Set.range v) = P.val
    exact hv
  have hrank : A.rank = k := by
    rw [Matrix.rank_eq_finrank_span_row]
    change Module.finrank ℝ (frameRowSpace A) = k
    rw [hrow]
    exact P.property
  exact ⟨⟨A, hrank⟩, hrow⟩

/-- Every intrinsic plane has an actual full-rank frame presentation. -/
theorem representedPlane_surjective :
    Function.Surjective (representedPlane : FullRankFrame k n → IntrinsicPlane k n) := by
  intro P
  obtain ⟨A, hA⟩ := exists_frame_of_intrinsicPlane P
  exact ⟨A, Subtype.ext hA⟩

/-- A realized dimension cannot exceed the ambient dimension. -/
theorem intrinsicPlane_dimension_le (P : IntrinsicPlane k n) : k ≤ n := by
  obtain ⟨A, _⟩ := exists_frame_of_intrinsicPlane P
  have h := Matrix.rank_le_width A.val
  rw [A.property] at h
  exact h

/-- There is no dimension-k plane when k exceeds the ambient dimension. -/
theorem no_intrinsicPlane_of_lt (h : n < k) : ¬ Nonempty (IntrinsicPlane k n) := by
  rintro ⟨P⟩
  exact (not_le_of_gt h) (intrinsicPlane_dimension_le P)

/-- A logical chosen frame; this is not an executable canonical-basis algorithm. -/
def planeFrame (P : IntrinsicPlane k n) : FullRankFrame k n :=
  (representedPlane_surjective P).choose

/-- The logical frame choice recovers exactly the supplied subspace. -/
theorem representedPlane_planeFrame (P : IntrinsicPlane k n) :
    representedPlane (planeFrame P) = P :=
  (representedPlane_surjective P).choose_spec

/-- Presentation equivalence is independent equality of actual linear subspaces. -/
def framePresentationSetoid (k n : ℕ) : Setoid (FullRankFrame k n) where
  r A B := frameRowSpace A.val = frameRowSpace B.val
  iseqv := ⟨fun _ => rfl, fun h => h.symm, fun h₁ h₂ => h₁.trans h₂⟩

/-- Full-rank frame presentations modulo actual row-space equality. -/
abbrev FramePresentationQuotient (k n : ℕ) := Quotient (framePresentationSetoid k n)

/-- The quotient's intrinsic interpretation, with well-definedness proved. -/
def quotientToPlane : FramePresentationQuotient k n → IntrinsicPlane k n :=
  Quotient.lift representedPlane (fun _ _ h => Subtype.ext h)

/-- Send a subspace to the presentation class of a logical chosen frame. -/
def planeToQuotient (P : IntrinsicPlane k n) : FramePresentationQuotient k n :=
  Quotient.mk (framePresentationSetoid k n) (planeFrame P)

/-- Interpreting a presentation class gives its actual row subspace. -/
theorem quotientToPlane_mk (A : FullRankFrame k n) :
    quotientToPlane (Quotient.mk (framePresentationSetoid k n) A) =
      representedPlane A := rfl

/-- Choosing another presentation does not change the original quotient class. -/
theorem planeToQuotient_representedPlane (A : FullRankFrame k n) :
    planeToQuotient (representedPlane A) =
      Quotient.mk (framePresentationSetoid k n) A := by
  apply Quotient.sound
  exact congrArg Subtype.val (representedPlane_planeFrame (representedPlane A))

/-- The explicit correspondence between frame presentations and all intrinsic planes. -/
def frameQuotientEquivPlane : FramePresentationQuotient k n ≃ IntrinsicPlane k n where
  toFun := quotientToPlane
  invFun := planeToQuotient
  left_inv q := by
    refine Quotient.inductionOn q ?_
    intro A
    exact planeToQuotient_representedPlane A
  right_inv P := by
    change representedPlane (planeFrame P) = P
    exact representedPlane_planeFrame P

/-- Quotient equality is precisely the independently specified presentation relation. -/
theorem frameClass_eq_iff_rowSpace (A B : FullRankFrame k n) :
    Quotient.mk (framePresentationSetoid k n) A =
      Quotient.mk (framePresentationSetoid k n) B ↔
        frameRowSpace A.val = frameRowSpace B.val :=
  ⟨Quotient.exact, Quotient.sound⟩

/-- Projective ordered minors recognize the intrinsic presentation quotient. -/
theorem frameClass_eq_iff_orderedMinor_proportional (A B : FullRankFrame k n) :
    Quotient.mk (framePresentationSetoid k n) A =
      Quotient.mk (framePresentationSetoid k n) B ↔
        ∃ t : ℝ, t ≠ 0 ∧ ∀ I : Fin k ↪o Fin n,
          orderedMinor B.val I = t * orderedMinor A.val I := by
  rw [frameClass_eq_iff_rowSpace]
  exact frameRowSpace_eq_iff_orderedMinor_proportional A.val B.val A.property B.property

/-- Each intrinsic plane is covered by an increasing pivot with a unique normal form. -/
theorem intrinsicPlane_has_ordered_chart (P : IntrinsicPlane k n) :
    ∃ I : Fin k ↪o Fin n, ∃! B : Matrix (Fin k) (Fin n) ℝ,
      columnSubmatrix B I = 1 ∧ frameRowSpace B = P.val := by
  obtain ⟨A, hA⟩ := exists_frame_of_intrinsicPlane P
  obtain ⟨I, hI⟩ := exists_orderedMinor_ne_zero_of_rank A.val A.property
  refine ⟨I, ?_⟩
  have h := existsUnique_pivotNormalized A.val I hI
  rw [hA] at h
  exact h

/-- Intrinsic nonnegativity requires existence of a nonnegative representative. -/
def IntrinsicNonnegative (P : IntrinsicPlane k n) : Prop :=
  ∃ A : FullRankFrame k n, representedPlane A = P ∧ AllOrderedMinorsNonneg A.val

/-- Intrinsic positivity requires existence of a strictly positive representative. -/
def IntrinsicPositive (P : IntrinsicPlane k n) : Prop :=
  ∃ A : FullRankFrame k n, representedPlane A = P ∧ AllOrderedMinorsPos A.val

/-- Positive intrinsic planes also lie in the nonnegative locus. -/
theorem intrinsicNonnegative_of_positive {P : IntrinsicPlane k n}
    (h : IntrinsicPositive P) : IntrinsicNonnegative P := by
  obtain ⟨A, hA, hpos⟩ := h
  exact ⟨A, hA, allOrderedMinorsNonneg_of_pos hpos⟩

/-- Full-rank frames with nonnegative ordered maximal minors. -/
def NonnegativeFrame (k n : ℕ) :=
  {A : FullRankFrame k n // AllOrderedMinorsNonneg A.val}

/-- Full-rank frames with strictly positive ordered maximal minors. -/
def PositiveFrame (k n : ℕ) :=
  {A : FullRankFrame k n // AllOrderedMinorsPos A.val}

/-- The actual subspace represented by a nonnegative frame. -/
def nonnegativeFrameToPlane (A : NonnegativeFrame k n) :
    {P : IntrinsicPlane k n // IntrinsicNonnegative P} :=
  ⟨representedPlane A.val, ⟨A.val, rfl, A.property⟩⟩

/-- Every point of the intrinsic nonnegative locus has such a frame. -/
theorem nonnegativeFrameToPlane_surjective :
    Function.Surjective (nonnegativeFrameToPlane (k := k) (n := n)) := by
  intro P
  obtain ⟨A, hA, hnonneg⟩ := P.property
  refine ⟨⟨A, hnonneg⟩, ?_⟩
  exact Subtype.ext hA

/-- The actual subspace represented by a positive frame. -/
def positiveFrameToPlane (A : PositiveFrame k n) :
    {P : IntrinsicPlane k n // IntrinsicPositive P} :=
  ⟨representedPlane A.val, ⟨A.val, rfl, A.property⟩⟩

/-- Every point of the intrinsic positive locus has such a frame. -/
theorem positiveFrameToPlane_surjective :
    Function.Surjective (positiveFrameToPlane (k := k) (n := n)) := by
  intro P
  obtain ⟨A, hA, hpos⟩ := P.property
  refine ⟨⟨A, hpos⟩, ?_⟩
  exact Subtype.ext hA

/-- Equal nonnegative presentations have a genuinely positive-determinant row change. -/
theorem nonnegativeFrames_positiveGauge (A B : NonnegativeFrame k n)
    (h : representedPlane A.val = representedPlane B.val) :
    ∃ U : Matrix (Fin k) (Fin k) ℝ,
      0 < Matrix.det U ∧ B.val.val = U * A.val.val := by
  exact exists_positive_rowChange_of_frameRowSpace_eq A.val.val B.val.val
    A.val.property B.val.property A.property B.property
    ((representedPlane_eq_iff A.val B.val).mp h)

end

end FormalResearch.PositiveAtlas.Grassmannian
