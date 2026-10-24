# actual_profile_product_zero_outside_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79eb81386480ae77cd5b4f82b5d72655b02ad983",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 751,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fe/fef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d466785-85f9-9991-7282-b4063fff701b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52e4cce5-b54f-d90c-16f4-7413059a7046",
  "kind": "theorem",
  "lexical_name": "actual_profile_product_zero_outside_window",
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
  "slug": "actual-profile-product-zero-outside-window--d9c9a0112e4f80f5f29ee5f3",
  "source": {
    "blob": "79eb81386480ae77cd5b4f82b5d72655b02ad983",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 751,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9c9a0112e4f80f5f29ee5f37ce7e7bc7c347fe7bc4b4be6cc209e328d631c1d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52e4cce5-b54f-d90c-16f4-7413059a7046`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 751–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_profile_product_zero_outside_window
    (r : ℝ → ℝ) {A v : ℝ} (hA : 1 ≤ A) (hs : tsupport r ⊆ Icc (-A) A)
    (hv : v ∉ actualWorkWindow A) :
    actualTimeProfile r A v * actualReflectedProfile r A v = 0 := by
  by_cases hl : Real.log (vaughanCutoff A : ℝ) - A ≤ v
  · have hr : A - Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) < v :=
      lt_of_not_ge (fun h => hv ⟨hl, h⟩)
    have hY : actualReflectedProfile r A v = 0 := by
      change (∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
          (sourceKernelCutoff A / (vaughanCutoff A + 1)),
        (∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n) *
          profileYCell r (k : ℝ) v) = 0
      apply Finset.sum_eq_zero
      intro k hk
      have hL : 0 < ((vaughanCutoff A + 1 : ℕ) : ℝ) := by positivity
      have hLk : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ (k : ℝ) := by
        exact_mod_cast (Finset.mem_Ico.mp hk).1
      rw [profileYCell_zero_of_lt_right r hL hLk hs hr, mul_zero]
    rw [hY, mul_zero]
  · have hX : actualTimeProfile r A v = 0 :=
      profileX_zero_of_lt_lower r (actual_cutoff_log_le A hA) hs (lt_of_not_ge hl)
    rw [hX, zero_mul]

/-- Actual joint integrability, derived before localized integral or strip exchanges. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubini/Variantfef4057a4160f1f9e366f0bf7dc43d7b94eb50cfbbda37960c7c52013cd63e8f.lean#L751).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79eb81386480ae77cd5b4f82b5d72655b02ad983` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
