# one_sub_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b5d8b3a6a41897a507719b238c18dceb0ae87829",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d55ea76-c59c-6b0c-aef5-a82ac102f238",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:428f380c-3d70-7850-f49a-047058a48b9a",
  "kind": "theorem",
  "lexical_name": "one_sub_le_one",
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
  "slug": "one-sub-le-one--c6e6cd14a0d5f317cfd8aed5",
  "source": {
    "blob": "b5d8b3a6a41897a507719b238c18dceb0ae87829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 157,
    "path": "GRWTSK/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6e6cd14a0d5f317cfd8aed51e44666d7e0a8efeb7ea71064b50c80aebb15103",
  "verification": {
    "reference": "docs/verification/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:428f380c-3d70-7850-f49a-047058a48b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem one_sub_le_one (x : Icc (0 : β) 1) : 1 - (x : β) ≤ 1 := by simpa using x.2.1

end Set.Icc

/-! ### Instances for `↥(Set.Ico 0 1)` -/


namespace Set.Ico

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Instances/Variant317dfc5067b7ecbf28aed2bb13eaa907985a487c7c0f4a4bd6d8d2b476fa542a.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5d8b3a6a41897a507719b238c18dceb0ae87829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
