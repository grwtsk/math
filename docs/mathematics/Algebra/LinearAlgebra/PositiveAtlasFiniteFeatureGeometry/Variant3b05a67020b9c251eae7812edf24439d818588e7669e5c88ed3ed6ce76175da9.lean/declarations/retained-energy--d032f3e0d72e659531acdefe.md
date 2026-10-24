# retained_energy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:699e057a-89b6-e77e-61ab-3551a0c7057e",
  "kind": "theorem",
  "lexical_name": "retained_energy",
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
  "slug": "retained-energy--d032f3e0d72e659531acdefe",
  "source": {
    "blob": "16c314c860147449a1a8e8384e01a6c17a68f3cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 41,
    "path": "GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d032f3e0d72e659531acdefe46cdd3625706e00c58bcad6cb437a8dc0c5c55c8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:699e057a-89b6-e77e-61ab-3551a0c7057e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retained_energy :
    (featureForm twoCoordinateFeature rationalWeight
      (fun i => (rationalWeight_pos i).le)).form (1, 7) (1, 7) = 13 / 2 := by
  norm_num [featureForm_apply, twoCoordinateFeature, rationalWeight, Fin.sum_univ_two]

/-- A nonzero protected direction is null; strict feature weights do not make
the original carrier positive definite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PositiveAtlasFiniteFeatureGeometry/Variant3b05a67020b9c251eae7812edf24439d818588e7669e5c88ed3ed6ce76175da9.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16c314c860147449a1a8e8384e01a6c17a68f3cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
