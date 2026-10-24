# FriendlyOperation.cons

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69e9b0ead301879ca23c34e52f2563846de24be0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca992b64-f073-2765-1aba-b9ed11313811",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4a585c72-f60c-8b1d-0cef-7995a9c7154f",
  "kind": "theorem",
  "lexical_name": "FriendlyOperation.cons",
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
  "slug": "friendlyoperation-cons--155cf45cc673759c779ebd81",
  "source": {
    "blob": "69e9b0ead301879ca23c34e52f2563846de24be0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 314,
    "path": "GRWTSK/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:155cf45cc673759c779ebd81287e50f3639d04c3b18a789a665335df9ae8d89e",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a585c72-f60c-8b1d-0cef-7995a9c7154f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FriendlyOperation.cons (hd : α) : FriendlyOperation (cons hd) := by
  simp only [friendlyOperation_iff_dist_le_dist, dist_cons_cons]
  intro x y
  linarith [dist_nonneg (x := x) (y := y)]

/-- If two sequences have the same head and applying `op` reduces their distance, then
it also reduces the distance of their tails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Corecursion/Variant35f856ccf6c64a1fc835c9b1ee834ec5a501960912c1a47efd1407af0e6a58b2.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69e9b0ead301879ca23c34e52f2563846de24be0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
