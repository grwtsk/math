# unitIsoAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e6bab0ea16788c21ca13deb0e31481a9ab5dc8abdd675c472b447a6f78fabae",
  "kind": "def",
  "lexical_name": "unitIsoAux",
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
  "slug": "unitisoaux--6db794a1f44e5f749b0a27cf",
  "source": {
    "blob": "49d391ceac2bb93811e773a272fc66fb4297940e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6db794a1f44e5f749b0a27cf8da7926a0e53eb5494c4eb015c69b7beeeae9407",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e6bab0ea16788c21ca13deb0e31481a9ab5dc8abdd675c472b447a6f78fabae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def unitIsoAux (F : C ⥤ AddCommGrp.{v}) [PreservesFiniteLimits F] (X : C) :
    letI : (F ⋙ forget AddCommGrp).Braided := .ofChosenFiniteProducts _
    commGrpTypeEquivalenceCommGrp.inverse.obj (AddCommGrp.toCommGrp.obj (F.obj X)) ≅
      (F ⋙ forget AddCommGrp).mapCommGrp.obj (Preadditive.commGrpEquivalence.functor.obj X) := by
  letI : (F ⋙ forget AddCommGrp).Braided := .ofChosenFiniteProducts _
  letI : F.Monoidal := .ofChosenFiniteProducts _
  refine CommGrp_.mkIso Multiplicative.toAdd.toIso (by aesop_cat) ?_
  dsimp [-Functor.comp_map, -ConcreteCategory.forget_map_eq_coe, -forget_map]
  have : F.Additive := Functor.additive_of_preserves_binary_products _
  rw [Functor.comp_map, F.map_add, Functor.Monoidal.μ_comp F (forget AddCommGrp) X X,
    Category.assoc, ← Functor.map_comp, Preadditive.comp_add, Functor.Monoidal.μ_fst,
    Functor.Monoidal.μ_snd]
  aesop_cat

/-- Implementation, see `leftExactFunctorForgetEquivalence`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExactFunctor/Variant6358e23e820164338037282d0da714dd7a50b27c4ccc6a0499a42c186dc55dec.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49d391ceac2bb93811e773a272fc66fb4297940e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
