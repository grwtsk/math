# integral_adaptive_upper_of_check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "311dd7c19f7fb27658208c4be11e77820aa7f316",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 659,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d9e5a3f-2151-7b4e-bdcd-0fdc0831a282",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2025e9cc-1b70-0c7c-a439-808b1054a74b",
  "kind": "theorem",
  "lexical_name": "integral_adaptive_upper_of_check",
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
  "slug": "integral-adaptive-upper-of-check--593e143c1d91aba2542f6f7d",
  "source": {
    "blob": "311dd7c19f7fb27658208c4be11e77820aa7f316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 659,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:593e143c1d91aba2542f6f7d2c077b1fec3cc2ccd953f3e0898c317a916dfc42",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2025e9cc-1b70-0c7c-a439-808b1054a74b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_adaptive_upper_of_check (e : Expr) (hsupp : ExprSupportedWithInv e)
    (I : IntervalRat) (tol : ℚ) (maxDepth : ℕ) (c : ℚ)
    (hcheck : checkIntegralAdaptiveUpperBound e I tol maxDepth c = true)
    (hInt : IntervalIntegrable (fun x => Expr.eval (fun _ => x) e) volume I.lo I.hi) :
    ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ≤ (c : ℝ) := by
  unfold checkIntegralAdaptiveUpperBound at hcheck
  cases hbound : integrateAdaptiveWithInv e I tol maxDepth with
  | none => simp [hbound] at hcheck
  | some result =>
    simp only [hbound, decide_eq_true_eq] at hcheck
    have hmem := integrateAdaptiveWithInv_correct e hsupp I tol maxDepth result hbound hInt
    simp only [IntervalRat.mem_def] at hmem
    calc ∫ x in (I.lo : ℝ)..(I.hi : ℝ), Expr.eval (fun _ => x) e ≤ (result.bound.hi : ℝ) := hmem.2
      _ ≤ (c : ℝ) := by exact_mod_cast hcheck

/-! ### Exponential Search for Optimal Partition Count

Instead of using a fixed large N or deep adaptive recursion, we can search for
the minimum partition count that achieves the desired bound. This is often
much faster because many integrals only need N=100-500 instead of N=3000.

Algorithm:
1. Start with N=startN (e.g., 32)
2. Double N until the bound is achieved (exponential search)
3. Return the first N that works

This finds the optimal N in O(log(N)) integration attempts.
-/

/-- Exponential search with explicit fuel for termination.
    Returns the computed bound if found within fuel doublings, or `none` otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integration/Variant291bb4d6a4a6527078bde15fa86106116dba30e159114f684c63934ebc467a21.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `311dd7c19f7fb27658208c4be11e77820aa7f316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
