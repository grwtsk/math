# homologicalComplexToDGO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d069db39fc83315e3927ffa394143a33b2695abc55c8ce30dad1fb989c94ae7a",
  "kind": "def",
  "lexical_name": "homologicalComplexToDGO",
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
  "slug": "homologicalcomplextodgo--c4d5997a084ea5623d765bd1",
  "source": {
    "blob": "db28a075a7d4001b4d90fb5fcda817a03fdd3bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4d5997a084ea5623d765bd130c56121b70bea273daa43e486fb878e8ab3833b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d069db39fc83315e3927ffa394143a33b2695abc55c8ce30dad1fb989c94ae7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homologicalComplexToDGO :
    HomologicalComplex V (ComplexShape.up' b) ⥤
      DifferentialObject ℤ (GradedObjectWithShift b V) where
  obj X :=
    { obj := fun i => X.X i
      d := fun i => X.d i _ }
  map {X Y} f := { f := f.f }

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The unit isomorphism for `dgoEquivHomologicalComplex`.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant2b8476cbb00b88f03cc4785f3cdd5c811e0ecc60561f0e21c6a29287027b5d26.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db28a075a7d4001b4d90fb5fcda817a03fdd3bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
