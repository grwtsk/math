# DirichletLogarithmicResidues

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

Maintained source: [../DirichletLogarithmicResidues.lean](../DirichletLogarithmicResidues.lean).
233 lines; 13161 UTF-8 bytes.
Git blob `030b82615f57a78889166f708867ded84fae96d0`; SHA-256 `3b20925f2e94a6d7e6f597b735f35753dd9c9aa801d56fa173e22c7b12c7bad0`.

## Exact source and complete analytical argument

The source objects are the existing DirichletCharacter.LFunction,
DirichletCharacter.completedLFunction, gammaFactor, CriticalStripZero, and
zeroMultiplicity. The last two are not redefined. Positive level N is explicit.
Local helpers hold for all characters; they establish no imprimitive-GRH transfer.
The intended global application remains primitive Dirichlet GRH, including zeta.

At an original open-strip zero rho, the existing source factorization is

    L(chi,s)=(s-rho)^m*u(s),   m=zeroMultiplicity chi rho,
    u analytic at rho, u(rho)!=0.

The prior source theorem excludes infinite analytic order BEFORE taking its
natural value and proves m>=1. No zero existence, simplicity, central-zero
exclusion, critical-line location, or uniform separation is assumed here.
The general signed-order theorem gives

    L'/L = m/(s-rho)+R(s),   R analytic at rho,
    (s-rho)*W(s)*L'/L -> m*W(rho).

For completion, both parity factors are treated literally:
GammaR(s) for even chi and GammaR(s+1) otherwise. Re(rho)>0 proves their
nonvanishing. Their reciprocals are entire in the pinned implementation, so
local inversion at a NONZERO value proves the factor itself analytic there.
The exact existing identity L=completedL/gammaFactor is rearranged only after
nonvanishing and s!=0 are established. It gives, near rho,

    completedL(chi,s)=(s-rho)^m * (u(s)*gammaFactor(chi,s)).

This analytic unit is nonzero at rho. The completed logarithmic derivative
therefore has the SAME coefficient m. This is a local correspondence at actual
strip zeros, not an unjustified equality of all global zero sets. Gamma poles,
trivial zeros, level, parity, and the completed source normalization are not
replaced by a model.

For conductor-one zeta, use the literal executable source identity

    Lambda(s)=Lambda0(s)-1/s-1/(1-s),   Lambda0 entire.

Both corrections are kept. Define LOCAL analytic units (not new global sources)

    g0(s)=s*Lambda0(s)-1-s/(1-s),       g0(0)=-1,
    g1(s)=(s-1)*Lambda0(s)-(s-1)/s+1,  g1(1)= 1.

Near 0, excluding 0 and 1, Lambda(s)=s^(-1)*g0(s).
Near 1, excluding 1 and 0, Lambda(s)=(s-1)^(-1)*g1(s).
The opposite pole is excluded by an ordinary open neighborhood. Thus the
signed order is -1 at BOTH points. For every continuous complex W,

    s*W(s)*Lambda'/Lambda(s) -> -W(0),
    (s-1)*W(s)*Lambda'/Lambda(s) -> -W(1).

The signs of the FUNCTION residues, -1 at 0 and +1 at 1, do NOT change the
logarithmic residues. The final theorem retains EVERY real r and the entire
weight exp((s-1/2)*r), yielding -exp(-r/2) and -exp(r/2). These are the two
orientations that must be retained in the eventual Weil formula. Their sign
when moved to the opposite side of a contour identity is a separate operation;
this module does not silently do that contour argument.

The conductor-one zero theorem rewrites completedLFunction literally to
completedRiemannZeta, retaining the original zero subtype and multiplicity.
Continuous weights keep W(rho) at the FULL complex location, not W(i*Im(rho))
or an off-axis absolute square. The generic weighted limit does not require
W nonzero and does not impose either pole-neutral vanishing condition.

## Falsification, dependencies, and remaining arithmetic return

Boundary checks include repeated zeros m>1, central strip zeros, both height
signs, both parities, N=1, arbitrary complex weights, W(a)=0, both pole centers,
and the distinction between signed order and leading Laurent coefficient.
The rational identities for the two local pole units and the signed-order
scalar identities were checked symbolically outside Lean; this is not a proof
of analytic continuation or theorem elaboration. The existing source identities,
not finite numerical zero samples, justify the local source correspondence.

The previous height-count/correlation source candidates are preserved unchanged.
This increment establishes no new all-height bound and does not reverify their
transitive dependencies. Its direct local source prerequisite is the existing
DirichletZeroMultiplicity module. The generic core imports Mathlib only.

The first remaining GLOBAL source-return obligation is still the full explicit
formula: prove the appropriate contour identity and its limiting passage,
including zero-free boundary selection/horizontal-edge control and evaluation
of the actual logarithmic-derivative prime-power and archimedean integrals.
All prime powers, character phases, conductor, gamma/parity and dual-character
data, multiplicities, and both zeta pole orientations must remain. The local
coefficient theorems do not discharge those global steps, even given the
previous absolute-convergence candidate. Arithmetic positivity and varying-test
interpolation-cost/tail control remain separate. No RH or GRH conclusion.

