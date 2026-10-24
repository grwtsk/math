# yonedaMonObjIsoOfRepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fa22b3320d35c34734fcb26d6eca37f7bb3b32ff92f0fb466863a0f37e4bd27",
  "kind": "def",
  "lexical_name": "yonedaMonObjIsoOfRepresentableBy",
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
  "slug": "yonedamonobjisoofrepresentableby--b4dcc1805d0b68f1adce5e49",
  "source": {
    "blob": "83ad1ac641057f92bce9db2dc55eb880394a1186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4dcc1805d0b68f1adce5e49c7db4713938722bbbc4634e115a664915f38b56b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fa22b3320d35c34734fcb26d6eca37f7bb3b32ff92f0fb466863a0f37e4bd27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def yonedaMonObjIsoOfRepresentableBy
    (F : Cᵒᵖ ⥤ MonCat.{v}) (α : (F ⋙ forget _).RepresentableBy X) :
    letI := Mon_Class.ofRepresentableBy X F α
    yonedaMonObj X ≅ F :=
  letI := Mon_Class.ofRepresentableBy X F α
  NatIso.ofComponents (fun Y ↦ MulEquiv.toMonCatIso
    { toEquiv := α.homEquiv
      map_mul' f₁ f₂ := by
        show α.homEquiv (lift f₁ f₂ ≫ α.homEquiv.symm (α.homEquiv (fst X X) *
          α.homEquiv (snd X X))) = α.homEquiv f₁ * α.homEquiv f₂
        simp only [α.homEquiv_comp, Equiv.apply_symm_apply,
          Functor.comp_map, ConcreteCategory.forget_map_eq_coe, map_mul]
        simp only [← Functor.comp_map, ← ConcreteCategory.forget_map_eq_coe, ← α.homEquiv_comp]
        simp }) (fun φ ↦ MonCat.hom_ext (MonoidHom.ext (α.homEquiv_comp φ.unop)))

/-- The yoneda embedding of `Mon_C` into presheaves of monoids. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant35b97dda1637a2f385e8edd1ce7eb5d1a9a416d4ceec30840456c6b17388d27a.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83ad1ac641057f92bce9db2dc55eb880394a1186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
