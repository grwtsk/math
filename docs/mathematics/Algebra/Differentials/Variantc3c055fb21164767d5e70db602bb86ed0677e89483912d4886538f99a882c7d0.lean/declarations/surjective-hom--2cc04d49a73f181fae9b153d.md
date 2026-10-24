# surjective_hom₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1521979d702bdffd432726ab9a16b1b8f236c363",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1fd20a9-1249-cc35-9014-d6e45f1598a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c77851af-9aef-a57d-fafe-bc9152fc81ac",
  "kind": "lemma",
  "lexical_name": "surjective_hom₁",
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
  "slug": "surjective-hom--2cc04d49a73f181fae9b153d",
  "source": {
    "blob": "1521979d702bdffd432726ab9a16b1b8f236c363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 82,
    "path": "GRWTSK/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cc04d49a73f181fae9b153d88cd0d4226a0a870f156574c4012e932dcc99b19",
  "verification": {
    "reference": "docs/verification/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c77851af-9aef-a57d-fafe-bc9152fc81ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma surjective_hom₁ : Function.Surjective (hom₁ pres) := by
  let φ : (pres.rels →₀ S) →ₗ[pres.Ring] pres.toExtension.Cotangent :=
    { toFun := hom₁ pres
      map_add' := by simp
      map_smul' := by simp }
  change Function.Surjective φ
  have h₁ := Algebra.Extension.Cotangent.mk_surjective (P := pres.toExtension)
  have h₂ : Submodule.span pres.Ring
      (Set.range (fun r ↦ (⟨pres.relation r, by simp⟩ : pres.ker))) = ⊤ := by
    refine Submodule.map_injective_of_injective (f := Submodule.subtype pres.ker)
      Subtype.coe_injective ?_
    rw [Submodule.map_top, Submodule.range_subtype, Submodule.map_span,
      Submodule.coe_subtype, Ideal.submodule_span_eq]
    simp only [← pres.span_range_relation_eq_ker]
    congr
    aesop
  rw [← LinearMap.range_eq_top] at h₁ ⊢
  rw [← top_le_iff, ← h₁, LinearMap.range_eq_map, ← h₂]
  dsimp
  rw [Submodule.map_span_le]
  rintro _ ⟨r, rfl⟩
  simp only [LinearMap.mem_range]
  refine ⟨Finsupp.single r 1, ?_⟩
  simp only [LinearMap.coe_mk, AddHom.coe_mk, hom₁_single, φ]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Differentials/Variantc3c055fb21164767d5e70db602bb86ed0677e89483912d4886538f99a882c7d0.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1521979d702bdffd432726ab9a16b1b8f236c363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
