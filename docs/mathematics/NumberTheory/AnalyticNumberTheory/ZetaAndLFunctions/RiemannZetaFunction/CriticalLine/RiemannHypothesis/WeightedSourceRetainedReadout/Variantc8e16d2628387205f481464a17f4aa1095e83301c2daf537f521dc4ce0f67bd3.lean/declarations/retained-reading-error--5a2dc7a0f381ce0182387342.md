# retained_reading_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddec546c-db5a-d692-6242-043fbddd6f75",
  "kind": "theorem",
  "lexical_name": "retained_reading_error",
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
  "slug": "retained-reading-error--5a2dc7a0f381ce0182387342",
  "source": {
    "blob": "83166aabaec3b5a8db79ce50489d19f6e931aff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 46,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variantc8e16d2628387205f481464a17f4aa1095e83301c2daf537f521dc4ce0f67bd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a2dc7a0f381ce0182387342ac1f8655184d8bab7dc15d52f363e15bc69434ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variantc8e16d2628387205f481464a17f4aa1095e83301c2daf537f521dc4ce0f67bd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddec546c-db5a-d692-6242-043fbddd6f75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retained_reading_error {A : ℝ} (hA : 1 ≤ A) (t : ℝ) (h : ℝ → ℝ)
    (hi : IntervalIntegrable h volume (-A) (3 * A))
    (he : Integrable (fun x ↦ (sourceVector A t x - h x) ^ 2) volume) :
    |weightedRecording A t - retainedReading A h| ≤
      massDecoder * Real.sqrt (discardedEnergy A t h) := by
  have hfull := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume)
    (sourceVector_support hA t)
  have hs := (sourceVector_continuous hA t).intervalIntegrable (μ := volume) (-A) (3 * A)
  rw [weightedRecording_mass_decoder hA, retainedReading, ← sub_div, ← hfull,
    ← intervalIntegral.integral_sub hs hi]
  exact finite_window_error_payment hA _ (hs.sub hi) he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variantc8e16d2628387205f481464a17f4aa1095e83301c2daf537f521dc4ce0f67bd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceRetainedReadout/Variantc8e16d2628387205f481464a17f4aa1095e83301c2daf537f521dc4ce0f67bd3.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83166aabaec3b5a8db79ce50489d19f6e931aff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
