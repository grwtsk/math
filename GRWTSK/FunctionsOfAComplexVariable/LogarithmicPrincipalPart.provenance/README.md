# LogarithmicPrincipalPart

Local attribution: grwtsk contributors. Date: 2026-11-11.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED.
Coordination: [math#1801](https://github.com/grwtsk/math/issues/1801), scope comment 6811529981.
Inspection base `461230660ec980d4be6a0e00927d658d237e6866`; complete base tree `4d87bb0f8820704cbdd4a5476ad2be17c02b2ca6`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review,
repository-wide verification, and arithmetic certification: NOT_RUN. These are
candidate proof bodies, not accepted formal proofs. Imported candidates retain
all prior evidence statuses and known failures. Lean/Lake and verified local
canonical skill checkouts were absent. The canonical proof-automation skill
returned 404 at Noe main `0569c9d68ea637eae0d0e268120b1206d0bba71b`; dependent execution stopped.
No runner, workflow, scheduler, or cross-chat action was dispatched. Ordinary
source publication is separate. Text, hashes, algebra checks, and readback are
not Lean parsing or proof acceptance.

Maintained source: [../LogarithmicPrincipalPart.lean](../LogarithmicPrincipalPart.lean).
100 lines; 4807 UTF-8 bytes.
Git blob `344feefcd90eb45479a3f887d157dfc4ca3df5a6`; SHA-256 `66b6d36d201033fef505b747ffd7fb9a1e6233566d5e7331f70d00774b33efe8`.

## Exact statement and complete analytical argument

Work in C. Let n be ANY integer, a a complex point, g analytic at a with
g(a) != 0, and suppose f(s)=(s-a)^n*g(s) on a punctured neighborhood.
No regularity or value of f at a is required. Continuity keeps g nonzero
near a, and analyticity holds throughout a smaller neighborhood. For s != a,
all factors in the product are nonzero, and the usual product and integer-power
rules give

    f'(s)/f(s) = n/(s-a) + g'(s)/g(s).

The logarithmic derivative respects equality of punctured germs. Thus the
formula is valid for the ACTUAL f, even if its totalized value at a differs
from that of a representative. The remainder R=g'/g is analytic at a.
Multiplication by s-a gives n+(s-a)R(s), which tends to n. For any continuous
complex W, multiplication by W(s) gives the punctured limit n*W(a).
For holomorphic W this is the residue coefficient used by contour integration;
for merely continuous W we claim only the displayed limit, not meromorphy.

The result includes n=0 and negative n. It does not convert the signed order to
a natural number, nor use a zero denominator at the center. The source consumers
supply the factorizations from genuine analytic zero orders and genuine poles.

## Comparison and hostile checks

Dated prior-art comparison: 2026-11-11. This is classical local complex analysis.
The pinned LogDeriv file provides the product, zpow, and punctured-germ rules and
a limit theorem for a SIMPLE analytic zero. The present core derives the
arbitrary-integer coefficient and analytic remainder. This is not a claim of
novelty or absence of equivalent declarations elsewhere. Focused repository and
primary documentation searches are incomplete. The current online DSlope API
was not assumed available at the repository pin; this implementation needs no
newer AnalyticAt.dslope declaration.

For f(s)=(s-a)^n*exp(c(s-a)), the answer is n, for n=-3,-1,0,1,2 and all other
integers. Changing c leaves the divisor and local coefficients fixed but changes
the regular logarithmic derivative by c. Therefore residue data alone does NOT
fix the zero-free normalization or prove an arithmetic explicit formula.

As a totalization check, the function with f(a)=0 and f(s)=1 off a has n=0 in
its punctured factorization and logarithmic limit 0. Its assigned zero at a is
not an analytic zero. The actual Dirichlet zero application does require and
derive analyticity and finite positive order, so does not use this loophole.
A weight with W(a)=0 makes the displayed limit zero; no inference about positivity
or a global pole-neutral restriction follows. These hostile checks are written
analysis; independent review and formal counterexample declarations are NOT_RUN.

## Consumer and limitations

DirichletLogarithmicResidues applies this exact core to the original and completed
Dirichlet functions and both completed-zeta poles. It proves local singular terms,
not the global residue theorem, contour deformation, zero-free contour selection,
horizontal-edge estimates, prime-power inversion, or arithmetic Weil equality.
No RH/GRH or positive-form claim is present. No new frontier claim ID is created.

## Pinned primary references

Chris Birkbeck, [Mathlib/Analysis/Calculus/LogDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/LogDeriv.lean), `logDeriv_apply`, `logDeriv_congr_nhdsNE`, `logDeriv_fun_mul`, `logDeriv_fun_zpow`, and the comparison theorem `AnalyticAt.tendsto_mul_logDeriv_simple_zero`; blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`. Apache-2.0.

## Declaration map

- `GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart.logDeriv_of_factorization`: [logDeriv_of_factorization.md](logDeriv_of_factorization.md).
- `GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart.exists_analytic_remainder`: [exists_analytic_remainder.md](exists_analytic_remainder.md).
- `GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart.tendsto_mul_logDeriv`: [tendsto_mul_logDeriv.md](tendsto_mul_logDeriv.md).
- `GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart.tendsto_mul_weighted_logDeriv`: [tendsto_mul_weighted_logDeriv.md](tendsto_mul_weighted_logDeriv.md).

## Reproduction boundary

Use a clean checkout at the publication commit recorded in math#1801, with the
unchanged pins above. The following command is UNEXECUTED, not an execution receipt:

```sh
lake build GRWTSK.FunctionsOfAComplexVariable.LogarithmicPrincipalPart
```

Perform fresh kernel replay and all individual transitive axiom queries, followed
by exact-statement and independent analytic review. All remain NOT_RUN. Ordinary
source-text/hash/diff/publication-readback observations are separately recorded in
math#1801. No root import or dependency change is part of this increment.

## Reconciled publication parent

While this candidate was prepared, main advanced to
`923fde9a18991d4c26a8de92fb62e107f4b0bba5`, complete tree
`b1467d42e91faea608feb33fd00f71b6cc08b00f`. Its exact diff adds only
WeilDirichletWitnessTail.lean and its individual provenance record. The full
intervening diff was read; those distinct paths and all prior sources are
preserved. The initial dependency references above remain valid unchanged.
