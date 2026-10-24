# IsCollinear_iff_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fff2a93fdf864fe852b63ad04e2daa37d68e02ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30488252-072c-295f-7174-a613fefc9f47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9248956b-5df0-d8fb-a41e-b221404bba1b",
  "kind": "lemma",
  "lexical_name": "IsCollinear_iff_rank",
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
  "slug": "iscollinear-iff-rank--70fb34459ea0e1629b351761",
  "source": {
    "blob": "fff2a93fdf864fe852b63ad04e2daa37d68e02ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70fb34459ea0e1629b351761508562b70821ca0809cc55d46b3c841481fa55f1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9248956b-5df0-d8fb-a41e-b221404bba1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCollinear_iff_rank :
    IsCollinear S ↔
      ∃ (M : Subspace K V), Module.rank K M.submodule ≤ 2 ∧ S ⊆ M := by
  rw [IsCollinear_iff]
  refine ⟨fun ⟨M, hM1, hM2, hM3⟩ ↦ ⟨M, ?_, hM3⟩, fun ⟨M, hM1, hM2⟩ ↦ ⟨M, ?_, ?_, hM2⟩⟩
  · exact FiniteDimensional.finrank_le_iff_rank_le (K := K) (V := M.submodule) (n := 2)|>.1 hM2
  · exact Module.rank_lt_aleph0_iff.1 (hM1.trans_lt (by norm_num))
  · exact Module.finrank_le_of_rank_le hM1

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Collinear/Variant46fa3fc5e919ae59565ba9f46bab9e1477245e98d15ab09b03b4eda1304dbe01.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff2a93fdf864fe852b63ad04e2daa37d68e02ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
