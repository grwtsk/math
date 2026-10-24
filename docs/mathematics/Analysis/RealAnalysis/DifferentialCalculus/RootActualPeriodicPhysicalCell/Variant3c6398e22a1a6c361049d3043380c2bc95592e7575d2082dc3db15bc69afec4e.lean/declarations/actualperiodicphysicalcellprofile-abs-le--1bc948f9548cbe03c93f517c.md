# actualPeriodicPhysicalCellProfile_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30e2bb5c-8687-9ec5-d59c-76d112f8c611",
  "kind": "theorem",
  "lexical_name": "actualPeriodicPhysicalCellProfile_abs_le",
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
  "slug": "actualperiodicphysicalcellprofile-abs-le--1bc948f9548cbe03c93f517c",
  "source": {
    "blob": "f4e5daebba192610a4366035bd54d4d787e72409",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 154,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant3c6398e22a1a6c361049d3043380c2bc95592e7575d2082dc3db15bc69afec4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bc948f9548cbe03c93f517c3d393f664b34f5684e92a0a228023c4a89f2d660",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant3c6398e22a1a6c361049d3043380c2bc95592e7575d2082dc3db15bc69afec4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30e2bb5c-8687-9ec5-d59c-76d112f8c611`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicPhysicalCellProfile_abs_le {A t x : ℝ} (hA : 91 ≤ A)
    (hx : 0 < x) (hz : 0 ≤ t + Real.log x) :
    |actualPeriodicPhysicalCellProfile A t x| ≤
      Real.exp (t / 2) * Real.exp (-3 * Real.log x / 2) * (4 / A) := by
  have hAp : 0 < A := by linarith
  by_cases hs : 2 * A ≤ t + Real.log x
  · rw [actualPeriodicPhysicalCellProfile_zero_right (by linarith : 1 ≤ A) hs, abs_zero]
    positivity
  let z := t + Real.log x
  have hzs : z ≤ 2 * A := (lt_of_not_ge hs).le
  have h3 : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z| ≤
      134 / A ^ 3 := by
    calc
      _ ≤ 67 / A ^ 4 * (2 * A - z) := actual_correlation_third_edge_abs_le hA hzs
      _ ≤ 67 / A ^ 4 * (2 * A) :=
        mul_le_mul_of_nonneg_left (by dsimp [z]; linarith) (by positivity)
      _ = _ := by field_simp; ring
  have h1 : |iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z| ≤
      10 / A := by
    have hh := SourceFiveFullKappaShortReduction.actualCorrelation_first_abs_le_five hA z
    simp only [abs_of_nonneg (show 0 ≤ z from hz)] at hh
    calc
      _ ≤ 5 / A ^ 2 * z := by simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using hh
      _ ≤ 5 / A ^ 2 * (2 * A) := mul_le_mul_of_nonneg_left hzs (by positivity)
      _ = _ := by field_simp; ring
  have hj : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z -
      iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 4| ≤ 4 / A := by
    have hh := abs_sub (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z)
      (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 4)
    rw [abs_div, abs_of_pos (by norm_num : 0 < (4 : ℝ))] at hh
    have hb : |iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) z -
        iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) z / 4| ≤
        134 / A ^ 3 + (10 / A) / 4 := by nlinarith
    apply hb.trans
    apply (le_div_iff₀ hAp).2
    field_simp
    nlinarith [sq_nonneg (A - 91)]
  have he : Real.exp (-3 * Real.log x / 2) = Real.exp (-Real.log x / 2) / x := by
    calc
      _ = Real.exp (-Real.log x / 2) * Real.exp (-Real.log x) := by
        rw [← Real.exp_add]
        congr 1
        ring
      _ = _ := by rw [Real.exp_neg, Real.exp_log hx]; rfl
  unfold actualPeriodicPhysicalCellProfile actualTwistedTimeDensity
  rw [abs_div, abs_mul, abs_of_pos (by positivity :
    0 < Real.exp (t / 2) * Real.exp (-Real.log x / 2)), abs_of_pos hx, he]
  calc
    _ ≤ (Real.exp (t / 2) * Real.exp (-Real.log x / 2) * (4 / A)) / x :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hj (by positivity)) hx.le
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.RootActualPeriodicPhysicalCell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant3c6398e22a1a6c361049d3043380c2bc95592e7575d2082dc3db15bc69afec4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant3c6398e22a1a6c361049d3043380c2bc95592e7575d2082dc3db15bc69afec4e.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e5daebba192610a4366035bd54d4d787e72409` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
