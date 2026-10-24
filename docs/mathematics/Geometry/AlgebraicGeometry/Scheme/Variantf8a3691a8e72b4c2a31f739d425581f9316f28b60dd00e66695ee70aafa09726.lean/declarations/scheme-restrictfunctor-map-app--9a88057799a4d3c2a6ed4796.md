# Scheme.restrictFunctor_map_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66cb4afeae676271592ffb515e0707f44280a402",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 779,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16a4848e-9206-1dce-0b66-f9eb4184441b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ec0a4a64-e834-8d9c-d775-eb77c2718e51",
  "kind": "theorem",
  "lexical_name": "Scheme.restrictFunctor_map_app",
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
  "slug": "scheme-restrictfunctor-map-app--9a88057799a4d3c2a6ed4796",
  "source": {
    "blob": "66cb4afeae676271592ffb515e0707f44280a402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 800,
    "line": 779,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a88057799a4d3c2a6ed47969f69c068fa7148178932658f4f6ab4e22ec5c398",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec0a4a64-e834-8d9c-d775-eb77c2718e51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–800.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Scheme.restrictFunctor_map_app {U V : Opens X} (i : U ⟶ V) (W : Opens V) :
    (X.restrictFunctor.map i).1.1.c.app (op W) =
      X.presheaf.map (homOfLE <| X.restrictFunctor_map_app_aux i W).op := by
  have e₁ :=
    Scheme.congr_app (X.restrictFunctor_map_ofRestrict i)
      (op <| V.openEmbedding.isOpenMap.functor.obj W)
  rw [Scheme.comp_val_c_app] at e₁
  -- Porting note : `Opens.map_functor_eq` need more help
  have e₂ := (X.restrictFunctor.map i).1.val.c.naturality (eqToHom <| W.map_functor_eq (U := V)).op
  rw [← IsIso.eq_inv_comp] at e₂
  dsimp at e₁ e₂ ⊢
  rw [e₂, W.adjunction_counit_map_functor (U := V), ← IsIso.eq_inv_comp, IsIso.inv_comp_eq,
    ← IsIso.eq_comp_inv] at e₁
  simp_rw [eqToHom_map (Opens.map _), eqToHom_map (IsOpenMap.functor _), ← Functor.map_inv,
    ← Functor.map_comp] at e₁
  rw [e₁]
  congr 1
#align algebraic_geometry.Scheme.restrict_functor_map_app AlgebraicGeometry.Scheme.restrictFunctor_map_app

/-- The functor that restricts to open subschemes and then takes global section is
isomorphic to the structure sheaf. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantf8a3691a8e72b4c2a31f739d425581f9316f28b60dd00e66695ee70aafa09726.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cb4afeae676271592ffb515e0707f44280a402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
