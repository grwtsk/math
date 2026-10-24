# Submodule.index_smul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43f394e7-c76f-a009-4776-54f9843ed4b3",
  "kind": "lemma",
  "lexical_name": "Submodule.index_smul_le",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "submodule-index-smul-le--0e47ee577ec58f1082e43e00",
  "source": {
    "blob": "cc61ea58c96a4ddf4582acd323f363820e078fbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e47ee577ec58f1082e43e007b0d920d9f595fb693dbe999935d180e7339271f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43f394e7-c76f-a009-4776-54f9843ed4b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Submodule.index_smul_le [Finite (R ⧸ I)]
    (s : Finset M) (hs : Submodule.span R s = N) :
    (I • N).toAddSubgroup.index ≤ I.toAddSubgroup.index ^ s.card * N.toAddSubgroup.index := by
  classical
  cases nonempty_fintype (R ⧸ I)
  rw [← AddSubgroup.relindex_mul_index
    (H := (I • N).toAddSubgroup) (K := N.toAddSubgroup) Submodule.smul_le_right]
  gcongr
  show (Nat.card (N ⧸ (I • N).comap N.subtype)) ≤ Nat.card (R ⧸ I) ^ s.card
  let e : (N ⧸ (I • N).comap N.subtype) ≃ₗ[R] (R ⧸ I) ⊗[R] N :=
    Submodule.quotEquivOfEq _ (I • (⊤ : Submodule R N)) (Submodule.map_injective_of_injective
      N.injective_subtype (by simp [Submodule.smul_le_right])) ≪≫ₗ
      (quotTensorEquivQuotSMul N I).symm
  rw [Nat.card_congr e.toEquiv]
  have H : LinearMap.range (Finsupp.linearCombination R (α := s) (↑)) = N := by
    rw [Finsupp.range_linearCombination, ← hs, Subtype.range_val]; rfl
  let f : (s →₀ R) →ₗ[R] N := (Finsupp.linearCombination R (↑)).codRestrict _
    (fun c => by rw [← H, LinearMap.mem_range]; exact exists_apply_eq_apply _ _)
  have hf : Function.Surjective f := fun x ↦ by
    obtain ⟨y, hy⟩ := H.ge x.2; exact ⟨y, Subtype.ext hy⟩
  have : Function.Surjective
      (f.lTensor (R ⧸ I) ∘ₗ (finsuppScalarRight R (R ⧸ I) s).symm.toLinearMap) :=
    (LinearMap.lTensor_surjective (R ⧸ I) hf).comp (LinearEquiv.surjective _)
  refine (Nat.card_le_card_of_surjective _ this).trans ?_
  simp only [Nat.card_eq_fintype_card, Fintype.card_finsupp, Fintype.card_coe, le_rfl]

variable {I}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Index/Variant01d4da9757d1cd6944aaff3473478c5deedd0abaa810b26867036cc448cd66ac.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc61ea58c96a4ddf4582acd323f363820e078fbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
