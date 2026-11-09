# `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryInteraction.sourceUnitaryTwoTime_comp`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [CMSourceUnitaryInteraction.lean](../CMSourceUnitaryInteraction.lean), line 90.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSourceUnitaryInteraction.lean#L90).
- Declaration spelling: `GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMSourceUnitaryInteraction.sourceUnitaryTwoTime_comp` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMArithmeticRankTwoCoupling.lean)

The following existing source records retain the precise declaration mapping, changes, hypotheses, consumer and unresolved bridges where recorded. They are reproduced as source evidence, not new mathematical acceptance.

```json
[
  {
    "record": "docs/adaptations/openai-math-residue-circle/sources.toml",
    "provider": "openai/math",
    "commit": "4eaee87548250b2682affda7d05d947c05554bae",
    "source": {
      "path": "GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSourceUnitaryInteraction.lean",
      "blob": "3391a7243caf77279fc503047f42f8520cd6013d",
      "role": "provider_dependent_candidate"
    }
  }
]
```

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

/-!
# A bounded source-derived unitary interaction, with an explicit coupling clock

Take the two already sourced vectors `v : H` (CM Betti cycle) and `w : C`
(original complete finite labelled Mobius causal state). On the L2 joint
Hilbert sum their self-adjoint rank-at-most-two interaction is

    K(v,w) = |(v,0)><(0,w)| + |(0,w)><(v,0)|.

For a real interaction parameter θ, define the UNITARY group

    R(θ) = exp (i θ K(v,w)).

Mathlib's selfAdjoint.expUnitary supplies the genuine global exponential,
not a truncated polynomial or a nonunitary elementary shear. An additive
parameter obeys R(θ+η) = R(θ) R(η), R(0)=1, and ‖R(θ)x‖=‖x‖.

This fixes a mathematical family for every real coupling clock. It does NOT
identify θ with measured physical time or infer the interaction strength
from either original geometric or arithmetic source. The original signed
Mobius readout and its cross terms remain defined independently.
-/

/-- The exact previously sourced two-way rank-one operator, now exhibited as
an element of Mathlib's real vector space of self-adjoint operators. -/

/-- The unitary group acts by genuine norm-preserving bounded complex
linear maps on the COMPLETE joint Hilbert space, not just on the source pair. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
