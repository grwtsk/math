# reflectsLimitOfReflectsIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9422b5d5ef3d1144fe29372b2b653e4c729a7144eff5e8a92f3bda96856c37cd",
  "kind": "def",
  "lexical_name": "reflectsLimitOfReflectsIsomorphisms",
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
  "slug": "reflectslimitofreflectsisomorphisms--7609e8aea53066eaaba9127d",
  "source": {
    "blob": "ee8a172395f82224db7c3028c4a2c048e9c574c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 644,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7f89e0b3d232cfbd9070fd1767d18ec7809aa0004ba8213a376aeafa2af4d5aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7609e8aea53066eaaba9127dc54c15eadc5d908f483c75924977400af74bcb2f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7f89e0b3d232cfbd9070fd1767d18ec7809aa0004ba8213a376aeafa2af4d5aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9422b5d5ef3d1144fe29372b2b653e4c729a7144eff5e8a92f3bda96856c37cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 644–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflectsLimitOfReflectsIsomorphisms (F : J ⥤ C) (G : C ⥤ D) [ReflectsIsomorphisms G]
    [HasLimit F] [PreservesLimit F G] : ReflectsLimit F G where
  reflects {c} t := by
    suffices IsIso (IsLimit.lift (limit.isLimit F) c) from by
      apply IsLimit.ofPointIso (limit.isLimit F)
    change IsIso ((Cones.forget _).map ((limit.isLimit F).liftConeMorphism c))
    suffices IsIso (IsLimit.liftConeMorphism (limit.isLimit F) c) from by
      apply (Cones.forget F).map_isIso _
    suffices IsIso (Prefunctor.map (Cones.functoriality F G).toPrefunctor
      (IsLimit.liftConeMorphism (limit.isLimit F) c)) from by
        apply isIso_of_reflects_iso _ (Cones.functoriality F G)
    refine' t.hom_isIso (isLimitOfPreserves G (limit.isLimit F)) _
#align category_theory.limits.reflects_limit_of_reflects_isomorphisms CategoryTheory.Limits.reflectsLimitOfReflectsIsomorphisms

/-- If `C` has limits of shape `J` and `G` preserves them, then if `G` reflects isomorphisms then it
reflects limits of shape `J`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7f89e0b3d232cfbd9070fd1767d18ec7809aa0004ba8213a376aeafa2af4d5aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7f89e0b3d232cfbd9070fd1767d18ec7809aa0004ba8213a376aeafa2af4d5aa.lean#L644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8a172395f82224db7c3028c4a2c048e9c574c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
