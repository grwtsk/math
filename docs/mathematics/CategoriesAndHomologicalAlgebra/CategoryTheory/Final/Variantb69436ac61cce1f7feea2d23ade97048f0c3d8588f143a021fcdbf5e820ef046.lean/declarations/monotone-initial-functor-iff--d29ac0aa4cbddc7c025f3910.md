# Monotone.initial_functor_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7579a150-6671-3e1e-a9e4-9404ce85fc20",
  "kind": "lemma",
  "lexical_name": "Monotone.initial_functor_iff",
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
  "slug": "monotone-initial-functor-iff--d29ac0aa4cbddc7c025f3910",
  "source": {
    "blob": "73bf54c45f474ea31848b3213ba175e79bb25407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 501,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d29ac0aa4cbddc7c025f39102c7dc3c283167f30104e69460ec776e2004308fc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7579a150-6671-3e1e-a9e4-9404ce85fc20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Monotone.initial_functor_iff {J₁ J₂ : Type*} [Preorder J₁] [Preorder J₂]
    [IsCodirectedOrder J₁] {f : J₁ → J₂} (hf : Monotone f) :
    hf.functor.Initial ↔ ( ∀ j₁,∃ j₂, f j₂ ≤ j₁) := by
  rw [Functor.initial_iff_of_isCofiltered]
  constructor
  · rintro ⟨h, _⟩ j₂
    obtain ⟨j₁, ⟨φ⟩⟩ := h j₂
    exact ⟨j₁,leOfHom φ⟩
  · intro h
    constructor
    · intro j₂
      obtain ⟨j₁, h₁⟩ := h j₂
      exact ⟨j₁, ⟨homOfLE h₁⟩⟩
    · intro _ c _ _
      exact ⟨ c, 𝟙 _, rfl⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73bf54c45f474ea31848b3213ba175e79bb25407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
