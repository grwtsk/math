# StrictUniversalPropertyFixedTarget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d1107e1620a92b7a0373d8e255f0b50d5113c27120303541d3343edc94d6e62",
  "kind": "structure",
  "lexical_name": "StrictUniversalPropertyFixedTarget",
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
  "slug": "strictuniversalpropertyfixedtarget--9bacb0e48417d4b5e1dc3aa7",
  "source": {
    "blob": "6bf68d771a6508b818de1438dcaa71e3d282d617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9bacb0e48417d4b5e1dc3aa73ba55f03e232164f3e96c6fea13d35664faa20da",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d1107e1620a92b7a0373d8e255f0b50d5113c27120303541d3343edc94d6e62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StrictUniversalPropertyFixedTarget where
  /-- the functor `L` inverts `W` -/
  inverts : W.IsInvertedBy L
  /-- any functor `C ⥤ E` which inverts `W` can be lifted as a functor `D ⥤ E` -/
  lift : ∀ (F : C ⥤ E) (_ : W.IsInvertedBy F), D ⥤ E
  /-- there is a factorisation involving the lifted functor -/
  fac : ∀ (F : C ⥤ E) (hF : W.IsInvertedBy F), L ⋙ lift F hF = F
  /-- uniqueness of the lifted functor -/
  uniq : ∀ (F₁ F₂ : D ⥤ E) (_ : L ⋙ F₁ = L ⋙ F₂), F₁ = F₂

/-- The localized category `W.Localization` that was constructed satisfies
the universal property of the localization. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Predicate/Variant7bd0243b6f6a3177f7eeda373f3cc7a6266ca15c260c801facc18606474b1357.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bf68d771a6508b818de1438dcaa71e3d282d617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
