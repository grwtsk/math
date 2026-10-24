# map_add_eq_of_lt_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8dc96297-61c2-1386-5aaa-6079e4830160",
  "kind": "theorem",
  "lexical_name": "map_add_eq_of_lt_left",
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
  "slug": "map-add-eq-of-lt-left--0e0a1c4ce8156dc677d03a0c",
  "source": {
    "blob": "d7553db2cb65199ceec6dbf45912e123f1478659",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 335,
    "path": "GRWTSK/Algebra/Basic/Variantf9947128878fca264497cc98bfe13592fd67732ed25e2b55388ea5ce7659b92b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e0a1c4ce8156dc677d03a0cc2d6dd4a7abd81d127353d560b8472b7678febd4",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantf9947128878fca264497cc98bfe13592fd67732ed25e2b55388ea5ce7659b92b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8dc96297-61c2-1386-5aaa-6079e4830160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_add_eq_of_lt_left (h : v y < v x) : v (x + y) = v x := by
  rw [add_comm]; exact map_add_eq_of_lt_right _ h
#align valuation.map_add_eq_of_lt_left Valuation.map_add_eq_of_lt_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantf9947128878fca264497cc98bfe13592fd67732ed25e2b55388ea5ce7659b92b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantf9947128878fca264497cc98bfe13592fd67732ed25e2b55388ea5ce7659b92b.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7553db2cb65199ceec6dbf45912e123f1478659` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
