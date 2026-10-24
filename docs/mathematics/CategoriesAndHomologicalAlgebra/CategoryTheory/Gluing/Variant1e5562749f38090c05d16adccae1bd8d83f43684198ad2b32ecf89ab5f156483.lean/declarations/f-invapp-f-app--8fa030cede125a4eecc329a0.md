# f_invApp_f_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3722a6572b6365a483023c3a621a58fa54d013c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8efb7531-42df-3b07-2200-2ea266214507",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afdec07c-7382-554f-6edc-d495209e545f",
  "kind": "theorem",
  "lexical_name": "f_invApp_f_app",
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
  "slug": "f-invapp-f-app--8fa030cede125a4eecc329a0",
  "source": {
    "blob": "3722a6572b6365a483023c3a621a58fa54d013c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fa030cede125a4eecc329a02162ab6707a01aff1dd81dfba67341d78dd1e696",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afdec07c-7382-554f-6edc-d495209e545f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem f_invApp_f_app (i j k : D.J) (U : Opens (D.V (i, j)).carrier) :
    (D.f_open i j).invApp _ U ≫ (D.f i k).c.app _ =
      (π₁ i, j, k).c.app (op U) ≫
        (π₂⁻¹ i, j, k) (unop _) ≫
          (D.V _).presheaf.map
            (eqToHom
              (by
                delta IsOpenImmersion.opensFunctor IsOpenEmbedding.functor
                dsimp only [Functor.op, IsOpenMap.functor, Opens.map, unop_op]
                congr
                apply pullback_base)) := by
  have := PresheafedSpace.congr_app (@pullback.condition _ _ _ _ _ (D.f i j) (D.f i k) _)
  dsimp only [comp_c_app] at this
  rw [← cancel_epi (inv ((D.f_open i j).invApp _ U)), IsIso.inv_hom_id_assoc,
    IsOpenImmersion.inv_invApp]
  simp_rw [Category.assoc]
  erw [(π₁ i, j, k).c.naturality_assoc, reassoc_of% this, ← Functor.map_comp_assoc,
    IsOpenImmersion.inv_naturality_assoc, IsOpenImmersion.app_invApp_assoc, ←
    (D.V (i, k)).presheaf.map_comp, ← (D.V (i, k)).presheaf.map_comp]
  convert! (Category.comp_id _).symm
  erw [(D.V (i, k)).presheaf.map_id]
  rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- We can prove the `eq` along with the lemma. Thus this is bundled together here, and the
lemma itself is separated below.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3722a6572b6365a483023c3a621a58fa54d013c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
