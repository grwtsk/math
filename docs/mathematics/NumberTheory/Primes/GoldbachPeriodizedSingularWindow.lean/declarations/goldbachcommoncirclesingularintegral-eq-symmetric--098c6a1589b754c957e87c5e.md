# goldbachCommonCircleSingularIntegral_eq_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1099b0bd-64c3-72ad-b5ec-a20a351c32ba",
  "kind": "theorem",
  "lexical_name": "goldbachCommonCircleSingularIntegral_eq_symmetric",
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
  "slug": "goldbachcommoncirclesingularintegral-eq-symmetric--098c6a1589b754c957e87c5e",
  "source": {
    "blob": "c04cba84c6dd1708741ae14ac01ad2cc9c36f102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 226,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:098c6a1589b754c957e87c5e7029fd29e86fd26b5f98a3f2b637f035230e34c0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1099b0bd-64c3-72ad-b5ec-a20a351c32ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachCommonCircleSingularIntegral_eq_symmetric
    {Q N q : ℕ}
    (hsmall :
      goldbachRationalArcRadius Q N q < (1 / 2 : ℝ)) :
    goldbachCommonCircleSingularIntegral Q N q =
      goldbachSymmetricRealSingularIntegral Q N q := by
  let r := goldbachRationalArcRadius Q N q
  let W := goldbachCircleWindow Q N q
  let P : Set ℝ :=
    (fun β : ℝ => (β : AddCircle (1 : ℝ))) ⁻¹' W
  let F := goldbachFiniteSingularKernelCircle N
  have hr0 : 0 ≤ r := by
    exact goldbachRationalArcRadius_nonneg Q N q
  have hW : MeasurableSet W := by
    exact measurable_goldbachCircleWindow Q N q
  have hP : MeasurableSet P := by
    exact hW.preimage AddCircle.measurable_mk'
  have hset :
      Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ) ∩ P =
        Set.Icc (-r) r := by
    exact centered_circleWindow_preimage_eq_Icc
      hr0 (by simpa [r] using hsmall)
  unfold goldbachCommonCircleSingularIntegral
    goldbachSymmetricRealSingularIntegral
  change
    (∫ z in W, F z) =
      ∫ β in Set.Icc (-r) r,
        goldbachFiniteSingularKernel N β
  calc
    (∫ z in W, F z) =
      ∫ z : AddCircle (1 : ℝ), W.indicator F z := by
        symm
        exact integral_indicator hW
    _ =
      ∫ β in Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ),
        (W.indicator F) (β : AddCircle (1 : ℝ)) := by
          convert (AddCircle.integral_preimage
              (1 : ℝ) (-(1 / 2 : ℝ))
              (W.indicator F)).symm using 1
          norm_num
    _ =
      ∫ β in Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ),
        P.indicator
          (fun β =>
            goldbachFiniteSingularKernel N β) β := by
          apply setIntegral_congr_fun measurableSet_Ioc
          intro β hβ
          by_cases hmem : (β : AddCircle (1 : ℝ)) ∈ W
          · have hβP : β ∈ P := hmem
            simp [Set.indicator_of_mem, hmem, hβP, F,
              goldbachFiniteSingularKernel_eq_circle]
          · have hβP : β ∉ P := hmem
            simp [Set.indicator_of_notMem, hmem, hβP]
    _ =
      ∫ β in
          Set.Ioc (-(1 / 2 : ℝ)) (1 / 2 : ℝ) ∩ P,
        goldbachFiniteSingularKernel N β := by
          exact setIntegral_indicator hP
    _ =
      ∫ β in Set.Icc (-r) r,
        goldbachFiniteSingularKernel N β := by
          rw [hset]

/-- The inherited global separation scale forces the radius at every
positive admitted denominator below one half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04cba84c6dd1708741ae14ac01ad2cc9c36f102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
