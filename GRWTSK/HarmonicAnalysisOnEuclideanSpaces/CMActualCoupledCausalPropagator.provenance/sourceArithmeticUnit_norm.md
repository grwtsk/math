# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualCoupledCausalPropagator.sourceArithmeticUnit_norm`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMActualCoupledCausalPropagator.lean](../CMActualCoupledCausalPropagator.lean), line 88.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualCoupledCausalPropagator.lean#L88).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualCoupledCausalPropagator.sourceArithmeticUnit_norm` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSourceRankTwoShearEvolution.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMFullCycleNonzeroCoupling.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMLabelledCocycleIntertwiner.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/FiniteLabelledPickupUniformTransport.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualCoupledCausalPropagator.lean",
      "blob": "d5f714b18e56ea789b134a4e5ba26bc8c9def06c",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

/-!
# A time-composing source-coupled CM–Möbius causal evolution

The original rational degree-zero full-cycle class on X supplies a nonzero
selected CM Betti coordinate v, with the exact path-connectedness and finite-
rational-Betti-dimensionality hypotheses kept visible. The labelled causal
source is the original complete Mobius coefficient/response graph at t=0,
including the n=1 latent unit and every n ≤ 2^j. Their normalized vectors
have norm one in the EXISTING chosen positive Hilbert structures.

F = |arithmetic> <CM|, G = |CM> <arithmetic|, F²=G²=0.
Define A(t)=(I+t F)(I+t G) and the genuine causal labelled transport E(s,t)
from the original pickupResponse. The joint *constructed* evolution is

 U(s,t) = E(0,t) A(t) A(s)⁻¹ E(s,0).

It obeys exact identity, inverse and time composition on the ENTIRE joint
Hilbert space, not merely one source orbit. Its two cross-channel defects
are nonzero already for s=0,t=1. The associated arithmetic readout can
change under the coupling; the original uncoupled signed pickup energy is
never redefined or inferred from the positive Hilbert norm.

This is an explicit, bounded, reversible, finite-rank *coupled evolution
model* selected from the two mathematical sources. Neither the interaction
clock nor its amplitude follows uniquely from an external physical action,
Hamiltonian, geometric PDE, or constitutive law. A physical identification
requires a separate source-derived generator/limit and measurement theorem.
Uniform operator bounds do NOT imply all-rate signed Mobius cancellation.
-/

/-- The unchanged original SIGNED full integer-labelled source at physical
initial time 0, normalized only for the optional bounded interaction. -/

/-- Source-specific, genuinely two-way invertible frame. -/

/-- Every time frame has an exact, source-identical left inverse. -/

/-- Every time pair has a bounded reverse, even if an observed source
response vanishes before birth. This is NOT unitarity. -/

/-- Consequently the source-coupled propagator from time zero is literally
its chosen time-t frame. -/

/-- Source-exact arithmetic cocycle gives a positive-metric joint bound.
The factor 5 is independent of j, not uniform over the time horizon. -/

/-- The source-specific interaction frame is polynomially bounded on the
finite positive clock, with constants independent of the label inventory. -/

/-- Each true finite-inventory coupled source frame has explicit operator
norm, with no exponential dependence on the source inventory. -/

/-- The same actual CM source vector survives in the geometric factor
while a genuinely new causal response is produced. -/

/-- A REAL Q U P compressed witness: one selected CM class generates a
nonzero source-labelled arithmetic state; it is not an isolated analogy. -/

/-- At unit interaction time the complete coupled operator has a source-
independent upper bound 100. It is intentionally conservative: no amount
of signed arithmetic cancellation is assumed. -/

/-- Full ACTUAL compressed QUP operator bound on the source-derived
nontrivial two-time evolution, with no skipped residual components. -/

/-- The two genuine off-diagonal operators have quantitative lower bounds
from the actual geometric cycle, signed source and invertible causal lift. -/

/-- Exactly the difference between coupled observation and the source's
original signed closed-inventory readout; no absolute value is taken first. -/

/-- The actual coupled output equals the ORIGINAL signed source plus its
whole, source-identified complex readout residual. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
