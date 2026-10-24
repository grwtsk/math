# modelResidual_has_no_eventual_upper_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1a2fe24-8f95-343d-de35-6300ce4a8275",
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
  "slug": "modelresidual-has-no-eventual-upper-bound--63c1d65ed5a31dd694edb53d",
  "source": {
    "blob": "bb9a7713a13b7b75013c124e89d0436925b473ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 127,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variante34b099fc501284f8382b6852b0d1904b43bcf83a620586f9746027aa153dfd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63c1d65ed5a31dd694edb53d2e48f6553fa28d71c69a29bd72d9795546250138",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variante34b099fc501284f8382b6852b0d1904b43bcf83a620586f9746027aa153dfd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1a2fe24-8f95-343d-de35-6300ce4a8275`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–189.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variante34b099fc501284f8382b6852b0d1904b43bcf83a620586f9746027aa153dfd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A63bb4fa87dd98e5311f68d8d447920cbb0b5d3559831e582c8e23923a8be8bcRateGateAudit/Variante34b099fc501284f8382b6852b0d1904b43bcf83a620586f9746027aa153dfd1.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb9a7713a13b7b75013c124e89d0436925b473ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
