# compatibility_N₂_N₁_karoubi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25f486dc08c1fe93cbcb55d96d3a968bcdd798a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5426115f2982bfec6f8a09b65e8876401f39742b5d2a9cbe15a557a78027ee38.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3d6518e3-302a-69d7-97f2-dc0bf20c78c5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:261101c4-35af-5238-327d-0d450c2135f7",
  "kind": "theorem",
  "lexical_name": "compatibility_N₂_N₁_karoubi",
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
  "slug": "compatibility-n-n-karoubi--d94d9d23a5e204fa33c5f3fd",
  "source": {
    "blob": "25f486dc08c1fe93cbcb55d96d3a968bcdd798a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant5426115f2982bfec6f8a09b65e8876401f39742b5d2a9cbe15a557a78027ee38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d94d9d23a5e204fa33c5f3fd6110dd878f4b61e102e2a46af376c1a7a89f4dcf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant5426115f2982bfec6f8a09b65e8876401f39742b5d2a9cbe15a557a78027ee38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:261101c4-35af-5238-327d-0d450c2135f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compatibility_N₂_N₁_karoubi :
    N₂ ⋙ (karoubiChainComplexEquivalence C ℕ).functor =
      karoubiFunctorCategoryEmbedding SimplexCategoryᵒᵖ C ⋙
        N₁ ⋙ (karoubiChainComplexEquivalence (Karoubi C) ℕ).functor ⋙
            Functor.mapHomologicalComplex (KaroubiKaroubi.equivalence C).inverse _ := by
  refine' CategoryTheory.Functor.ext (fun P => _) fun P Q f => _
  · refine' HomologicalComplex.ext _ _
    · ext n
      · rfl
      · dsimp
        simp only [karoubi_PInfty_f, comp_id, PInfty_f_naturality, id_comp, eqToHom_refl]
    · rintro _ n (rfl : n + 1 = _)
      ext
      have h := (AlternatingFaceMapComplex.map P.p).comm (n + 1) n
      dsimp [N₂, karoubiChainComplexEquivalence,
        KaroubiHomologicalComplexEquivalence.Functor.obj] at h ⊢
      simp only [assoc, Karoubi.eqToHom_f, eqToHom_refl, comp_id,
        karoubi_alternatingFaceMapComplex_d, karoubi_PInfty_f,
        ← HomologicalComplex.Hom.comm_assoc, ← h, app_idem_assoc]
  · ext n
    dsimp [KaroubiKaroubi.inverse, Functor.mapHomologicalComplex]
    simp only [karoubi_PInfty_f, HomologicalComplex.eqToHom_f, Karoubi.eqToHom_f,
      assoc, comp_id, PInfty_f_naturality, app_p_comp,
      karoubiChainComplexEquivalence_functor_obj_X_p, N₂_obj_p_f, eqToHom_refl,
      PInfty_f_naturality_assoc, app_comp_p, PInfty_f_idem_assoc]
set_option linter.uppercaseLean3 false in
#align algebraic_topology.dold_kan.compatibility_N₂_N₁_karoubi AlgebraicTopology.DoldKan.compatibility_N₂_N₁_karoubi

/-- We deduce that `N₂ : Karoubi (SimplicialObject C) ⥤ Karoubi (ChainComplex C ℕ))`
reflects isomorphisms from the fact that
`N₁ : SimplicialObject (Karoubi C) ⥤ Karoubi (ChainComplex (Karoubi C) ℕ)` does. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant5426115f2982bfec6f8a09b65e8876401f39742b5d2a9cbe15a557a78027ee38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NReflectsIso/Variant5426115f2982bfec6f8a09b65e8876401f39742b5d2a9cbe15a557a78027ee38.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25f486dc08c1fe93cbcb55d96d3a968bcdd798a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
