# full_pullFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:400bc13b-815a-b64b-454a-ede0a85fc810",
  "kind": "lemma",
  "lexical_name": "full_pullFunctor",
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
  "slug": "full-pullfunctor--e52161764029fa1ef98fc277",
  "source": {
    "blob": "e889494c1f5733cd24819014b2f35ee2244479e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 314,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e52161764029fa1ef98fc277ad0069b7d6171584839b04debffdb436bc6289c6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:400bc13b-815a-b64b-454a-ede0a85fc810`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma full_pullFunctor :
    (pullFunctor F (f := f) (p := 𝟙 _) (f' := f') (p' := p') (by cat_disch)).Full where
  map_surjective {D₁ D₂} φ :=
    ⟨{ hom := fun i ↦ full_pullFunctor.hom w hf' φ i, comm := comm _ _ _ }, by
      ext i
      dsimp
      rw [map_hom _ _ _ _ (𝟙 _) (by cat_disch),
        mor_eq _ _ _ _ _ (f' i) (p' i), pullHom_id,
        D₁.hom_self _ _ (by cat_disch), D₂.hom_self _ _ (by cat_disch),
        Category.id_comp, Category.comp_id]⟩

/-- Let `F` be a prestack for a Grothendieck topology `J`,
`f : X i ⟶ S` and `f' : X' j ⟶ S` be two families of morphisms.
Assume that `f'` is a covering family for `J`, then
functors `F.pullFunctor .. : F.DescentData f ⥤ F.DescentData f'`
are fully faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variant0a6b2e94ff6a1266ee1d3021ca5179c5af4af3989cc4d9f1773962300e6101d8.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e889494c1f5733cd24819014b2f35ee2244479e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
