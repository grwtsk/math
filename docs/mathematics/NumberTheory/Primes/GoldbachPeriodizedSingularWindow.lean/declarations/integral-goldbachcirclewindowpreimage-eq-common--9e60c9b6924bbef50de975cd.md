# integral_goldbachCircleWindowPreimage_eq_common

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6a45597e-f42a-f2c3-5f97-261e9d3a1c38",
  "kind": "theorem",
  "lexical_name": "integral_goldbachCircleWindowPreimage_eq_common",
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
  "slug": "integral-goldbachcirclewindowpreimage-eq-common--9e60c9b6924bbef50de975cd",
  "source": {
    "blob": "c04cba84c6dd1708741ae14ac01ad2cc9c36f102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 128,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e60c9b6924bbef50de975cd69a8cd2dd1ade3e8be5cd6820f9c15f05cbbe121",
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

Occurrence: `result:6a45597e-f42a-f2c3-5f97-261e9d3a1c38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_goldbachCircleWindowPreimage_eq_common
    (Q N a q : ℕ) :
    (∫ x in goldbachCircleWindowPreimage Q N a q,
        goldbachFiniteSingularKernel N
          (goldbachRationalArcOffset a q x)) =
      goldbachCommonCircleSingularIntegral Q N q := by
  let W := goldbachCircleWindow Q N q
  let P : Set ℝ := goldbachOffsetCircle a q ⁻¹' W
  let F := goldbachFiniteSingularKernelCircle N
  have hW : MeasurableSet W := by
    exact measurable_goldbachCircleWindow Q N q
  have hP : MeasurableSet P := by
    exact hW.preimage
      (continuous_goldbachOffsetCircle a q).measurable
  unfold goldbachCircleWindowPreimage
  change
    (∫ x in Set.Ioc (0 : ℝ) 1 ∩ P,
        goldbachFiniteSingularKernel N
          (goldbachRationalArcOffset a q x)) =
      ∫ z in W, F z
  rw [← setIntegral_indicator hP]
  calc
    (∫ x in Set.Ioc (0 : ℝ) 1,
        P.indicator
          (fun x =>
            goldbachFiniteSingularKernel N
              (goldbachRationalArcOffset a q x)) x) =
      ∫ x in Set.Ioc (0 : ℝ) 1,
        (W.indicator F) (goldbachOffsetCircle a q x) := by
          apply setIntegral_congr_fun measurableSet_Ioc
          intro x hx
          by_cases hmem : goldbachOffsetCircle a q x ∈ W
          · have hxP : x ∈ P := hmem
            simp only [Set.indicator_of_mem hxP, Set.indicator_of_mem hmem]
            rfl
          · have hxP : x ∉ P := hmem
            simp [Set.indicator_of_notMem, hxP, hmem]
    _ = ∫ z : AddCircle (1 : ℝ), (W.indicator F) z := by
      exact integral_Ioc_goldbachOffsetCircle a q (W.indicator F)
    _ = ∫ z in W, F z := by
      exact integral_indicator hW

/-- Every indexed clipped arc has the same intrinsic circle-window singular
integral as every other numerator at the same denominator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachPeriodizedSingularWindow.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04cba84c6dd1708741ae14ac01ad2cc9c36f102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
