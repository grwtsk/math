# actual_correlation_upper_strip_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae9ff27c0b0be414058e0ffda884daeea80d5f2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11c0fbe9-c0e4-73df-7e65-08fdb752b984",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5ed64d1-57b7-1eaf-c2bc-f4899b32c43a",
  "kind": "theorem",
  "lexical_name": "actual_correlation_upper_strip_integral",
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
  "slug": "actual-correlation-upper-strip-integral--47075358c8897d5870fc3a55",
  "source": {
    "blob": "ae9ff27c0b0be414058e0ffda884daeea80d5f2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47075358c8897d5870fc3a5502c3d799df916331cd26f85a11ff4fc6c0a92d31",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5ed64d1-57b7-1eaf-c2bc-f4899b32c43a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_upper_strip_integral (A h : ℝ) (hA : 4 ≤ A)
    (hh0 : 0 ≤ h) (_hh1 : h ≤ 1) :
    sourceCorrelation explicitSecondDerivative A (2 * A - h) =
      ∫ x in (A - h)..A, normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - h)) := by
  have hp : 0 < A := by linarith
  have he : (fun x : ℝ => normalizedTest explicitSecondDerivative A x *
      normalizedTest explicitSecondDerivative A (x - (2 * A - h))) =
      (Icc (A - h) A).indicator (fun x => normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A (x - (2 * A - h))) := by
    funext x
    by_cases hx : x ∈ Icc (A - h) A
    · rw [indicator_of_mem hx]
    · rw [indicator_of_notMem hx]
      have ho : x < A - h ∨ A < x := by
        simpa only [mem_Icc, not_and_or, not_le] using hx
      rcases ho with hx | hx
      · have hb : A ≤ |x - (2 * A - h)| := by
          linarith [neg_le_abs (x - (2 * A - h))]
        rw [normalizedTest_zero_of_le_abs A _ hp hb, mul_zero]
      · rw [normalizedTest_zero_of_le_abs A x hp (hx.le.trans (le_abs_self x)), zero_mul]
  change (∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
    normalizedTest explicitSecondDerivative A (x - (2 * A - h))) = _
  calc
    _ = ∫ x : ℝ, (Icc (A - h) A).indicator
        (fun y => normalizedTest explicitSecondDerivative A y *
          normalizedTest explicitSecondDerivative A (y - (2 * A - h))) x :=
      congrArg (fun f : ℝ → ℝ => ∫ x : ℝ, f x) he
    _ = _ := zeroExtension_integral _ _ _ (by linarith)

/-- The actual correlation has a positive, quantitatively nonzero support-edge strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant45be7b094327c9209912dc66d5eb17638aa18565934b3322b9c5fe7b05f1f3de.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9ff27c0b0be414058e0ffda884daeea80d5f2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
