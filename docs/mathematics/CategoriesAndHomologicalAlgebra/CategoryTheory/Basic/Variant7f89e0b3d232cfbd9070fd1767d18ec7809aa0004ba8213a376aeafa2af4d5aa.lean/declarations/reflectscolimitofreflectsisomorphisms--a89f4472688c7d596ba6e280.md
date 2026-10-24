# reflectsColimitOfReflectsIsomorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e50733a2d4e48e62924dfbcc4b4b2c0dd79da6025b227a39f7c898a361dfa822",
  "kind": "def",
  "lexical_name": "reflectsColimitOfReflectsIsomorphisms",
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
  "slug": "reflectscolimitofreflectsisomorphisms--a89f4472688c7d596ba6e280",
  "source": {
    "blob": "ee8a172395f82224db7c3028c4a2c048e9c574c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 771,
    "line": 754,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7f89e0b3d232cfbd9070fd1767d18ec7809aa0004ba8213a376aeafa2af4d5aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a89f4472688c7d596ba6e280021d134d5027946b239100b15ce4a2e1770d194d",
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

Occurrence: `declaration:e50733a2d4e48e62924dfbcc4b4b2c0dd79da6025b227a39f7c898a361dfa822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 754–771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflectsColimitOfReflectsIsomorphisms (F : J ⥤ C) (G : C ⥤ D) [ReflectsIsomorphisms G]
    [HasColimit F] [PreservesColimit F G] : ReflectsColimit F G where
  reflects {c} t := by
    suffices IsIso (IsColimit.desc (colimit.isColimit F) c) from by
      apply IsColimit.ofPointIso (colimit.isColimit F)
    change IsIso ((Cocones.forget _).map ((colimit.isColimit F).descCoconeMorphism c))
    suffices IsIso (IsColimit.descCoconeMorphism (colimit.isColimit F) c) from by
      apply (Cocones.forget F).map_isIso _
    suffices IsIso (Prefunctor.map (Cocones.functoriality F G).toPrefunctor
      (IsColimit.descCoconeMorphism (colimit.isColimit F) c)) from by
        apply isIso_of_reflects_iso _ (Cocones.functoriality F G)
    refine' (isColimitOfPreserves G (colimit.isColimit F)).hom_isIso t _
#align category_theory.limits.reflects_colimit_of_reflects_isomorphisms CategoryTheory.Limits.reflectsColimitOfReflectsIsomorphisms

/--
If `C` has colimits of shape `J` and `G` preserves them, then if `G` reflects isomorphisms then it
reflects colimits of shape `J`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7f89e0b3d232cfbd9070fd1767d18ec7809aa0004ba8213a376aeafa2af4d5aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7f89e0b3d232cfbd9070fd1767d18ec7809aa0004ba8213a376aeafa2af4d5aa.lean#L754).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee8a172395f82224db7c3028c4a2c048e9c574c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
