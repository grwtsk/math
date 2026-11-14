# Original Weil edge-bump prime/pole cancellation and a smoothed zeta zero criterion

**Source attribution:** grwtsk contributors. **Research date:** 2026-11-13 (America/Los_Angeles).
**Maintained role:** actual-source analytic identity, zero-orbit accounting, and route-selection evidence for RP-OC-02. No new Lean declarations or opaque assumptions.
**Original mathematical consumers:** WeilOddSineForm.primeEnergy, WeilLowSchurEnclosure.activePrimePowers/primeWeight, WeilPhysicalSineNegativeReturn.zetaOddPhysicalValue, WeilOddHighComplement.oddArchimedeanEnergy, and WeilTermwiseH1BudgetExponentialLoss.md.
**Evidence:** COMPLETE_WRITTEN_CLASSICAL_DERIVATION, EXACT_SYMBOLIC_BUMP_TRANSFORM_CHECK, FINITE_PRIME_SUM_NUMERICAL_CHECK, FINITE_APPROXIMATE_ZEROS_DIAGNOSTIC. No Lean elaboration, full pinned import build, fresh kernel replay, transitive axiom audit or independent mathematical review. RH and Dirichlet GRH remain UNPROVED.

## 1. Original physical source and supported moving pair

For a real odd source f and T>0, the ORIGINAL real physical zeta quadratic is exactly

    Q_zeta,T(f) = gammaConstant(1,0)*integral_R f^2
                + Gamma_0(f)
                - primeEnergy(T,f)
                - 2*m(f)^2,

    Gamma_0(f) = integral_(r>0) parityKernel(0,r)*
                 integral_R (f(t+r)-f(t))^2 dt dr,
    m(f)       = integral_R f(t)*sinh(t/2)dt,

    primeEnergy(T,f) =
       2*sum_(2<=n<exp(2T)) Lambda(n)/sqrt(n)*
         integral_R f(t)*f(t+log(n))dt.

The arithmetic sum uses the actual activePrimePowers(T) and the original von Mangoldt weight; all prime powers and the native endpoint n<exp(2T) are retained. The negative zeta odd pole is not replaced or dropped.

Define the globally real C2 polynomial bump

    b(u) = u^3*(1-u)^3  for 0<=u<=1, and 0 elsewhere,

and, for a>=1, the genuine odd two-bump test

    f_a(t)=b(t-a)-b(-t-a).                          (1)

Its supports are [a,a+1] and [-a-1,-a]. Choose any T>=a+1. For strict C_c^2((-T,T)) source support choose T=a+1+delta with ANY fixed delta>0; then both bumps lie strictly in the open window.

