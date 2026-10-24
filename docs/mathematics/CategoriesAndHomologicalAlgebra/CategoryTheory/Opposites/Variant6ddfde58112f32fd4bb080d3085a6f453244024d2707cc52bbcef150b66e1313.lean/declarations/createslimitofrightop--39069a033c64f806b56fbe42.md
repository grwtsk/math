# createsLimitOfRightOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f92cf5003c9ed8ca936ab3125606d429832e71ca1712c11d16098fdf8b2a82bf",
  "kind": "def",
  "lexical_name": "createsLimitOfRightOp",
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
  "slug": "createslimitofrightop--39069a033c64f806b56fbe42",
  "source": {
    "blob": "6606ffe92acb9e6ae56fdae4cdc72a664dbd41de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6ddfde58112f32fd4bb080d3085a6f453244024d2707cc52bbcef150b66e1313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39069a033c64f806b56fbe42f00f928287edb457e573a0398ae81097ce9fc3a8",
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

Occurrence: `declaration:f92cf5003c9ed8ca936ab3125606d429832e71ca1712c11d16098fdf8b2a82bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def createsLimitOfRightOp (K : J ⥤ Cᵒᵖ) (F : Cᵒᵖ ⥤ D) [CreatesColimit K.leftOp F.rightOp] :
    CreatesLimit K F where
  __ := reflectsLimit_of_rightOp _ _
  lifts c hc :=
    letI lc := CreatesColimit.lifts (K := K.leftOp) (F := F.rightOp) c.op hc.op
    { liftedCone := coneOfCoconeLeftOp lc.liftedCocone
      validLift := (coneOpEquiv.inverse.mapIso lc.validLift.symm).unop }

/-- If `F : Cᵒᵖ ⥤ Dᵒᵖ` creates colimits of `K.op : Jᵒᵖ ⥤ Cᵒᵖ`, then `F.unop : C ⥤ D` creates
limits of `K : J ⥤ C`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6ddfde58112f32fd4bb080d3085a6f453244024d2707cc52bbcef150b66e1313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant6ddfde58112f32fd4bb080d3085a6f453244024d2707cc52bbcef150b66e1313.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6606ffe92acb9e6ae56fdae4cdc72a664dbd41de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
