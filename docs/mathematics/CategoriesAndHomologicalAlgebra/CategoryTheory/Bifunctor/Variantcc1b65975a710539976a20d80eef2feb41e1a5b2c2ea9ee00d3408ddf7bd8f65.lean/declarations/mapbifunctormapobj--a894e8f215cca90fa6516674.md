# ιMapBifunctorMapObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:099b59fd6f6587e6b823b9b5534fd350a73160b0939b2131c74046f98711c4b3",
  "kind": "def",
  "lexical_name": "ιMapBifunctorMapObj",
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
  "slug": "mapbifunctormapobj--a894e8f215cca90fa6516674",
  "source": {
    "blob": "d240a579dd17f7b83326d82102b468a211d161b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a894e8f215cca90fa65166747060b49fec51e16e4713264dfb9a2b925b0b6844",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:099b59fd6f6587e6b823b9b5534fd350a73160b0939b2131c74046f98711c4b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def ιMapBifunctorMapObj
    (X : GradedObject I C₁) (Y : GradedObject J C₂)
    [HasMap (((mapBifunctor F I J).obj X).obj Y) p]
    (i : I) (j : J) (k : K) (h : p ⟨i, j⟩ = k) :
    (F.obj (X i)).obj (Y j) ⟶ mapBifunctorMapObj F p X Y k :=
  (((mapBifunctor F I J).obj X).obj Y).ιMapObj p ⟨i, j⟩ k h

/-- The maps `mapBifunctorMapObj F p X₁ Y₁ ⟶ mapBifunctorMapObj F p X₂ Y₂` which express
the functoriality of `mapBifunctorMapObj`, see `mapBifunctorMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variantcc1b65975a710539976a20d80eef2feb41e1a5b2c2ea9ee00d3408ddf7bd8f65.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d240a579dd17f7b83326d82102b468a211d161b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