RP-OC-01/B counting results are unchanged. RP-OC-02 receives the local
explicit-formula singular terms; A receives source-local provenance, not formal
admission. RP-OC-03--10, C--F, and the four higher-realization extensions are
untouched. No program is complete. Local attribution is grwtsk contributors.

Dated prior-art comparison: 2026-11-11. These are classical logarithmic
residue and completion arguments adapted to the exact pinned source. No novelty
claim or new frontier claim ID is introduced. Focused searches are not an
exhaustive literature audit; independent review remains NOT_RUN. No distinct
second proof is claimed. The unused newer DSlope API was not substituted for
the pinned API. Existing statuses and historical known failures are preserved.

## Pinned primary references

grwtsk contributors, [DirichletZeroMultiplicity.lean](https://github.com/grwtsk/math/blob/461230660ec980d4be6a0e00927d658d237e6866/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletZeroMultiplicity.lean), `CriticalStripZero`, `zeroMultiplicity`, `zeroMultiplicity_factorization`, `zeroMultiplicity_pos`, and `analyticOrderAt_LFunction_ne_top`; blob `ef9d9f861731f11e446dd59bd60c8896b1e5462d`. MIT. This is a local source prerequisite, NOT external novelty evidence. Its formal checks remain NOT_RUN.

David Loeffler, [Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean), `Gammaℝ_ne_zero_of_re_pos` and `differentiable_Gammaℝ_inv`; blob `09568288ef9897b1e3b0e0763dd31a9421b77616`. Apache-2.0.

David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `gammaFactor`, `completedLFunction`, `LFunction_eq_completed_div_gammaFactor`, and `completedLFunction_modOne_eq`; blob `89c72580697983d86706cff17ccbea2cee6475a3`. Apache-2.0.

David Loeffler, [Mathlib/NumberTheory/LSeries/RiemannZeta.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/RiemannZeta.lean), `completedRiemannZeta_eq`, `differentiable_completedZeta₀`, and `completedRiemannZeta_residue_one`; blob `b382f3d6c15762c9db38ddea5e1b572455631f27`. Apache-2.0. The executable theorem `completedRiemannZeta_eq`, not the introductory prose shorthand, fixes the two polar signs.

Chris Birkbeck, [Mathlib/Analysis/Calculus/LogDeriv.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/LogDeriv.lean), `logDeriv_apply`, `logDeriv_congr_nhdsNE`, `logDeriv_fun_mul`, `logDeriv_fun_zpow`, and the comparison theorem `AnalyticAt.tendsto_mul_logDeriv_simple_zero`; blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`. Apache-2.0.

## Declaration map

- `GRWTSK.NumberTheory.WeilNegativeWitness.gammaFactor_regular_of_re_pos`: [gammaFactor_regular_of_re_pos.md](gammaFactor_regular_of_re_pos.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos`: [completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos.md](completedLFunction_eq_LFunction_mul_gammaFactor_of_re_pos.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_zero_factorization`: [completedLFunction_zero_factorization.md](completedLFunction_zero_factorization.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.LFunction_logDeriv_principal_part`: [LFunction_logDeriv_principal_part.md](LFunction_logDeriv_principal_part.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_logDeriv_principal_part`: [completedLFunction_logDeriv_principal_part.md](completedLFunction_logDeriv_principal_part.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.LFunction_weighted_logDeriv_at_zero`: [LFunction_weighted_logDeriv_at_zero.md](LFunction_weighted_logDeriv_at_zero.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedLFunction_weighted_logDeriv_at_zero`: [completedLFunction_weighted_logDeriv_at_zero.md](completedLFunction_weighted_logDeriv_at_zero.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_factorization_at_zero`: [completedZeta_factorization_at_zero.md](completedZeta_factorization_at_zero.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_factorization_at_one`: [completedZeta_factorization_at_one.md](completedZeta_factorization_at_one.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_weighted_logDeriv_at_zero`: [completedZeta_weighted_logDeriv_at_zero.md](completedZeta_weighted_logDeriv_at_zero.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_weighted_logDeriv_at_one`: [completedZeta_weighted_logDeriv_at_one.md](completedZeta_weighted_logDeriv_at_one.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_weighted_logDeriv_at_strip_zero`: [completedZeta_weighted_logDeriv_at_strip_zero.md](completedZeta_weighted_logDeriv_at_strip_zero.md).
- `GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_two_oriented_exponential_limits`: [completedZeta_two_oriented_exponential_limits.md](completedZeta_two_oriented_exponential_limits.md).

## Reproduction boundary

Use a clean checkout at the publication commit recorded in math#1801, with the
unchanged pins above. The following command is UNEXECUTED, not an execution receipt:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.DirichletLogarithmicResidues
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
