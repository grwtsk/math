# Exact odd-support gamma boundary decomposition and signed reflection energies

**2026-11-14 — grwtsk contributors; AI-assisted mathematical source exposition.**

**Evidence status:** The adjacent Lean file is a SOURCE_PROOF_CANDIDATE, and it and its C0003–C0006 imports have not been elaborated, kernel-replayed, axiom-audited or independently reviewed. The complete whole-line and gamma identities below are written analytical arguments, **not yet kernel-checked Lean declarations**. No RH or primitive GRH proof is claimed.

## 1. Exact native arithmetic source

Retain the original declarations SourcePrimeCorrelation.energy/correlation, OddRootProjection.parityKernel, WeilConductorFrontier.gammaCorrectionDensity/primitiveArithmeticValue, and the original DirichletStageChain.Admissible class. At the stage-zero primitive odd character modulo 3, the literal active prime-power inventory is all six integers 2 through 7, with native signed weights

| n | w(n) = Lambda(n) Re chi(n) / sqrt(n) |
|---|---|
| 2 | -log(2)/sqrt(2) |
| 3 | 0 |
| 4 | +log(2)/2 |
| 5 | -log(5)/sqrt(5) |
| 6 | 0 |
| 7 | +log(7)/sqrt(7) |

The factor at 4 is Lambda(2^2)=log(2), **not** log(4). The full signed identity published in WeilOddThreeFullSignedShift.lean is a SOURCE_PROOF_CANDIDATE. It has not proved stage-zero positivity.

## 2. Exact support decomposition

Let g:R→C be an odd L2 function supported pointwise in [-1,1]. Put

E = integral over all t in R of |g(t)|²,
A(s) = integral over all t in R of |g(t+s)-g(t)|².

For every 0<s≤2, partition the actual whole-line squared difference integral into the disjoint (up to Lebesgue-null endpoints) intervals

[-1-s,-1], [-1,1-s], [1-s,1].

Outside their union both original source values vanish. On the first, g(t)=0; on the third, g(t+s)=0. The incoming integral becomes the energy integral on [-1,s-1] after translation. Odd reflection identifies this incoming mass with the outgoing mass on [1-s,1]. Therefore the ORIGINAL shift energy admits the exact identity

A(s) = 2 integral_(1-s,1) |g(u)|² du + R(s),     (1)

where R(s)=integral_(-1,1-s)|g(t+s)-g(t)|²dt ≥0. There is no periodic wrap, frequency projection, new norm or assumed positivity of the arithmetic Weil form. At s=2 the interior interval is null. For s≥2 the existing original-source theorem GammaTailCompensation.shiftEnergy_eq_two_of_cutoff gives A(s)=2E.

Let h(u)=g(u) for 0≤u≤1. Decomposing the reflected boundary mass into positive and negative halves, then using the disjoint support case, yields for **every** s>0

A(s) ≥ 2 integral_0^1 |h(u)|² [1_{s>1-u}+1_{s>1+u}] du.     (2)

For 0<s≤2 the right-hand side equals exactly twice the outgoing source boundary mass in (1); for s≥2 both indicators are 1 and it equals 2E=A(s). This is strictly stronger than retaining only the single outgoing boundary contribution.

## 3. Two-sided full physical gamma potential and exact remainder

Use the original parity-dependent gamma kernel for a=0 or a=1:

K_a(s)=exp(-(a+1/2)s)/(1-exp(-2s)), s>0.

For 0<u<1 both positive lower cutoffs 1-u and 1+u define finite kernel tails:

H_a^-(u)=integral_(1-u,infinity) K_a(s) ds,
H_a^+(u)=integral_(1+u,infinity) K_a(s) ds.

On the original admissible C² compact-support class the **complete physical density** K_a(s)A(s) is integrable. Multiply (1)-(2) by the positive kernel and apply nonnegative Tonelli. The resulting identity is

Gamma_a(g) = 2 integral_0^1 |h(u)|² [H_a^-(u)+H_a^+(u)] du
           + integral_0^2 K_a(s) R(s) ds.                       (3)

The overlap term is nonnegative. At the endpoint u=1 the lower cutoff of H_a^- reaches zero and its naked kernel tail may diverge; use the extended nonnegative Tonelli integral over the open interval (0,1), ignore the null singleton endpoint and then use finite original Gamma_a(g) to justify the ordinary real integrals. **Do not** split and integrate the naked singular kernel over (0,epsilon).

Equation (3) retains the **entire infinite tail without double counting**. For s≥2 both indicators in (2) are 1, and their contribution equals A(s)=2E exactly. The second incoming boundary potential H_a^+ improves the prior one-sided boundary reserve by the strictly positive quantity

2 integral_0^1 |h(u)|² H_a^+(u)du

for every nonzero source g, because K_a(s)>0. This is function-dependent, involves the original same-source physical gamma density, and does not assume RH/GRH.

