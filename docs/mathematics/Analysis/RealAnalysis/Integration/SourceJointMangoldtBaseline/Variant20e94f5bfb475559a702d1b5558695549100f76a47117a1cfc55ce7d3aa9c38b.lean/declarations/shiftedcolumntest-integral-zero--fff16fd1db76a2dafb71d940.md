# shiftedColumnTest_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc6b7f27-8658-5c75-b10f-629ac6a984a9",
  "kind": "theorem",
  "lexical_name": "shiftedColumnTest_integral_zero",
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
  "slug": "shiftedcolumntest-integral-zero--fff16fd1db76a2dafb71d940",
  "source": {
    "blob": "3397ebdd5561a358510c432f5c675e3e83080fb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant20e94f5bfb475559a702d1b5558695549100f76a47117a1cfc55ce7d3aa9c38b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fff16fd1db76a2dafb71d9404ef81d80ce4c07ecface0ce572d55d453f809e15",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant20e94f5bfb475559a702d1b5558695549100f76a47117a1cfc55ce7d3aa9c38b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc6b7f27-8658-5c75-b10f-629ac6a984a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem shiftedColumnTest_integral_zero (A : ℝ) (hA : 1 ≤ A) (k : ℕ) :
    (∫ t : ℝ, shiftedColumnTest A k t) = 0 := by
  have hscale (t : ℝ) : Real.exp (-Real.log (k : ℝ) / 2) *
      Real.exp ((t + Real.log (k : ℝ)) / 2) = Real.exp (t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have he : shiftedColumnTest A k = fun t : ℝ =>
      (Real.exp (-Real.log (k : ℝ) / 2) / Real.sqrt (k : ℝ)) *
        (Real.exp ((t + Real.log (k : ℝ)) / 2) *
          sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ))) := by
    funext t
    unfold shiftedColumnTest
    calc
      _ = (Real.exp (-Real.log (k : ℝ) / 2) *
          Real.exp ((t + Real.log (k : ℝ)) / 2)) / Real.sqrt (k : ℝ) *
            sourceCorrelation explicitSecondDerivative A (t + Real.log (k : ℝ)) := by
        rw [hscale]
      _ = _ := by ring
  have hz : (∫ t : ℝ, Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) = 0 := by
    simpa only [show ∀ t : ℝ, (1 / 2 : ℝ) * t = t / 2 by intro t; ring] using
      CorrelationMoment.full_correlation_moment_zero A hA
  rw [he, integral_const_mul,
    integral_add_right_eq_self (fun t : ℝ => Real.exp (t / 2) *
      sourceCorrelation explicitSecondDerivative A t) (Real.log (k : ℝ)), hz, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant20e94f5bfb475559a702d1b5558695549100f76a47117a1cfc55ce7d3aa9c38b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceJointMangoldtBaseline/Variant20e94f5bfb475559a702d1b5558695549100f76a47117a1cfc55ce7d3aa9c38b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3397ebdd5561a358510c432f5c675e3e83080fb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
