# Function.Surjective.le_map_cofinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbfeff4c-90f5-9d39-f313-578e8e4ac628",
  "kind": "theorem",
  "lexical_name": "Function.Surjective.le_map_cofinite",
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
  "slug": "function-surjective-le-map-cofinite--54d3a2c5bbc46b78cd118b61",
  "source": {
    "blob": "642d29f9d99b9aad1a0a6ac99ea8cf5ded38846c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 212,
    "path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d3a2c5bbc46b78cd118b6130486a30883a5b9c17a62a3402f237fe76e74eb7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbfeff4c-90f5-9d39-f313-578e8e4ac628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Function.Surjective.le_map_cofinite {f : α → β} (hf : Surjective f) :
    cofinite ≤ map f cofinite := fun _ h => .of_preimage h hf

/-- For an injective function `f`, inverse images of finite sets are finite. See also
`Filter.comap_cofinite_le` and `Function.Injective.comap_cofinite_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `642d29f9d99b9aad1a0a6ac99ea8cf5ded38846c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
