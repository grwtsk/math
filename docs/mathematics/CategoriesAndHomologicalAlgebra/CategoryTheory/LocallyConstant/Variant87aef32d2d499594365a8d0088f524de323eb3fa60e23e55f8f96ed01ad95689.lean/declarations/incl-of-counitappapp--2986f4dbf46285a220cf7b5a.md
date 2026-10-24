# incl_of_counitAppApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43780e6e-1559-9216-9039-4aa1f60400c1",
  "kind": "lemma",
  "lexical_name": "incl_of_counitAppApp",
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
  "slug": "incl-of-counitappapp--2986f4dbf46285a220cf7b5a",
  "source": {
    "blob": "fd145393c104eb0e609329a490c334d0c5d912c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant87aef32d2d499594365a8d0088f524de323eb3fa60e23e55f8f96ed01ad95689.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2986f4dbf46285a220cf7b5af2224faea628607cdefe68d04fecd4dfbfb65272",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant87aef32d2d499594365a8d0088f524de323eb3fa60e23e55f8f96ed01ad95689.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43780e6e-1559-9216-9039-4aa1f60400c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma incl_of_counitAppApp [PreservesFiniteProducts Y] [HasExplicitFiniteCoproducts.{u} P]
    (a : Fiber f) : Y.map (sigmaIncl f a).op (counitAppApp S Y f) = counitAppAppImage f a := by
  rw [← sigmaComparison_comp_sigmaIso, Functor.mapIso_hom, Iso.op_hom, types_comp_apply]
  simp only [counitAppApp, Functor.mapIso_inv, ← Iso.op_hom, CategoryTheory.comp_apply,
    ConcreteCategory.hom_ofHom, TypeCat.Fun.coe_mk, ← Functor.map_comp_apply, Iso.inv_hom_id,
    Functor.map_id_apply]
  exact congrFun (Iso.inv_hom_id_apply (asIso (sigmaComparison Y (fun a ↦ (fiber f a).1)))
    (counitAppAppImage f)) _

variable {T : CompHausLike.{u} P} (g : T ⟶ S)

/--
This is an auxiliary definition, the details do not matter. What's important is that this map exists
so that the lemma `incl_comap` works.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant87aef32d2d499594365a8d0088f524de323eb3fa60e23e55f8f96ed01ad95689.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant87aef32d2d499594365a8d0088f524de323eb3fa60e23e55f8f96ed01ad95689.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd145393c104eb0e609329a490c334d0c5d912c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
