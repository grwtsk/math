# trianglehOfDegreewiseSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77ee8cafa65e022b302bff2f4d97a7902f9410f3bdfc531fb2d3bfe7b14e0fdc",
  "kind": "abbrev",
  "lexical_name": "trianglehOfDegreewiseSplit",
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
  "slug": "trianglehofdegreewisesplit--40b647c483f1e74bac92fbb5",
  "source": {
    "blob": "f9002e5365fcf067bffe215822bbd4c1bafde08f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40b647c483f1e74bac92fbb5f151263e42f6665539c0b0cdb441b4fe1f3a2eb6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77ee8cafa65e022b302bff2f4d97a7902f9410f3bdfc531fb2d3bfe7b14e0fdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev trianglehOfDegreewiseSplit :
    Triangle (HomotopyCategory C (ComplexShape.up ℤ)) :=
  (HomotopyCategory.quotient C (ComplexShape.up ℤ)).mapTriangle.obj (triangleOfDegreewiseSplit S σ)

variable [HasBinaryBiproducts C]

set_option backward.defeqAttrib.useBackward true in
/-- The canonical isomorphism `(mappingCone (homOfDegreewiseSplit S σ)).X p ≅ S.X₂.X q`
when `p + 1 = q`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/DegreewiseSplit/Variant5c29d7929a5519dabbddfb37d8317f2007db459eeede3b2e0f336ac8ac0857df.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9002e5365fcf067bffe215822bbd4c1bafde08f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
