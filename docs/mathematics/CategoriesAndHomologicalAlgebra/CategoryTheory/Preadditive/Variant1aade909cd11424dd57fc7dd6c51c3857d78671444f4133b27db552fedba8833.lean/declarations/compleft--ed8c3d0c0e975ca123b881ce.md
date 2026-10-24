# compLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c6e03dc70fbb7eb5d75a49c156040f36fb39235b2490b240341b2e0116e5717",
  "kind": "def",
  "lexical_name": "compLeft",
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
  "slug": "compleft--ed8c3d0c0e975ca123b881ce",
  "source": {
    "blob": "1e636c1df813747207a321d946a824fcbe33fc54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 467,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant1aade909cd11424dd57fc7dd6c51c3857d78671444f4133b27db552fedba8833.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed8c3d0c0e975ca123b881ce84f3ba7e44c63d16f8365f702a7a9a8c40cd407f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant1aade909cd11424dd57fc7dd6c51c3857d78671444f4133b27db552fedba8833.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c6e03dc70fbb7eb5d75a49c156040f36fb39235b2490b240341b2e0116e5717`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compLeft (h : Homotopy φ₁ φ₂) (ψ : S₃ ⟶ S₁) : Homotopy (ψ ≫ φ₁) (ψ ≫ φ₂) where
  h₀ := ψ.τ₁ ≫ h.h₀
  h₁ := ψ.τ₂ ≫ h.h₁
  h₂ := ψ.τ₃ ≫ h.h₂
  h₃ := ψ.τ₃ ≫ h.h₃
  g_h₃ := by rw [← ψ.comm₂₃_assoc, h.g_h₃, comp_zero]
  comm₁ := by rw [comp_τ₁, comp_τ₁, h.comm₁, comp_add, comp_add, add_left_inj, ψ.comm₁₂_assoc]
  comm₂ := by rw [comp_τ₂, comp_τ₂, h.comm₂, comp_add, comp_add, assoc, ψ.comm₂₃_assoc]
  comm₃ := by rw [comp_τ₃, comp_τ₃, h.comm₃, comp_add, comp_add, assoc]

/-- Homotopy between morphisms of short complexes is compatible with postcomposition. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant1aade909cd11424dd57fc7dd6c51c3857d78671444f4133b27db552fedba8833.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant1aade909cd11424dd57fc7dd6c51c3857d78671444f4133b27db552fedba8833.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e636c1df813747207a321d946a824fcbe33fc54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
