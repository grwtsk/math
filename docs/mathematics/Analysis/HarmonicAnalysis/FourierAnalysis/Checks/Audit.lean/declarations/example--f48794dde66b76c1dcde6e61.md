# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f69ad7a691ccacb71f5528b23f5f7311345569a27420997ff264a661d8939a6",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f48794dde66b76c1dcde6e61",
  "source": {
    "blob": "d794fb582bf03be329e0567f2484e025a9add010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 14,
    "path": "GRWTSK/Analysis/Fourier/Checks/Audit.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f48794dde66b76c1dcde6e617be063f6adaa9a6df135f4444dba9b5f30858b88",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Audit.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f69ad7a691ccacb71f5528b23f5f7311345569a27420997ff264a661d8939a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : SameSampledPotential (fun x => Real.sin x+Real.sin (2*x)) (fun _ => 0) 0 0 :=
  sampled_alias.1
#check GRWTSK.Analysis.Waveform.eta_abs_lt_one
#print axioms GRWTSK.Analysis.Waveform.eta_abs_lt_one
#check GRWTSK.Analysis.Waveform.eta_injective
#print axioms GRWTSK.Analysis.Waveform.eta_injective
#check GRWTSK.Analysis.Waveform.carrier_norm_bound
#print axioms GRWTSK.Analysis.Waveform.carrier_norm_bound
#check GRWTSK.Analysis.Waveform.carrier_summable
#print axioms GRWTSK.Analysis.Waveform.carrier_summable
#check GRWTSK.Analysis.Waveform.coefficientWaveform_summable
#print axioms GRWTSK.Analysis.Waveform.coefficientWaveform_summable
#check GRWTSK.Analysis.Waveform.coefficientWaveform_continuous
#print axioms GRWTSK.Analysis.Waveform.coefficientWaveform_continuous
#check GRWTSK.Analysis.Waveform.coefficientWaveform_periodic
#print axioms GRWTSK.Analysis.Waveform.coefficientWaveform_periodic
#check GRWTSK.Analysis.Waveform.coefficientWaveform_hasDerivAt
#print axioms GRWTSK.Analysis.Waveform.coefficientWaveform_hasDerivAt
#check GRWTSK.Analysis.Waveform.carrier_derivative_summable
#print axioms GRWTSK.Analysis.Waveform.carrier_derivative_summable
#check GRWTSK.Analysis.Waveform.coefficientWaveform_contDiff
#print axioms GRWTSK.Analysis.Waveform.coefficientWaveform_contDiff
#check GRWTSK.Analysis.Waveform.coefficientWaveform_lipschitz
#print axioms GRWTSK.Analysis.Waveform.coefficientWaveform_lipschitz
#check GRWTSK.Analysis.Waveform.encoded_sequence_contDiff
#print axioms GRWTSK.Analysis.Waveform.encoded_sequence_contDiff
#check GRWTSK.Analysis.Waveform.frequency_derivative_bound
#print axioms GRWTSK.Analysis.Waveform.frequency_derivative_bound
#check GRWTSK.Analysis.Waveform.workClock_ge_index
#print axioms GRWTSK.Analysis.Waveform.workClock_ge_index
#check GRWTSK.Analysis.Waveform.prefix_obligation_covered
#print axioms GRWTSK.Analysis.Waveform.prefix_obligation_covered
#check GRWTSK.Analysis.Waveform.batchSize_bounds
#print axioms GRWTSK.Analysis.Waveform.batchSize_bounds
#check GRWTSK.Analysis.Waveform.unbounded_clock_does_not_imply_channel_service
#print axioms GRWTSK.Analysis.Waveform.unbounded_clock_does_not_imply_channel_service
#check GRWTSK.Analysis.Waveform.fractional_rounding_starves
#print axioms GRWTSK.Analysis.Waveform.fractional_rounding_starves
#check GRWTSK.Analysis.Waveform.transfer_det
#print axioms GRWTSK.Analysis.Waveform.transfer_det
#check GRWTSK.Analysis.Waveform.transfer_trace
#print axioms GRWTSK.Analysis.Waveform.transfer_trace
#check GRWTSK.Analysis.Waveform.transfer_unbounded_trace
#print axioms GRWTSK.Analysis.Waveform.transfer_unbounded_trace
#check GRWTSK.Analysis.Waveform.finite_ordered_energy
#print axioms GRWTSK.Analysis.Waveform.finite_ordered_energy
#check GRWTSK.Analysis.Waveform.l2_parseval
#print axioms GRWTSK.Analysis.Waveform.l2_parseval
#check GRWTSK.Analysis.Waveform.l2_cross_parseval
#print axioms GRWTSK.Analysis.Waveform.l2_cross_parseval
#check GRWTSK.Analysis.Waveform.polynomial_return
#print axioms GRWTSK.Analysis.Waveform.polynomial_return
#check GRWTSK.Analysis.Waveform.same_total_different_diagonal
#print axioms GRWTSK.Analysis.Waveform.same_total_different_diagonal
#check GRWTSK.Analysis.Waveform.Scheduling.clock_ge
#print axioms GRWTSK.Analysis.Waveform.Scheduling.clock_ge
#check GRWTSK.Analysis.Waveform.Scheduling.coverage
#print axioms GRWTSK.Analysis.Waveform.Scheduling.coverage
#check GRWTSK.Analysis.Waveform.Scheduling.starvation_counterexample
#print axioms GRWTSK.Analysis.Waveform.Scheduling.starvation_counterexample
#check GRWTSK.Analysis.Waveform.Scheduling.maximal_exists
#print axioms GRWTSK.Analysis.Waveform.Scheduling.maximal_exists
#check GRWTSK.Analysis.Waveform.Scheduling.step_sum
#print axioms GRWTSK.Analysis.Waveform.Scheduling.step_sum
#check GRWTSK.Analysis.Waveform.Scheduling.step_lower
#print axioms GRWTSK.Analysis.Waveform.Scheduling.step_lower
#check GRWTSK.Analysis.Waveform.Scheduling.upper_from_lower
#print axioms GRWTSK.Analysis.Waveform.Scheduling.upper_from_lower
#check GRWTSK.Analysis.Waveform.Scheduling.debt_invariant
#print axioms GRWTSK.Analysis.Waveform.Scheduling.debt_invariant
#check GRWTSK.Analysis.Waveform.Scheduling.debt_accounting
#print axioms GRWTSK.Analysis.Waveform.Scheduling.debt_accounting
#check GRWTSK.Analysis.Waveform.Scheduling.service_bound
#print axioms GRWTSK.Analysis.Waveform.Scheduling.service_bound
#check GRWTSK.Analysis.Waveform.Scheduling.no_starvation
#print axioms GRWTSK.Analysis.Waveform.Scheduling.no_starvation
#check GRWTSK.Analysis.Waveform.equal_samples_equal_action
#print axioms GRWTSK.Analysis.Waveform.equal_samples_equal_action
#check GRWTSK.Analysis.Waveform.sampled_alias
#print axioms GRWTSK.Analysis.Waveform.sampled_alias
#check GRWTSK.Analysis.Waveform.waveform_equality_implies_samples
#print axioms GRWTSK.Analysis.Waveform.waveform_equality_implies_samples
#check GRWTSK.Analysis.Waveform.reconstruction_energy_error
#print axioms GRWTSK.Analysis.Waveform.reconstruction_energy_error
#check GRWTSK.Analysis.Waveform.reconstructed_cross_error
#print axioms GRWTSK.Analysis.Waveform.reconstructed_cross_error
#check GRWTSK.Analysis.Waveform.p04_conditional
#print axioms GRWTSK.Analysis.Waveform.p04_conditional
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Checks/Audit.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/Checks/Audit.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d794fb582bf03be329e0567f2484e025a9add010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
