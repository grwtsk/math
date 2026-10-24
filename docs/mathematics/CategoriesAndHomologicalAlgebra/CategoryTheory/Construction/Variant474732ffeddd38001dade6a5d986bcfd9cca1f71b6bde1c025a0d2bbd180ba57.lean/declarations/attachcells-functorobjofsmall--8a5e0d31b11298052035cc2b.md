# attachCellsιFunctorObjOfSmall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53fc15d1f6e50d81a8a12e706bfd91cce4d9ba647e1ec2486dfa0a1c6adccc0e",
  "kind": "def",
  "lexical_name": "attachCellsιFunctorObjOfSmall",
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
  "slug": "attachcells-functorobjofsmall--8a5e0d31b11298052035cc2b",
  "source": {
    "blob": "c5df78f0acd47ba9effd5c46b70db5ac48dde155",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a5e0d31b11298052035cc2b01f392c4d0683253b1d1671298b3cff2dcd709b3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53fc15d1f6e50d81a8a12e706bfd91cce4d9ba647e1ec2486dfa0a1c6adccc0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def attachCellsιFunctorObjOfSmall :
    AttachCells.{t} f (ιFunctorObj f πX) :=
  (attachCellsιFunctorObj f πX).reindex (equivShrink.{t} _).symm

end Small

section

variable {S T X Y : C} {πX : X ⟶ S} {πY : Y ⟶ T} (τ : Arrow.mk πX ⟶ Arrow.mk πY)
  [HasColimitsOfShape (Discrete (FunctorObjIndex f πX)) C]
  [HasColimitsOfShape (Discrete (FunctorObjIndex f πY)) C]

/-- The canonical morphism `∐ (functorObjSrcFamily f πX) ⟶ ∐ (functorObjSrcFamily f πY)`
induced by a morphism `Arrow.mk πX ⟶ Arrow.mk πY`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant474732ffeddd38001dade6a5d986bcfd9cca1f71b6bde1c025a0d2bbd180ba57.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5df78f0acd47ba9effd5c46b70db5ac48dde155` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
