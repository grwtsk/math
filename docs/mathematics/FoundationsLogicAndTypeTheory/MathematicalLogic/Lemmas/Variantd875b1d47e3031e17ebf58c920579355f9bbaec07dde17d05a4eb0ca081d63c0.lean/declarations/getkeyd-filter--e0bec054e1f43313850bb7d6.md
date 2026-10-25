# getKeyD_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e5cf75a887d3dccccfa7a53c46b4ee8a925b612e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3563,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d875b1d47e3031e17ebf58c920579355f9bbaec07dde17d05a4eb0ca081d63c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a8a65df-873b-018a-4019-4c2c2adc6a23",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:31559b11-dff6-7e2b-c50e-a6d8bc5662ea",
  "kind": "theorem",
  "lexical_name": "getKeyD_filter",
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
  "slug": "getkeyd-filter--e0bec054e1f43313850bb7d6",
  "source": {
    "blob": "e5cf75a887d3dccccfa7a53c46b4ee8a925b612e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3570,
    "line": 3563,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantd875b1d47e3031e17ebf58c920579355f9bbaec07dde17d05a4eb0ca081d63c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0bec054e1f43313850bb7d6dad8c94156864d567f776be6db58b485bd0d5e52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantd875b1d47e3031e17ebf58c920579355f9bbaec07dde17d05a4eb0ca081d63c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31559b11-dff6-7e2b-c50e-a6d8bc5662ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3563–3570.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getKeyD_filter [EquivBEq α] [LawfulHashable α]
    {f : α → β → Bool} {k fallback : α} :
    (m.filter f).getKeyD k fallback =
    ((m.getKey? k).pfilter (fun x h' =>
      (f x (m[x]'(mem_of_getKey?_eq_some h'))))).getD fallback :=
  DHashMap.Const.getKeyD_filter

@[cbv_eval]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantd875b1d47e3031e17ebf58c920579355f9bbaec07dde17d05a4eb0ca081d63c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variantd875b1d47e3031e17ebf58c920579355f9bbaec07dde17d05a4eb0ca081d63c0.lean#L3563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5cf75a887d3dccccfa7a53c46b4ee8a925b612e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
