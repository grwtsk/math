# An exact local arithmetic sign certificate across a zeta prime-power activation

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).

## Scope, source and verification boundary

This is a completed **written analytical argument**, with a local exact-rational
finite arithmetic check. It proves a nonzero two-parameter region of positivity
for the **whole complex exponential endpoint span** of the actual zeta Weil form.
It neither proves positivity on the full test domain nor resolves bounded
modulation for arbitrary windows. No RH or GRH hypothesis, external 7/8 strip,
zero enumeration, imprimitive transfer, or auxiliary positive replacement form
is used. No new Lean declaration or kernel proof is asserted. The Python
certificate checks rational inequalities only; it is not a substitute for
formalizing the source-to-form identity.

Initial source inspection: `grwtsk/math/main` commit
`194093839e3f2bff2f2767fcf415dc12ee4d21d4`, complete root tree
`cdf0ee38b897c0ede762712788de770537d5f3bc`.
Lean pin: `leanprover/lean4:v4.34.1`; mathlib pin:
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: `grwtsk/math#1801`. No root import, pin, old theorem, policy or
workflow is changed. Attribution: grwtsk contributors. Originality: UNASSESSED.
Independent analytical review, Lean elaboration, complete dependency build,
fresh kernel replay, transitive axiom audit and repository-wide validation:
NOT_RUN. Source-local exact-rational assertions: RUN locally, exit 0; see the
adjacent certificate and its precise scope. No claim of external numerical
certification or transitive theorem verification is made.

The exact source is the positive-gamma, signed-prime, pole-inclusive form
from [PrimitiveWeilNeumannSchur.md](PrimitiveWeilNeumannSchur.md), equation (2):

    Q_zeta,L(f)=c_zeta ||f||_2^2 + Gamma_(1/2)(f)
                 - <f,P_L f> + <f,R_L f>,
    c_zeta=-log(pi)+psi_Gamma(1/4),
    P_L=sum_(n>=2,log n<L) Lambda(n)/sqrt(n)
                       [T_(log n)+T_(log n)^*],
    R_L(x,y)=exp((x-y)/2)+exp(-(x-y)/2).

All functions on (0,L) are extended by zero, and the L2 inner product is
conjugate-linear in its first variable. `Gamma_b` uses the entire kernel
`k_b(s)=exp(-b*s)/(1-exp(-2*s))`, including its infinite tail. The physical
convention for primitive characters remains unchanged. This paper is a zeta
specialization and claims no new complex-character identity.

Let `u_L(x)=exp(-x/2)`, `v_L(x)=exp(-(L-x)/2)` on `0<x<L`, and
`M_eta g(x)=exp(i*eta*x)g(x)`. These endpoint functions lie in the
logarithmic gamma form domain, but their zero extensions are not assigned
H1 regularity. By the form-core argument of WGPC-v1-1 and the boundedness of
the prime and pole operators at fixed L, their strict positive margin also
persists on sufficiently close **smooth** admissible tests. No positivity
is inferred on arbitrary smooth tests.

## WEL4-v1-1. Exact source entries at the activation L=log 4

Let `ell2=log 2`, `ell3=log 3`, `ell5=log 5`,
`K=EulerGamma+log pi`, and `Li2(t)=sum_(k>=1) t^k/k^2` for `0<t<1`.
Set `L0=2*ell2=log 4`, and write

    D(L)=Q_zeta,L(u_L)=Q_zeta,L(v_L),
    B(L)=Q_zeta,L(u_L,v_L) in R.

The **exact** values are

    D0 = ell2/2 + (5/4)*ell5 - (11/12)*ell3 - (3/4)*K,       (1)
    B0 = 9/8 + pi^2/12 - Li2(1/4)/2 - K*ell2
                        - (3/4)*ell2^2
                        - (2/3)*ell3*(2*ell2-ell3).        (2)

Proof: WEGR-v1-1 provides the original form's two diagonal and mixed
exponential entries for both gamma parities. Here `t=e^(-L0)=1/4` and
`sqrt(t)=1/2`. The original strict prime-power cutoff contains n=2,3;
n=4 is at equality and its overlap is zero, so it can be included with
coefficient zero without changing any sum. Every active von Mangoldt
coefficient is retained:

    <u,P_L0 u> = ell2/2 + ell3/6,
    <u,P_L0 v> = (3/4)*ell2^2
                    +(2/3)*ell3*(2*ell2-ell3).

The two actual pole orientations give

    <u,R_L0 u> = 3*ell2,
    <u,R_L0 v> = 9/8+2*ell2^2.

