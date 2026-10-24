# createsColimitsOfShapeOfLeftOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ff232bae1b664ffd7365b065e066b3700192286b0198232fc7ecbfd2af528e4f",
  "kind": "def",
  "lexical_name": "createsColimitsOfShapeOfLeftOp",
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
  "slug": "createscolimitsofshapeofleftop--173d13d7bed9afc27c01f5e1",
  "source": {
    "blob": "6606ffe92acb9e6ae56fdae4cdc72a664dbd41de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 310,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6ddfde58112f32fd4bb080d3085a6f453244024d2707cc52bbcef150b66e1313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:173d13d7bed9afc27c01f5e1aed47c3fb96b3fbe1186ad8ed68ce2f4a8dc2751",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6ddfde58112f32fd4bb080d3085a6f453244024d2707cc52bbcef150b66e1313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ff232bae1b664ffd7365b065e066b3700192286b0198232fc7ecbfd2af528e4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsColimitsOfShapeOfLeftOp (F : C ⥤ Dᵒᵖ) [CreatesLimitsOfShape Jᵒᵖ F.leftOp] :
    CreatesColimitsOfShape J F where CreatesColimit {K} := createsColimitOfLeftOp K F

/-- If `F.rightOp : C ⥤ Dᵒᵖ` creates limits of shape `Jᵒᵖ`, then `F : Cᵒᵖ ⥤ D` creates colimits
of shape `J`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6ddfde58112f32fd4bb080d3085a6f453244024d2707cc52bbcef150b66e1313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6ddfde58112f32fd4bb080d3085a6f453244024d2707cc52bbcef150b66e1313.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6606ffe92acb9e6ae56fdae4cdc72a664dbd41de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
