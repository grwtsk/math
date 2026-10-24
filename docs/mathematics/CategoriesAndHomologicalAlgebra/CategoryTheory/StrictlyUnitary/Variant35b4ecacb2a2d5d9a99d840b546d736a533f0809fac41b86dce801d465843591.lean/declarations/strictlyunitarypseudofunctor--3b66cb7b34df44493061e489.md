# StrictlyUnitaryPseudofunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c862eac4e74cad8435fe812dc9a7fb0ed2105bc69f2e056be3882cdbf6dfab43",
  "kind": "structure",
  "lexical_name": "StrictlyUnitaryPseudofunctor",
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
  "slug": "strictlyunitarypseudofunctor--3b66cb7b34df44493061e489",
  "source": {
    "blob": "3ccf71c18312734a2b59a368bdb65fe402e24948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3b66cb7b34df44493061e489312967a6c95232411d548dc156e4e27c8d401308",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c862eac4e74cad8435fe812dc9a7fb0ed2105bc69f2e056be3882cdbf6dfab43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StrictlyUnitaryPseudofunctor extends Pseudofunctor B C where
  map_id (X : B) : map (𝟙 X) = 𝟙 (obj X) := by rfl_cat
  mapId_eq_eqToIso (X : B) : (mapId X) = eqToIso (map_id X) := by cat_disch

/-- A helper structure that bundles the necessary data to
construct a `StrictlyUnitaryPseudofunctor` without specifying the redundant
field `mapId` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ccf71c18312734a2b59a368bdb65fe402e24948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