The full gamma evaluations (not a truncated quadrature) are

    Gamma_(1/2)(u) = (3/8)*pi + (5/4)*ell2 + h(1/4),
    Gamma_(1/2)(u,v) = (pi/2)*ell2 + ell2^2
                                     +pi^2/12-Li2(1/4)/2,
    h(1/4)=(5/4)*ell5-(3/4)*ell3-ell2.

Finally `psi_Gamma(1/4)=-EulerGamma-pi/2-3*ell2`,
`||u||^2=3/4`, and `<u,v>=ell2`. Substitute these terms into the
**unchanged** form and simplify to (1)-(2). Reflection gives equality
of the two diagonal entries. This proof keeps the negative scalar and both
zeta poles; their individual signs are not manipulated.

## WEL4-v1-2. Strict rationally enclosed endpoint eigenvalue

The adjacent mathematical fixture
[`WeilLogFourEndpointCertificate.py`](WeilLogFourEndpointCertificate.py)
uses only exact `fractions.Fraction` operations. It proves

    59/1000 < D0,                0 < B0 < 1/20,            (3)
    D0-B0 > 9/1000.                                       (4)

There is **no floating-point sign decision**. The proof ingredients for
this finite check, all implemented as rational interval inclusions, are:

1. Machin's identity `pi=16 atan(1/5)-4 atan(1/239)`; each `atan` is
   enclosed by its finite alternating odd-power series and the next term.
   The identity follows from the tangent subtraction law, with its angle
   in `(0,pi/2)`.
2. For rational `x>1`, with `y=(x-1)/(x+1)`,
   `log x=2 sum_(k>=0)y^(2k+1)/(2k+1)`. After N terms its omitted positive
   tail is at most `2*y^(2N+1)/((2N+1)*(1-y^2))`.
   This encloses `log2`, `log3`, `log5` and `log pi`, the last by monotonicity
   at the previously enclosed rational endpoints of pi.
3. For n=100, with `H_n=sum_(k=1)^n 1/k`, the elementary trapezoidal
   remainder for `1/x` proves

       H_n-log n-1/(2n) < EulerGamma
              < H_n-log n-1/(2n)+1/(8n^2).               (5)

   Indeed the difference of successive lower approximations is the
   trapezoidal error on `[n,n+1]`: it lies between zero and
   `(1/4) integral_n^(n+1) x^(-3) dx`, as follows by twice integrating
   by parts. Sum over the entire tail. The fixture obtains `log 100`
   exactly as `2 log 2+2 log 5`, with interval endpoints in the proper
   directions.
4. `Li2(1/4)` is enclosed by its first 16 rational terms, with a positive
   remainder at most `(1/4)^17/(17^2*(1-1/4))`.

All final bounds (3)-(4) are comparisons of exact rational numbers. The
printed decimal endpoints are informative only. The finite script proves
**only** these scalar inclusions and the elementary slack assertions;
(1)-(2) and the entire-form return are written mathematics, not statements
proved by that script.

For any `z,w` in C, the original matrix at L0 obeys

    Q_zeta,L0(z*u_L0+w*v_L0)
      = D0*(|z|^2+|w|^2)+2*B0*Re(conj(z)*w)
      >= (9/1000)*(|z|^2+|w|^2).                          (6)

This is an *actual arithmetic sign certificate* at an unmodulated support
length strictly beyond the first-prime threshold `log 2`. It is not a
finite-zero-head certificate and needs no zero locations.

## WEL4-v1-3. An explicit uniform modulation perturbation bound

For every `L>0` and unmodulated form-domain envelope g, set
`Psi_b(eta)=2 integral_(0,infty) k_b(s)*(1-cos(eta*s)) ds`.
The full-line translation identity gives

    |Gamma_b(M_eta g)-Gamma_b(g)|
       <= 2*sqrt(Gamma_b(g)*Psi_b(eta))*||g||
                   +Psi_b(eta)*||g||^2.                  (7)

For `b=1/2`, expand the entire geometric gamma kernel to obtain

    Psi_b(eta)=sum_(j>=0) 2*eta^2/
                 ((b+2j)*((b+2j)^2+eta^2))
       <=eta^2*(2/b^3+1/(2b^2))=18*eta^2.               (8)

The bound uses the integral comparison
`sum_(j>=0)(b+2j)^(-3)<=b^(-3)+(1/4)*b^(-2)`,
so no gamma tail is omitted.

Now suppose `|L-L0|<=1/10000`, `|eta|<=1/10000`, and put
`g=z*u_L+w*v_L`. In this neighborhood `3.9<exp L<4.1`,
`0.24<exp(-L)<0.26`, `1.38<L<1.4`. Its L2 Gram matrix gives

    ||g||^2 <=(1-exp(-L)+L*exp(-L/2))(|z|^2+|w|^2)
            <(3/2)(|z|^2+|w|^2).                         (9)

