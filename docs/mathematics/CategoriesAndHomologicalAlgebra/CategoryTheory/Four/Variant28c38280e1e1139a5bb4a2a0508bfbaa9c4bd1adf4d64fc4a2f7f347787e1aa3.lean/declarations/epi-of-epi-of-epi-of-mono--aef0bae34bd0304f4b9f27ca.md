# epi_of_epi_of_epi_of_mono'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad1d555d-38a4-2a77-c013-f6dc6dd3b002",
  "kind": "theorem",
  "lexical_name": "epi_of_epi_of_epi_of_mono'",
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
  "slug": "epi-of-epi-of-epi-of-mono--aef0bae34bd0304f4b9f27ca",
  "source": {
    "blob": "137da5d7cc72b45967a2c92089f0cc9d946f430c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aef0bae34bd0304f4b9f27caff1286b05d36e28a85aee4dbbf69b0039060505c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad1d555d-38a4-2a77-c013-f6dc6dd3b002`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_of_epi_of_epi_of_mono'
    (hR₁ : (mk₂ (R₁.map' 1 2) (R₁.map' 2 3)).Exact)
    (hR₂ : (mk₂ (R₂.map' 0 1) (R₂.map' 1 2)).Exact) (hR₂' : R₂.map' 1 3 = 0)
    (h₀ : Epi (app' φ 0)) (h₂ : Epi (app' φ 2)) (h₃ : Mono (app' φ 3)) :
    Epi (app' φ 1) := by
  rw [epi_iff_surjective_up_to_refinements]
  intro A g₁
  obtain ⟨A₁, π₁, _, f₂, h₁⟩ :=
    surjective_up_to_refinements_of_epi (app' φ 2 _) (g₁ ≫ R₂.map' 1 2)
  have h₂ : f₂ ≫ R₁.map' 2 3 = 0 := by
    rw [← cancel_mono (app' φ 3 _), assoc, zero_comp, NatTrans.naturality, ← reassoc_of% h₁,
      ← R₂.map'_comp 1 2 3, hR₂', comp_zero, comp_zero]
  obtain ⟨A₂, π₂, _, f₁, h₃⟩ := (hR₁.exact 0).exact_up_to_refinements _ h₂
  dsimp at f₁ h₃
  have h₄ : (π₂ ≫ π₁ ≫ g₁ - f₁ ≫ app' φ 1 _) ≫ R₂.map' 1 2 = 0 := by
    rw [sub_comp, assoc, assoc, assoc, ← NatTrans.naturality, ← reassoc_of% h₃, h₁, sub_self]
  obtain ⟨A₃, π₃, _, g₀, h₅⟩ := (hR₂.exact 0).exact_up_to_refinements _ h₄
  dsimp at g₀ h₅
  rw [comp_sub] at h₅
  obtain ⟨A₄, π₄, _, f₀, h₆⟩ := surjective_up_to_refinements_of_epi (app' φ 0 _) g₀
  refine ⟨A₄, π₄ ≫ π₃ ≫ π₂ ≫ π₁, inferInstance,
    π₄ ≫ π₃ ≫ f₁ + f₀ ≫ (by exact R₁.map' 0 1), ?_⟩
  rw [assoc, assoc, assoc, add_comp, assoc, assoc, assoc, NatTrans.naturality,
    ← reassoc_of% h₆, ← h₅, comp_sub]
  dsimp
  rw [add_sub_cancel]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `137da5d7cc72b45967a2c92089f0cc9d946f430c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
