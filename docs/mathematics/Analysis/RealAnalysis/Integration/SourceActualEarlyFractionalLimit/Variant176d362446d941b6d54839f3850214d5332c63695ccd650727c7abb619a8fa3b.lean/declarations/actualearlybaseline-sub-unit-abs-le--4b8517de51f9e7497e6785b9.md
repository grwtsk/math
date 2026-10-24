# actualEarlyBaseline_sub_unit_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21439673-0a4f-b48f-efdf-2030f5888ae6",
  "kind": "theorem",
  "lexical_name": "actualEarlyBaseline_sub_unit_abs_le",
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
  "slug": "actualearlybaseline-sub-unit-abs-le--4b8517de51f9e7497e6785b9",
  "source": {
    "blob": "b2872b504e1c6d3aee22280299ca8f5d48b319dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 250,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b8517de51f9e7497e6785b9689097c5396dcf8985151b13dffa391ac3fbff47",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21439673-0a4f-b48f-efdf-2030f5888ae6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEarlyBaseline_sub_unit_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |complementaryEarlyBaseline A -
      (∫ x in Ioc (1 : ℝ) (vaughanCutoff A : ℝ), earlyUnitFloorDensity x)| ≤
        actualHeadUnitErrorBudget A := by
  have hA1 : 1 ≤ A := by linarith
  have hp : 0 < A := by linarith
  let U : ℝ := vaughanCutoff A
  let T := Real.log U
  let B := (20 * T + 5 * T ^ 2) / A ^ 2
  have hU : 1 ≤ U := (actual_cutoff_order A hA1).1
  have hT : 0 ≤ T := Real.log_nonneg hU
  have hB : 0 ≤ B := by unfold B; positivity
  have hs : IntegrableOn (fun x : ℝ => 1 / Real.sqrt x) (Ioc (1 : ℝ) U) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hU).mp
      (inv_sqrt_continuousOn.intervalIntegrable_of_Icc hU)
  have ha := (early_floor_derivative_integrable hA1).mono_set Ioc_subset_Icc_self
  have hb := earlyUnitFloorDensity_integrable hU
  have hm := norm_integral_le_of_norm_le (hs.const_mul B) (by
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
    rw [Real.norm_eq_abs]
    exact actualEarlyFloorDifference_abs_le hA (Ioc_subset_Icc_self hx))
  have hS : Real.sqrt U ≤ A := Real.sqrt_le_iff.mpr
    ⟨hp.le, Nat.floor_le (sq_nonneg A)⟩
  unfold complementaryEarlyBaseline
  rw [← integral_sub ha hb]
  calc
    _ ≤ ∫ x in Ioc (1 : ℝ) U, B * (1 / Real.sqrt x) := by
      simpa only [Real.norm_eq_abs] using hm
    _ = B * (2 * (Real.sqrt U - 1)) := by
      rw [integral_const_mul, integral_inv_sqrt_Ioc hU]
    _ ≤ B * (2 * A) := mul_le_mul_of_nonneg_left (by linarith) hB
    _ = actualHeadUnitErrorBudget A := by
      unfold B T U actualHeadUnitErrorBudget
      field_simp
      ring

/-- Exact fractional truncation, with the closed finite endpoint and open genuine tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEarlyFractionalLimit/Variant176d362446d941b6d54839f3850214d5332c63695ccd650727c7abb619a8fa3b.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2872b504e1c6d3aee22280299ca8f5d48b319dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
