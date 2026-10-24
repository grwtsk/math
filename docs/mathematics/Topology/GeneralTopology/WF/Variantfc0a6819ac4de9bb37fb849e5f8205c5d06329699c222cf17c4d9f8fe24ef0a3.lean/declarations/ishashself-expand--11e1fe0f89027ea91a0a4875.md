# isHashSelf_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b35e589640be1153e2c0deac9541e0bded402d0a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43b8c3c1-e53b-c85b-44f4-c9a498d50106",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2dacbf4d-3c56-15d6-0b39-c7a4f6b6d64b",
  "kind": "theorem",
  "lexical_name": "isHashSelf_expand",
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
  "slug": "ishashself-expand--11e1fe0f89027ea91a0a4875",
  "source": {
    "blob": "b35e589640be1153e2c0deac9541e0bded402d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 380,
    "path": "GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11e1fe0f89027ea91a0a4875a410f116589dfe46b6f5df24a82728e98b6192b2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2dacbf4d-3c56-15d6-0b39-c7a4f6b6d64b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isHashSelf_expand [BEq α] [Hashable α] [LawfulHashable α] [EquivBEq α]
    {buckets : {d : Array (AssocList α β) // 0 < d.size}} : IsHashSelf (expand buckets).1 := by
  simpa [expand, expand.go_eq] using isHashSelf_foldl_reinsertAux _ _ (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WF/Variantfc0a6819ac4de9bb37fb849e5f8205c5d06329699c222cf17c4d9f8fe24ef0a3.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b35e589640be1153e2c0deac9541e0bded402d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
