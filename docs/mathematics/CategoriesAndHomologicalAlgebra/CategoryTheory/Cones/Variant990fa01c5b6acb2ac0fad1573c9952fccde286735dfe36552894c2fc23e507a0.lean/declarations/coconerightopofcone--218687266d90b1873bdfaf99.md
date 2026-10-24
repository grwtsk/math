# coconeRightOpOfCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed0f7d8b493056c3543150b5e6fe77e61edb26781e8b40babafbf94632931ade",
  "kind": "def",
  "lexical_name": "coconeRightOpOfCone",
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
  "slug": "coconerightopofcone--218687266d90b1873bdfaf99",
  "source": {
    "blob": "5ccac092cf8f3d65d9b67c30fc878e505438f200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 798,
    "line": 792,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:218687266d90b1873bdfaf99f8442eaaa6b9a06a0eb8f52ebfc1d0b79a76a95f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed0f7d8b493056c3543150b5e6fe77e61edb26781e8b40babafbf94632931ade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 792–798.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coconeRightOpOfCone (c : Cone F) : Cocone F.rightOp where
  pt := op c.pt
  ι := NatTrans.rightOp c.π

/-- Cones on `F : Jᵒᵖ ⥤ C` are equivalent to cocones on `F.rightOp : J ⥤ Cᵒᵖ`. -/
@[to_dual (attr := simps)
/-- Cocones on `F : Jᵒᵖ ⥤ C` are equivalent to cones on `F.rightOp : J ⥤ Cᵒᵖ`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean#L792).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccac092cf8f3d65d9b67c30fc878e505438f200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
