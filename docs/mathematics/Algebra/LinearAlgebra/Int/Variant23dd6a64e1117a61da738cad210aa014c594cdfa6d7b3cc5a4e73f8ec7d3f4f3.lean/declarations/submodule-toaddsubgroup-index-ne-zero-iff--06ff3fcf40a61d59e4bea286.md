# submodule_toAddSubgroup_index_ne_zero_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f48d41c34c3581e094a7e6876d707b412dddebe5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23dd6a64e1117a61da738cad210aa014c594cdfa6d7b3cc5a4e73f8ec7d3f4f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16a61f9d-0625-4bf8-eb3f-83c364b3eefc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d923fc98-b390-c793-d6e4-20a0196a4911",
  "kind": "lemma",
  "lexical_name": "submodule_toAddSubgroup_index_ne_zero_iff",
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
  "slug": "submodule-toaddsubgroup-index-ne-zero-iff--06ff3fcf40a61d59e4bea286",
  "source": {
    "blob": "f48d41c34c3581e094a7e6876d707b412dddebe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 183,
    "path": "GRWTSK/Algebra/LinearAlgebra/Int/Variant23dd6a64e1117a61da738cad210aa014c594cdfa6d7b3cc5a4e73f8ec7d3f4f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06ff3fcf40a61d59e4bea2861bf4b442249f93fab876a86d0b63fb7d6bb32ced",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Int/Variant23dd6a64e1117a61da738cad210aa014c594cdfa6d7b3cc5a4e73f8ec7d3f4f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d923fc98-b390-c793-d6e4-20a0196a4911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma submodule_toAddSubgroup_index_ne_zero_iff {N : Submodule ℤ (ι → ℤ)} :
    N.toAddSubgroup.index ≠ 0 ↔ Nonempty (N ≃ₗ[ℤ] (ι → ℤ)) := by
  obtain ⟨n, snf⟩ := N.smithNormalForm <| .ofEquivFun <| .refl ..
  have := Fintype.ofFinite ι
  rw [snf.toAddSubgroup_index_ne_zero_iff]
  rcases snf with ⟨-, bN, -, -, -⟩
  refine ⟨fun h ↦ ?_, fun ⟨e⟩ ↦ ?_⟩
  · subst h
    exact ⟨(bN.reindex (Fintype.equivFin _).symm).equivFun⟩
  · have hc := card_eq_of_linearEquiv ℤ <| bN.equivFun.symm.trans e
    simpa using hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Int/Variant23dd6a64e1117a61da738cad210aa014c594cdfa6d7b3cc5a4e73f8ec7d3f4f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Int/Variant23dd6a64e1117a61da738cad210aa014c594cdfa6d7b3cc5a4e73f8ec7d3f4f3.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f48d41c34c3581e094a7e6876d707b412dddebe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
