# Dynamic sofic spectral cover: formal boundary

Status: **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**.

Source module:
`GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean`

Source commits:
- introduced at `6eadfe56e10e797f9f2dc5a0b28d04d650bd8582`;
- typed base-specialization refinement at
  `4a80cc59e3fe0ca5b6097106b0d90e045c3f5729`.

Current source blob:
`f9d009a30ac77b93f72bf38604888eb73544de16`.

## Purpose

This module advances the heat-flow / information-loss / sofic program by
replacing a single finite observer with three typed layers:

1. a finite dynamic partition;
2. a finite labelled-graph presentation of a trace;
3. a spectral zero-cover transporting criticality from a base zero problem to
   a generalized zero problem.

The file is logical and structural. It proves no analytic zero-free estimate,
no non-soficity theorem, no RH, no GRH, and no historical assertion.

## Main declarations

### Dynamic partitions and proportion non-compressibility

- `GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover.DynamicPartition`
- `RecoverableAtStage`
- `not_recoverableAtStage_of_collision`
- `ProportionRecoverableAtStage`
- `proportion_not_compressible_at_collision`

Exact content: if two source points have the same retained finite cell at one
stage but different target/proportion values, then that target cannot factor
through the stage observation.

### Sofic graph layer

- `SoficGraph`
- `DynamicSoficPresentation`
- `trace_factorsThrough_partition`
- `no_partition_sofic_trace_cover_of_collision`

Exact content: if the finite graph state factors through the dynamic partition
and the trace factors through the graph state, then the trace factors through
the dynamic partition. Therefore a retained-cell collision carrying different
trace values refutes that proposed partition-to-graph compression.

This is a finite labelled graph interface, not a completed formalization of
sofic shifts, follower sets, symbolic languages, entropy, or minimal
presentations.

### Spectral zero transport

- `ZeroProblem`
- `ZeroProblem.Hypothesis`
- `SpectralZeroCover`
- `SpectralZeroCover.transport_hypothesis`
- `GeneralizedHypothesis`
- `SpectralCoverFamily`
- `rh_implies_generalized_of_spectralCoverFamily`
- `BaseSpecialization`
- `generalized_implies_base_of_member_specialization`
- `rh_iff_generalized_of_spectralCovers_and_member_specialization`
- `rh_iff_generalized_of_spectralCovers_and_specialization`

The conditional RH-to-generalized theorem has an exact hypothesis: for every
generalized zero problem there must be a map to the base zero problem that
sends generalized zeros to base zeros and pulls base criticality back to
generalized criticality.

The equivalence theorem additionally requires an independent specialization
map from the generalized family statement back to the base statement. Thus
the slogan `GRH = RH` is represented only as a conditional equivalence with
both directions visible.

### Combined system

- `DynamicSoficSpectralSystem`
- `DynamicSoficSpectralSystem.trace_factorsThrough_stage`
- `DynamicSoficSpectralSystem.no_trace_collision`

This bundle keeps partition-to-graph compatibility and spectral zero transport
as separate fields. Neither is inferred from the other.

## Relation to earlier sources

The module consumes the already recorded generic factorization logic and the
existing heat-flow/sofic source module. It does not import a new theorem from a
paper.

The following previously recorded works remain methodological context:

- Brad Rodgers and Terence Tao, *The De Bruijn--Newman constant is
  non-negative*, arXiv:1801.05914. The zero-dynamics contradiction motivates
  the process language only.
- David A. Huffman, *A Method for the Construction of Minimum-Redundancy
  Codes*, DOI 10.1109/JRPROC.1952.273898. Exact lossless reconstruction
  motivates the factorization boundary only.
- OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s) > 7/8*,
  30 September 2026, source snapshot
  `openai/math@1581d4cbdd69a0faf34b2089614fe2a814316a6a`. Its analytic 7/8
  result is not imported here.
