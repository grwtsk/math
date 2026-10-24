# modelResidual_has_no_eventual_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ac65ecd-0b14-24ad-8fa3-d3eeab323ed9",
  "kind": "theorem",
  "lexical_name": "modelResidual_has_no_eventual_upper_bound",
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
  "slug": "modelresidual-has-no-eventual-upper-bound--6df9dc5c24f3da42217c1fdf",
  "source": {
    "blob": "c8be5183a446d17afe024dc46fdfeee2238aa5bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variantb85629fa44f77f0ae23ecbe62f8459be0452960d18f5a42320ae1b8958a4236c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6df9dc5c24f3da42217c1fdf037a276eb7b50f12c6ebd0892256844feaaf307d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variantb85629fa44f77f0ae23ecbe62f8459be0452960d18f5a42320ae1b8958a4236c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ac65ecd-0b14-24ad-8fa3-d3eeab323ed9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modelResidual_has_no_eventual_upper_bound (k : ℝ) :
    ¬ ∃ D R : ℝ, ∀ A : ℝ, R ≤ A → modelResidual k A (Real.exp A) ≤ D := by
  rintro ⟨D, R, hbound⟩
  obtain ⟨A, _, hR, hD⟩ := modelResidual_exceeds_any_cap k D R
  exact (not_le_of_gt hD) (hbound A hR)

end FormalResearch.RiemannHypothesis.NormalizedRateGate

set_option pp.all true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs true
set_option pp.maxSteps 1000000
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.modelShell
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.modelShell
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.modelShell
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.modelComplement
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.modelComplement
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.modelComplement
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.balancedComplement
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.balancedComplement
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.balancedComplement
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization_pos
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization_pos
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization_pos
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_cap_iff
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_cap_iff
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_cap_iff
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_eq
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_eq
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_eq
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_modelResidual_eq
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_modelResidual_eq
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_modelResidual_eq
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.balanced_residual_eq
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.balanced_residual_eq
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.balanced_residual_eq
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_balanced_residual_eq
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_balanced_residual_eq
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_balanced_residual_eq
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization_exp_eq
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization_exp_eq
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.normalization_exp_eq
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_modelResidual_tendsto_zero
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_modelResidual_tendsto_zero
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.normalized_modelResidual_tendsto_zero
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.exp_div_tenth_power_lower
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.exp_div_tenth_power_lower
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.exp_div_tenth_power_lower
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_exceeds_any_cap
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_exceeds_any_cap
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_exceeds_any_cap
#check FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_has_no_eventual_upper_bound
#print FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_has_no_eventual_upper_bound
#print axioms FormalResearch.RiemannHypothesis.NormalizedRateGate.modelResidual_has_no_eventual_upper_bound

open Lean Elab Command Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variantb85629fa44f77f0ae23ecbe62f8459be0452960d18f5a42320ae1b8958a4236c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variantb85629fa44f77f0ae23ecbe62f8459be0452960d18f5a42320ae1b8958a4236c.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8be5183a446d17afe024dc46fdfeee2238aa5bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
