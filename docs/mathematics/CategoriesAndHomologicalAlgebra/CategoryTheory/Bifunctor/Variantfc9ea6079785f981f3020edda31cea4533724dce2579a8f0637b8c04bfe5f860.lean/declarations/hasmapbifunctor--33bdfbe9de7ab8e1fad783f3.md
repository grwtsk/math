# HasMapBifunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0b7a140c69a72874beb37c5861ae5c71de84232865ad1a35c0b0f063c4e9ef3",
  "kind": "abbrev",
  "lexical_name": "HasMapBifunctor",
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
  "slug": "hasmapbifunctor--33bdfbe9de7ab8e1fad783f3",
  "source": {
    "blob": "587b5e562a1e3f696b91943fb6c286fd7e5d61c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33bdfbe9de7ab8e1fad783f378bc8bb5a1a03393b48ed08df74f70796aae4465",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0b7a140c69a72874beb37c5861ae5c71de84232865ad1a35c0b0f063c4e9ef3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev HasMapBifunctor := (((F.mapBifunctorHomologicalComplex c₁ c₂).obj K₁).obj K₂).HasTotal c

variable [HasMapBifunctor K₁ K₂ F c] [HasMapBifunctor L₁ L₂ F c] [DecidableEq J]

/-- Given `K₁ : HomologicalComplex C₁ c₁`, `K₂ : HomologicalComplex C₂ c₂`,
a bifunctor `F : C₁ ⥤ C₂ ⥤ D` and a complex shape `ComplexShape J` such that we have
`[TotalComplexShape c₁ c₂ c]`, this `mapBifunctor K₁ K₂ F c : HomologicalComplex D c`
is the total complex of the bicomplex obtained by applying `F` to `K₁` and `K₂`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantfc9ea6079785f981f3020edda31cea4533724dce2579a8f0637b8c04bfe5f860.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `587b5e562a1e3f696b91943fb6c286fd7e5d61c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