Direct exact polynomial integration gives

    integral b = 1/140,
    integral b^2 = 1/12012,
    integral (b')^2 = 1/770,
    integral (b'')^2 = 2/35,

    E:=||f_a||_2^2=1/6006,
    D:=||f_a'||_2^2=1/385,
    ||f_a''||_2^2=4/35,                            (2)

all independent of a and T. The source is real odd and globally C2 with zero endpoint jets. This is the same physical test type as the earlier sharp zeta pole note.

## 2. Exact separation of SHORT and DISTANT prime translations

Set the genuine real bump autocorrelation and ordinary additive convolution

    A(r)=integral_R b(u)*b(u+r)du,
    h(v)=(b*b)(v)=integral_R b(u)*b(v-u)du.

For r>=0, ordinary support geometry of the real two-bump function gives the EXACT correlation identity

    C_a(r):=integral_R f_a(t)*f_a(t+r)dt
          =2*A(r)-h(r-2a).                         (3)

A is supported for 0<=r<=1; h is nonnegative and supported on 0<=v<=2. The first term contains the two positive same-bump correlations. The second term is the negative left-to-right far correlation. No right-to-left term exists at positive shifts; it is already accounted for by the original prefactor 2 in primeEnergy.

Since log(2)<1<log(3), among ALL n>=2 only n=2 contributes to the short term. Let

    Pshort=4*Lambda(2)/sqrt(2)*A(log(2))
          =4*log(2)/sqrt(2)*A(log(2)),

    X=exp(2a),
    S_a=sum_(X<=n<exp(2)*X) Lambda(n)/sqrt(n)*
         h(log(n/X)).                              (4)

T>=a+1 includes the ENTIRE far support in the original n<exp(2T) cutoff. The endpoint terms vanish because h(0)=h(2)=0, even when an endpoint happens to be an integer or prime power. Thus the genuine finite original source has the exact identity

    primeEnergy(T,f_a)=Pshort-2*S_a.                (5)

This is not a heuristic prime-density approximation. It is an exact finite-inventory equality valid for all real a>=1, T>=a+1.

## 3. Exact original zeta pole and leading cancellation

Define the positive entire bump Laplace transform

    B(z)=integral_0^1 b(u)*exp(z*u)du,

    Mplus=B(1/2)>0,  Mminus=B(-1/2)>0.

Using oddness and 2*sinh(x/2)=exp(x/2)-exp(-x/2), the ORIGINAL signed pole moment is

    m(f_a)=exp(a/2)*Mplus-exp(-a/2)*Mminus,        (6)

so the actual negative pole contribution is

    -2*m(f_a)^2
      =-2*exp(a)*Mplus^2
       +4*Mplus*Mminus
       -2*exp(-a)*Mminus^2.                         (7)

The continuous prime-density approximation to the far prime sum is

    integral_X^(exp(2) X) x^(-1/2)*h(log(x/X))dx
      =exp(a)*integral_0^2 exp(v/2)*h(v)dv
      =exp(a)*B(1/2)^2,                             (8)

where the last equality is the EXACT convolution-product identity.

Set the original-source prime discrepancy

    F(a)=S_a-exp(a)*B(1/2)^2.                       (9)

Combining (5)-(9) with the unchanged full zeta physical source yields

    Q_zeta,T(f_a)=2*F(a)+R(a),                     (10)

    R(a)=gammaConstant(1,0)*E
         +Gamma_0(f_a)-Pshort
         +4*Mplus*Mminus-2*exp(-a)*Mminus^2.

The remainder R(a) is UNIFORMLY BOUNDED for a>=1 and T>=a+1: the conductor and Pshort are constants, exp(-a)<=1, and the genuine gamma is nonnegative and satisfies

    0<=Gamma_0(f_a)
      <=(7/12)*D+2*ExactGammaTail.tailUpper(0,1)*E,

by the standard H1 real translation estimate on the original parity-zero kernel. E and D are the fixed rational numbers in (2). Equation (10) therefore isolates exactly the formerly hidden potential cancellation: the exponentially large leading negative pole is paired with the original positive contribution -primeEnergy from distant NEGATIVE correlations.

Importantly, R is not assumed to be zero or favorable; only boundedness is needed.

## 4. Quantitative unconditional prime-counting discrepancy

Let psi(x)=sum_(n<=x) Lambda(n) be the genuine Chebyshev function. Write

    w_a(x)=x^(-1/2)*h(log(x/X)), X=exp(2a).

Stieltjes integration against dpsi gives S_a=int_X^(exp(2)X) w_a dpsi. The continuous main term in (8) is int w_a dx. Since h vanishes at both ends, honest Stieltjes integration by parts yields

    F(a)= -int_X^(exp(2)X) (psi(x)-x)*w_a'(x)dx,

    w_a'(x)=x^(-3/2)*
       (h'(log(x/X))-(1/2)*h(log(x/X))).           (11)

The bump has the exact L1 masses

    ||b||_1=1/140,
    ||b'||_1=1/32.

Since h=b*b with b>=0,

    ||h||_1=1/19600,
    ||h'||_1<=||b'||_1*||b||_1=1/4480.

With x=X exp(v), 0<=v<=2, the factor x^(-3/2)dx=exp(-a)*exp(-v/2)dv. Consequently the exact original-source arithmetic error obeys the explicit uniform inequality

    |F(a)| <= (39/156800)*exp(-a)*
              sup_(exp(2a)<=x<=exp(2a+2)) |psi(x)-x|. (12)

This is a bound on a FINITE source prime sum, not a new RH hypothesis.

The established prime number theorem psi(x)=x+o(x) implies F(a)=o(exp(a)), so equation (10) gives the unconditional first-order cancellation

    Q_zeta,T(f_a)=o(exp(a))
      as a->infinity, with T>=a+1.                (13)

But o(exp(a)) is NOT a cofinal subexponential log-rate bound. For example the known unconditional prime error of shape x*exp(-c*sqrt(log x)) still yields an upper allowance exp(a-c'*sqrt(a)), which has an exponential linear rate in a. RH-level control of psi produces much stronger bounds; it CANNOT be used as an unconditional input to prove RH.

Primary standard external reference: NIST DLMF §25.16,
https://dlmf.nist.gov/25.16, equations 25.16.1 and 25.16.3 for psi and the PNT.

## 5. Exact smoothed zeta explicit formula, including OFF-critical zeros

The bump transform is ENTIRE, with the removable value B(0)=1/140 and, for z!=0, the exact finite expression

    B(z)=6*(1+exp(z))/z^4
        +72*(1-exp(z))/z^5
        +360*(1+exp(z))/z^6
        +720*(1-exp(z))/z^7.                       (14)

This formula was independently checked by SymPy integration of u^3(1-u)^3*exp(zu).

Because b and its first two derivatives vanish at 0 and 1, B(s-1/2)=O((1+|Im s|)^(-4)) on bounded real strips. The original h=b*b has bilateral Laplace transform B(z)^2, hence for any c>1 the actual finite prime-power sum has the convergent Mellin representation

    S_a=(1/(2*pi*i))*int_(Re s=c)
           [-zeta'(s)/zeta(s)]*
           exp((2s-1)*a)*B(s-1/2)^2 ds.            (15)

Shifting the standard zeta logarithmic-derivative contour left, on horizontal heights avoiding zeros, gives the exact smoothed explicit formula

    F(a)
      =-sum_(rho nontrivial) m_rho*
           exp((2*rho-1)*a)*B(rho-1/2)^2
       -sum_(k>=1) exp(-(4k+1)*a)*
           B(-2k-1/2)^2.                           (16)

Here rho ranges over DISTINCT nontrivial zeta zeros and m_rho is its multiplicity. Equivalently sum over zeros counted with multiplicity and omit m_rho. The second sum is over the original trivial zeros at -2,-4,...; no trivial term has been omitted. The s=1 pole of -zeta'/zeta has positive residue +1 and generates precisely the main term exp(a)B(1/2)^2 canceled in F(a). No residual s=0 pole exists. On far-left vertical lines the exp(2a Re s) factor kills the remaining contour for a>0.

Both zero series in (16) converge ABSOLUTELY for each fixed a>=1: for nontrivial zeros 0<Re rho<1, |B(rho-1/2)|=O((1+|Im rho|)^(-4)), and the standard zeta zero count is O(Y log Y); for trivial zeros exponential decay and polynomial B bounds suffice.

Equation (16) accounts for hypothetical off-critical zeros honestly. A zero rho=beta+i*gamma has factor exp((2beta-1)*a), and its coefficient is exactly the SQUARED native bump transform, not a made-up sign. No single oscillatory term is assumed to dominate the other zero contributions.

## 6. The bump transform detects EVERY off-critical zeta zero

Under u=(1+x)/2, the weight b becomes (1-x^2)^3/128. The standard Bessel-I integral formula with order nu=7/2 yields

    B(z)=6*sqrt(pi)*exp(z/2)*z^(-7/2)*I_(7/2)(z/2),

with the whole expression interpreted by analytic continuation at the removable origin.

The normalized J-Bessel zero product implies the EXACT entire product identity

    B(z)=exp(z/2)/140 *
         product_(j>=1) (1+z^2/(4*j_(7/2,j)^2)),   (17)

where j_(7/2,j)>0 are the positive real zeros of J_(7/2).
The standard theorem that J_nu has ONLY REAL zeros for real nu>=-1 therefore gives

    B(z) != 0 whenever Re z != 0.                 (18)

The zeros of B all lie on the imaginary axis at z=+/-2*i*j_(7/2,j); at z=0 its value is positive 1/140. In particular B(rho-1/2) cannot vanish for ANY hypothetical nontrivial zeta zero with Re rho>1/2 (or <1/2). The smoothing does not hide off-line zeros through zero coefficients.

Primary standard external references:
NIST DLMF §10.32.2 https://dlmf.nist.gov/10.32.E2 (Bessel-I integral),
§10.21 https://dlmf.nist.gov/10.21 (real J_nu zeros for nu>=-1),
§10.21.15 https://dlmf.nist.gov/10.21.E15 (J_nu zero product).

## 7. An explicit RH-equivalent original-source criterion — NOT an RH proof

For the FIXED polynomial b above, consider the real one-parameter, exact original arithmetic discrepancy F(a) from (9), for every real a>=1.

**Classical equivalence from (16)-(18):**

    RH  iff  sup_(a>=1) |F(a)| < infinity.         (19)

Proof of the forward implication: on RH every nontrivial zero has Re rho=1/2, hence |exp((2rho-1)*a)|=1. Since the zero sum in (16) is absolutely summable with uniform weights in a, it is uniformly bounded; the trivial-zero sum decays for a>=1.

Proof of the reverse implication: suppose F(a) is bounded for real a>=1. Then its Laplace transform

    L(w)=int_1^infinity F(a)*exp(-w*a) da

is holomorphic for Re w>0. For Re w>1, absolute summation/integration of (16) gives its meromorphic partial-fraction continuation:

    L(w)=
      -sum_rho m_rho*B(rho-1/2)^2*
         exp(-(w-(2rho-1))) / (w-(2rho-1))
      -sum_(k>=1) B(-2k-1/2)^2*
         exp(-(w+4k+1)) / (w+4k+1).                (20)

The series converges locally uniformly off its poles: high imaginary zeta zeros have B^2=O(|Im rho|^-8), and denominators contribute further decay. If a zero rho has Re rho>1/2, (20) has a genuine pole at w=2rho-1 in Re w>0, with NONZERO residue -m_rho B(rho-1/2)^2 by (18). This contradicts holomorphy of L. Therefore no zeta zero has Re rho>1/2. The standard zeta functional equation reflects zeros about Re s=1/2, excluding Re rho<1/2 as well. This is RH.

The same argument also shows that the weaker bound F(a)=O_epsilon(exp(epsilon*a)) for every epsilon>0 is equivalent to RH. More generally, for any eta in [0,1), F(a)=O(exp(eta*a)) implies no nontrivial zeros with Re rho>(1+eta)/2. These statements are consequences of the STANDARD explicit formula and Bessel transform nonvanishing, not an unconditional proof of the required boundedness.

By the exact ORIGINAL source identity (10) and UNIFORMLY BOUNDED R(a), for any FIXED delta>0 we obtain the equivalent physical real odd zeta criterion

    RH  iff  sup_(a>=1)
       |zetaOddPhysicalValue(a+1+delta,f_a)| < infinity. (21)

The fixed positive delta makes each f_a an actual C_c^2((-T,T)) test with T=a+1+delta. The original prime, gamma and negative pole contributions remain in zetaOddPhysicalValue. This is an exact reformulation of RH, NOT an independent proof, a claimed global Weil positivity theorem, or a complex Dirichlet GRH criterion.

Important distinction: (19)/(21) require a TWO-SIDED absolute bound along a continuous real parameter a. The proposed cofinal RH route seeks particular one-sided signed LOWER bounds on all original finite sine matrices; these are NOT automatically equivalent to (19) and cannot be inferred from the displayed PNT estimates. No new lower sign has been proved.

## 8. Independent source checks against prime powers and finite approximate zero heights

The source's given zeros.txt contains approximate positive ordinates (for example, 14.134725142 and 21.022039639), not certified complete complex zero records. A finite diagnostic using its FIRST 500 ordinates was performed by inserting rho=1/2+/-i*gamma for those entries ONLY. This is a numerical comparison, NOT an assumption or proof that every zeta zero lies on the line.

Independently, prime powers n<exp(2a+2) were generated with exact integer prime/power enumeration and original weights log(p)/sqrt(p^k). The convolution h was evaluated as its true degree-12 polynomial product integral by 10-node Gaussian quadrature on the exact overlap interval; the quadrature is exact for that polynomial aside from floating-point rounding. The continuous main term used direct integration of b*exp(u/2).

| a | Finite original F(a) | First-500 nominal-critical zero sum | Trivial-zero sum |
|---:|---:|---:|---:|
| 1 | -3.48827869128e-8 | -1.23767816738e-9 | -3.36451087467e-8 |
| 2 | -1.70052662967e-9 | -1.47463228765e-9 | -2.25894340882e-10 |
| 3 | -1.33613256353e-9 | -1.33461060135e-9 | -1.52196523329e-12 |
| 4 | -5.37423432145e-10 | -5.37413179284e-10 | -1.02549088767e-14 |
| 5 | -3.49835903302e-10 | -3.49835850954e-10 | -6.90970309860e-17 |
| 6 | -3.47723440319e-10 | -3.47723480369e-10 | -4.65572132392e-19 |

The sum of the two rightmost columns agrees with the finite-prime discrepancy to the precision allowed by the rounded input ordinates, finite truncation, and ordinary floating-point arithmetic. It independently verifies the SIGN, trivial-zero term, factor 2 in the original paired prime shifts, the exp((2rho-1)a) exponent and the b*b transform square.

Numerical constants from the genuine source:

    B(1/2) ≈ 0.00920350125954158,
    B(-1/2)≈ 0.00558220569061581,
    Pshort   ≈ 0.00000130618106660658.

For a=6, the separately LARGE far-prime positive return 2*S_a≈0.0683444156861 and original negative pole -2*m(f_a)^2≈-0.0681390675140 almost cancel, leaving about 0.0002053481721 before the remaining gamma/conductor and short-prime terms. This is a finite-source numerical check of the exact identity (10), not a proof of any arithmetic lower sign or of RH.

The table uses approximate heights only. The proof of the exact formulas (3)-(21) does NOT rely on assuming those finite heights exhaust all nontrivial zeros.

## 9. Research and assurance boundary

This document advances the project by identifying a genuinely source-exact far-prime/pole cancellation and isolating the remaining complete zero-orbit discrepancy. It is an elementary real test source calculation combined with the STANDARD zeta smoothed explicit formula and classical Bessel zero theorem. The RH-equivalent criterion is a REFORMULATION: neither its boundedness nor a full one-sided cofinal arithmetic lower budget has been established without RH.

The decisive open research tasks are still:
- independently establish sufficient signed arithmetic discrepancy/lower control rather than reuse the RH-equivalent estimate as an assumption;
- return actual physical sources to the exact finite native sine matrices with quantitatively paid projection/gamma/prime/pole tails;
- construct original-source negative tests from every hypothetical off-critical COMPLETED zero with proper zero-orbit/smoothing charges and, separately, prove the full individual complex-character Dirichlet GRH criterion.

No new Lean file was created, and existing Lean source candidates remain UNCOMPILED. The mathematical proof note has not undergone independent analytical peer review or full transitive source/axiom verification. External standard facts (PNT, zeta contour formula, Bessel product, zero symmetry) are cited above and are not claimed as new discoveries. No novelty assertion.

No Noe proof automation, browser workers, cross-chat messaging, scheduling or background work was performed. The only intended publication is this maintained mathematical exposition in grwtsk/math; Git admission is not formal proof acceptance.
