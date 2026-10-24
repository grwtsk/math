# correctionPrefix_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfd87c3e-3544-aaa7-a640-e1da1811a73a",
  "kind": "theorem",
  "lexical_name": "correctionPrefix_error",
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
  "slug": "correctionprefix-error--6060246d567fbd4fe951c066",
  "source": {
    "blob": "a3debc7101743b93b2dec8d9f013aa0e950f4d2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 206,
    "path": "GRWTSK/Analysis/Real/TentRationalCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6060246d567fbd4fe951c066c8789573e4ef112b24798892a0af6341f84b8710",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfd87c3e-3544-aaa7-a640-e1da1811a73a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctionPrefix_error (N : ℕ) (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    0 ≤ correctionPrefix N x h - rationalTentCorrection x h ∧
      correctionPrefix N x h - rationalTentCorrection x h ≤
        h / ((x - h) * ((x - h) ^ 2 - 1)) * (1 / (x - h) ^ 2) ^ N := by
  have hab : x - h ≤ x + h := by linarith
  have hq := rationalDensity_continuousOn (b := x + h) ha
  have hp := densityPrefix_continuousOn N (b := x + h) ha
  have hw : ContinuousOn (tent x h) (Icc (x - h) (x + h)) :=
    (continuous_tent x h).continuousOn
  have iq := ContinuousOn.intervalIntegrable_of_Icc (μ := MeasureTheory.volume) hab (hw.mul hq)
  have ip := ContinuousOn.intervalIntegrable_of_Icc (μ := MeasureTheory.volume) hab (hw.mul hp)
  have heq : correctionPrefix N x h - rationalTentCorrection x h =
      ∫ t in (x - h)..(x + h), tent x h t * (rationalDensity t - densityPrefix N t) := by
    simp only [mul_sub]
    have isub := intervalIntegral.integral_sub iq ip
    simp only [Pi.mul_def] at isub
    rw [isub]
    unfold correctionPrefix rationalTentCorrection
    ring
  rw [heq]
  have hb := weighted_integral_bounds x h hh
    (fun t => rationalDensity t - densityPrefix N t) (hq.sub hp) 0
    (rationalDensity (x - h) * (1 / (x - h) ^ 2) ^ N)
    (fun t ht => (densityPrefix_remainder_bounds N ha ht).1)
    (fun t ht => (densityPrefix_remainder_bounds N ha ht).2)
  constructor
  · simpa only [zero_mul] using hb.1
  · convert hb.2 using 1; unfold rationalDensity; ring

/-- A finite prefix becomes a valid lower enclosure only after its geometric error is subtracted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/TentRationalCorrection.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3debc7101743b93b2dec8d9f013aa0e950f4d2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
