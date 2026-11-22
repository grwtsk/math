# Canonical finite-sine source output: exact identification and row error

Local attribution: grwtsk contributors.
Owner: [WeilFiniteSineGammaQuadrature.lean](WeilFiniteSineGammaQuadrature.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineGammaQuadrature`.
Primary MSC2020: 11M06; supporting: 46E30, 47B25, 65G20.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

## Exact target and what is newly discharged

Fix T>0, beta real, M a natural number (including 0), and c:Fin M->R.
Use the ORIGINAL normalized zero-extended sine synthesis

    f_c(t)=sum_(n=1)^M c_n T^(-1/2)sin(n*pi*t/T) 1_[-T,T](t).

Its physical class is `FiniteSineOperator.finiteInput T c`. Its canonical
operator output is

    sourceOperator T beta hT (finiteDomain T hT beta c)
      = finiteOutput T hT beta c.

The physical source is the existing signed gamma, complete active prime-power,
and pole output. The unbordered pole port is exactly

    a=-2 integral f_c(t)sinh(t/2) dt.

The physical epsilon-shift is beta=-epsilon. The auxiliary pole port is not
a physical coordinate and receives no new epsilon mass.

This increment proves-in-source that the actual canonical output is the sum
of the projected Bochner gamma row and the unchanged bounded source remainder.
It also derives the requisite translation slope directly for these finite
sines. The final canonical-output estimate has NO additional `hsource`
equality hypothesis and NO externally supplied regularity premise.

## Complete primary argument

### Whole-line slope from finite support, including boundary strips

Let F be globally K-Lipschitz, K>=0, and zero outside [-T,T]. Let f be its
physical L2 class. For every real r and t,

    |F(t+r)-F(t)|^2
      <= K^2 r^2 (1_[-T,T](t)+1_[-T,T](t+r)).             (1)

When both indicators vanish, both function values vanish. Otherwise the
Lipschitz estimate proves (1). Integrating the two indicators gives 4T,
independently of r, since whole-line translation preserves Lebesgue measure.
Therefore

    ||tau_r f-f||_2 <= 2 sqrt(T) K |r|.                  (2)

This argument needs neither a weak derivative API nor an H2 extension.
The original sine's endpoint zeros give its global Lipschitz property via
its existing clamp representation. Summing its Lipschitz constants gives

    K(c)=sum_n |c_n| (n*pi/T)/sqrt(T),
    D(c)=2sqrt(T)K(c)=2sum_n (n*pi/T)|c_n|.               (3)

The Lean `sineLipschitz` uses nonnegative-real constants and absolute
frequencies so no sign convention is hidden. `slopeBound_eq` identifies the
corresponding finite weighted coefficient norm. The bound is deliberately
conservative: it does not claim the sharp derivative-L2 constant.

### All-test identification of the canonical gamma output

Define gammaPart to be the Lp class of the pre-existing pointwise expression

    1_[-T,T](t) gammaOutput(f_c)(t).

Its L2 membership follows from the existing finite-sine global Lipschitz and
boundedness theorems. For every supported physical L2 test g, compact support
also gives L1 integrability. The canonical `window_gammaOutput_finiteSine_pair`
therefore proves

    <g,gammaPart>=gammaPairing g f_c.                    (4)

The previous module proves, with (2) now supplied,

    <g,G(f_c)>=gammaPairing g f_c

for every physical L2 g. For an arbitrary physical test use P_T g in (4).
The indicator projection is self-adjoint, and gammaPart is supported, giving

    <g,gammaPart>=<g,P_T G(f_c)> for EVERY g in L2.

Nondegeneracy of the Hilbert inner product proves

    gammaPart=P_T G(f_c).                               (5)

This is not inferred from a finite set of Fourier coefficients or a sampled
comparison. It uses all physical tests. The original scalar source pairing
is carried through almost-everywhere representative identities.

### Exact signed remainder and complete output estimate

Let B_beta f_c be the ORIGINAL `primePoleOutput` at the minimizing port above.
It contains the constant gamma term, beta physical shift, both prime-translation
orientations, every active prime power, and the negative pole contribution.
Set

    That_beta f_c=quadratureRow(T,x,N,f_c)+B_beta f_c.

The existing canonical output decomposes as gammaPart+B_beta f_c. Substituting
(5) cancels the SAME signed bounded remainder from the error. For every mesh

    x monotone, x(0)>0, x(N)>=2T, eta>=0,
    x(i+1)-x(i)<=eta*x(i) for all i<N,

we obtain

    ||sourceOperator_beta f_c-That_beta f_c||_2
      <= delta D(c),  delta=x(0)+x(0)^2+5eta.             (6)

Thus only the already-controlled gamma approximation enters this exact
error. In an actual finite calculation, any scalar/shift rounding of B_beta
must be paid separately; the mathematical definition here keeps it exact.
The same caution applies to the integrated kernel weights and tail coefficient.

For every w in the original maximal form domain,

    |sourceForm_beta(f_c,w)-<That_beta f_c,input(w)>|
      <=delta D(c)||input(w)||_2.                        (7)

This follows from the existing canonical all-domain operator pairing and
Cauchy--Schwarz. It provides a usable trial-row residual bound, not an
unconditional lower sign of the full arithmetic form.

## Uniform finite coefficient budget and Schur consumer

For omega_n=n*pi/T, finite Cauchy--Schwarz gives

    D(c)^2 <=4M sum_n omega_n^2 |c_n|^2.                 (8)

For a coefficient synthesis c=Cv, a completely explicit positive-semidefinite
row-error budget is therefore

    E_row=4M delta^2 C^* diag(omega_n^2) C.               (9)

Equations (8)--(9) are written finite algebra consequences, not new Lean
matrix-order declarations in this increment. They avoid claiming the sharper
derivative Gram has already been formalized. The dimension penalty can be
large, but every fixed finite stage has a finite, explicit tolerance budget.

For an orthogonal high projection P_W and genuine floor a_epsilon>=mI,

    ||P_W T_epsilon Uv||
      <=||P_W That_epsilon Uv||+delta D(Cv).

For any t>0, Young's inequality and energy-dual coercivity give the full
residual allowance

    ||r_v||_(a_epsilon^*)^2
      <= ((1+t)||P_W That_epsilon Uv||^2
            +(1+t^(-1))v^*E_row v)/m.                  (10)

The middle-quadrature pairing error has no fixed sign. It needs the existing
one-sided trial allowance; positivity of the omitted near gamma energy does
not remove that allowance. A bounded finite-translation approximation also
cannot replace the unbounded true gamma operator in a high-floor argument.

The direct consumer is the existing energy-residual/literal-window route.
The older `FlexibleStageHeadSource` requires its prescribed
`completeRemoteAllowance`; (10) does not automatically compare to that larger,
specifically defined allowance. Neither packet type nor RH target is changed.
No successful Schur matrix or universal/cofinal family is manufactured.

## Declaration correspondence

| Declaration | Exact scope |
| --- | --- |
| `translationSlope_of_lipschitz_support` | Equations (1)--(2), original L2 class and any signed lag. |
| `sineLipschitz`, `finiteSine_lipschitz` | Explicit finite global constant for the canonical sine synthesis. |
| `slopeBound`, `slopeBound_nonneg`, `slopeBound_eq` | Nonnegative and explicit weighted coefficient budget. |
| `finiteInput_translationSlope` | Supplies regularity for the existing physical finite input. |
| `gammaPart`, `gammaPart_ae`, `gammaPart_supported` | Original pointwise gamma output's Lp class. |
| `gammaPart_pair` | Exact pairing against every supported physical L2 vector. |
| `gammaPart_eq_fullRow` | Equation (5), by all-test uniqueness. |
| `primePolePart`, `primePolePart_ae` | Original signed bounded source at the exact negative-pole port. |
| `finiteOutput_decomposition` | Source identity from original a.e. formulas. |
| `approximateOutput` | Finite-translation gamma row plus unchanged arithmetic remainder. |
| `finiteOutput_error_le` | Complete physical norm estimate, all finite coefficient vectors. |
| `sourceOperator_error_le` | Equation (6) for the existing associated source operator. |
| `sourceForm_pairing_error_le` | Equation (7) for every maximal-domain test. |

## Source-local provenance, comparison and hostile checks

Source base: `grwtsk/math@300b564894b2c6fe44424ae4a4da9a8170d4c50d`.
These are local consequences, not a direct import or re-formalization of an
external paper. Canonical dependencies retain their existing provenance:

- `WeilOddGammaOutput.lean`, blob
  `b8513ef86ef6b18f7f4247967fd6ace194a0af36`:
  `lipschitzWith_zeroExtendedSine`, `norm_finiteSine_le`,
  `finiteSine_memLp`, and `window_gammaOutput_finiteSine_pair`.
- `WeilFiniteSineOperator.lean`, blob
  `c504693911bd7a8ee9e1dec909fa41480c185013`:
  `finiteInput`, `finiteOutput`, `finiteDomain`, `polePort`,
  `sourceOperator_finiteDomain`, and `finiteLift_sourceForm`.
- `WeilOddConcreteResidual.lean`, blob
  `ea7560ba79eb43dccd1438dc0cf1c13e7ed98e36`:
  `borderedTrialOutput`, the original gamma-plus-prime/pole decomposition.
- `WeilGammaBochnerRow.lean`: integrable whole-row pairing, support-separated
  far row, and the actual restricted-row quadrature bound.
- Pinned Mathlib Lp source listed in the preceding note: representative
  invariance, translation-preserving integrals, finite norm operations.

The exact source pointwise-output argument and the new Bochner all-test
argument meet at (5). They share the same translated-difference identity,
so they are not represented as independent proof reviews. No novelty claim.
Prior-art completeness: UNASSESSED.

Hostile controls: a sharp interval indicator violates the linear translation
slope as r tends to zero; a raw interval derivative cannot replace the global
Lipschitz or H1 extension condition. Setting the pole port to zero would erase
-2p(f)^2 and would NOT give the stated canonical output. Equality on finitely
many sine tests is insufficient for (5), which uses every supported L2 test.
Approximating rows at every finite dimension does not prove their signs.
No complex-character phase or Dirichlet GRH transfer follows from this real
odd-sector construction.

## Evidence and remaining obligations

Lean 4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
SOURCE_PROOF_CANDIDATE. Elaboration, exact expected signatures, fresh kernel
replay, transitive axiom audit, complete dependency replay, certified arithmetic
and independent review: NOT_RUN. New source may need elaboration repairs.
No prior candidate status is promoted. Static source checks and publication
readback have their limited scope only; observations belong in math#1837.

Still OPEN: an implemented outward finite spatial Gram evaluator, all scalar
rounding enclosures, its complete source-residual matrix bound, successful
signed Schur inequalities with independently proved true high floors, and
cofinal successful certificate existence. The new finite-sine row identity
and translation regularity do not assume these conclusions.
