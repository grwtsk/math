# Fixed-window signed Weil perturbation and form norms

Local attribution: grwtsk contributors.
Owner: [WeilFixedWindowSemibounded.lean](WeilFixedWindowSemibounded.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.FixedWindowSemibounded`.

## Exact original-source statements

`sourcePoleProfile` specializes the PUBLIC original `primePoleOutput` at
zero physical input and pole coefficient one. It is not an unrelated
chosen function. `memLp_sourcePoleProfile` uses the existing source output
theorem. `sourcePoleProfile_sq_integral` evaluates its squared Lebesgue norm
as sinh(T)-T for T>=0, by the explicit primitive (sinh(t)-t)/2.

`integral_mul_sq_le` is a direct integrated-square proof of real
Cauchy--Schwarz, handling the zero-mass case before division.
`poleMoment_sq_le` returns this bound to the original supported source.
`abs_source_sub_gamma_le` retains every active von Mangoldt shift and the
negative odd pole, reusing `OddSineForm.abs_primeEnergy_le`. Its constant is
`C(T,beta)=|gammaConstant(1,0)-beta|+primeMass(T)+2(sinh(T)-T)`.
`source_semibounded` yields the fixed-window lower bound -C times the
physical mass on the stated finite-gamma-energy domain.

`gammaNormSq`, `sourceNormSq`, and `sourceNormSq_equivalent` give the exact
comparison between gamma energy plus mass and source energy plus
(C+1) times mass. The upper factor is 2C+1. This is the bounded-perturbation
comparison needed for closure, NOT the vanishing defect of `StageLower`.

## Source-to-paper correspondence and uncompleted analytic bridge

Barry Simon, *Tosio Kato's work on non-relativistic quantum mechanics:
part 1*, Bulletin of Mathematical Sciences 8 (2018), 121--232,
DOI 10.1007/s13373-018-0118-0. The supplied PDF was inspected directly.
SHA-256: `a19894fb242db62b033a9276acdef422e4ec609aec2b84c1edfc49af890983c0`.
Section 10, pp.200--206: form completeness; Example 10.2; representation
Theorems 10.5--10.6; bounded perturbation/KLMN Theorem 10.8; monotone
Theorem 10.12; lower semicontinuity Theorem 10.14. The present norm
comparison is a LOCAL bounded-perturbation specialization, not a
formalization of all those theorems. No assertion is imported as an axiom.

Still to formalize for the actual source: construct the complete weighted
L2 translation-energy space and all bounded cutoff restrictions, prove
their exact maximal-domain identification and density/core statements, then
derive the associated self-adjoint operator using the canonical unbounded
operator API. `ClosedMeasurementGraph` proves a general closure mechanism,
not these missing source identities. These obligations are OPEN, not merely
checks marked NOT_RUN. The cofinal signed arithmetic comparison remains
separate again. Related closure coordination: math#1258.

## Evidence and limits

Source base: `grwtsk/math@c93bb944b56366ad636ddec0eadc0fadd0d6fe57`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`; pins and root imports unchanged.
This is a **SOURCE_PROOF_CANDIDATE**. Elaboration, exact expected signatures,
fresh kernel replay, transitive axiom audit, and independent mathematical
review: **NOT_RUN**. No earlier source-bound acceptance is overwritten.
No theorem-level novelty is claimed; prior-art completeness is UNASSESSED.
Publication and finite diagnostics are not proof acceptance. Coordination:
[math#1837](https://github.com/grwtsk/math/issues/1837).
