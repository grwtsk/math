# actual_correlation_upper_strip_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4dbe59d7-8a30-85a1-9b4f-ab09ccb4aeb7",
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
  "slug": "actual-correlation-upper-strip-integral--36b0cb49159216cc4d0fc7d1",
  "source": {
    "blob": "9ae4ceb81aa718c8c586d4af4b107f69d3b838de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant97f668074d1cd0c168651b44780225370453b9a4ef90d189a2e6b51cfa2cbf6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36b0cb49159216cc4d0fc7d118e9e9f97f915b3b066e667bc7cca8b725ca4015",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant97f668074d1cd0c168651b44780225370453b9a4ef90d189a2e6b51cfa2cbf6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4dbe59d7-8a30-85a1-9b4f-ab09ccb4aeb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–60.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant97f668074d1cd0c168651b44780225370453b9a4ef90d189a2e6b51cfa2cbf6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualBoundaryCorrelation/Variant97f668074d1cd0c168651b44780225370453b9a4ef90d189a2e6b51cfa2cbf6d.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ae4ceb81aa718c8c586d4af4b107f69d3b838de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
