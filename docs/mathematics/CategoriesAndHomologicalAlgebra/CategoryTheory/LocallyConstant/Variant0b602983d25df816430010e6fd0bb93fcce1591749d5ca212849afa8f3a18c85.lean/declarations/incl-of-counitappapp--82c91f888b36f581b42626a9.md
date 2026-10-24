# incl_of_counitAppApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e9e8c13111eaa70d17b10c8fbeb59979c1a2d0d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93de5958-a9c8-0d66-ff60-ca7d84e24da6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c13f69a3-d09a-1842-de93-898302b793c5",
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
  "slug": "incl-of-counitappapp--82c91f888b36f581b42626a9",
  "source": {
    "blob": "9e9e8c13111eaa70d17b10c8fbeb59979c1a2d0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 171,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82c91f888b36f581b42626a9ac0870fd1534aa82bac7cd736cdf3cde18e8e9dd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c13f69a3-d09a-1842-de93-898302b793c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–185.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant0b602983d25df816430010e6fd0bb93fcce1591749d5ca212849afa8f3a18c85.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9e8c13111eaa70d17b10c8fbeb59979c1a2d0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
