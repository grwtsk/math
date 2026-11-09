# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualSignedResponseOperator.complexCoherentReadout_apply`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMActualSignedResponseOperator.lean](../CMActualSignedResponseOperator.lean), line 70.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualSignedResponseOperator.lean#L70).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMActualSignedResponseOperator.complexCoherentReadout_apply` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSelectedSignedWaveReturn.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleOperatorCommutator.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMActualSignedResponseOperator.lean",
      "blob": "e59682aba98aa1f8707bd523dba994e0f97cc4f9",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

/-!
# Bounded, source-derived arithmetic response compared with the ACTUAL CM cycles

The source is the UNCHANGED real Möbius classWave, embedded as the finite
signed packet S(j,u) in the SAME complete selected Hilbert carrier as the
actual geometric CM Thom/Betti cycle image.

Define a finite complex-linear observable L_j by summing EXACTLY those
packet addresses. Its restriction to S(j,u) is the original signed coherent
`completeWave`. The bounded rank-one SOURCE RESPONSE at u is

        T_{j,u}(x) = L_j(x) * S(j,u).

T is an observation-driven FINITE-RANK response, not asserted to be a
propagator mapping S(j,u0) to S(j,u), or a solution operator for the original
Möbius waveform or the Euclidean wave PDE. Those require a separate source
intertwiner and time-domain analysis.

Nevertheless T IS a concrete bounded complex-linear operator, so its
comparison against the actual CM-cycle orthogonal projection is meaningful:

   Q T P(x) = L_j(P x) * Q S(j,u)
   P T Q(x) = L_j(Q x) * P S(j,u).

Both defects remain, including when either is nonzero. There is no claim
that CM-Hodge algebraicity forces invariance under this arithmetic response.
-/

/-- Original signed source is returned with no absolute-value conversion. -/

/-- One explicitly source-specified finite-rank arithmetic response.
The Mathlib `smulRight` constructor proves bounded complex linearity; it
cannot be re-labelled the original PDE/Möbius evolution propagator. -/

/-- Quantitative boundedness of the actual rank-one source response.
Only the SINGLE finite inventory j is controlled; no all-j wave semigroup
bound is asserted. -/

/-- Exact ORIGINAL response of the arithmetic packet to its own coherent
observation: the original source coefficient remains signed. -/

/-- Source-identified, precisely ONE-pair packet transport. Its visible
nonzero coherent source premise is necessary for this chosen normalization.
It is not a time semigroup, PDE solution operator, or global arithmetic flow. -/

/-- Any linear wave evolution must preserve zero. If the genuine packet
vanishes at one time but not at another, NO linear operator can realize that
source pair. This conditional obstruction distinguishes the finite response
above from an unproved global arithmetic propagator. -/

/-- Applying the bounded source response to a whole source packet retains
both ORIGINAL signed coherent amplitudes before any energy square. -/

/-- A scale-indexed bounded family whose selected slot is the literal
finite-rank source response. It is constant in the auxiliary index; no PDE
scale-semigroup structure is claimed. -/

/-- The ACTUAL algebraic-to-residual operator on this source-built response. -/

/-- Nonvanishing is not assumed: it follows when the ACTUAL source packet
has a nonzero residual and the real CM input is detected by this source
readout. Neither requirement is implied by generic CM Hodge algebraicity. -/

/-- Independently, residual-to-algebraic leakage may be nonzero even when
algebraic-to-residual leakage vanishes. It needs its own source witnesses. -/

/-- Both source-specific leakage channels admit quantitative positive-metric
bounds. They do not cancel by replacing source signed coefficients with
absolute values. -/

/-- The exact CM source supplies genuine geometric classes in P. No theorem
says this source response preserves them. For the named Hodge class, the
reverse defect vanishes ON THAT INPUT but forward leakage may remain. -/

/-- A NONZERO genuine CM Hodge input can leak into the orthogonal
arithmetic residual if the specifically identified two source factors are
nonzero. This is a conditional witness, not an asserted universal violation
of invariance. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
