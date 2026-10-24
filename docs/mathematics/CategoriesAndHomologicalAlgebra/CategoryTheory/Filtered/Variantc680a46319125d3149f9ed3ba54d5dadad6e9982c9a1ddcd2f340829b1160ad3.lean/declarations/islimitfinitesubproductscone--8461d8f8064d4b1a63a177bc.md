# isLimitFiniteSubproductsCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dcede2ee5aa95d87fe97604d142e23d69681888e0f9ac594f5767ea2ffb794f",
  "kind": "def",
  "lexical_name": "isLimitFiniteSubproductsCone",
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
  "slug": "islimitfinitesubproductscone--8461d8f8064d4b1a63a177bc",
  "source": {
    "blob": "69d36773b0aa9376c5ac5a0aa9246906e53b0e29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc680a46319125d3149f9ed3ba54d5dadad6e9982c9a1ddcd2f340829b1160ad3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8461d8f8064d4b1a63a177bc6f33203f9ea6c301f49fea364106e8ed20ee64c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc680a46319125d3149f9ed3ba54d5dadad6e9982c9a1ddcd2f340829b1160ad3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dcede2ee5aa95d87fe97604d142e23d69681888e0f9ac594f5767ea2ffb794f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitFiniteSubproductsCone (f : α → C) [HasLimitsOfShape (Finset (Discrete α))ᵒᵖ C]
    [HasProduct f] : IsLimit (finiteSubproductsCone f) :=
  IsLimit.ofIsoLimit (limit.isLimit _)
    (Cone.ext (IsLimit.conePointUniqueUpToIso
      (liftToFinsetLimitCone (Discrete.functor f)).isLimit (limit.isLimit _) :) (by
    intro S
    simp only [limit.cone_x, Functor.const_obj_obj, liftToFinsetObj_obj, Discrete.functor_obj_eq_as,
      limit.cone_π, finiteSubproductsCone_pt, finiteSubproductsCone_π_app]
    ext j
    simp only [Discrete.functor_obj_eq_as, Category.assoc, limit.lift_π, Fan.mk_pt, Fan.mk_π_app,
      limit.conePointUniqueUpToIso_hom_comp, liftToFinsetLimitCone_cone_pt, Discrete.mk_as,
      liftToFinsetLimitCone_cone_π_app]
    simp [← limit.w (liftToFinsetObj _)
      (Quiver.Hom.op (homOfLE (x := {j.1}) (y := S.unop) (by simp)))]))

variable (C) (α)

set_option backward.defeqAttrib.useBackward true in
/-- The functor taking a functor `Discrete α ⥤ C` to a functor `Finset (Discrete α) ⥤ C` by taking
coproducts. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc680a46319125d3149f9ed3ba54d5dadad6e9982c9a1ddcd2f340829b1160ad3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantc680a46319125d3149f9ed3ba54d5dadad6e9982c9a1ddcd2f340829b1160ad3.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69d36773b0aa9376c5ac5a0aa9246906e53b0e29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
