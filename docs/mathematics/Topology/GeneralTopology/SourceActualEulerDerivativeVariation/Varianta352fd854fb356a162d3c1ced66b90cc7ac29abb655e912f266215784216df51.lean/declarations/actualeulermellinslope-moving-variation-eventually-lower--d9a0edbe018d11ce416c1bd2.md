# actualEulerMellinSlope_moving_variation_eventually_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:64c34dec-09ed-b78f-bb6d-b5c505c9b0ca",
  "kind": "theorem",
  "lexical_name": "actualEulerMellinSlope_moving_variation_eventually_lower",
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
  "slug": "actualeulermellinslope-moving-variation-eventually-lower--d9a0edbe018d11ce416c1bd2",
  "source": {
    "blob": "047ca5885229cef251087a43f0c9e5d30a85bd86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 151,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Varianta352fd854fb356a162d3c1ced66b90cc7ac29abb655e912f266215784216df51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9a0edbe018d11ce416c1bd2468b09569cce692d0bc2976186f9333d2a723168",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Varianta352fd854fb356a162d3c1ced66b90cc7ac29abb655e912f266215784216df51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:64c34dec-09ed-b78f-bb6d-b5c505c9b0ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEulerMellinSlope_moving_variation_eventually_lower :
    ∀ᶠ A : ℝ in atTop, 20736 * Real.exp (2 * A) / A ^ 9 ≤
      ∫ t in 0..actualBumpMovingHeight A (3 / 2),
        ‖actualEulerMellinSlope A ((3 / 2 : ℂ) + (t : ℂ) * I)‖ := by
  filter_upwards [real_mellin_norm_eventually_lower,
    eventually_ge_atTop (max 1 (endpointConstant (3 / 2)))] with A hH hA
  have h1 : 1 ≤ A := (le_max_left _ _).trans hA
  have hK : endpointConstant (3 / 2) ≤ A := (le_max_right _ _).trans hA
  have hp : 0 < A := by linarith
  have hb := mellin_endpoint_norm_le A (3 / 2) h1 (by norm_num)
  norm_num at hb
  have he : Real.exp (-((2 * (3 / 2) - 1) * A / 5)) ≤ 1 := by
    rw [Real.exp_le_one_iff]
    linarith
  have hk0 : 0 ≤ endpointConstant (3 / 2) := by unfold endpointConstant; positivity
  have hKe : endpointConstant (3 / 2) ≤ 20736 * Real.exp (2 * A) := by
    nlinarith [Real.add_one_le_exp (2 * A)]
  have hend : ‖actualInitialPrimeMellin A
      ((3 / 2 : ℂ) + (actualBumpMovingHeight A (3 / 2) : ℂ) * I)‖ ≤
        20736 * Real.exp (2 * A) / A ^ 9 := by
    refine hb.trans ?_
    have hh := (mul_le_of_le_one_right hk0 he).trans hKe
    norm_num at hh
    exact div_le_div_of_nonneg_right hh (by positivity)
  have hv := actualEulerMellinSlope_variation_lower A (3 / 2)
    (actualBumpMovingHeight A (3 / 2)) h1 (Real.exp_pos _).le
  norm_num at hv
  rw [show 41472 * Real.exp (2 * A) / A ^ 9 =
    2 * (20736 * Real.exp (2 * A) / A ^ 9) by ring] at hH
  linarith

/-- This is divergence of an absolute-method allowance, not of the signed bulk or residual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Varianta352fd854fb356a162d3c1ced66b90cc7ac29abb655e912f266215784216df51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Varianta352fd854fb356a162d3c1ced66b90cc7ac29abb655e912f266215784216df51.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `047ca5885229cef251087a43f0c9e5d30a85bd86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
