# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SingularReconstruction.Variante3cadbbb0aa784ce3ce6998d67e5745407be511086b2460061287a7bd5250458

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33fafbe5626c17c25f287b40e29bffabb285463d` · SHA-256 `fb816945a43da71b2cc47fee2b765e249430fccb98839940cde3972581c241ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SingularSmallDecomposition.Variant27082ce00c744f82d446a1a2980e933cde79ce867404f18ff770da3ab55372da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27082ce00c744f82d446a1a2980e933cde79ce867404f18ff770da3ab55372da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.SingularSmallDecomposition.Variant27082ce00c744f82d446a1a2980e933cde79ce867404f18ff770da3ab55372da","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"27082ce00c744f82d446a1a2980e933cde79ce867404f18ff770da3ab55372da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/MathematicalTooling/Coverage/SingularReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Coverage.Cardinal
import Mathlib.Tactic.Choose

/-!
# Singular targets from supplied small-set covers

A singular target of size at most `μ` splits into `cf μ` small initial-segment
pieces. Local covering witnesses then compose with an explicitly enlarged
threshold below the uncountable strong limit. This consumes covering witnesses;
the revised-GCH family producer remains the separate unresolved proposition.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SingularSmallDecomposition.Variant27082ce00c744f82d446a1a2980e933cde79ce867404f18ff770da3ab55372da

namespace FormalResearch.MathematicalTooling.Coverage

universe u

open Cardinal Set

variable {X : Type u}

