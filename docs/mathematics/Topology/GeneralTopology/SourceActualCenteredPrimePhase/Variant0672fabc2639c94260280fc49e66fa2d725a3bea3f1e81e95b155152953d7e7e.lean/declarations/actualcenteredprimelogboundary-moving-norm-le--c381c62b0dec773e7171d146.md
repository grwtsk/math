# actualCenteredPrimeLogBoundary_moving_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3479da7-cb68-9fc2-477c-2412d7641c71",
  "kind": "theorem",
  "lexical_name": "actualCenteredPrimeLogBoundary_moving_norm_le",
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
  "slug": "actualcenteredprimelogboundary-moving-norm-le--c381c62b0dec773e7171d146",
  "source": {
    "blob": "d565396728423f6e3d33a5dd02eb91671758de80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant0672fabc2639c94260280fc49e66fa2d725a3bea3f1e81e95b155152953d7e7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c381c62b0dec773e7171d14627af658527fbe7e9874f78c96a56fd1252555295",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant0672fabc2639c94260280fc49e66fa2d725a3bea3f1e81e95b155152953d7e7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3479da7-cb68-9fc2-477c-2412d7641c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredPrimeLogBoundary_moving_norm_le (A c : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualCenteredPrimeLogBoundary A c (actualBumpMovingHeight A c)‖ ≤
      2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
  let T := actualBumpMovingHeight A c
  have hT : 0 < T := Real.exp_pos _
  have hHp := mellin_endpoint_norm_le A c T hA hc (abs_of_pos hT)
  have hHm := mellin_endpoint_norm_le A c (-T) hA hc (by rw [abs_neg, abs_of_pos hT])
  have hPp := centered_potential_norm_le A c T hc
  have hPm := centered_potential_norm_le A c (-T) hc
  have hK : 0 ≤ endpointConstant c := by unfold endpointConstant; positivity
  have hM := actualRightLineMass_nonneg c
  have hl : 0 < Real.log 2 := Real.log_pos (by norm_num)
  unfold actualCenteredPrimeLogBoundary
  rw [norm_mul]
  calc
    _ ≤ ‖(I / (2 * Real.pi) : ℂ)‖ *
        (‖actualInitialPrimeMellin A ((c : ℂ) + (T : ℂ) * I) *
          (actualClosedPrimeLogPotential A ((c : ℂ) + (T : ℂ) * I) -
            actualClosedPrimeLogPotential A (c : ℂ))‖ +
          ‖actualInitialPrimeMellin A ((c : ℂ) + (-T : ℂ) * I) *
          (actualClosedPrimeLogPotential A ((c : ℂ) + (-T : ℂ) * I) -
            actualClosedPrimeLogPotential A (c : ℂ))‖) :=
      mul_le_mul_of_nonneg_left (norm_sub_le _ _) (norm_nonneg _)
    _ ≤ (1 / (2 * Real.pi)) *
        (2 * (endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9) *
          (2 * (actualRightLineMass c / Real.log 2))) := by
      have hn : ‖(I / (2 * Real.pi) : ℂ)‖ = 1 / (2 * Real.pi) := by
        rw [norm_div, norm_I]
        norm_cast
        rw [Real.norm_eq_abs, abs_of_pos (show 0 < 2 * Real.pi by positivity)]
      rw [hn, norm_mul, norm_mul]
      have hPm' : ‖actualClosedPrimeLogPotential A ((c : ℂ) + (-T : ℂ) * I) -
          actualClosedPrimeLogPotential A (c : ℂ)‖ ≤
          2 * (actualRightLineMass c / Real.log 2) := by
        simpa only [Complex.ofReal_neg] using hPm
      have hHm' : ‖actualInitialPrimeMellin A ((c : ℂ) + (-T : ℂ) * I)‖ ≤
          endpointConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
        simpa only [Complex.ofReal_neg] using hHm
      have hb := add_le_add
        (mul_le_mul hHp hPp (norm_nonneg _) (by positivity))
        (mul_le_mul hHm' hPm' (norm_nonneg _) (by positivity))
      have hbb := mul_le_mul_of_nonneg_left hb (show 0 ≤ 1 / (2 * Real.pi) by positivity)
      convert! hbb using 1
      congr 1
      rw [two_mul, add_mul]
    _ = _ := by
      rw [show actualEulerLogBoundaryConstant c =
        endpointConstant c * actualRightLineMass c / (Real.pi * Real.log 2) from rfl]
      ring

/-- Quantitative unscaled transport to the actual signed phase integral,
with both endpoint costs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant0672fabc2639c94260280fc49e66fa2d725a3bea3f1e81e95b155152953d7e7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant0672fabc2639c94260280fc49e66fa2d725a3bea3f1e81e95b155152953d7e7e.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d565396728423f6e3d33a5dd02eb91671758de80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
