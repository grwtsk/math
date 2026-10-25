# establishment_states_pairwise_distinct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74ae7bb91d59b6a8e847ea057e942108efc71405",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72c6d657-bcbc-98f6-a20a-ecb6310eaa45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b624c5d3-3369-3b34-be3e-4f6b7e46ae94",
  "kind": "theorem",
  "lexical_name": "establishment_states_pairwise_distinct",
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
  "slug": "establishment-states-pairwise-distinct--e8f865109cc53de1fb31d8f5",
  "source": {
    "blob": "74ae7bb91d59b6a8e847ea057e942108efc71405",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ClaimPayload/Variant2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8f865109cc53de1fb31d8f548a06640aac5145db6ede72cd3b93891a4788d68",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/ClaimPayload/Variant2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b624c5d3-3369-3b34-be3e-4f6b7e46ae94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem establishment_states_pairwise_distinct :
    [EstablishmentStatus.unknown,
      EstablishmentStatus.notApplicable,
      EstablishmentStatus.notEstablished,
      EstablishmentStatus.established].Nodup := by
  decide

end DAF.Language
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/ClaimPayload/Variant2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ClaimPayload/Variant2f00e4abd99637bcb1d47b90bcffff2706897bf7de10b3185352a4bfba34cc6d.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74ae7bb91d59b6a8e847ea057e942108efc71405` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
