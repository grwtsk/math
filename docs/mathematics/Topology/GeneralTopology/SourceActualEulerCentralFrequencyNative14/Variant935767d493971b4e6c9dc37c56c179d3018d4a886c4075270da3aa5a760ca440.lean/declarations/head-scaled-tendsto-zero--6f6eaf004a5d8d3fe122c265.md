# head_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d5a2464-2ee9-2a6e-60ad-a68a9e994eec",
  "kind": "theorem",
  "lexical_name": "head_scaled_tendsto_zero",
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
  "slug": "head-scaled-tendsto-zero--6f6eaf004a5d8d3fe122c265",
  "source": {
    "blob": "cd071c8ddee0886f33d54533aba014a09415cfdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 618,
    "line": 550,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant935767d493971b4e6c9dc37c56c179d3018d4a886c4075270da3aa5a760ca440.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f6eaf004a5d8d3fe122c265d02204f7b0ba3a7d97439fd106b767125d3ebaa1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant935767d493971b4e6c9dc37c56c179d3018d4a886c4075270da3aa5a760ca440.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d5a2464-2ee9-2a6e-60ad-a68a9e994eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–618.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem head_scaled_tendsto_zero :
    Tendsto (fun A : ℝ => A ^ 10 * Real.exp (-2 * A) *
      (actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))).re)
      atTop (𝓝 0) := by
  let E := actualBumpMovingTailConstant (3 / 2) +
    actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4)
  have hn1 := Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1
  have hn2 := (Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 1).comp
    (tendsto_id.const_mul_atTop (by norm_num : (0 : ℝ) < 2))
  have ht : Tendsto (fun A : ℝ => actualAbsolutePrimeMomentUpperConstant *
      A * Real.exp (-A) + E * A * Real.exp (-2 * A)) atTop (𝓝 0) := by
    have hh := (hn1.const_mul actualAbsolutePrimeMomentUpperConstant).add
      (hn2.const_mul (E / 2))
    simpa only [pow_one, mul_zero, add_zero] using hh.congr
      (fun A => by dsimp; ring)
  apply squeeze_zero_norm' _ ht
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  have hp : 0 < A := by linarith
  have hK : 0 ≤ actualBumpMovingTailConstant (3 / 2) := by
    unfold actualBumpMovingTailConstant
    have h := actualRightLineMass_nonneg (3 / 2)
    positivity
  have hE : 0 ≤ actualClosedPrimeHeadErrorConstant (3 / 2) (5 / 4) := by
    unfold actualClosedPrimeHeadErrorConstant
    have h := actualRightLineMass_nonneg (5 / 4)
    positivity
  have he : Real.exp (-2 * (3 / 2 - 5 / 4) * A) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by nlinarith)
  have herror := actualResidual_sub_closedHead_norm_le A (3 / 2) (5 / 4) hA
    (by norm_num) (by norm_num)
  have herr : ‖(mertensResidual A : ℂ) -
      actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ ≤ E / A ^ 9 :=
    herror.trans (div_le_div_of_nonneg_right (by
      dsimp [E]
      nlinarith [mul_le_mul_of_nonneg_left he hE]) (by positivity))
  have hh : ‖actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ ≤
      actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 + E / A ^ 9 := by
    calc
      _ ≤ ‖(mertensResidual A : ℂ)‖ +
          ‖(mertensResidual A : ℂ) -
            actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ := by
        have h := norm_sub_le (mertensResidual A : ℂ)
          ((mertensResidual A : ℂ) -
            actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2)))
        simpa only [sub_sub_cancel] using h
      _ ≤ _ := add_le_add (by
        rw [Complex.norm_real, Real.norm_eq_abs]
        exact (residual_abs_le_mass hA).trans (actualClosedAbsolutePrimeMoment_le hA)) herr
  rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (by positivity :
    0 ≤ A ^ 10 * Real.exp (-2 * A))]
  calc
    _ ≤ (A ^ 10 * Real.exp (-2 * A)) *
        ‖actualClosedPrimeHead A (3 / 2) (actualBumpMovingHeight A (3 / 2))‖ :=
      mul_le_mul_of_nonneg_left (Complex.abs_re_le_norm _) (by positivity)
    _ ≤ (A ^ 10 * Real.exp (-2 * A)) *
        (actualAbsolutePrimeMomentUpperConstant * Real.exp A / A ^ 9 + E / A ^ 9) :=
      mul_le_mul_of_nonneg_left hh (by positivity)
    _ = _ := by
      have hx : Real.exp (-2 * A) * Real.exp A = Real.exp (-A) := by
        rw [← Real.exp_add]
        congr 1
        ring
      calc
        _ = actualAbsolutePrimeMomentUpperConstant * A *
            (Real.exp (-2 * A) * Real.exp A) + E * A * Real.exp (-2 * A) := by
          field_simp
        _ = _ := by rw [hx]

/-- The genuine complete frequency complement must be negative at the central growth scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant935767d493971b4e6c9dc37c56c179d3018d4a886c4075270da3aa5a760ca440.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative14/Variant935767d493971b4e6c9dc37c56c179d3018d4a886c4075270da3aa5a760ca440.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd071c8ddee0886f33d54533aba014a09415cfdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
