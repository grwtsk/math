# actualMixed_firstColumn_shift_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e02fedbc-9f50-14be-ac81-cd57deea00f1",
  "kind": "theorem",
  "lexical_name": "actualMixed_firstColumn_shift_bounds",
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
  "slug": "actualmixed-firstcolumn-shift-bounds--86101721e1a9cb3175151c32",
  "source": {
    "blob": "9bd36cc6d81eebac5e62582c2b8b1f75f3a142cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant982dc5ce6926b230ce194f309752fd493e93914e2c12508c3d1690a2a12f7fb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86101721e1a9cb3175151c320fff4de3ca91b0dcfdfa21ae93e470555cb2713c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant982dc5ce6926b230ce194f309752fd493e93914e2c12508c3d1690a2a12f7fb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e02fedbc-9f50-14be-ac81-cd57deea00f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMixed_firstColumn_shift_bounds {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    0 ≤ t + Real.log u ∧ t + Real.log u ≤ A / 10 := by
  have hU : (1 : ℝ) ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hu0 : 0 < u := by push_cast at hu; linarith
  have hlU0 : 0 ≤ Real.log (vaughanCutoff A : ℝ) := Real.log_nonneg hU
  have hlu0 : 0 ≤ Real.log u := Real.log_nonneg (by push_cast at hu; linarith)
  have hup : u ≤ 3 * (vaughanCutoff A : ℝ) := by push_cast at hu2; linarith
  have hl := Real.log_le_log hu0 hup
  rw [Real.log_mul (by norm_num : (3 : ℝ) ≠ 0) (by linarith :
    (vaughanCutoff A : ℝ) ≠ 0)] at hl
  have hlog3 : Real.log (3 : ℝ) ≤ 2 := by
    simpa only [show (3 : ℝ) - 1 = 2 by norm_num] using
      Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 3)
  have hlU := log_vaughanCutoff_le_early_window hA
  constructor <;> linarith

/-- The mixed coefficient is uniformly negative on this actual strict-column rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant982dc5ce6926b230ce194f309752fd493e93914e2c12508c3d1690a2a12f7fb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/E24168cf3bf9b367acd3ActualMixedKernelFirstColumnChallenge/Variant982dc5ce6926b230ce194f309752fd493e93914e2c12508c3d1690a2a12f7fb4.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd36cc6d81eebac5e62582c2b8b1f75f3a142cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
