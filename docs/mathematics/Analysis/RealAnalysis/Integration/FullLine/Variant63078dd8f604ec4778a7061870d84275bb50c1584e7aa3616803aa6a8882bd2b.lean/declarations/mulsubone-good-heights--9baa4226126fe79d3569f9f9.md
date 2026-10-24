# mulSubOne_good_heights

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 449,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:127beb93-6b38-30af-ea01-b2c010885430",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:42430e3f-8d9c-4ae0-dff0-cc7f0f8d5839",
  "kind": "theorem",
  "lexical_name": "mulSubOne_good_heights",
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
  "slug": "mulsubone-good-heights--9baa4226126fe79d3569f9f9",
  "source": {
    "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 449,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9baa4226126fe79d3569f9f90130ddd618806d0c0294b135530eedb64e008bd7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:42430e3f-8d9c-4ae0-dff0-cc7f0f8d5839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulSubOne_good_heights (a b : ℝ) :
    ∃ C : ℝ, 0 < C ∧ ∃ j₀ : ℕ, ∀ j : ℕ, j₀ ≤ j → ∃ R : ℝ, (j : ℝ) ≤ R ∧ R ≤ (j : ℝ) + 1 ∧
      ∀ s : ℂ, (s.im = R ∨ s.im = -R) → a ≤ s.re → s.re ≤ b →
        mulSubOne s ≠ 0 ∧ ‖logDeriv mulSubOne s‖ ≤ C * (Real.log ((j : ℝ) + 3)) ^ 2 := by
  refine ⟨1, one_pos, 2, fun j hj => ⟨j, le_rfl, by linarith, fun s him _ _ => ?_⟩⟩
  have hj2 : (2 : ℝ) ≤ j := by exact_mod_cast hj
  have habs : |s.im| = j := by
    rcases him with h | h
    · rw [h, abs_of_nonneg (by linarith)]
    · rw [h, abs_neg, abs_of_nonneg (by linarith)]
  have hs : s.im ≠ 0 := by
    intro h; rw [h, abs_zero] at habs; linarith
  have hlog1 : 1 ≤ Real.log ((j : ℝ) + 3) := by
    rw [← Real.log_exp 1]
    exact Real.log_le_log (Real.exp_pos 1) (by linarith [Real.exp_one_lt_d9])
  constructor
  · intro h0
    rw [mulSubOne_eq_zero_iff] at h0
    simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
      Set.mem_singleton_iff] at h0
    rcases h0 with h | h <;> (rw [h] at hs; simp at hs)
  · calc ‖logDeriv mulSubOne s‖ ≤ 2 / |s.im| := norm_logDeriv_mulSubOne_le hs
      _ ≤ 1 := by rw [habs, div_le_one (by linarith)]; exact hj2
      _ ≤ 1 * (Real.log ((j : ℝ) + 3)) ^ 2 := by nlinarith

/-- on Re s = c > 1:  logDeriv (s(s−1)) = 1/s + 1/(s−1), bounded by 1 + 1/(c−1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c153464c65a1419b366735889c1f9cc641239cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
