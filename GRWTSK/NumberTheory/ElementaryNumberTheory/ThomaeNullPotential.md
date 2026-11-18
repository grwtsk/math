# Thomae heights and the null Lebesgue potential

Local attribution: grwtsk contributors.
Owner: [ThomaeNullPotential.lean](ThomaeNullPotential.lean).
Namespace: `GRWTSK.NumberTheory.ThomaeNullPotential`.

`thomae` uses the denominator of the unique reduced rational representing
a real input, and is zero off the rationals. `thomae_rat` proves the value
is independent of the existential witness. `thomae_nat_fraction` uses
Lean 4.34.1 `Rat.den_divInt` and exact division by the gcd, including a=0.
`kernel_eq_thomae` identifies the previously constructed finite matrix with
the actual Thomae value of the chosen cyclic-difference representative.

`ae_zero_of_zero_off_rationals`, `thomae_ae_zero`, and
`mirroredThomae_ae_zero` use the countability of the rational cast image
and the atomless Lebesgue measure. `thomae_mul_ae_zero` and
`integral_mirroredThomae_mul` return the vanishing to actual multiplication
and integration. No density of rational points can change their null measure.
These statements deliberately exclude atomic counting measures.

The consumer is the finite-vs-continuum source distinction in the Weil
popcorn reference. The mathematical argument is elementary countability,
reduced fractions, and a.e. congruence; no external paper theorem is imported.
The point-evaluation nonclosability in Simon, Section 10, Example 10.2, is
a relevant warning, not a theorem formalized by this module.

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
