# beckCoalgebraEqualizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2e05e5fe2ba7d8bbecb1432297e1213cddbbff36da99bb49aa18b3d08144d67",
  "kind": "def",
  "lexical_name": "beckCoalgebraEqualizer",
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
  "slug": "beckcoalgebraequalizer--849ab0fee31f76b2e8019b49",
  "source": {
    "blob": "1bf3b92e0038f8a182157bc8fbfa28c74ceff2cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:849ab0fee31f76b2e8019b49d9132065b496954972ca8102933d084773d03da6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2e05e5fe2ba7d8bbecb1432297e1213cddbbff36da99bb49aa18b3d08144d67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def beckCoalgebraEqualizer : IsLimit (beckCoalgebraFork X) :=
  Fork.IsLimit.mk' _ fun s => by
    have h₁ :  s.ι.f  ≫ (T : C ⥤ C).map X.a = s.ι.f ≫ T.δ.app X.A :=
      congr_arg Comonad.Coalgebra.Hom.f s.condition
    have h₂ :  s.pt.a ≫ (T : C ⥤ C).map s.ι.f = s.ι.f ≫ T.δ.app X.A := s.ι.h
    refine ⟨⟨s.ι.f ≫ T.ε.app _, ?_⟩, ?_, ?_⟩
    · dsimp
      rw [Functor.map_comp, reassoc_of% h₂, Comonad.right_counit]
      dsimp
      rw [Category.comp_id, Category.assoc, ← T.counit_naturality,
        reassoc_of% h₁, Comonad.left_counit]
      simp
    · ext
      simpa [← T.ε.naturality_assoc, T.left_counit_assoc] using h₁ =≫ T.ε.app ((T : C ⥤ C).obj X.A)
    · intro m hm
      ext
      dsimp only
      rw [← hm]
      simp [beckCoalgebraFork, X.counit]

/-- The Beck fork is a split equalizer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizer/Variantfb43f01a485f8fda8ea5f1997159ea4d6b7cc89d42299298e4c379cd58932451.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bf3b92e0038f8a182157bc8fbfa28c74ceff2cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
