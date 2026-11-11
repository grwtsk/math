# ComplexGammaGrowth

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
Status: SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. Coordination: math#1801, scope comment 6809854276.
Inspection main `317de5348928608432bad610ba41b86271da4778`; complete root tree `e017817b2cc69450c71b168f5d6db2ed58f9ed2b`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review,
repository-wide verification and arithmetic certification: **NOT_RUN**.
No Lean command was executed. Earlier candidates and known failures retain their
recorded status. Verified local canonical skill checkouts and Lean/Lake are absent.
The required proof-automation skill returned 404 at Noe main `f97b5ca1aa660fcc20ed6444e1448cffc9f3e247`;
dependent execution stopped. No proof runner, workflow, scheduler or cross-chat
operation was dispatched. Source text/hashes/publication are not proof acceptance.

Maintained source: [ComplexGammaGrowth.lean](../ComplexGammaGrowth.lean); 150 lines, 6712 UTF-8 bytes.
Git blob `a0cdbf9175ed8956f6001e60c466ab2e12d58e3b`; SHA-256 `bdaf7260af615b92a6238db37e36f23c97b65ec0fc98e81c9bbf401db7ebcb9d`.
Namespace `GRWTSK.SpecialFunctions.ComplexGammaGrowth`. Each declaration has its own exact-statement record in this directory.

## Complete analytical argument and domains

For t>0, R>=1 and 0<=a<=R, prove

    a*log(t) <= R*log(2R)+t/2.

When t<=1 the left side is nonpositive. When t>1, replace a by R and use
log(t/(2R))<=t/(2R)-1. Multiplying by the positive R and using
R*(t/(2R))=t/2 gives the inequality (with a surplus -R that can be dropped).
Setting a=sigma-1 for 1<=sigma<=R and exponentiating gives, on ALL t>0,

    exp(-t)*t^(sigma-1) <= exp(R*log(2R))*exp(-t/2).

For every complex z with 1<=Re(z)<=R, the actual Gamma Euler integral converges.
Its integrand's norm is exp(-t)*t^(Re(z)-1). The majorant is integrable on (0,infinity)
and its full integral is 2*exp(R*log(2R)). Integral norm comparison therefore gives

    norm(Gamma(z)) <= 2*exp(R*log(2R)).

There is no restriction on Im(z), no cutoff, no asymptotic threshold and no
independently chosen compact maximum. The endpoint Re(z)=1 is included.
For x>0, the principal complex power satisfies
norm(x^z)=exp(log(x)*Re(z)), hence is <=exp(R*abs(log(x))) when abs(Re(z))<=R.
Apply this at x=2*pi and exponent -z, and use the literal Deligne normalization
GammaC(z)=2*(2*pi)^(-z)*Gamma(z), to obtain

    norm(GammaC(z)) <= 4*exp(R*(log(2R)+abs(log(2*pi)))).

Finally, the exponential definitions of complex cosine and sine give both norms
<=exp(abs(Im(z))). These are used for the two genuine Dirichlet parity factors.
All estimates are deliberately nonoptimal; the constants are explicit.

## Consumer, source comparison and falsification boundaries

The arithmetic consumer is
`GRWTSK.NumberTheory.WeilNegativeWitness.norm_poleClearedLFunction_one_sub_le`
in [DirichletLFunctionLeftBounds](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletLFunctionLeftBounds.lean).
It applies these estimates after the reflected arithmetic variable has real part
at least 2. This supplies an actual source return, not a supplied Gamma-bound field.

The positive real t and x hypotheses are material: the power/log rewrites do not
apply at zero or arbitrary complex bases. Re(z)>=1 prevents the nonintegrable
endpoint majorant that would arise from dropping a negative power near zero.
The full Euler integrand and full majorant are proved integrable before comparison.
This bound concerns Gamma in its convergence region, not totalized values at its
poles. Negative real integers in the arithmetic application are handled through
reciprocal Gamma identities, not cancellation of singular factors.

A distinct classical route would bound the real Gamma function by factorials
using its recurrence and log-convexity. It is not implemented or independently
reviewed here. No independent second proof is claimed.

## Prior art and exact upstream correspondence

Dated comparison, 2026-11-11: Euler's integral is the classical formula recorded
in [DLMF 5.2.1](https://dlmf.nist.gov/5.2.E1), with Re(z)>0. The new inequalities
are elementary consequences; no novelty or direct numbered-paper formalization
is asserted. The executable proof sources are adaptations/local consequences of
the pinned Mathlib APIs, not of an unpinned search excerpt. Focused canonical
searches and relevant-tree inspection establish no corpus-wide absence.

## Pinned implementation sources

David Loeffler: [Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean), `Complex.Gamma_eq_integral; Complex.GammaIntegral; Complex.GammaIntegral_convergent`; Git blob `8aea69baf716966861315823d437f041abc7b9a4`. Apache-2.0.

David Loeffler: [Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean), `integrableOn_exp_mul_Ioi; integral_exp_mul_Ioi`; Git blob `e5944768a5833e19d8da7f7c5b7ad77e65fcfe0c`. Apache-2.0.

Chris Hughes, Abhimanyu Pallavi Sudhir, Jean Lo, Calle Sönne, Sébastien Gouëzel, Rémy Degenne and David Loeffler: [Mathlib/Analysis/SpecialFunctions/Pow/Real.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Pow/Real.lean), `Real.rpow_def_of_pos; Complex.norm_cpow_eq_rpow_re_of_pos`; Git blob `6e3f62550a758e94a1d513133cd744406b319e41`. Apache-2.0.

David Loeffler: [Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean), `Gammaℂ_def; inv_Gammaℝ_one_sub; inv_Gammaℝ_two_sub`; Git blob `09568288ef9897b1e3b0e0763dd31a9421b77616`. Apache-2.0.

Chris Hughes and Abhimanyu Pallavi Sudhir: [Mathlib/Analysis/Complex/Trigonometric.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Complex/Trigonometric.lean), `Complex.cos; Complex.sin, exponential definitions`; Git blob `d2ba6ae2970b5c003f4abb20b7b7d536b9f1297c`. Apache-2.0.
## Reproduction and evidence boundary

A clean checkout at the publication commit recorded in math#1801, with the unchanged
pins above, contains the maintained sources and exact individual statements. Proposed
command, NOT EXECUTED:

```sh
lake build GRWTSK.SpecialFunctions.ComplexGammaGrowth
```

After successful elaboration, run each record's `#print axioms` over the actual
transitive closure, review exact-statement correspondence and perform fresh kernel
replay. These are obligations, not receipts. No default root imports/pins are changed.
The coordinating issue records the actual source-only integrity command, exit code,
source hashes, changed paths and non-force expected-head publication/readback.
No publication/hash/lexical check upgrades the formal evidence status. Required
server-side protections remain binding. Local-only drafts are not canonical delivery.
