# coneOpEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4321a1b7e7f601eac886e411a32c1ca87739bba5193cdb8233a1f240bf9718aa",
  "kind": "def",
  "lexical_name": "coneOpEquiv",
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
  "slug": "coneopequiv--c930f3a7e946032a9d0c569e",
  "source": {
    "blob": "5ccac092cf8f3d65d9b67c30fc878e505438f200",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 753,
    "line": 737,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c930f3a7e946032a9d0c569efc958df5552199166c127b4e3cc04148f0eb5d11",
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

Occurrence: `declaration:4321a1b7e7f601eac886e411a32c1ca87739bba5193cdb8233a1f240bf9718aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 737–753.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coneOpEquiv {F : J ⥤ C} : (Cone F)ᵒᵖ ≌ Cocone F.op where
  functor.obj c := c.unop.op
  functor.map f := { hom := f.unop.hom.op, w j := congr($(f.unop.w j.unop).op) }
  inverse.obj c := .op <| c.unop
  inverse.map f := ⟨{ hom := f.hom.unop, w j := congr($(f.w (.op j)).unop) }⟩
  unitIso := Iso.refl _
  counitIso := Iso.refl _

end

section

variable {F : J ⥤ Cᵒᵖ}

/-- Change a cocone on `F.leftOp : Jᵒᵖ ⥤ C` to a cocone on `F : J ⥤ Cᵒᵖ`. -/
@[to_dual (attr := implicit_reducible, simps!)
/-- Change a cone on `F.leftOp : Jᵒᵖ ⥤ C` to a cocone on `F : J ⥤ Cᵒᵖ`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean#L737).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ccac092cf8f3d65d9b67c30fc878e505438f200` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
