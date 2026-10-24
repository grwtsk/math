# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7df149a3a30b14ffe097d6031aa58597e695890e8f854914f472343e61c6c84f",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--3fe11645cdf2ab0d2718f28b",
  "source": {
    "blob": "d4aa0d4a4dab3f04968b5222203424cd644aea9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant8b15b6f07de5283e3d8fed71b4d2e4ac03bfb31fe7f5d84ba7d24a80a81e7952.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3fe11645cdf2ab0d2718f28bb2cb25ebfa6cc97271da4e17b6482bbcb81afeba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant8b15b6f07de5283e3d8fed71b4d2e4ac03bfb31fe7f5d84ba7d24a80a81e7952.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7df149a3a30b14ffe097d6031aa58597e695890e8f854914f472343e61c6c84f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : IsIso (@LaxMonoidal.ε _ _ _ _ _ _ (free R).obj _ _) := by
  refine' ⟨⟨Finsupp.lapply PUnit.unit, ⟨_, _⟩⟩⟩
  · -- Porting note: broken ext
    apply LinearMap.ext_ring
    -- Porting note: simp used to be able to close this goal
    dsimp
    erw [ModuleCat.comp_def, LinearMap.comp_apply, ε_apply, Finsupp.lapply_apply,
      Finsupp.single_eq_same, id_apply]
  · -- Porting note: broken ext
    apply Finsupp.lhom_ext'
    intro ⟨⟩
    apply LinearMap.ext_ring
    apply Finsupp.ext
    intro ⟨⟩
    -- Porting note: simp used to be able to close this goal
    dsimp
    erw [ModuleCat.comp_def, LinearMap.comp_apply, ε_apply, Finsupp.lapply_apply,
      Finsupp.single_eq_same]

end Free

open MonoidalCategory

variable [CommRing R]

/-- The free functor `Type u ⥤ ModuleCat R`, as a monoidal functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant8b15b6f07de5283e3d8fed71b4d2e4ac03bfb31fe7f5d84ba7d24a80a81e7952.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant8b15b6f07de5283e3d8fed71b4d2e4ac03bfb31fe7f5d84ba7d24a80a81e7952.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4aa0d4a4dab3f04968b5222203424cd644aea9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
