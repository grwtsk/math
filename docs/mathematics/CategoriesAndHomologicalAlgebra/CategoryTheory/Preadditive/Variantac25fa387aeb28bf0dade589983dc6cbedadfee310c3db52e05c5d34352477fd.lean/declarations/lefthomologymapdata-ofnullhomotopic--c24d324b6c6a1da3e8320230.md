# LeftHomologyMapData.ofNullHomotopic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b736d47a2c8704690783c6b67fdc778f8278587440fda03c4bf06b7be840eb3",
  "kind": "def",
  "lexical_name": "LeftHomologyMapData.ofNullHomotopic",
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
  "slug": "lefthomologymapdata-ofnullhomotopic--c24d324b6c6a1da3e8320230",
  "source": {
    "blob": "5ff2aef1454d2c0355f6fa61ad10736bad67186f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 590,
    "line": 575,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantac25fa387aeb28bf0dade589983dc6cbedadfee310c3db52e05c5d34352477fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c24d324b6c6a1da3e83202303c7087df8eb64b5a640d5f16cee8f1fb373694d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantac25fa387aeb28bf0dade589983dc6cbedadfee310c3db52e05c5d34352477fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b736d47a2c8704690783c6b67fdc778f8278587440fda03c4bf06b7be840eb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 575–590.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeftHomologyMapData.ofNullHomotopic
    (H₁ : S₁.LeftHomologyData) (H₂ : S₂.LeftHomologyData)
    (h₀ : S₁.X₁ ⟶ S₂.X₁) (h₀_f : h₀ ≫ S₂.f = 0)
    (h₁ : S₁.X₂ ⟶ S₂.X₁) (h₂ : S₁.X₃ ⟶ S₂.X₂) (h₃ : S₁.X₃ ⟶ S₂.X₃) (g_h₃ : S₁.g ≫ h₃ = 0) :
    LeftHomologyMapData (nullHomotopic _ _ h₀ h₀_f h₁ h₂ h₃ g_h₃) H₁ H₂ where
  φK := H₂.liftK (H₁.i ≫ h₁ ≫ S₂.f) (by simp)
  φH := 0
  commf' := by
    rw [← cancel_mono H₂.i, assoc, LeftHomologyData.liftK_i, LeftHomologyData.f'_i_assoc,
      nullHomotopic_τ₁, add_comp, add_comp, assoc, assoc, assoc, LeftHomologyData.f'_i,
      right_eq_add, h₀_f]
  commπ := by
    rw [H₂.liftK_π_eq_zero_of_boundary (H₁.i ≫ h₁ ≫ S₂.f) (H₁.i ≫ h₁) (by rw [assoc]), comp_zero]

/-- The right homology map data expressing that null homotopic maps induce the zero
morphism in right homology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantac25fa387aeb28bf0dade589983dc6cbedadfee310c3db52e05c5d34352477fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantac25fa387aeb28bf0dade589983dc6cbedadfee310c3db52e05c5d34352477fd.lean#L575).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ff2aef1454d2c0355f6fa61ad10736bad67186f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
