# ofList_cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fbbff1f2b807f48ac7ccbb342b3647b58427a37",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1d/1d92e5accbf1b0e5375628f0210198eaaebdb7f89b498414bd53332857ec738a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99ce3809-e569-c67f-12ee-9232fff98e94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f1b2f41-8e8d-ab9d-57e6-580ee7975df1",
  "kind": "theorem",
  "lexical_name": "ofList_cons",
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
  "slug": "oflist-cons--d5a4f7ec228b2f350e7d1acd",
  "source": {
    "blob": "0fbbff1f2b807f48ac7ccbb342b3647b58427a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 149,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant1d92e5accbf1b0e5375628f0210198eaaebdb7f89b498414bd53332857ec738a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5a4f7ec228b2f350e7d1acd328deb616463adedd783a23253fb1c61abbe46a9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant1d92e5accbf1b0e5375628f0210198eaaebdb7f89b498414bd53332857ec738a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f1b2f41-8e8d-ab9d-57e6-580ee7975df1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofList_cons (x : α) (xs : List α) : ofList (x :: xs) = of x * ofList xs := rfl

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant1d92e5accbf1b0e5375628f0210198eaaebdb7f89b498414bd53332857ec738a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant1d92e5accbf1b0e5375628f0210198eaaebdb7f89b498414bd53332857ec738a.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fbbff1f2b807f48ac7ccbb342b3647b58427a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
