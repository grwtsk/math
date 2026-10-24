# IsCommMon.ofRepresentableBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1beca6b3-a0a7-663d-67f3-fb38967fa8ed",
  "kind": "lemma",
  "lexical_name": "IsCommMon.ofRepresentableBy",
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
  "slug": "iscommmon-ofrepresentableby--999a1fa886e906ad2c0541b9",
  "source": {
    "blob": "f16655f03cd04aab614b033dd8622973147da8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 27,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant580fc825b60027fd865c2def2a16c69dd8bba1132722fae16f2049a5571deb38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:999a1fa886e906ad2c0541b9a5f5de2801910c69ed9ae49887820d47a4b42e77",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant580fc825b60027fd865c2def2a16c69dd8bba1132722fae16f2049a5571deb38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1beca6b3-a0a7-663d-67f3-fb38967fa8ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCommMon.ofRepresentableBy (F : Cᵒᵖ ⥤ CommMonCat) (α : (F ⋙ forget _).RepresentableBy X) :
    letI : Mon_Class X := .ofRepresentableBy X (F ⋙ forget₂ CommMonCat MonCat) α
    IsCommMon X := by
  letI : Mon_Class X := .ofRepresentableBy X (F ⋙ forget₂ CommMonCat MonCat) α
  have : μ = α.homEquiv.symm (α.homEquiv (fst X X) * α.homEquiv (snd X X)) := rfl
  constructor
  simp_rw [this, ← α.homEquiv.apply_eq_iff_eq, α.homEquiv_comp, Functor.comp_map,
    ConcreteCategory.forget_map_eq_coe, Equiv.apply_symm_apply, map_mul,
    ← ConcreteCategory.forget_map_eq_coe, ← Functor.comp_map, ← α.homEquiv_comp, op_tensorObj,
    Functor.comp_obj, braiding_hom_fst, braiding_hom_snd, _root_.mul_comm]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant580fc825b60027fd865c2def2a16c69dd8bba1132722fae16f2049a5571deb38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommMon/Variant580fc825b60027fd865c2def2a16c69dd8bba1132722fae16f2049a5571deb38.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16655f03cd04aab614b033dd8622973147da8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