For n=4,5,7 set delta_n=2-log n with 0<delta_7<delta_5<delta_4<1, B_n=integral_(log n-1,1)|h(u)|²du and M_a(u,v)=integral_(u,v]K_a(s)ds. Equation (3) implies the previously selected coarser disjoint-cell estimate

Gamma_1(g) ≥ 2 B_7 M_1(delta_7,delta_5)
           + 2 B_5 M_1(delta_5,delta_4)
           + B_4 tailMass(1,delta_4).                           (4)

Here canonical ExactGammaTail.tailMass(a,R)=2 integral_(R,infinity)K_a(s)ds already includes the factor two. No part of the gamma correction is charged twice; the omitted shift interval (0,delta_7] retains its nonnegative physical contribution.

## 4. Preserve the exact signed prime reflections

For real odd h and 1<r<2, direct support restriction of the original whole-line antilinear-first correlation followed by u=-t yields

C_g(r) = -J_r, 
J_r = integral_(r-1,1) h(u)h(r-u)du,
B_r = integral_(r-1,1) h(u)^2du.

The reflection u↦r-u preserves the interval. Define the literal squared reflection energies

D_r^- = integral_(r-1,1) [h(u)-h(r-u)]²du,
D_r^+ = integral_(r-1,1) [h(u)+h(r-u)]²du.

Exact expansion and change of variable show

D_r^- = 2 B_r-2 J_r ≥0,   D_r^+ = 2 B_r+2 J_r ≥0.       (5)

Consequently -B_r≤J_r≤B_r. These identities are the signed source-local candidates in the adjacent Lean module, together with pointwise incoming/outgoing source support identities. They are not themselves a full Lean theorem identifying the integrated original C_g(r) with -J_r; that integration-level bridge remains to be formalized.

Crucially, for any signed native weight w and a nonnegative assigned gamma coefficient m,

m B_r + w J_r = (m+w)B_r - (w/2) D_r^-.               (6)

For the negative prime weight w_5, the antisymmetric reflection energy D_5^- contributes a **positive** term absent from a crude independent absolute-value comparison. For positive w_4 and w_7 the signed requirements are opposite, with different reflection centers. Do not assert that all three reflected pairings can attain their worst signs simultaneously.

For the actual q3 original arithmetic source, combining the native six-integer signed identity with (3) and the real odd reflection gives a written exact expression:

Q_chi,1(g) = gammaConstant(3,1)*E
            - 2 w_2 Re C_g(log 2)
            + 2 sum_(n=4,5,7) w_n J_(log n)
            + 2 integral_0^1 h(u)^2[H_1^-(u)+H_1^+(u)]du
            + integral_0^2 K_1(s)R(s)ds.                         (7)

This is an exact source reassembly, NOT a proof of Q_chi,1(g)≥-E or an alternative form with spectral eigenvalues. Its complete predecessor includes n=3 and n=6 as native zero-weight entries, and n=4 as a genuine prime power. The first remaining substantive arithmetic question is whether the physical overlap remainder and all signed reflected pairs together offset the negative conductor gamma constant and the prime-two correlation **for every** admissible real odd test.

## 5. Exact falsification and verification boundaries

A local Python 3.13.5 + Sympy calculation of the compact continuous odd test g(t)=t(1-|t|) for |t|≤1, zero elsewhere, produced the following **exact rational** values:

| Shift s | A(s) | Two-sided boundary floor | Remaining overlap |
|---|---|---|---|
| 1/8 | 4763/491520 | 263/245760 | 4237/491520 |
| 1/2 | 53/480 | 1/30 | 37/480 |
| 3/2 | 5/32 | 1/10 | 9/160 |
| 2 | 2/15 | 2/15 | 0 |
| 5/2 | 2/15 | 2/15 | 0 |

Every rational comparison PASSED. This example is not C² at all breakpoints; it tests only the broader support lemma and is not an admitted full Weil sign certificate. The prior C² compact odd sign-changing bump examples remain a hostile check against falsely fixing the sign of J_r.

The previous C0007/T2 mathematical inequality m_5≤17/52<1/2<|w_5|, with symmetric h and D_5^-=0, disproves the **independent n=5 componentwise sufficient positivity method**. It does not show the complete signed Weil form negative, and finite sine-matrix or uncertified Fourier multiplier experiments do not prove or refute RH/GRH.

**Formal qualification still required:** At recorded Lean pin leanprover/lean4:v4.34.1 and mathlib commit d13f23b723b8a846827a245b89c10fc7d3f11612, elaborate all imported source candidates and then formalize (1), the integrated C_g(r)=-J_r return, the nonnegative Tonelli equality (3), and the exact source return (7). The adjacent Lean file proposes only the pointwise support identities and signed reflection-square polarizations. With no Lean/lake/elan executable available in the current runtime, elaboration, kernel replay, transitive axioms, independent review and real-goal observation are NOT_RUN.

Unconditional RH for analytically continued zeta, primitive Dirichlet GRH including conductor-one zeta, the complete pole-inclusive Weil criterion (both pole orientations), dual-character functional equations, actual test-domain density and PrimitiveNegativeWitness remain **UNPROVED**.
