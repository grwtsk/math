# actual_profile_product_zero_outside_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de5fb3c61aedab231900d83ab2f2ad2fa2022f64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 752,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c121598-066f-2d48-35e8-425539e78d9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68fd525e-9da4-b587-7979-4546c59dc870",
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
  "slug": "actual-profile-product-zero-outside-window--9cefe32a52e6f4d66e2902ec",
  "source": {
    "blob": "de5fb3c61aedab231900d83ab2f2ad2fa2022f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 775,
    "line": 752,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantbd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cefe32a52e6f4d66e2902ec84b3ad9ee006acdce8f4d8277a78560dd08b7a92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantbd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68fd525e-9da4-b587-7979-4546c59dc870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 752–775.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantbd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/045SourceActualMixedWorkFubini/Variantbd42380391c8cbe645bee7160c7119c641abbb77cf5ca19f0f57140a8cb7c09c.lean#L752).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de5fb3c61aedab231900d83ab2f2ad2fa2022f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
