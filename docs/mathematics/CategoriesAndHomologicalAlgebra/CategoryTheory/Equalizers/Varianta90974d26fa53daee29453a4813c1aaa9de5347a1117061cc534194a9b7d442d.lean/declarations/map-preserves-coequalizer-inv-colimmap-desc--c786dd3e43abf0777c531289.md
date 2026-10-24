# map_π_preserves_coequalizer_inv_colimMap_desc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7e32750-4545-4b03-dfba-2c3afb3ea90c",
  "kind": "theorem",
  "lexical_name": "map_π_preserves_coequalizer_inv_colimMap_desc",
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
  "slug": "map-preserves-coequalizer-inv-colimmap-desc--c786dd3e43abf0777c531289",
  "source": {
    "blob": "7f387c6472893ab7ef3c88ef99bd31d0ace5b2e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 228,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Varianta90974d26fa53daee29453a4813c1aaa9de5347a1117061cc534194a9b7d442d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c786dd3e43abf0777c531289329deb790bd77701eaf31347e6e10a9419e8170d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Varianta90974d26fa53daee29453a4813c1aaa9de5347a1117061cc534194a9b7d442d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7e32750-4545-4b03-dfba-2c3afb3ea90c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 228–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_π_preserves_coequalizer_inv_colimMap_desc {X' Y' : D} (f' g' : X' ⟶ Y')
    [HasCoequalizer f' g'] (p : G.obj X ⟶ X') (q : G.obj Y ⟶ Y') (wf : G.map f ≫ q = p ≫ f')
    (wg : G.map g ≫ q = p ≫ g') {Z' : D} (h : Y' ⟶ Z') (wh : f' ≫ h = g' ≫ h) :
    G.map (coequalizer.π f g) ≫
        (PreservesCoequalizer.iso G f g).inv ≫
          colimMap (parallelPairHom (G.map f) (G.map g) f' g' p q wf wg) ≫ coequalizer.desc h wh =
      q ≫ h := by
  slice_lhs 1 3 => rw [map_π_preserves_coequalizer_inv_colimMap]
  slice_lhs 2 3 => rw [coequalizer.π_desc]

/-- Any functor preserves coequalizers of split pairs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Varianta90974d26fa53daee29453a4813c1aaa9de5347a1117061cc534194a9b7d442d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Varianta90974d26fa53daee29453a4813c1aaa9de5347a1117061cc534194a9b7d442d.lean#L228).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f387c6472893ab7ef3c88ef99bd31d0ace5b2e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