WEMC-v1-4 proves by direct correlation integration, for both parities,
`Gamma_b(g)<=2*pi*(|z|^2+|w|^2)`. Since `pi<22/7`, (7)-(9)
give, in this entire rectangle,

    |Gamma_(1/2)(M_eta g)-Gamma_(1/2)(g)|
                          < 29*|eta|*(|z|^2+|w|^2).     (10)

For the actual finite prime powers n=2,3 and possibly n=4,
unitary conjugation gives `M_eta^* T_(log n) M_eta
=exp(i*eta*log n)*T_(log n)` and therefore

    ||M_eta^* P_L M_eta-P_L||
      <=2|eta|*sum_(n=2,3,4) Lambda(n)*log n/sqrt(n).

Using `log2<0.7`, `log3<1.1`, `sqrt 2>1.4` and
`sqrt 3>5/3`, this is less than `(10/3)*|eta|`;
by (9) its quadratic value is bounded by

    |<M_eta g,P_L M_eta g>-<g,P_L g>|
                          < 5*|eta|*(|z|^2+|w|^2).      (11)

At `n=4`, the coefficient is included only for `L>log4` and uses
`Lambda(4)=log2`, not `log4` or a fabricated prime. At equality its
shift vanishes. The bound is uniform across that activation.

The original two-orientation zeta pole operator has eigenvalues
`L+2sinh(L/2)`, `L-2sinh(L/2)`. Thus its norm in this rectangle is
less than 3, including its **negative** eigenvalue. Since
`||(M_eta-I)g||<=L|eta|*||g||`, (9) yields

    |<M_eta g,R_L M_eta g>-<g,R_L g>|
                         <13*|eta|*(|z|^2+|w|^2).       (12)

The scalar is modulation-invariant. Summing (10)-(12) gives the fully
source-exact comparison

    |Q_zeta,L(M_eta g)-Q_zeta,L(g)|
                <= 50*|eta|*(|z|^2+|w|^2).              (13)

This comparison has **no** assumed sign of the full Weil form.

## WEL4-v1-4. Support stability through the newly active prime power

For `eta=0` retain the exact real matrix entries `D(L),B(L)` from
WEGR-v1-1, with n=4 activated continuously at `L=log4`.
For L in the same rectangle, including both sides of `log4`,

    |D(L)-D(L0)| <= 8*|L-L0|,
    |B(L)-B(L0)| <= 16*|L-L0|.                            (14)

Here are explicit complete derivative budgets on each open subinterval
where the active prime-power inventory is constant. Put
`t=exp(-L)`, `X=exp L`, `d=1-t`, and
`A0=pi/2+log2`, `B_gamma=pi/2+3log2`,
`C_gamma=pi/2+2log2`. The entire gamma entries are

    G(L)=Gamma_(1/2)(u_L)
        =A0+t*(2L-B_gamma)+h(t),
    J(L)=Gamma_(1/2)(u_L,v_L)
        =sqrt(t)*(C_gamma*L-L^2/2+pi^2/6-Li2(t)).

Their derivatives satisfy

    G'(L)=t*(B_gamma-2L-log(1-t^2)),
    J'(L)=sqrt(t)*[C_gamma-L-log(1-t)
              -(C_gamma*L-L^2/2+pi^2/6-Li2(t))/2].

The source's other entries are

    p_D(L)=2*sum_(log n<L) Lambda(n)*(1/n-t),
    p_B(L)=sqrt(t)*sum_(log n<L)
                    Lambda(n)*(L-log n)*(1+1/n),
    R_D(L)=2L*(1-t),
    R_B(L)=sqrt(t)*(X-2+t+L^2),
    D(L)=c_zeta*d+G(L)-p_D(L)+R_D(L),
    B(L)=c_zeta*L*sqrt(t)+J(L)-p_B(L)+R_B(L).

The elementary bounds `|c_zeta|<6`, `B_gamma<4`, `C_gamma<4`,
`pi^2/6<2`, `Li2(t)<1`,
`-log(1-t)<1/2`, `-log(1-t^2)<1/5`,
`0.24<t<0.26`, `sqrt(t)<0.52`, `L<1.4`, `X<4.1`, and
`sum_(n=2,3,4)Lambda(n)<2.5` give the following absolute
budgets, each uniform on both open sides of the activation:

    D':  c_zeta*d' <1.56, |G'|<1.82,
         |p_D'|<1.30, |R_D'|<2.73; sum <8.
    B':  |(c_zeta L sqrt(t))'|<3.12, |J'|<5.57,
         |p_B'|<3.01, |R_B'|<3.76; sum <16.

Here `p_D`, `p_B` are continuous at `log4`, since both new
prime coefficients contain a taper vanishing there. There is no claim
their derivatives coincide across that point. Apply the mean-value
inequality on both sides separately and add them to prove (14).
This also checks exactly the new n=4 power rather than neglecting it.