/-- Every target of size at most a singular cardinal admits a cofinality-sized
decomposition into strictly smaller sets, including the empty target. -/
theorem singular_small_decomposition (A : Set X) (μ : Cardinal.{u})
    (hμ : μ.IsSingular) (hA : #A ≤ μ) :
    ∃ (J : Type u) (B : J → Set X), #J = μ.ord.cof ∧
      (∀ j, #(B j) < μ) ∧ A = ⋃ j, B j := by
  classical
  let β := μ.ord.ToType
  obtain ⟨e⟩ : Nonempty (A ↪ β) := (Cardinal.le_def _ _).mp
    (hA.trans_eq (Cardinal.mk_ord_toType μ).symm)
  have hnomax : NoMaxOrder β := by
    apply Ordinal.isSuccPrelimit_type_lt_iff.mp
    change Order.IsSuccPrelimit (Ordinal.type (fun x y : μ.ord.ToType ↦ x < y))
    rw [Ordinal.type_toType]
    exact (Cardinal.isSuccLimit_ord hμ.aleph0_le).isSuccPrelimit
  let := hnomax
  obtain ⟨S, hcofinal, hS⟩ := Order.exists_cof_eq β
  let B : S → Set X := fun j ↦ Subtype.val '' {a : A | e a < j.val}
  refine ⟨S, B, hS.trans (Ordinal.cof_toType μ.ord), ?_, ?_⟩
  · intro j
    have hsegment : #(Iio j.val) < μ := by
      simpa only [Cardinal.mk_ord_toType] using
        Cardinal.mk_Iio_lt (α := μ.ord.ToType) j.val
          (by rw [Cardinal.mk_ord_toType, Ordinal.type_toType])
    let f : {a : A // e a < j.val} → Iio j.val := fun a ↦ ⟨e a.val, a.property⟩
    have hf : Function.Injective f := by
      intro a b hab
      apply Subtype.ext
      exact e.injective (congrArg Subtype.val hab)
    exact (Cardinal.mk_image_le.trans (Cardinal.mk_le_of_injective hf)).trans_lt hsegment
  · ext x
    constructor
    · intro hx
      have hxunion : e ⟨x, hx⟩ ∈ ⋃ j ∈ S, Iio j := by
        rw [isCofinal_iff_iUnion_Iio_eq_univ.mp hcofinal]
        trivial
      obtain ⟨j, hj⟩ := mem_iUnion.mp hxunion
      obtain ⟨hjS, hxj⟩ := mem_iUnion.mp hj
      exact mem_iUnion.mpr ⟨⟨j, hjS⟩, ⟨⟨x, hx⟩, hxj, rfl⟩⟩
    · intro hx
      obtain ⟨j, a, _, rfl⟩ := mem_iUnion.mp hx
      exact a.property

/-- Enlarged threshold depends on the original threshold and `μ`, not on the
particular target reconstructed. -/
noncomputable def singularCoverThreshold (μ κ : Cardinal.{u}) : Cardinal.{u} :=
  Order.succ (max ℵ₀ (max κ μ.ord.cof))

theorem le_singularCoverThreshold (μ κ : Cardinal.{u}) : κ ≤ singularCoverThreshold μ κ :=
  ((le_max_left κ μ.ord.cof).trans (le_max_right ℵ₀ _)).trans (Order.le_succ _)

theorem singularCoverThreshold_lt (μ κ : Cardinal.{u})
    (hμ : μ.IsStrongLimit) (huncountable : ℵ₀ < μ)
    (hsingular : μ.IsSingular) (hκ : κ < μ) : singularCoverThreshold μ κ < μ :=
  hμ.isSuccLimit.succ_lt (max_lt huncountable (max_lt hκ hsingular.cof_ord_lt))

/-- The singular extension constructs exact restrictions of original blocks.
The regular-cardinal case is deliberately absent: its size-`μ` target cannot
be reconstructed by fewer than `μ` strictly smaller blocks. -/
theorem singular_exact_reconstruction (P : Set (Set X)) (μ κ : Cardinal.{u})
    (hμ : μ.IsStrongLimit) (huncountable : ℵ₀ < μ)
    (hsingular : μ.IsSingular) (hκ : κ < μ)
    (smallCover : ∀ B : Set X, #B < μ →
      ∃ Q : Set (Set X), Q ⊆ P ∧ #Q < κ ∧ B ⊆ ⋃₀ Q)
    (A : Set X) (hA : #A ≤ μ) :
    singularCoverThreshold μ κ < μ ∧
      ∃ (I : Type u) (C : I → Set X), #I < singularCoverThreshold μ κ ∧
        (∀ i, C i ∈ downwardClosure P) ∧ A = ⋃ i, C i := by
  refine ⟨singularCoverThreshold_lt μ κ hμ huncountable hsingular hκ, ?_⟩
  classical
  obtain ⟨J, B, hJ, hB, hdecompose⟩ := singular_small_decomposition A μ hsingular hA
  choose Q hQP hQκ hcover using fun j ↦ smallCover (B j) (hB j)
  let γ : Cardinal.{u} := max ℵ₀ (max κ μ.ord.cof)
  have hκγ : κ ≤ γ := (le_max_left _ _).trans (le_max_right _ _)
  have hJγ : #J ≤ γ := hJ.le.trans ((le_max_right _ _).trans (le_max_right _ _))
  have hindex : #(Σ j, Q j) < singularCoverThreshold μ κ := by
    rw [Cardinal.mk_sigma]
    exact Cardinal.sum_lt_of_isRegular (Cardinal.isRegular_succ (le_max_left _ _))
      (hJγ.trans_lt (Order.lt_succ γ)) fun j ↦
        (hQκ j).trans_le (hκγ.trans (Order.le_succ γ))
  let C : (Σ j, Q j) → Set X := fun i ↦ i.2.val
  have hC : ∀ i, C i ∈ P := fun i ↦ hQP i.1 i.2.property
  have htotal : A ⊆ ⋃ i, C i := by
    intro x hx
    obtain ⟨j, hj⟩ := mem_iUnion.mp (hdecompose ▸ hx)
    obtain ⟨D, hDQ, hxD⟩ := mem_sUnion.mp (hcover j hj)
    exact mem_iUnion.mpr ⟨⟨j, ⟨D, hDQ⟩⟩, hxD⟩
  exact ⟨Σ j, Q j, fun i ↦ A ∩ C i, hindex,
    restriction_mem_downwardClosure P A C hC, reconstruct_of_cover A C htotal⟩

end FormalResearch.MathematicalTooling.Coverage
```
