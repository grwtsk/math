# Matched-test Kuznetsov parity projections

Authored by grwtsk contributors.

## Mathematical consumer and primary source

`KuznetsovParityProjection.lean` supplies exact algebra and error propagation for
a future level-one, weight-zero Kuznetsov adapter. The analytic source is Peter
Humphries and Rizwanur Khan, *L^p-Norm Bounds for Automorphic Forms via Spectral
Reciprocity*, [arXiv:2208.05613v3](https://arxiv.org/html/2208.05613v3), 25 June
2025, Theorem 2.1, equations (2.2)--(2.6). That formula permits two spectral tests;
the intended projection specializes them to one common test satisfying the
source's evenness, strip holomorphy, and decay requirements. Theorem 2.11 is a
different inverse summation variant with an additional holomorphic contribution.

The present declarations are local algebraic consequences and finite-sum
identities, not a Lean formalization of either analytic trace formula. They do
not implement Bessel kernels, Kloosterman sums, automorphic spectral expansions,
or integral convergence. No source theorem has been imported as a new axiom.

## Formal statements and argument

All declarations are in `GRWTSK.NumberTheory.KuznetsovParityProjection`.
`evenSum` and `oddSum` partition an actual complex-weighted finite sum using a
Boolean parity, where `true` means odd. `plusSum` retains all weights; `minusSum`
negates the odd weights. Splitting each summand proves
`plusSum_eq_even_add_odd` and `minusSum_eq_even_sub_odd`. Adding and subtracting
those proven equalities gives `evenSum_projection` and `oddSum_projection`.
These conclusions do not assume positivity of the complex weights.

`matched_trace_projections` consumes the explicit identities
E+O+C=G_plus and E-O+C=G_minus. Addition gives
E+C=(G_plus+G_minus)/2; subtraction gives O=(G_plus-G_minus)/2.
`finite_matched_trace_projections` connects this algebra to the previously
constructed finite parity sums. A finite truncation is not asserted to satisfy
the untruncated analytic source identities; omitted tails must be retained or
bounded by its consumer.

`unmatched_continuous_correction` keeps separate continuous terms and proves the
additional correction (C_plus-C_minus)/2. This is a hostile check on cancellation:
setting all cuspidal terms to zero but unequal continuous terms produces a
nonzero half-difference. The opposite-sign geometric side alone also retains
both cuspidal sectors and is not a pure odd spectrum. Matching one continuous
term is necessary for that cancellation; matching the entire spectral test and
all other summands remains the analytic consumer's obligation.

`odd_projection_error` proves that independent complex norm bounds e_plus and
e_minus on the two geometric approximations give error at most
(e_plus+e_minus)/2 in their half-difference. It follows by rewriting the error
as a half-difference of the two individual errors and using the triangle
inequality. Numerical estimates without those input bounds are not certified
by this theorem.

## Scope and remaining bridge

A full adapter still needs the exact level, weight, group, spectral measure,
normalization of Bessel transforms, continuous spectrum, shared admissible test,
and convergent source identities. Nontrivial arithmetic L-function zeros, Maass
spectral parameters, and zeros of a Selberg zeta function are not identified by
these declarations. No positivity-to-GRH, Selberg gap, endoscopic transfer, or
functoriality result is asserted. The finite algebra does not supply those
missing analytic producers.

Developed against repository base
`9f997b28e66f1997c9c7c6e1318b08081e2bfd90`, Lean `v4.34.1`, and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The local specification's section 21
motivated this consumer. It has SHA256
`d4d153db89e3505e17dcb002053f13f7bb8e53b80eb4f200f8fe328e27300dea`.

For source SHA256
`5c05ebe997542e71be7b015d7c7ae1eb5157682a787b2b08322304d8d7040d55`:

- Lean source elaboration/typechecking: PASS; the source was replayed in fresh processes.
- Separate `leanchecker GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.KuznetsovParityProjection`:
  PASS (exit 0).
- Transitive axiom audit of all 8 authored theorems: only `propext`,
  `Classical.choice`, and `Quot.sound`; no `sorryAx`.
- Checker implemented independently of the Lean toolchain: NOT_RUN.
- Independent review of a full analytic source realization: NOT_RUN; no such
  realization is supplied by this algebraic module.

The separate checker is part of the pinned Lean distribution. It is not an
independent foundational implementation. No novelty or independent analytic
proof is claimed.

## Final integration verification

This exact source was included in the successful combined `leanchecker --fresh`
replay of the eight core modules and their imported constants under the pinned
Lean toolchain. The combined declaration audit also passed, with no axioms outside
`propext`, `Classical.choice`, and `Quot.sound`. This is a fresh Lean-kernel replay,
not a checker implemented independently of Lean. The coordinating
[issue #1839](https://github.com/grwtsk/math/issues/1839) binds the final publication
to these source hashes and records the separately checked binary-character module.
