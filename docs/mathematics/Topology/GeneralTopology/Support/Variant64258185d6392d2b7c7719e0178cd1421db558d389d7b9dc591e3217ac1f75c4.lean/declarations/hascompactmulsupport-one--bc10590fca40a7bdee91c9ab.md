# HasCompactMulSupport.one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4e215efd8fc8d81ecf98cdc1b7e091cfe9de8a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 393,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e45fe1a-a019-b1fd-6339-ca404c5d722e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63a78536-462c-af7a-94a4-fb81b7ff2064",
  "kind": "lemma",
  "lexical_name": "HasCompactMulSupport.one",
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
  "slug": "hascompactmulsupport-one--bc10590fca40a7bdee91c9ab",
  "source": {
    "blob": "d4e215efd8fc8d81ecf98cdc1b7e091cfe9de8a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 393,
    "path": "GRWTSK/Topology/GeneralTopology/Support/Variant64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc10590fca40a7bdee91c9abe0bde1806f1875545e8d89a30cdb237008bbfcf0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Support/Variant64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63a78536-462c-af7a-94a4-fb81b7ff2064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 393–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma HasCompactMulSupport.one {α β : Type*} [TopologicalSpace α] [One β] :
    HasCompactMulSupport (1 : α → β) := by
  simp [HasCompactMulSupport]

variable (α β) in
/-- The submonoid of functions `α → β` with compact multiplicative support. -/
@[to_additive /-- The additive submonoid of functions `α → β` with compact support. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Support/Variant64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Support/Variant64258185d6392d2b7c7719e0178cd1421db558d389d7b9dc591e3217ac1f75c4.lean#L393).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e215efd8fc8d81ecf98cdc1b7e091cfe9de8a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
