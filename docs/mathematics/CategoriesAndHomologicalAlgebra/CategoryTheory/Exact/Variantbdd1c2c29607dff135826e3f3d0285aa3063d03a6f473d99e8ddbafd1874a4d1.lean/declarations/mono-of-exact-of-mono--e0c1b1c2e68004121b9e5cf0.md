# mono_τ₂_of_exact_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8596add7e8cb44914359b559206dcba9ec135059",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 811,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d07cc83d-ded6-6ff8-90c4-9ebfd1895abe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:182c1af9-7b51-df4a-3afa-45216841e2dd",
  "kind": "lemma",
  "lexical_name": "mono_τ₂_of_exact_of_mono",
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
  "slug": "mono-of-exact-of-mono--e0c1b1c2e68004121b9e5cf0",
  "source": {
    "blob": "8596add7e8cb44914359b559206dcba9ec135059",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 823,
    "line": 811,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0c1b1c2e68004121b9e5cf0f4729a6ce01c892e0be98ba4fa97c11d19233cbc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:182c1af9-7b51-df4a-3afa-45216841e2dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 811–823.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_τ₂_of_exact_of_mono {S₁ S₂ : ShortComplex C} (φ : S₁ ⟶ S₂)
    (h₁ : S₁.Exact) [Mono S₁.f] [Mono S₂.f] [Mono φ.τ₁] [Mono φ.τ₃] : Mono φ.τ₂ := by
  rw [mono_iff_cancel_zero]
  intro A x₂ hx₂
  obtain ⟨x₁, hx₁⟩ : ∃ x₁, x₁ ≫ S₁.f = x₂ := ⟨_, h₁.lift_f x₂
    (by simp only [← cancel_mono φ.τ₃, assoc, zero_comp, ← φ.comm₂₃, reassoc_of% hx₂])⟩
  suffices x₁ = 0 by rw [← hx₁, this, zero_comp]
  simp only [← cancel_mono φ.τ₁, ← cancel_mono S₂.f, assoc, φ.comm₁₂, zero_comp,
    reassoc_of% hx₁, hx₂]

attribute [local instance] balanced_opposite

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variantbdd1c2c29607dff135826e3f3d0285aa3063d03a6f473d99e8ddbafd1874a4d1.lean#L811).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8596add7e8cb44914359b559206dcba9ec135059` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
