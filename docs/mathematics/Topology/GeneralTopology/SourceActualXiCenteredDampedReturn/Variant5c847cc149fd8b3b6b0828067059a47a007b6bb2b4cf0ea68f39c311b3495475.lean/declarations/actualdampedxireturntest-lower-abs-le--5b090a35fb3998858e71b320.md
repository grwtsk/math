# actualDampedXiReturnTest_lower_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:327f2f6b-d8cb-1fb4-ebc3-29b4f71c6796",
  "kind": "theorem",
  "lexical_name": "actualDampedXiReturnTest_lower_abs_le",
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
  "slug": "actualdampedxireturntest-lower-abs-le--5b090a35fb3998858e71b320",
  "source": {
    "blob": "b27fc819065b5fb07075ed71f97960f4dda3eb2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 94,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b090a35fb3998858e71b320b5cc3c6e64955dcd70ef86fe7d318d6aa2d84120",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:327f2f6b-d8cb-1fb4-ebc3-29b4f71c6796`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiReturnTest_lower_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |actualDampedXiReturnTest A (Real.log 7)| ≤
      Real.sqrt 7 * (5 + (5 / 2 : ℝ) * Real.log 7) / A ^ 2 := by
  have h2 := RH16FiveCesaro.actualCorrelation_second_abs_le_five hA (Real.log 7)
  have h1 := actualCorrelation_first_abs_le_five hA (Real.log 7)
  simp only [iteratedDeriv_succ, iteratedDeriv_zero] at h2
  rw [abs_of_nonneg (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7))] at h1
  have hx : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    have h := sqrt_exp_half (Real.log 7)
    simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using h.symm
  unfold actualDampedXiReturnTest
  rw [abs_mul, abs_of_pos (Real.exp_pos _), hx]
  have hs := abs_sub
    (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7))
    (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7) / 2)
  rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] at hs
  have hb : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7) -
      deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7) / 2| ≤
      (5 + (5 / 2 : ℝ) * Real.log 7) / A ^ 2 := by
    calc
      _ ≤ |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (Real.log 7)| +
          |deriv (sourceCorrelation explicitSecondDerivative A) (Real.log 7)| / 2 := hs
      _ ≤ 5 / A ^ 2 + (5 / A ^ 2 * Real.log 7) / 2 := by
        simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
          add_le_add h2 (div_le_div_of_nonneg_right h1 (by norm_num : (0 : ℝ) ≤ 2))
      _ = _ := by ring
  calc
    _ ≤ Real.sqrt 7 * ((5 + (5 / 2 : ℝ) * Real.log 7) / A ^ 2) :=
      mul_le_mul_of_nonneg_left hb (Real.sqrt_nonneg _)
    _ = _ := by ring

/-- The unchanged actual tail and centered return differ only by a decaying true trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualXiCenteredDampedReturn/Variant5c847cc149fd8b3b6b0828067059a47a007b6bb2b4cf0ea68f39c311b3495475.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b27fc819065b5fb07075ed71f97960f4dda3eb2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
