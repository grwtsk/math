# ιMapBifunctor_hom₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2888a9f4-3b72-f93f-6f69-71512919b799",
  "kind": "lemma",
  "lexical_name": "ιMapBifunctor_hom₁",
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
  "slug": "mapbifunctor-hom--4d51b9e585e9fd29d8dd3e5a",
  "source": {
    "blob": "240dfa2833b3693dc737122596f78c6f10c9f2c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantec2916775b0733b8ec688a9edef362c13a4687333d3a60aa8006739848e5315e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d51b9e585e9fd29d8dd3e5a32538ba14333c486446a28396decf4a3f2feedaa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantec2916775b0733b8ec688a9edef362c13a4687333d3a60aa8006739848e5315e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2888a9f4-3b72-f93f-6f69-71512919b799`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιMapBifunctor_hom₁ (i₁ i₁' : I₁) (i₂ : I₂) (j j' : J)
    (h : ComplexShape.π c₁ c₂ c (i₁', i₂) = j) (h' : c₁.prev i₁' = i₁) :
    ιMapBifunctor K₁ K₂ F c i₁' i₂ j h ≫ hom₁ h₁ f₂ F c j j' = ComplexShape.ε₁ c₁ c₂ c (i₁, i₂) •
      (F.map (h₁.hom i₁' i₁)).app (K₂.X i₂) ≫ (F.obj (L₁.X i₁)).map (f₂.f i₂) ≫
        ιMapBifunctorOrZero L₁ L₂ F c _ _ j' := by
  subst h'
  simp [hom₁]

variable (f₁) {f₂ f₂'} in
/-- Auxiliary definition for `mapBifunctorMapHomotopy₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantec2916775b0733b8ec688a9edef362c13a4687333d3a60aa8006739848e5315e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variantec2916775b0733b8ec688a9edef362c13a4687333d3a60aa8006739848e5315e.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240dfa2833b3693dc737122596f78c6f10c9f2c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
