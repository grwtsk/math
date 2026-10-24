# mono_of_epi_of_mono_of_mono'

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
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad8a067d-4fe6-de1a-c43d-95931f1f435c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:110daec6-2561-3021-2f9d-c967e81a80f8",
  "kind": "theorem",
  "lexical_name": "mono_of_epi_of_mono_of_mono'",
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
  "slug": "mono-of-epi-of-mono-of-mono--6311bae0c8386cb6cfd8ca02",
  "source": {
    "blob": "4fc7ad89f9077859102dd593708902dee14ed0db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6311bae0c8386cb6cfd8ca02701c6c0ed2d8b524283fd0d6e553ac18f33985e0",
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

Occurrence: `result:110daec6-2561-3021-2f9d-c967e81a80f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mono_of_epi_of_mono_of_mono' (hR₁ : R₁.map' 0 2 = 0)
    (hR₁' : (mk₂ (R₁.map' 1 2) (R₁.map' 2 3)).Exact)
    (hR₂ : (mk₂ (R₂.map' 0 1) (R₂.map' 1 2)).Exact)
    (h₀ : Epi (app' φ 0)) (h₁ : Mono (app' φ 1)) (h₃ : Mono (app' φ 3)) :
    Mono (app' φ 2) := by
  apply mono_of_cancel_zero
  intro A f₂ h₁
  have h₂ : f₂ ≫ R₁.map' 2 3 = 0 := by
    rw [← cancel_mono (app' φ 3 _), assoc, NatTrans.naturality, reassoc_of% h₁,
      zero_comp, zero_comp]
  obtain ⟨A₁, π₁, _, f₁, hf₁⟩ := (hR₁'.exact 0).exact_up_to_refinements f₂ h₂
  dsimp at hf₁
  have h₃ : (f₁ ≫ app' φ 1) ≫ R₂.map' 1 2 = 0 := by
    rw [assoc, ← NatTrans.naturality, ← reassoc_of% hf₁, h₁, comp_zero]
  obtain ⟨A₂, π₂, _, g₀, hg₀⟩ := (hR₂.exact 0).exact_up_to_refinements _ h₃
  obtain ⟨A₃, π₃, _, f₀, hf₀⟩ := surjective_up_to_refinements_of_epi (app' φ 0 _) g₀
  have h₄ : f₀ ≫ R₁.map' 0 1 = π₃ ≫ π₂ ≫ f₁ := by
    rw [← cancel_mono (app' φ 1 _), assoc, assoc, assoc, NatTrans.naturality,
      ← reassoc_of% hf₀, hg₀]
    rfl
  rw [← cancel_epi π₁, comp_zero, hf₁, ← cancel_epi π₂, ← cancel_epi π₃, comp_zero,
    comp_zero, ← reassoc_of% h₄, ← R₁.map'_comp 0 1 2, hR₁, comp_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc7ad89f9077859102dd593708902dee14ed0db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