- Aristotle/Newton/Leibniz/Riemann comparisons are interpretive motivation for
  separating proportion, local/dynamic change, and global analytic transport.
  No historical influence or priority claim is inferred from that analogy.

## Precise unresolved bridges

1. Construct an actual dynamic partition from the intended Farey/Dirichlet or
   heat-flow data and prove its refinement law.
2. Construct an actual finite labelled graph presentation and prove the trace
   factors through its stagewise vertices.
3. Show that the relevant arithmetic proportion/zero readout is preserved by
   the retained partition data, or produce the collision showing that it is
   not.
4. Construct the spectral map from each generalized L-function zero problem to
   the Riemann zero problem.
5. Prove that generalized zeros map to Riemann zeros.
6. Prove that Riemann critical-line placement pulls back to the generalized
   critical locus.
7. Prove the reverse specialization from the generalized family to the base
   Riemann problem.
8. Connect the graph/non-compressibility obstruction to the spectral zero-cover
   rather than merely storing them in one bundle.
9. Supply any intended analytic 7/8-to-3/4 refinement stages independently;
   finite-state or accounting structure alone does not create zero-free
   estimates.

## Verification

Actual status:

- source creation and GitHub blob inspection: performed;
- `lake env lean GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean`:
  **NOT_RUN**;
- `lake build GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover`:
  **NOT_RUN**;
- fresh kernel replay: **NOT_RUN**;
- transitive axiom audit: **NOT_RUN / NOT_KERNEL_AUDITED**;
- external execution receipt: unavailable.

Source inspection and Git commit presence are not compiler or kernel
acceptance.


## Typed specialization refinement

The follow-up commit
`4a80cc59e3fe0ca5b6097106b0d90e045c3f5729` replaces the weakest form of the
reverse direction with an explicit zero-problem specialization.

`BaseSpecialization base generalized` contains:

- an actual map from base zeros into one generalized zero type;
- proof that base zeros map to generalized zeros;
- proof that generalized criticality at the embedded point reflects back to
  base criticality.

Consequently,
`generalized_implies_base_of_member_specialization` derives the base
hypothesis from the generalized family hypothesis using one selected family
member, and
`rh_iff_generalized_of_spectralCovers_and_member_specialization` combines
that with the spectral-cover family to obtain the conditional equivalence.

This makes the proposed RH/GRH equivalence structural rather than an arbitrary
proposition-level implication. The missing mathematical work is now sharper:
construct the generalized-to-base spectral covers and identify one actual
family member that contains the Riemann zero problem with the required
zero/criticality compatibility.

Verification status of the refinement remains **NOT_RUN /
NOT_KERNEL_AUDITED**.


## Anchored-difference / finite-state bridge

Follow-up source commit:
`0c62dab0ecc8fe34ccc0e08a38a9248da5b51885`.

Current source blob:
`8210e2055447ebbe482a7122d21ee09177c3b1c0`.

This refinement consumes the concurrent generic supplier
`GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery` from commit
`f1e8f255c30c4d3568e0d888e6328e8344dd56f2`.

New declarations:

- `no_finite_state_initial_recovery_from_unanchored_difference`: if a finite
  state factors through the unanchored discrete-difference stream, and the
  initial ordinate factors through that finite state, then contradiction.
  Thus a sofic/finite-state layer sourced only from differences cannot recover
  the lost additive anchor.
- `readout_factorsThrough_anchoredDifference`: the anchored difference stream
  factors every source readout because the generic supplier provides an exact
  integration left inverse.

This is the precise formal distinction needed for the differentiation
subtlety: local differences identify sources modulo an additive constant;
retaining an anchor restores global reconstruction. The theorem is mathematical
and exact, but it is not a claim of historical equivalence among Aristotle,
Newton, Leibniz, or Riemann, and it is not an analytic statement about zeta
zeros.

Verification remains **NOT_RUN / NOT_KERNEL_AUDITED**.
