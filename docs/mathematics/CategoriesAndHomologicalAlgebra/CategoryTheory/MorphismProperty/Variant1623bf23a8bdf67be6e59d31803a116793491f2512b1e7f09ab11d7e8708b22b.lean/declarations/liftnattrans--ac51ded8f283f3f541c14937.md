# liftNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e5f9fe9d925c859c66247de0f125d1b1d0d4cbb39aa5f24fd8aa798fbe54453",
  "kind": "def",
  "lexical_name": "liftNatTrans",
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
  "slug": "liftnattrans--ac51ded8f283f3f541c14937",
  "source": {
    "blob": "fea6adc96fdf6d000b378059ec969986add12e20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac51ded8f283f3f541c149374c1b84fd96da9ddf8cd05216ce9b052ac72b0951",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e5f9fe9d925c859c66247de0f125d1b1d0d4cbb39aa5f24fd8aa798fbe54453`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftNatTrans {F G : Paths V ⥤ C} (α_app : (v : V) → (F.obj v ⟶ G.obj v))
    (α_nat : {X Y : V} → (f : X ⟶ Y) →
      F.map (Quiver.Hom.toPath f) ≫ α_app Y = α_app X ≫ G.map (Quiver.Hom.toPath f)) : F ⟶ G where
  app := α_app
  naturality := by
    apply MorphismProperty.of_eq_top
      (P := MorphismProperty.naturalityProperty (F₁ := F) α_app)
    exact morphismProperty_eq_top_of_isMultiplicative _ _ α_nat

/-- A natural isomorphism between `F G : Paths V ⥤ C` is defined by its components and
its unary naturality squares. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variant1623bf23a8bdf67be6e59d31803a116793491f2512b1e7f09ab11d7e8708b22b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fea6adc96fdf6d000b378059ec969986add12e20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
