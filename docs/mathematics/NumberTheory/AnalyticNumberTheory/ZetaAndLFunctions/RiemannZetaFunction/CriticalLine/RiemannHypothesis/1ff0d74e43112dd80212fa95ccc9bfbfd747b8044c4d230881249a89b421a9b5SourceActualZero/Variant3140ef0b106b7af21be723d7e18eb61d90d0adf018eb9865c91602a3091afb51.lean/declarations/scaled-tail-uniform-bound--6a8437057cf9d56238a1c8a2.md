# scaled_tail_uniform_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0590c86-596e-352c-4fea-16435af70a84",
  "kind": "theorem",
  "lexical_name": "scaled_tail_uniform_bound",
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
  "slug": "scaled-tail-uniform-bound--6a8437057cf9d56238a1c8a2",
  "source": {
    "blob": "f1a4f042161474ae5aec655a368e334ea0cf1aae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 262,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a8437057cf9d56238a1c8a268dbe8329accb245b14a6e6acf0f9e928aac3e39",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0590c86-596e-352c-4fea-16435af70a84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scaled_tail_uniform_bound :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ A R : ℝ, 1 ≤ A → 4 ≤ R →
      ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ) * actualZeroHeightTail A R‖ ≤ B / R ^ 4 := by
  obtain ⟨A0,hA0,hbound⟩ := actualZeroHeightTail_norm_bound
  let B : ℝ := 4 * actualZeroTailWeightConstant * A0
  refine ⟨B,by dsimp [B,actualZeroTailWeightConstant]; positivity,?_⟩
  intro A R hA hR
  have hAp : 0 < A := by linarith
  have hRp : 0 < R := by linarith
  have hlog : Real.log R + 2 ≤ 2 * R := by
    have hl := Real.log_le_sub_one_of_pos hRp
    linarith
  have hs : ‖((A ^ 9 * Real.exp (-A) : ℝ) : ℂ)‖ = A ^ 9 * Real.exp (-A) := by
    simp only [Complex.norm_real,Real.norm_eq_abs]
    exact abs_of_nonneg (by positivity)
  rw [norm_mul,hs]
  calc
    _ ≤ (A ^ 9 * Real.exp (-A)) *
        (2 * actualZeroTailWeightConstant * A0 * Real.exp A * (Real.log R + 2) /
          (A ^ 9 * R ^ 5)) :=
      mul_le_mul_of_nonneg_left (hbound A R hA hR) (by positivity)
    _ = 2 * actualZeroTailWeightConstant * A0 * (Real.log R + 2) / R ^ 5 := by
      rw [Real.exp_neg]
      field_simp
    _ ≤ 2 * actualZeroTailWeightConstant * A0 * (2 * R) / R ^ 5 := by
      dsimp [actualZeroTailWeightConstant]
      gcongr
    _ = B / R ^ 4 := by dsimp [B]; field_simp; ring

/-- This height partitions the genuine all-zero sum; no shifted-contour
identity at this smaller height is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/1ff0d74e43112dd80212fa95ccc9bfbfd747b8044c4d230881249a89b421a9b5SourceActualZero/Variant3140ef0b106b7af21be723d7e18eb61d90d0adf018eb9865c91602a3091afb51.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1a4f042161474ae5aec655a368e334ea0cf1aae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
