# head_scaled_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb6a5197-ecb5-11ba-b50c-a8f0a0c81525",
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
  "slug": "head-scaled-tendsto-zero--e1de8f9c404a0cf0dcef6560",
  "source": {
    "blob": "5661011680c034ce23a08bc04f78b1636eba9c83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 558,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantf50c467f2d5a8d629592922b092b2d3a27deaebb6eac0f0179de1e13193a13d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1de8f9c404a0cf0dcef65608d713a9cbcf14c2cd674c32f3d96ff187c2229f3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantf50c467f2d5a8d629592922b092b2d3a27deaebb6eac0f0179de1e13193a13d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb6a5197-ecb5-11ba-b50c-a8f0a0c81525`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 558–627.

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
        have h := norm_sub_le_norm_add_norm (mertensResidual A : ℂ)
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
          ring
        _ = _ := by rw [hx]

/-- The genuine complete frequency complement must be negative at the central growth scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantf50c467f2d5a8d629592922b092b2d3a27deaebb6eac0f0179de1e13193a13d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerCentralFrequencyNative12/Variantf50c467f2d5a8d629592922b092b2d3a27deaebb6eac0f0179de1e13193a13d7.lean#L558).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5661011680c034ce23a08bc04f78b1636eba9c83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
