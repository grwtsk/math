# `GRWTSK.AlgebraicGeometry.HaradaLocalZeta.eqOn_of_extension_pointCounts`

## Exact statement and mathematical consumer

On an open preconnected complex domain U containing 0 with |||K|^2*z||<1 and ||z||<1 throughout, a nonvanishing holomorphic F satisfying F(0)=1 and whose logDeriv is the exact extension-count series equals localFactor |K| (residualMultiplicity K) on U.

Exact local source reconstruction rather than a zero-list comparison. This is a conditional characterization of a local zeta factor, not an unconditional global Hasse-Weil or Dirichlet source identity.

## Primary argument and dependencies

The rational factor is differentiable and nonzero on U by the denominator bounds. Its value at 0 is 1. The supplied HasSum for logDeriv F and hasSum_extension_pointCounts have the same sequence, so uniqueness of sums gives equality of logarithmic derivatives. Apply Program 8's eqOn_of_logDeriv_eqOn_of_anchor. This removes the multiplicative constant using the shared anchor. It does not infer the source log-derivative identity, holomorphy, or nonvanishing from finitely many observations.

Dependencies: GRWTSK.FunctionsOfAComplexVariable.NormalizedLogDerivative.eqOn_of_logDeriv_eqOn_of_anchor (Program 8, issue #1805); hasSum_extension_pointCounts; localFactor_zero.

## Limits and falsification boundary

The exact affine polynomial solution type is retained. Finite-field
point counts do not identify the complex completed arithmetic source or force
Weil positivity. Generic pole values use totalized inverse and must not be
read as analytic continuation. All nonvanishing, convergence, degree and
normalization premises in the statement remain explicit. Neither local
rationality nor this source publication proves RH/GRH.

## Source identity and evidence

Maintained source: `GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean`.
Authored source SHA-256: `1b1e145e6447f211e8905469fbec95e58225ef1a8609faf2992ba5a2c6be4fc3`; Git blob: `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Inspected math main: `5f66eb82a40921253664f53602851091ccd01d94`. The exact publication commit is recorded in
[coordination issue #1802](https://github.com/grwtsk/math/issues/1802).
Lean pin: `leanprover/lean4:v4.34.1`; Mathlib pin:
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

Primary mathematical comparison: Shinya Harada,
*Hasse-Weil zeta functions of SL2-character varieties of arithmetic two-bridge
link complements*, [arXiv:1207.6177v2](https://arxiv.org/pdf/1207.6177v2),
31 January 2014, p. 1, Introduction: polynomial f2, definition of the local
point-count exponential, and the unnumbered theorem, case L2=(12/5).
The current primary-source text was consulted on 2026-11-11; the paper bytes
are not copied here and no new paper-byte checksum is claimed.
This is an elementary local consequence/adaptation, not a newly claimed
mathematical discovery. Novelty: UNASSESSED; no novelty assertion.

Source inspection and Git publication do not constitute proof acceptance.
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
analytical review and repository CI: **NOT_RUN**. The imported point-count
and Program 8 modules are themselves source candidates at the inspected pin;
this increment does not upgrade their evidence status. No known executed
failure is being relabeled as NOT_RUN. No covered proof automation was run.

Local attribution: grwtsk contributors. Owning subject: algebraic geometry /
finite-field arithmetic; MSC2020 14G15, 11G25; secondary 30B10.

## Cross-program comparison and remaining obligations

At the inspected pin, RP-OC-04 provides zero and analytic-order transfer under
an independently supplied nonvanishing factor; RP-OC-07 bounds the ORIGINAL
primitive arithmetic Weil value without constructing its global positive sign;
RP-OC-08 supplies the normalized log-derivative rigidity imported here. Their
source paths and issue identifiers were inspected, not inferred from filenames.
This module consumes the RP-OC-08 lemma directly. It does not copy the lemma
or convert the separate programs' hypotheses into established arithmetic facts.

For the next global step, construct the actual Euler product on its convergence
half-plane, justify the all-place product and its exceptional factor, identify
all analytic normalizations, and prove the exact Dirichlet-twisted/completed
source identity. Gamma/parity, conductor, prime-power and pole terms cannot be
replaced by local coefficient recovery. The link-group/canonical-component
identification also remains an external source comparison, not Lean evidence.

## Source-bound reproduction targets (not executed)

From a clean checkout of the publication commit recorded in issue #1802, retain
the checked-in toolchain and manifest. With dependencies available under their
pins, the intended elaboration target is:

```sh
lake env lean GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean
```

A subsequent audit must separately record actual elaboration output, fresh
kernel evidence and the transitive axioms of all nine public declarations.
Do not infer these from the source digest, a static token scan or a CI label.
Any covered execution must first follow the then-current canonical Noe skill
and authorization; this document is not an execution dispatch. No root import
or dependency-pin change is required by this source publication.
