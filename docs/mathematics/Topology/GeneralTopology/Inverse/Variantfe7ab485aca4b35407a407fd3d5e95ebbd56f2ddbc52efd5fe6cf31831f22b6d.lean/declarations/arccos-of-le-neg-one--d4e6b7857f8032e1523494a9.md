# arccos_of_le_neg_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32a0880f3315047038b503bbc3a27fd5a6c8e009",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 349,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:206e95af-2268-dcfb-9f46-036ac4a894d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:058cd553-e8aa-6016-6f94-06d7d14fd5a8",
  "kind": "theorem",
  "lexical_name": "arccos_of_le_neg_one",
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
  "slug": "arccos-of-le-neg-one--d4e6b7857f8032e1523494a9",
  "source": {
    "blob": "32a0880f3315047038b503bbc3a27fd5a6c8e009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 349,
    "path": "GRWTSK/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e6b7857f8032e1523494a98030fc105003a8b6c385264b015fc1e8debadb40",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:058cd553-e8aa-6016-6f94-06d7d14fd5a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arccos_of_le_neg_one {x : ℝ} (hx : x ≤ -1) : arccos x = π := by
  rw [arccos, arcsin_of_le_neg_one hx, sub_neg_eq_add, add_halves]

-- The junk values for `arccos` and `sqrt` make this true even outside `[-1, 1]`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inverse/Variantfe7ab485aca4b35407a407fd3d5e95ebbd56f2ddbc52efd5fe6cf31831f22b6d.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32a0880f3315047038b503bbc3a27fd5a6c8e009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
