# epi_of_epi_of_epi_of_mono'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fc7ad89f9077859102dd593708902dee14ed0db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f8a6d93-ea4e-68a1-e4ce-b47c5a2295f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99c84b5c-8ac6-e1ab-8120-4ecad1f36fac",
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
  "slug": "epi-of-epi-of-epi-of-mono--9cc7ac0e8750f606e95d87fa",
  "source": {
    "blob": "4fc7ad89f9077859102dd593708902dee14ed0db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 96,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cc7ac0e8750f606e95d87fa2b0bbc960ee728334491ee6a7a4cf375385a3466",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99c84b5c-8ac6-e1ab-8120-4ecad1f36fac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–122.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc7ad89f9077859102dd593708902dee14ed0db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
