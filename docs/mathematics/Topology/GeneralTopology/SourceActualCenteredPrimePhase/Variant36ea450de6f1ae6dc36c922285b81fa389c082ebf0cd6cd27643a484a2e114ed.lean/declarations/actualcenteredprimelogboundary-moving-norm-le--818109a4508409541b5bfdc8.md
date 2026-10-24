# actualCenteredPrimeLogBoundary_moving_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ee4bb0ef-3a81-1318-dd62-691b4b96c5ba",
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
  "slug": "actualcenteredprimelogboundary-moving-norm-le--818109a4508409541b5bfdc8",
  "source": {
    "blob": "9e3b06d4de211d131d32762cc744d281fe43d3af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant36ea450de6f1ae6dc36c922285b81fa389c082ebf0cd6cd27643a484a2e114ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:818109a4508409541b5bfdc8ec0446e06b796bbb95d29f22a6007893cfff8bf4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant36ea450de6f1ae6dc36c922285b81fa389c082ebf0cd6cd27643a484a2e114ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4bb0ef-3a81-1318-dd62-691b4b96c5ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–265.

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
    _ = _ := by unfold actualEulerLogBoundaryConstant endpointConstant; ring

/-- Quantitative unscaled transport to the actual signed phase integral, with both endpoint costs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant36ea450de6f1ae6dc36c922285b81fa389c082ebf0cd6cd27643a484a2e114ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant36ea450de6f1ae6dc36c922285b81fa389c082ebf0cd6cd27643a484a2e114ed.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e3b06d4de211d131d32762cc744d281fe43d3af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
