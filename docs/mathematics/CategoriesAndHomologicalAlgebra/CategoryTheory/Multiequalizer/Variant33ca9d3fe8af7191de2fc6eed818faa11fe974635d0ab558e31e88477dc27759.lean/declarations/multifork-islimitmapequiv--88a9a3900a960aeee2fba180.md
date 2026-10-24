# Multifork.isLimitMapEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02b3cf1d9ac67b78583896bbc73ffd7d199b32f4d4722beed41b7d93271cd0e5",
  "kind": "def",
  "lexical_name": "Multifork.isLimitMapEquiv",
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
  "slug": "multifork-islimitmapequiv--88a9a3900a960aeee2fba180",
  "source": {
    "blob": "917fe90b332fd10d7c28dddcccd4e4d63efa4b3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant33ca9d3fe8af7191de2fc6eed818faa11fe974635d0ab558e31e88477dc27759.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88a9a3900a960aeee2fba1804783ab69b60c7845212a091ed2c0438607b4100f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant33ca9d3fe8af7191de2fc6eed818faa11fe974635d0ab558e31e88477dc27759.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02b3cf1d9ac67b78583896bbc73ffd7d199b32f4d4722beed41b7d93271cd0e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Multifork.isLimitMapEquiv :
    IsLimit (F.mapCone c) ≃ IsLimit (c.map F) :=
  Equiv.trans (IsLimit.postcomposeInvEquiv (d.multicospanMapIso F) (F.mapCone c)).symm
    (IsLimit.equivIsoLimit
      (Multifork.ext (Iso.refl _) (fun i ↦ by dsimp only [Multifork.ι]; simp)))

/-- If `d : MulticospanIndex J C`, `c : Multifork d` is a limit multifork,
and `F : C ⥤ D` is a functor which preserves the limit of `d.multicospan`,
then the multifork `c.map F` is limiting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant33ca9d3fe8af7191de2fc6eed818faa11fe974635d0ab558e31e88477dc27759.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant33ca9d3fe8af7191de2fc6eed818faa11fe974635d0ab558e31e88477dc27759.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `917fe90b332fd10d7c28dddcccd4e4d63efa4b3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
