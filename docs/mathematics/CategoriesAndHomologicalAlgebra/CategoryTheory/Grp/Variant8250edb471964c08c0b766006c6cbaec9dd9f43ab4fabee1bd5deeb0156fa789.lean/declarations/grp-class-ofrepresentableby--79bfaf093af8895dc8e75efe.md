# Grp_Class.ofRepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cee48a8403b4f79c083c735315b6cf909525bd9ea3759a9efa1f5cf698dfc3a",
  "kind": "def",
  "lexical_name": "Grp_Class.ofRepresentableBy",
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
  "slug": "grp-class-ofrepresentableby--79bfaf093af8895dc8e75efe",
  "source": {
    "blob": "4d79d9181f92a663290f5feab6ee01b38dfac444",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 25,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79bfaf093af8895dc8e75efe4f52254900aad7a99c0729f9f19d27138ea57d6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cee48a8403b4f79c083c735315b6cf909525bd9ea3759a9efa1f5cf698dfc3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Grp_Class.ofRepresentableBy (F : Cᵒᵖ ⥤ Grp.{w}) (α : (F ⋙ forget _).RepresentableBy X) :
    Grp_Class X where
  __ := Mon_Class.ofRepresentableBy X (F ⋙ forget₂ Grp MonCat) α
  inv := α.homEquiv.symm (α.homEquiv (𝟙 _))⁻¹
  left_inv' := by
    change lift (α.homEquiv.symm (α.homEquiv (𝟙 X))⁻¹) (𝟙 X) ≫
      α.homEquiv.symm (α.homEquiv (fst X X) * α.homEquiv (snd X X)) =
        toUnit X ≫ α.homEquiv.symm 1
    apply α.homEquiv.injective
    simp only [α.homEquiv_comp, Equiv.apply_symm_apply]
    simp only [Functor.comp_map, ConcreteCategory.forget_map_eq_coe, map_one, map_mul]
    simp only [← ConcreteCategory.forget_map_eq_coe, ← Functor.comp_map, ← α.homEquiv_comp]
    simp [← Functor.comp_obj]
  right_inv' := by
    change lift (𝟙 X) (α.homEquiv.symm (α.homEquiv (𝟙 X))⁻¹) ≫
      α.homEquiv.symm (α.homEquiv (fst X X) * α.homEquiv (snd X X)) =
        toUnit X ≫ α.homEquiv.symm 1
    apply α.homEquiv.injective
    simp only [α.homEquiv_comp, Equiv.apply_symm_apply]
    simp only [Functor.comp_map, ConcreteCategory.forget_map_eq_coe, map_one, map_mul]
    simp only [← ConcreteCategory.forget_map_eq_coe, ← Functor.comp_map, ← α.homEquiv_comp]
    simp [← Functor.comp_obj]

/-- If `G` is a group object, then `Hom(X, G)` has a group structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant8250edb471964c08c0b766006c6cbaec9dd9f43ab4fabee1bd5deeb0156fa789.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d79d9181f92a663290f5feab6ee01b38dfac444` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
