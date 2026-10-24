# actual_compensated_dyadic_shell_errors_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:987fdf1f-5dba-0da6-c41c-ff77a81bce8a",
  "kind": "theorem",
  "lexical_name": "actual_compensated_dyadic_shell_errors_summable",
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
  "slug": "actual-compensated-dyadic-shell-errors-summable--5d5252df9cfb9fc162e31202",
  "source": {
    "blob": "b29beb90ec2be65ca69832d4183f3390584dabae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 243,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative02/Variantae07c0c9f31a3d20b24085bf239ba7d8b73f9d870797517afe109a0d13f4504d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d5252df9cfb9fc162e31202c81d450914479eeca8fd8bd249e7a08b749fa5b1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative02/Variantae07c0c9f31a3d20b24085bf239ba7d8b73f9d870797517afe109a0d13f4504d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:987fdf1f-5dba-0da6-c41c-ff77a81bce8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_compensated_dyadic_shell_errors_summable (A c E : ℝ) (R : ℕ → ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2) (h7 : ∀ k, 7 ≤ R k)
    (horder : ∀ k, R k ≤ R (k + 1))
    (hgood : ∀ k s, (s.im = R k ∨ s.im = -R k) → 1 / 2 ≤ s.re → s.re ≤ 2 → riemannZeta s ≠ 0)
    (hb : ∀ k, ‖actualFiniteHorizontalCorrection A c (R k)‖ ≤ E * (1 / 16 : ℝ) ^ k) :
    Summable (fun k => ‖(actualOffAxisZeroHeightHead A (R (k + 1))-
      actualOffAxisZeroHeightHead A (R k)) + 
      (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k))‖) ∧
    (∑' k, ‖(actualOffAxisZeroHeightHead A (R (k + 1)) - actualOffAxisZeroHeightHead A (R k)) + 
      (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k))‖)
 ≤ (17 / 15 : ℝ) * E := by
  let f := fun k => ‖(actualOffAxisZeroHeightHead A (R (k + 1))-
      actualOffAxisZeroHeightHead A (R k)) + 
      (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) -
      (actualCompletedVerticalHead A c (R (k + 1)) - actualCompletedVerticalHead A c (R k))‖
  have hE : 0 ≤ E := by simpa using (norm_nonneg _).trans (hb 0)
  have hbound (k : ℕ) : f k ≤ (17 / 16 : ℝ) * E * (1 / 16 : ℝ) ^ k := by
    have he : (actualOffAxisZeroHeightHead A (R (k + 1)) - actualOffAxisZeroHeightHead A (R k)) + 
        (actualCriticalZeroHeightHead A (R (k + 1)) - actualCriticalZeroHeightHead A (R k)) = 
        actualSignedZeroHeightShell A (R k) (R (k + 1)) := by
      rw [actualSignedZeroHeightShell_eq_head_sub A _ _ (horder k),
        actualZeroHeightHead_eq_critical_add_offAxis A (R k),
        actualZeroHeightHead_eq_critical_add_offAxis A (R (k + 1))]
      ring
    dsimp [f]
    rw [he, actualSignedZeroHeightShell_eq_contour_difference A c _ _ hA hc hc2
      (h7 k) (horder k) (hgood k) (hgood (k + 1)), add_sub_cancel_left]
    calc
      _ ≤ ‖actualFiniteHorizontalCorrection A c (R (k + 1))‖ + 
        ‖actualFiniteHorizontalCorrection A c (R k)‖ := norm_sub_le _ _
      _ ≤ E * (1 / 16 : ℝ) ^ (k + 1) + E * (1 / 16 : ℝ) ^ k := add_le_add (hb _) (hb _)
      _ = _ := by rw [pow_succ]; ring
  have hs : Summable (fun k : ℕ => (17 / 16 : ℝ) * E * (1 / 16 : ℝ) ^ k) :=
    (summable_geometric_of_lt_one (by norm_num : (0 : ℝ) ≤ 1 / 16) (by norm_num)).mul_left _
  have hf : Summable f := Summable.of_nonneg_of_le (fun k => norm_nonneg _) hbound hs
  refine ⟨hf, ?_⟩
  calc
    _ ≤ ∑' k : ℕ, (17 / 16 : ℝ) * E * (1 / 16 : ℝ) ^ k := hf.tsum_le_tsum hbound hs
    _ = (17 / 15 : ℝ) * E := by
      rw [tsum_mul_left, tsum_geometric_of_lt_one (by norm_num : (0 : ℝ) ≤ 1 / 16) (by norm_num)]
      ring

 / -- Genuine good - height selection makes the full phase - preserving shell error summable. - / 
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative02/Variantae07c0c9f31a3d20b24085bf239ba7d8b73f9d870797517afe109a0d13f4504d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedDyadicSummableErrorNative02/Variantae07c0c9f31a3d20b24085bf239ba7d8b73f9d870797517afe109a0d13f4504d.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b29beb90ec2be65ca69832d4183f3390584dabae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
