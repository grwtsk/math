# genEigenspace_inf_le_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecb7e87b5ec0cddfa2cef50c4f1f5e69c7e9eff1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 853,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:255e322e-853d-f5e0-ff8d-cc1773d70de9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0ad14511-d94b-76b8-a54c-6c52727fbe5e",
  "kind": "lemma",
  "lexical_name": "genEigenspace_inf_le_add",
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
  "slug": "geneigenspace-inf-le-add--4fb253e351810bc0e8ef022d",
  "source": {
    "blob": "ecb7e87b5ec0cddfa2cef50c4f1f5e69c7e9eff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 878,
    "line": 853,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4fb253e351810bc0e8ef022d73f576c43500f12e2276140152b82bf71328094f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ad14511-d94b-76b8-a54c-6c52727fbe5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 853–878.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma genEigenspace_inf_le_add
    (f₁ f₂ : End R M) (μ₁ μ₂ : R) (k₁ k₂ : ℕ∞) (h : Commute f₁ f₂) :
    (f₁.genEigenspace μ₁ k₁) ⊓ (f₂.genEigenspace μ₂ k₂) ≤
    (f₁ + f₂).genEigenspace (μ₁ + μ₂) (k₁ + k₂) := by
  intro m hm
  simp only [Submodule.mem_inf, mem_genEigenspace, LinearMap.mem_ker] at hm ⊢
  obtain ⟨⟨l₁, hlk₁, hl₁⟩, ⟨l₂, hlk₂, hl₂⟩⟩ := hm
  use l₁ + l₂
  have : f₁ + f₂ - (μ₁ + μ₂) • 1 = (f₁ - μ₁ • 1) + (f₂ - μ₂ • 1) := by
    rw [add_smul]; exact add_sub_add_comm f₁ f₂ (μ₁ • 1) (μ₂ • 1)
  replace h : Commute (f₁ - μ₁ • 1) (f₂ - μ₂ • 1) :=
    (h.sub_right <| Algebra.commute_algebraMap_right μ₂ f₁).sub_left
      (Algebra.commute_algebraMap_left μ₁ _)
  rw [this, h.add_pow', LinearMap.coeFn_sum, Finset.sum_apply]
  constructor
  · simpa only [Nat.cast_add] using add_le_add hlk₁ hlk₂
  refine Finset.sum_eq_zero fun ⟨i, j⟩ hij ↦ ?_
  suffices (((f₁ - μ₁ • 1) ^ i) * ((f₂ - μ₂ • 1) ^ j)) m = 0 by
    rw [LinearMap.smul_apply, this, smul_zero]
  rw [Finset.mem_antidiagonal] at hij
  obtain hi|hj : l₁ ≤ i ∨ l₂ ≤ j := by omega
  · rw [(h.pow_pow i j).eq, Module.End.mul_apply, Module.End.pow_map_zero_of_le hi hl₁,
      LinearMap.map_zero]
  · rw [Module.End.mul_apply, Module.End.pow_map_zero_of_le hj hl₂, LinearMap.map_zero]

@[deprecated genEigenspace_inf_le_add (since := "2024-10-23")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean#L853).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb7e87b5ec0cddfa2cef50c4f1f5e69c7e9eff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
