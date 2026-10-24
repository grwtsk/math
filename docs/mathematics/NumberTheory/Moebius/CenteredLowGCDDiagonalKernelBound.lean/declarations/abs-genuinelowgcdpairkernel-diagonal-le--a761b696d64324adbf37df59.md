# abs_genuineLowGCDPairKernel_diagonal_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b259d074-59a7-ba5a-fc8f-e30465a56f69",
  "kind": "theorem",
  "lexical_name": "abs_genuineLowGCDPairKernel_diagonal_le",
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
  "slug": "abs-genuinelowgcdpairkernel-diagonal-le--a761b696d64324adbf37df59",
  "source": {
    "blob": "025afceebb333db5255c30755790652b3b18fa99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a761b696d64324adbf37df59ef929928cbd3d75059bda703916bff43d455ace4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b259d074-59a7-ba5a-fc8f-e30465a56f69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_genuineLowGCDPairKernel_diagonal_le
    {X Y n : ℕ}
    (hn : n ∈ octaveIndexSet X) :
    |genuineLowGCDPairKernel X Y n n| ≤
      ((n.divisors.card : ℝ) ^ 2) *
        (Real.log ((4 * X : ℕ) : ℝ) ^ 2) := by
  rw [genuineLowGCDPairKernel_diagonal_eq_divisorPairSum hn]
  calc
    |∑ d ∈ n.divisors,
        ∑ e ∈ n.divisors,
          if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0| ≤
      ∑ d ∈ n.divisors,
        |∑ e ∈ n.divisors,
          if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0| := by
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ d ∈ n.divisors,
        ∑ e ∈ n.divisors,
          |if Nat.gcd d e ≤ Y then
            mobiusLogTerm n d * mobiusLogTerm n e
          else 0| := by
      exact Finset.sum_le_sum fun d hd =>
        Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ d ∈ n.divisors,
        ∑ e ∈ n.divisors,
          Real.log ((4 * X : ℕ) : ℝ) ^ 2 := by
      apply Finset.sum_le_sum
      intro d hd
      apply Finset.sum_le_sum
      intro e he
      by_cases hde : Nat.gcd d e ≤ Y
      · simp only [hde, if_true, abs_mul]
        have hdB := abs_mobiusLogTerm_le_log_four_mul_scale hn hd
        have heB := abs_mobiusLogTerm_le_log_four_mul_scale hn he
        have hlognonneg :
            0 ≤ Real.log ((4 * X : ℕ) : ℝ) := by
          exact Real.log_nonneg (by
            exact_mod_cast (show 1 ≤ 4 * X by
              have := (octave_mem_bounds hn).1
              omega))
        nlinarith
      · simp [hde, sq_nonneg]
    _ = ((n.divisors.card : ℝ) ^ 2) *
        (Real.log ((4 * X : ℕ) : ℝ) ^ 2) := by
      simp [pow_two]
      ring

/-- The complete centered diagonal kernel, with all four channels kept jointly,
has an explicit pointwise divisor majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalKernelBound.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `025afceebb333db5255c30755790652b3b18fa99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
