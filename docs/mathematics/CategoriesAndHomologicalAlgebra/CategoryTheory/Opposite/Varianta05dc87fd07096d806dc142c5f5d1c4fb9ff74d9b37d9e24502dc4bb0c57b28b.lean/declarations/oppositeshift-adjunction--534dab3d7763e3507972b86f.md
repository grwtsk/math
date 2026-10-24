# OppositeShift.adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c71d35a80cc638014b09900c5848e06360bbc43d19f9f4bb229f0d97b6f2e012",
  "kind": "def",
  "lexical_name": "OppositeShift.adjunction",
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
  "slug": "oppositeshift-adjunction--534dab3d7763e3507972b86f",
  "source": {
    "blob": "94026f4e06977842b12c603bb7c07817320474c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 289,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta05dc87fd07096d806dc142c5f5d1c4fb9ff74d9b37d9e24502dc4bb0c57b28b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:534dab3d7763e3507972b86f8cc64addd89daf2b0492331f2682e7886c11551e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta05dc87fd07096d806dc142c5f5d1c4fb9ff74d9b37d9e24502dc4bb0c57b28b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c71d35a80cc638014b09900c5848e06360bbc43d19f9f4bb229f0d97b6f2e012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OppositeShift.adjunction {F} {G : D ⥤ C} (adj : F ⊣ G) :
    OppositeShift.functor A G ⊣ OppositeShift.functor A F where
  unit := (NatTrans.OppositeShift.natIsoId D A).hom ≫
    OppositeShift.natTrans A adj.counit ≫ (NatTrans.OppositeShift.natIsoComp A G F).hom
  counit := (NatTrans.OppositeShift.natIsoComp A F G).inv ≫
    OppositeShift.natTrans A adj.unit ≫ (NatTrans.OppositeShift.natIsoId C A).inv
  left_triangle_components _ := by
    dsimp [OppositeShift.natTrans, NatTrans.OppositeShift.natIsoComp,
      NatTrans.OppositeShift.natIsoId, OppositeShift.functor]
    simp only [comp_id, id_comp, Quiver.Hom.unop_op]
    rw [← op_comp, adj.right_triangle_components]
    rfl
  right_triangle_components _ := by
    dsimp [OppositeShift.natTrans, NatTrans.OppositeShift.natIsoComp,
      NatTrans.OppositeShift.natIsoId, OppositeShift.functor]
    simp only [comp_id, id_comp, Quiver.Hom.unop_op]
    rw [← op_comp, adj.left_triangle_components]
    rfl

namespace Adjunction

variable {F} {G : D ⥤ C} (adj : F ⊣ G)

/--
If an adjunction `F ⊣ G` is compatible with `CommShift` structures on `F` and `G`, then
the opposite adjunction `OppositeShift.adjunction adj` is compatible with the opposite
`CommShift` structures.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta05dc87fd07096d806dc142c5f5d1c4fb9ff74d9b37d9e24502dc4bb0c57b28b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Varianta05dc87fd07096d806dc142c5f5d1c4fb9ff74d9b37d9e24502dc4bb0c57b28b.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94026f4e06977842b12c603bb7c07817320474c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
