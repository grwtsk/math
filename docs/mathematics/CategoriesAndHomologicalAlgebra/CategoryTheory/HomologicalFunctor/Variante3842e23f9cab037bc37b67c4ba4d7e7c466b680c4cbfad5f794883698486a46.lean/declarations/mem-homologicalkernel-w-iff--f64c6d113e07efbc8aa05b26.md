# mem_homologicalKernel_W_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5552b70022e379268543fb0d313b5d17150e33d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7cc9a0fa-a975-84b1-b92c-21dc5c316b18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15e47fd0-6bde-90fd-540e-aebb70a03349",
  "kind": "lemma",
  "lexical_name": "mem_homologicalKernel_W_iff",
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
  "slug": "mem-homologicalkernel-w-iff--f64c6d113e07efbc8aa05b26",
  "source": {
    "blob": "5552b70022e379268543fb0d313b5d17150e33d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 246,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f64c6d113e07efbc8aa05b2688ce59f3abd9fab6d73ef43376d15cca735c4b56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15e47fd0-6bde-90fd-540e-aebb70a03349`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_homologicalKernel_W_iff {X Y : C} (f : X ⟶ Y) :
    F.homologicalKernel.W f ↔ ∀ (n : ℤ), IsIso ((F.shift n).map f) := by
  obtain ⟨Z, g, h, hT⟩ := distinguished_cocone_triangle f
  apply (F.homologicalKernel.mem_W_iff_of_distinguished _ hT).trans
  have h₁ := fun n => (F.homologySequence_exact₃ _ hT n _ rfl).isZero_X₂_iff
  have h₂ := fun n => F.homologySequence_mono_shift_map_mor₁_iff _ hT n _ rfl
  have h₃ := fun n => F.homologySequence_epi_shift_map_mor₁_iff _ hT n
  dsimp at h₁ h₂ h₃ ⊢
  simp only [mem_homologicalKernel_iff, h₁, ← h₂, ← h₃]
  constructor
  · intro h n
    obtain ⟨m, rfl⟩ : ∃ (m : ℤ), n = m + 1 := ⟨n - 1, by simp⟩
    have := (h (m + 1)).1
    have := (h m).2
    apply isIso_of_mono_of_epi
  · intros
    constructor <;> infer_instance

open ComposableArrows

/-- The exact sequence with six terms starting from `(F.shift n₀).obj T.obj₁` until
`(F.shift n₁).obj T.obj₃` when `T` is a distinguished triangle and `F` a homological functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variante3842e23f9cab037bc37b67c4ba4d7e7c466b680c4cbfad5f794883698486a46.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5552b70022e379268543fb0d313b5d17150e33d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
