# Multicofork.isColimitMapEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:784219872c7559142181136cfdb088d78d1dcaaf8967611a78c3a0692dfc121e",
  "kind": "def",
  "lexical_name": "Multicofork.isColimitMapEquiv",
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
  "slug": "multicofork-iscolimitmapequiv--ce99eda67408916b4c192b26",
  "source": {
    "blob": "6006f59269518e92548d5491e52720c46ea016d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant20c4e624d4fc222487a4adb63f29ab39cc2c7aa374c96b4dcb86a2deb9646743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce99eda67408916b4c192b26416a2268e0e06b536961deaec2e613b03bb68a79",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant20c4e624d4fc222487a4adb63f29ab39cc2c7aa374c96b4dcb86a2deb9646743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:784219872c7559142181136cfdb088d78d1dcaaf8967611a78c3a0692dfc121e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Multicofork.isColimitMapEquiv :
    IsColimit (F.mapCocone c) ≃ IsColimit (c.map F) :=
  (IsColimit.precomposeInvEquiv (d.multispanMapIso F).symm (F.mapCocone c)).symm.trans
    (IsColimit.equivIsoColimit
      (Multicofork.ext (Iso.refl _) (fun i ↦ by dsimp only [Multicofork.π]; simp)))

/-- If `d : MultispanIndex J C`, `c : Multicofork d` is a colimit multicofork,
and `F : C ⥤ D` is a functor which preserves the colimit of `d.multispan`,
then the multicofork `c.map F` is colimit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant20c4e624d4fc222487a4adb63f29ab39cc2c7aa374c96b4dcb86a2deb9646743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multiequalizer/Variant20c4e624d4fc222487a4adb63f29ab39cc2c7aa374c96b4dcb86a2deb9646743.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6006f59269518e92548d5491e52720c46ea016d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
