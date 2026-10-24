# actualSingleRieszRamp_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41c6ab50-e31e-357b-1867-37846696cd85",
  "kind": "theorem",
  "lexical_name": "actualSingleRieszRamp_integral",
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
  "slug": "actualsinglerieszramp-integral--4d480954071087e8f242b544",
  "source": {
    "blob": "6e980cd5b26b1fa9c5f61272a302f5880148a537",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d480954071087e8f242b544588b30a23d49cc021f8e2fce279a7cbe449d8783",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41c6ab50-e31e-357b-1867-37846696cd85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSingleRieszRamp_integral {z : ℂ} (hz : 0 < z.re) {a : ℝ} (ha : 0 ≤ a) :
    (∫ t in Ioi 0, ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) =
      Complex.exp (-z * (a : ℂ)) / z^2 := by
  have hzn : z ≠ 0 := by intro h; simp [h] at hz
  have hi := actualSingleRieszRamp_integrable hz ha
  have hia := hi.mono_set (Ioi_subset_Ioi ha)
  have htail : IntegrableOn
      (fun t : ℝ => ((t - a : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) (Ioi a) := by
    apply hia.congr_fun _ measurableSet_Ioi
    intro t ht
    dsimp only
    rw [max_eq_right (sub_nonneg.mpr ht.le)]
  have he := integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun t _ => complexRampAntiderivative_hasDerivAt hzn a t) htail
    (complexRampAntiderivative_tendsto hz a)
  rw [← intervalIntegral.integral_interval_add_Ioi hi hia]
  have hlo : (∫ t in (0 : ℝ)..a,
      ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) = 0 := by
    apply intervalIntegral.integral_zero_ae
    filter_upwards with t
    intro ht
    rw [uIoc_of_le ha] at ht
    rw [max_eq_left (sub_nonpos.mpr ht.2), Complex.ofReal_zero, zero_mul]
  rw [hlo, zero_add]
  calc
    _ = ∫ t in Ioi a, ((t - a : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ)) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      dsimp only
      rw [max_eq_right (sub_nonneg.mpr ht.le)]
    _ = _ := by rw [he]; simp [complexRampAntiderivative, div_eq_mul_inv]

/-- Independently literal closed Mangoldt Laplace atom, including the zero/unit cases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative04/Variant721933fd9dbd178096322de6d7f67ed948ecc0df7ee196388396579afceb7230.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e980cd5b26b1fa9c5f61272a302f5880148a537` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
