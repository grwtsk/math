# Full Gamma logarithmic-derivative bounds from source amplitudes

Attribution: grwtsk contributors. Date: 2026-11-11.
Scope: math#1801, comment 6814543294.
Inspected main: `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source: [../GammaLogDerivativeBounds.lean](../GammaLogDerivativeBounds.lean).
Primary MSC2020: 33B15; secondary: 30C80, 11M41.

## Evidence and source consumer

The Lean bodies are SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay,
transitive axiom auditing and independent review: NOT_RUN. Imported candidates
retain their actual statuses. The written argument below is separate from formal
verification. Novelty UNASSESSED; no new mathematical result is claimed.

The consumer is [the completed Dirichlet horizontal-boundary theorem](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCompletedHorizontalLogDerivative.provenance/README.md).
It needs the norm of the FULL complex logarithmic derivative, not just its real
part, zero divisor, centered multiplier or a selected set of heights.

This uses the existing reflection/Euler-integral source estimates and constructed
normalized disk logarithm. It does not depend on CenteredDigammaShift.lean or
identify that module's shifted residual with zero. In particular, an upper norm
bound is not a positivity theorem for the centered archimedean term.

## Exact constants and statement

Let Gamma be the actual analytically continued Gamma function and psi=Gamma'/Gamma.
Put

    M = 2 exp(7 log 14),
    A = 2 exp(4 log 8) / pi,
    B = 1 + |log M| + |log A|,
    D = 80(B + pi) + 3,
    C_Gamma = D + |Log(pi)|.

Here Log(pi) is the complex principal logarithm of a positive real number; its
norm is used literally in the Lean constant. M,A,B,D,C_Gamma are positive finite
expressions, independent of height, character, conductor and test function.
No numerical approximation of these constants is used.

The core derives, for every z with -1/2 <= Re z <= 3/2 and |Im z| >= 1,

    |psi(z)| <= D(1+|Im z|).                                  (1)

For GammaR(s)=pi^(-s/2) Gamma(s/2), it proves at every nonreal s the exact identity

    logDeriv GammaR(s) = [psi(s/2)-Log(pi)]/2,                  (2)

and for -1 <= Re s <= 3, |Im s| >= 2,

    |logDeriv GammaR(s)| <= C_Gamma(1+|Im s|).                 (3)

The extended real-part interval contains both s and s+1 for the actual even and
odd Dirichlet factors. The estimates use |Im s| and therefore cover both signs.

## 1. Quantitative anchor from the actual reflection bound

For |y|>=1, the canonical ReciprocalGammaStrip.norm_inv_Gamma_le_strip at
w=1+iy gives

    |Gamma(w)^(-1)| <= A exp(pi |y|).

Gamma(w) is nonzero, proved from Re w=1 before converting this inequality to

    |Gamma(1+iy)| >= eta_y := 1/[A exp(pi |y|)] > 0.

If Re v>=1, the actual recurrence Gamma(v+1)=v Gamma(v) and |v|>=Re v>=1
imply |Gamma(v+1)|>=|Gamma(v)|. Three such steps prove

    |Gamma(4+iy)| >= eta_y.                                  (4)

This is the declaration gamma_four_anchor. It neither assumes a sampled value
nor treats Gamma's totalized values at its real poles as ordinary analytic values.
The private norm_Gamma_le_add_one is precisely this recurrence inequality.

## 2. One disk ceiling, independent of the height

Fix c=4+iy and put g(u)=Gamma(c+u). On |u|<11/4,

    5/4 < Re(c+u) < 27/4,

so in particular 1<=Re(c+u)<=7. The existing Euler-integral theorem
ComplexGammaGrowth.norm_Gamma_le_envelope with R=7 proves |g(u)|<=M.
The same real-part inequalities prove differentiability and nonvanishing of g
throughout this disk. There is no height-dependent compact supremum or unproved
Gamma growth hypothesis.

The canonical NormalizedDiskLogarithm.exists_normalized_log_bounded constructs
L, normalized by L(0)=0, such that

    g(u)=g(0) exp L(u),  L'(u)=g'(u)/g(u),
    Re L(u) <= log(M/eta_y) = log M + log A + pi |y|.

Consequently Re L <= H_y := B+pi|y|, with H_y>0. This is a holomorphic lift of
g/g(0), not a choice of the principal logarithm of g at disconnected sample points.

The canonical Borel-Caratheodory/Cauchy estimate proves |L'(u)|<=80 H_y on
|u|<=9/4. For 2<=Re z<=6 and y=Im z, the point u=z-c is the real number
Re z-4, so |u|<=2<9/4 and c+u=z. The affine derivative is exactly one.
HasDerivAt.logDeriv_Gamma returns the constructed derivative to the actual psi:

    |psi(z)| <= 80(B+pi|Im z|).                              (5)

The theorem norm_digamma_le_right_band has no logarithm, amplitude or derivative
supplier among its premises; all are constructed from Gamma.

## 3. Return to the original strip without an infinite-limit premise

For -1/2<=Re z<=3/2, the shifted point z+3 lies in the band of (5). Since
|Im z|>=1, no z+k is a Gamma pole, and |(z+k)^(-1)|<=1 for k=0,1,2.
The pinned actual digamma recurrence gives the finite equality

    psi(z)=psi(z+3)-sum_{k=0}^2 (z+k)^(-1).

The triangle inequality therefore yields

    |psi(z)| <= 80(B+pi|Im z|)+3 <= D(1+|Im z|),

which is (1). No asymptotic or residual at infinity is dropped. This is the
substantive distinction from merely iterating a recurrence and postulating a
vanishing shifted remainder.

## 4. Exact archimedean normalization

At nonreal s, s/2 avoids every nonpositive integer. The nonzero factor
pi^(-s/2) has logarithmic derivative -Log(pi)/2. The chain rule for Gamma(s/2)
has the factor 1/2. The product logarithmic derivative gives (2), after proving
regularity and nonvanishing of both factors. With |Im s|>=2, the point s/2 is
in the domain of (1). The triangle inequality, |Im(s/2)|=|Im s|/2 and a harmless
enlargement of the coefficient give (3). Neither pi nor the chain factor is
silently omitted from the equality.

## Hostile checks and alternative route

A zero-free function exp(bz) has arbitrarily large logarithmic derivative; thus
nonvanishing alone cannot prove (5). Here both the whole-disk ceiling and the
independent same-height amplitude anchor are essential and source-derived.
The real poles demonstrate why the imaginary-part lower bounds cannot be
removed by using totalized function values. Endpoints of the stated real strips
and the height thresholds are retained. The logarithm's positive ceiling is
ensured by the added 1 in B, even when an amplitude ratio is one.

DLMF 5.9.16 supplies a classical alternative integral route to digamma estimates;
DLMF 5.7.6 supplies a partial-fraction route. These identities have not been
formalized or used as new assumptions here. Recurrence alone permits periodic
perturbations, so it would not identify the centered residual. The present source
bound is neither that identification nor an independent review of its argument.

## Exact provenance and verification obligations

Classical primary locators, accessed 2026-11-11:
- NIST DLMF Chapter 5, R. A. Askey and R. Roy,
  [5.2.1](https://dlmf.nist.gov/5.2.E1): Euler integral for Re z>0.
- [5.5.1](https://dlmf.nist.gov/5.5.E1) and
  [5.5.3](https://dlmf.nist.gov/5.5.E3): Gamma recurrence and reflection, with
  pole exclusions. [5.5.2](https://dlmf.nist.gov/5.5.E2): digamma recurrence.
- [5.9.16](https://dlmf.nist.gov/5.9.E16): alternative integral, NOT an imported
  formal theorem or a new proved premise of this module.

Pinned primary formal sources (Mathlib, Apache-2.0):
- Thomas Browning, Analysis/SpecialFunctions/Gamma/Digamma.lean,
  digamma_def, digamma_apply_add_nat, HasDerivAt.logDeriv_Gamma;
  blob `7a13afbf72c57f912beea85d5325ca7da3e66ed1`.
- David Loeffler, Gamma/Deligne.lean, GammaR definition; blob
  `09568288ef9897b1e3b0e0763dd31a9421b77616`.
- Chris Birkbeck, Analysis/Calculus/LogDeriv.lean, product/chain rules;
  blob `08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9`.

Canonical source candidates at the inspected math main (MIT; grwtsk contributors):
- ComplexGammaGrowth.lean, norm_Gamma_le_envelope; blob
  `a0cdbf9175ed8956f6001e60c466ab2e12d58e3b`.
- ReciprocalGammaStrip.lean, norm_inv_Gamma_le_strip; blob
  `ed73e42a597153c4168308c8192b2d02890cb1a7`.
- NormalizedDiskLogarithm.lean, exists_normalized_log_bounded; blob
  `502dd7b5b0e1b2e4383db5792972b95368264168`.
- NormalizedLogDerivativeBound.lean, norm_deriv_log_le_eighty; blob
  `c123cccfcc465ace08cf11b19458e6a1d3fc658e`.

Every exported declaration has an individual exact-statement record. Private
pole-exclusion helpers use real/imaginary coordinates of nonpositive integers;
private norm_Gamma_le_add_one uses only the genuine finite recurrence above.
No corpus-wide novelty audit is claimed; code search returned no useful matches,
while direct reads found and reused the relevant canonical source chain.

Proposed check, NOT EXECUTED:

    lake build GRWTSK.SpecialFunctions.GammaLogDerivativeBounds

Follow by fresh kernel replay and transitive axiom queries for every declaration,
including the canonical imported chain. No local Lean/Lake or verified canonical
skill checkout was present. The required proof-automation skill returned 404 at
Noe revision `a5ef0a774b3e5decabc2ed2885108805ea7022bc`; dependent execution stopped.
Source integrity and publication observations are recorded in math#1801, not
promoted to compiler or kernel evidence. Existing source failures and historical
unrun statuses are not erased by this new candidate.