## WEL4-v1-5. A quantified two-parameter positivity region

**Theorem.** For every real pair `L,eta` with

    |L-log4|<=1/10000,       |eta|<=1/10000,              (15)

and all `z,w in C`, the **same** full pole-inclusive arithmetic form obeys

    Q_zeta,L(z*u_(L,eta)+w*v_(L,eta))
                  >=(1/1000)*(|z|^2+|w|^2).              (16)

In particular, since its L2 Gram eigenvalues are less than `3/2`,

    Q_zeta,L(f)>=(1/1500)*||f||_2^2

for every `f` in this two-dimensional modulated endpoint span.

Proof: (6), then (14), give at eta=0

    Q_zeta,L(z*u_L+w*v_L)
        >=[9/1000-24|L-L0|]*(|z|^2+|w|^2).

Apply (13). Under (15), the coefficient lower bound is strictly greater than

    9/1000 - 24/10000 - 50/10000 = 16/10000 > 1/1000.

No zero-free strip is used. The conclusion is a continuum of primitive
arithmetically defined zeta tests, but is **not** universal Weil
positivity; the all-window unmodulated mixed sign and entire form-domain
complement remain unresolved. The statement neither supplies the universal
`WeilNegativeWitness.hpositive` nor proves RH/GRH.

## Hostile checks, prior art, consumers, and verification

- For `L<log2`, the prime operator is empty; the present argument instead
  works at and across `log4`, after prime powers n=2 and n=3 are active.
  The n=4 activation contributes a zero taper at equality. No primes or
  prime powers at or beyond n=5 enter the neighborhood.
- At `eta=0`, formulas (1)-(2) give the entire matrix with the true
  negative scalar and two signed pole orientations, not a shifted positive
  model. The gap is `D0-B0`, not `D0` alone.
- The estimate for Gamma uses the complete infinite multiplier and is
  valid on the logarithmic domain, including endpoint jumps. The argument
  never assumes a finite H1 energy for zero extensions.
- The pole perturbation uses its **operator norm**, including the negative
  eigenvalue. Declaring the pole form positive would be false.
- No claim is made that the modulated two-dimensional spaces span the
  entire form domain with sign-preserving polarization. The off-line
  synthetic pair of WEPD-v1-2 remains a valid falsification check for
  termwise zero-orbit positivity.
- The result can be consumed as an exact small-window source-sensitive
  regression test by the signed Neumann/Schur program. It is not a bound
  for the infinite complement, nor a replacement for the universal
  primitive-character inequality. A nonempty open subset of tests cannot
  discharge a universal positivity quantifier.

Comparison (2026-11-12): WEGR-v1-1 already gives the general endpoint
entries; WEMC-v1-2–4 supplies the complete modulation multiplier and gamma
span upper bound, but only an exterior-modulation sign certificate.
WEPD-v1-1 explains why positive diagonals are not sufficient. The new
source-specific input here is the closed `log4` arithmetic evaluation,
exact rational sign, and explicit **bounded** modulation/support stability.
Bombieri, *Remarks on Weil's quadratic functional in the theory of prime
numbers, I*, Rend. Lincei (2000), §§1–4, studies positivity on small-support
spaces; Yoshida's earlier `t=(log2)/2` finite calculation is discussed there.
That work is not misquoted as supplying the present modulated endpoint
rectangle or full-domain positivity at L=log4. The interval-style verification
method is compared with Rump, *Verification methods: Rigorous results using
floating-point arithmetic*, Acta Numerica (2010), without importing a
floating-point numerical result.
Neither comparison proves novelty; originality remains UNASSESSED.

Consumers and proof status: `WeilNegativeWitness.criticalStripStatement`
and `modOne_criticalStripStatement` remain unchanged. The exact arithmetic
form is the physical source from PrimitiveWeilNeumannSchur and existing
canonical gamma/prime/pole return. No positive hpositive hypothesis,
negative-witness hdetect theorem, universal certificate-existence theorem,
RH or primitive Dirichlet GRH proof has been supplied. The mathematical
signed matrix result is WRITTEN; the elementary rational enclosures have
an executed exact-arithmetic fixture. The full transitive explicit-formula
identity, Lean replay and independent review are NOT_RUN in this increment.

References:
- [WEGR](WeilEndpointGammaRelative.md), especially WEGR-v1-1 and (14).
- [WEMC](WeilEndpointModulationCoercivity.md), WEMC-v1-1–4.
- [WEPD](WeilEndpointPairDefect.md), WEPD-v1-1–2.
- [Bombieri 2000](https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0).
- [Rump 2010](https://doi.org/10.1017/S096249291000005X).
