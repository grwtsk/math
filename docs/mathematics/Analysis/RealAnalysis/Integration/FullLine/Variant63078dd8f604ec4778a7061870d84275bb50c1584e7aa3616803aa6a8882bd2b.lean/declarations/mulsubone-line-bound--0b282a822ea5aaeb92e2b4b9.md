# mulSubOne_line_bound

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
      "line": 481,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e47df46-4a02-31e1-f52d-1775ca92adbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5af408a-69cd-fb2f-dca7-c44afdd51fc1",
  "kind": "theorem",
  "lexical_name": "mulSubOne_line_bound",
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
  "slug": "mulsubone-line-bound--0b282a822ea5aaeb92e2b4b9",
  "source": {
    "blob": "c153464c65a1419b366735889c1f9cc641239cb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 513,
    "line": 481,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b282a822ea5aaeb92e2b4b9b76b0055623b0061a021ddf546fb3b2235bd6373",
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

Occurrence: `result:d5af408a-69cd-fb2f-dca7-c44afdd51fc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 481–513.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulSubOne_line_bound {c : ℝ} (hc1 : 1 < c) :
    ∃ M : ℝ, ∀ t : ℝ, ‖logDeriv mulSubOne ((c : ℂ) + t * I)‖ ≤ M * Real.log (2 + |t|) := by
  set A : ℝ := 1 + 1 / (c - 1) with hA
  have hc0 : 0 < c - 1 := by linarith
  have hA0 : 0 ≤ A := by rw [hA]; positivity
  refine ⟨2 * A, fun t => ?_⟩
  have hlog : 1 / 2 ≤ Real.log (2 + |t|) := by
    have h2 : Real.log 2 ≤ Real.log (2 + |t|) :=
      Real.log_le_log (by norm_num) (by linarith [abs_nonneg t])
    linarith [Real.log_two_gt_d9]
  have hre1 : c ≤ ‖(c : ℂ) + t * I‖ := by
    have := Complex.abs_re_le_norm ((c : ℂ) + t * I)
    rw [abs_le] at this; simpa using this.2
  have hre2 : c - 1 ≤ ‖(c : ℂ) + t * I - 1‖ := by
    have := Complex.abs_re_le_norm ((c : ℂ) + t * I - 1)
    rw [abs_le] at this; simpa using this.2
  rw [logDeriv_mulSubOne_line hc1 t]
  calc ‖1 / ((c : ℂ) + t * I) + 1 / ((c : ℂ) + t * I - 1)‖
      ≤ ‖1 / ((c : ℂ) + t * I)‖ + ‖1 / ((c : ℂ) + t * I - 1)‖ := norm_add_le _ _
    _ = 1 / ‖(c : ℂ) + t * I‖ + 1 / ‖(c : ℂ) + t * I - 1‖ := by simp
    _ ≤ 1 / c + 1 / (c - 1) :=
        add_le_add (one_div_le_one_div_of_le (by linarith) hre1)
          (one_div_le_one_div_of_le (by linarith) hre2)
    _ ≤ A := by
        rw [hA]
        have : 1 / c ≤ 1 := by rw [div_le_one (by linarith)]; linarith
        linarith
    _ = A * 1 := (mul_one A).symm
    _ ≤ A * (2 * Real.log (2 + |t|)) := mul_le_mul_of_nonneg_left (by linarith) hA0
    _ = 2 * A * Real.log (2 + |t|) := by ring

/-- The rational-line identity (cf. `rational_line`), as the f = s(s−1)
instance of full_line_identity_of:  (1/2π)∫[H(c+it)+H(1−c−it)]·(1/(c+it) + 1/(c+it−1)) dt = H(0) + H(1). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant63078dd8f604ec4778a7061870d84275bb50c1584e7aa3616803aa6a8882bd2b.lean#L481).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c153464c65a1419b366735889c1f9cc641239cb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
