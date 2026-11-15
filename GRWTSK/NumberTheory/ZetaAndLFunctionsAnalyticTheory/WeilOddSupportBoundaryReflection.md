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


## 6. C0008/T4: the optimal one-step physical gamma-window estimate

**2026-11-14; grwtsk contributors; AI-assisted written mathematical argument.**
Source owner: this module and the canonical declarations
`SourcePrimeCorrelation.energy`,
`GammaShiftCoupling.shiftEnergy_subadditive`,
`OddRootProjection.parityKernel`, and
`DirichletStageChain.Admissible`.
Status: **SOURCE_ANALYTIC_ARGUMENT; LEAN_ELABORATION_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN;
INDEPENDENT_REVIEW_UNASSESSED**. No new research axiom or analytic
positivity hypothesis is assumed.

Let `g : ℝ → ℂ` be in the original whole-line `L²` class, and write
`A_g(s) = SourcePrimeCorrelation.energy (fun t => g(t+s)-g(t))`.
For parity one write
`K(s) = OddRootProjection.parityKernel 1 s =
exp(-3s/2)/(1-exp(-2s))` on `s>0`.
For every `r>0`, define

```text
m_r(s)=min(K(s),K(r-s)),       0<s<r,
M_r=∫_(0,r) m_r(s)ds=2∫_(r/2,r)K(s)ds>0,
ν_r(s)=m_r(s)/M_r.
```

The identity for `M_r` follows from the positivity and monotone decrease
of the **actual** parity-one kernel; `m_r` remains bounded at either
endpoint. In particular `ν_r` is a nonnegative, symmetric probability
density, `ν_r(r-s)=ν_r(s)`. The existing source shift-energy theorem gives

```text
A_g(r) ≤ 2A_g(s)+2A_g(r-s).
```

Multiply by `ν_r(s)`, integrate over `0<s<r`, use symmetry and
translation-energy integrability. This proves, without any derivative
estimate,

```text
A_g(r) ≤ 4∫_(0,r)ν_r(s)A_g(s)ds
       ≤ (4/M_r)∫_(0,r)K(s)A_g(s)ds.             (8)
```

This estimate concerns the **same** source translation energy and complete
physical gamma density, not a proxy Hilbert-space or spectral form. For
the original real odd test supported in `[-1,1]` and `0<r<2`, the
exact preceding support identity `A_g(r)=F_g(r)+R_g(r)`, `F_g(r)≥0`,
gives

```text
R_g(r)≤(4/M_r)∫_(0,r)K(s)[F_g(s)+R_g(s)]ds.    (9)
```

For `s<r<2`, the bracket equals the true `A_g(s)`. No naked `K` is
integrated at the singular origin; the original admissible-test
`gammaCorrectionDensity` premise supplies finiteness.

**Optimality limited to this proof mechanism.** If one integrates just the
displayed `A(r)≤2A(s)+2A(r-s)` against any nonnegative normalized
density `φ`, the effective density is
`ν(s)=[φ(s)+φ(r-s)]/2`. A pointwise comparison
`4ν(s)≤c K(s)`, by symmetry, also forces
`4ν(s)≤c min(K(s),K(r-s))`. Integration gives `c≥4/M_r`.
Choosing `ν=ν_r` attains equality. This **does not** assert global
optimality among all source-specific or arithmetic inequalities.

For `s>0`, the exact kernel can be written
`K(s)=e^(-s/2)/(2sinh s)≤1/(2s)`. Consequently

```text
M_r ≤ 2∫_(r/2,r)ds/(2s)=log 2,
4/M_r ≥ 4/log 2.
```

At the physical prime-two shift `r₂=log2`, with native signed weight
`w₂=-p=-log2/sqrt2`,

```text
p·(4/M_(log2)) ≥ 2*sqrt2 > 1.                (10)
```

Thus **even the best one-step symmetric pointwise allocation cannot
absorb `p R(log2)` with one copy of the gamma integral**.
Equation (10) refutes that *sufficient method only*. It neither gives
a negative admissible test nor refutes the full signed Weil inequality.

The gamma-window mass also has the exact closed form

```text
T(y)=∫_(y,∞)K(s)ds
    =artanh(e^(-y/2))-atan(e^(-y/2)),     y>0;
M_r=2[T(r/2)-T(r)].
```

Indeed with `x=e^(-s/2)`,
`K(s)ds=-2x²/(1-x⁴)dx`, and
`2x²/(1-x⁴)=1/(1-x²)-1/(1+x²)`. The formula
retains the entire archimedean tail. The individual `T(0)` is divergent.

## 7. Certified falsification of pointwise Fourier-symbol positivity

The preceding estimate alone is too coarse for the signed stage. There
is a **second, independently checkable obstruction** to a tempting
replacement: the unrestricted pointwise Fourier multiplier of the
original signed q=3, parity-one source is not everywhere nonnegative.

Fix the genuine primitive odd character modulo three, original
`T=1`, `g=liftReal f`, and the full signed native integer list
`2,3,4,5,6,7`. Let `w₂=-log2/sqrt2`, `w₃=0`,
`w₄=log2/2`, `w₅=-log5/sqrt5`, `w₆=0`, `w₇=log7/sqrt7`.
The source Fourier convention is
`ĝ(ξ)=∫_ℝ g(t)exp(-iξt)dt`.
For real `g` with finite original full gamma correction,
Plancherel and Tonelli give the **source identity**

```text
Qχ,1(g)+E_g = (1/(2π))∫_ℝ |ĝ(ξ)|² S(ξ)dξ,

S(ξ)=1+gammaConstant(3,1)+B(ξ)
       -2Σ_(n=2..7)w_n cos(ξ log n),

B(ξ)=2∫_(0,∞) K(s)[1-cos(ξs)]ds
    =2Σ_(k=0..∞) ξ²/[a_k(a_k²+ξ²)],
a_k=3/2+2k.
```

For the real compact-supported odd `Admissible` class, this is
an **exact change of representation** of the original arithmetic
quantity, not a second independently defined spectral operator.
Every prime power and phase, including `Λ(4)=log2`, is retained.
The `B` series follows by expanding the positive kernel as
`Σ_k exp(-a_k s)` and integrating the nonnegative
`1-cos(ξs)` terms. The quarter-digamma source identity gives

```text
gammaConstant(3,1)=log(3/π)-γ+π/2-3 log2,
γ=Euler–Mascheroni constant.
```

At the **rational frequency `ξ=13`**, there is the exact rational
interval certificate

```text
-69/100 < S(13) < -17/25 < 0.                 (11)
```

The certificate uses only rational operations with mathematically
valid enclosures: Machin's identity
`π=16atan(1/5)-4atan(1/239)` with alternating-Taylor remainders;
`H_128-log129 < γ < H_128-log128`;
positive `atanh`-series bounds for `log`; integer-square-root
brackets for `sqrt{2,5,7}`; Taylor/Lipschitz enclosures after
reducing `13log n` modulo `2π`; and the first 512 rational terms
in `B(13)`. The omitted positive series tail is bounded by

```text
0 ≤ B(13)-B_512(13) ≤ 13²/[8*(511)²].
```

The directly executed Python 3.13.5 `fractions.Fraction` verifier
(exact arithmetic, exit 0; SHA-256
`09073c380cb4dc6c310d79b15d092ed5e5f14486fafdeb1e31601a6f801caeab`)
gave `S(13)` enclosed between approximately
`-0.689301573` and `-0.681438529`. The rational inequalities
in (11), not the displayed decimals, are the certified output.
The calculation's **mathematical scope** is pointwise negativity of
the source-derived *unrestricted multiplier* only. It is **not** a
certificate that an original admissible supported test makes `Q+E<0`.

Indeed a real odd Schwartz function can have its Fourier transform
concentrated in small neighborhoods of `±13`, giving a negative
value for this extended unrestricted `Q+E`. Such a function cannot
simultaneously have Fourier localization and compact support in
`[-1,1]` as required by `Admissible χ 1 f`. Therefore (11) proves
that a simple pointwise-positive-multiplier shortcut fails; it says
**nothing against** the original compact-support sign target.

**Hostile source checks.** Genuine polynomial odd compact `C²`
test `g(t)=t(1-t²)^3` on `[-1,1]`, zero outside, satisfies the
rational support, polarization and reflection identities at surrogate
shifts `1/2` and `3/2` by independent exact SymPy polynomial
integration. These are **not** `log2`, `log5` or certified full
gamma quadratures. The signs of the distinct reflected pairings
remain variable. The one-step allocation and pointwise multiplier
failures must not be confused with negative original `Q`.

### Still-open immediate source-return obligations

The next arithmetic consumer is still the exact
`DirichletStageChain.PrimitiveStageLower` at `q=3,j=0`, for
**all** original `Admissible χ 1 f`. The separately proposed
piecewise potential floor `D(u)≥α_j+1/100` and the **joint** signed
reflection/overlap budget

```text
pR(log2)+|w5|R(log5)
 ≤ ∫_0² K(s)R(s)ds
   +w4 R(log4)+w7 R(log7)
   +2Σ_j α_j∫_(I_j)h(u)²du
```

remain **UNPROVED**; no observed numerical search has established
their universal quantifiers. A proof needs explicit cancellation
between the actual real odd source reflections and two-sided
gamma boundary potential without double spending. The first
formal source-return bridges still missing are integrated
`A=F+R`, `C(log2)=E-B_out-R(log2)/2`,
`C(log n)=-J_n`, and the complete signed
`Q=full signed overlap`. No new theorem status is promoted.
RH(zeta), `PrimitiveNegativeWitness`, the completed
pole-inclusive Weil criterion (both pole orientations), dual
characters, all windows/conductors and primitive Dirichlet
GRH including conductor one remain **UNPROVED**.


## 8. C0008/T4: certified five-region physical boundary potential

**2026-11-14 — grwtsk contributors, AI-assisted.** This is a source-local,
non-circular **conditional return** and a rational finite-bound certificate.
It does not prove the required joint signed-overlap inequality or
`DirichletStageChain.PrimitiveStageLower`. Kernel elaboration, transitive
axioms and independent review: **NOT_RUN / UNASSESSED**.

Use the **same** primitive odd `χ : DirichletCharacter ℂ 3`, `T=1`,
real odd supported `g=liftReal f`, and `h=f|[0,1]` as in (7).
Write `p=log(2)/sqrt(2)`, `a=log(2)/2`,
`b=log(5)/sqrt(5)`, `c=log(7)/sqrt(7)`, and
`K(s)=parityKernel 1 s`. Both physical boundary potentials stay present:
`H(u)=T(1-u)+T(1+u)` for `0≤u<1`, where the exact tail `T(y)` is in §6.
Set the strictly ordered breakpoints

```text
τ2=1-log(2), τ4=log(4)-1, τ5=log(5)-1, τ7=log(7)-1
I0=[0,τ2), I1=[τ2,τ4), I2=[τ4,τ5), I3=[τ5,τ7), I4=[τ7,1).
```

After the **written, still-unelaborated** original full-source reassembly,
the exact candidate equality is

```text
Qχ,1(g) + E
 = 2∫_0^1 h(u)^2 D(u)du
   + I + a R(log4) + c R(log7) - p R(log2) - b R(log5),

E = energy(g),  I=∫_0^2 K(s)R(s)ds,

D(u)=gammaConstant(3,1)+1+2p+H(u)
     -p·1_(u≥τ2)-a·1_(u≥τ4)+b·1_(u≥τ5)-c·1_(u≥τ7).
```

No quadratic form or prime-power inventory has been replaced. The n=3,6
weights are native zero entries, and n=4 is the genuine squared prime
`vonMangoldt(4)=log2`.

**Ordinary mathematical proof of the local floor.** The parity-one exact
tail is `T(y)=artanh(exp(-y/2))-atan(exp(-y/2))`, `y>0`.
Thus `H'(u)=K(1-u)-K(1+u)≥0` on `0≤u<1`, because the original
kernel is strictly decreasing. The step function in `D` is constant
on each `Ij`. Its lower bound on `Ij` therefore occurs at that
interval's left endpoint. The endpoint values are evaluated with
**rational enclosures**, not floating-point comparisons.

Let `α=(1,2/3,3/8,5/4,11/8)`. The source-integrity verification fixture
`scripts/verify_odd_three_boundary_floors.py` proves the following
strict rational intervals for those left endpoint values:

| Region | Certified rational bracket for endpoint D | Required bound |
| --- | --- | --- |
| I0 | [1164692, 1164695]/1000000 | 101/100 |
| I1 | [721016, 721019]/1000000 | 203/300 |
| I2 | [404079, 404082]/1000000 | 77/200 |
| I3 | [1268460, 1268463]/1000000 | 63/50 |
| I4 | [1412024, 1412027]/1000000 | 277/200 |

Consequently, for **all** `u∈Ij`,
`D(u)≥α_j+1/100`; endpoints are interpreted with the displayed
half-open region convention. The endpoint `u=1` is measure zero and
the bare `T(0)` is **not** integrated.

The fixture evaluates rational Maclaurin series with explicit remainder
bounds for logarithms, arctangents and `e`; obtains `π` via Machin's
arctangent identity; brackets square roots using exact integer square
roots; and uses an elementary Euler-constant bound

```text
H_N-log(N)-1/(2N) < γ
  < H_N-log(N)-1/(2N)+1/(8N²).
```

For completeness, the upper error is bounded by summing the
trapezoidal-rule errors of `t↦1/t` over `[k,k+1]`, each equal to
`∫_k^(k+1) (t-k)(k+1-t)/t³ dt ≤ (1/4)∫_k^(k+1) t^(-3)dt`.
The lower error is positive by convexity. There is no reliance on
uncertified floating-point rounding for any PASS decision.

Executed independently in Python 3.13.5 at source baseline
`math@e8eb0be56deaf3ed01b7bb7a77c9607d29617bb0` before this
source-comment publication:

```sh
python3 scripts/verify_odd_three_boundary_floors.py
```

The matching local pre-publication script returned exit code 0 and
all five `exact_strict_pass: true` comparisons.
Local verifier SHA-256 (test file, preceding publication):
`84f2f6650d982fd93f3db22df61e78242a8459cf635fcd338e45dc728b2aa2b5`.
The GitHub source is reserialized for publication; a fresh clean-checkout
SHA-256/replay must be recorded separately. No Lean acceptance follows
from the Python run.

**Actual first unresolved arithmetic premise.** The following *separate*
joint inequality is a candidate, **not a proved theorem**:

```text
p R(log2) + b R(log5)
 ≤ I + a R(log4) + c R(log7)
   + 2 Σ_(j=0..4) α_j ∫_(Ij) h(u)^2du.       (12)
```

It must be established for **every** original admissible real odd C² test,
with no derivative/E frequency bound, spectral substitute, or
duplicate gamma allocation. If (12) holds, the preceding exact
reassembly and the certified scalar floor imply

```text
Qχ,1(g)+E ≥ (1/100) E,
hence Qχ,1(g) ≥ -(99/100)E ≥ -E.
```

This is a **conditional implication** only. The support/prime/gamma
integral-return equalities above, (12), the zeta pole-inclusive source,
`PrimitiveNegativeWitness`, all windows/characters, RH and primitive
Dirichlet GRH remain open. Neither finite matrix exploration nor the
pointwise Fourier-symbol obstruction in §7 settles (12).

## 9. Uniform gamma-window floor for reflected two-band tests

**2026-11-14, grwtsk contributors, AI-assisted.** Written analytic proof
for the selected two-band inequality in
[hs#2, C0009/T2](https://github.com/grwtsk/hs/issues/2#issuecomment-6886647564).
This supplementary result follows the original parity-one positive-half
overlap in §§2–4. Lean elaboration, fresh kernel replay, transitive axiom
audit, and independent review are NOT_RUN.

Let r=log(4), B=[3/4,7/8], J=r−B. For every real compactly supported C²
function u with support strictly inside B, put v(x)=−u(r−x), h=u+v,
and H=∫_B u²=∫_J v². Use their original odd zero extensions to [−1,1].
For the physical overlap R_s(h) and parity-one kernel K(s),

```text
∫_(1/8)^(1/2) K(s) R_s(h) ds ≥ (29/20)H ≥ 2log(2)H.
```

The last comparison is strict when H>0. Reflection at r gives
R_r(h)=0, while R_r(u)=R_r(v)=2H. With native Λ(4)=log(2), the exact
lost prime-square diagonal contribution is (log(2)/2)·4H=2log(2)H.

**Diagonal contribution.** From 69/100<log(2)<7/10, J lies in (1/2,3/4)
strictly below B. For 1/8≤s≤1/2 the cross-origin reflection is zero,
so R_s=2∫_0^(1−s)(h(x+s)−h(x))² dx. The incoming squared mass is
2H before the factor 2. The outgoing term retains at least H from
J for s≤1/4 and is nonnegative throughout. Same-band correlation
products vanish up to null endpoints since each band has width 1/8.
Monotonicity of K, K(1/4)>5/3 and K(1/2)>7/10 bound the integrated
diagonal below by 6H(1/8)(5/3)+4H(1/4)(7/10)=39H/20.

**Mixed contribution.** Only translates from J to B remain.
Changing variables using v=−u(r−·) writes the mixed integral as
4∫∫ K(x+y−r)u(x)u(y) over x,y∈B with 1/8≤x+y−r≤1/2.
The upper cutoff deletes nothing because 7/4−r<1/2.
On B×B, x+y−r≥d=3/2−r>1/10. The full kernel is positive
semidefinite even for sign-changing u. Expand
K(t)=Σ_(k≥0) exp[−(3/2+2k)t], uniformly for t≥d. Each integrated
term factors as exp[(3/2+2k)r] times the square of
∫_B exp[−(3/2+2k)x]u(x)dx. Uniform convergence on the square
justifies integration of the expansion.

The omitted lower triangle x+y<r+1/8 lies in [3/4,3/4+ℓ]²,
where ℓ=r−11/8∈(0,1/40). Cauchy–Schwarz bounds its absolute
integral before the factor 4 by K(d)ℓH. Since K(d)≤1/(2d)<5,
the mixed integral is at least −H/2. The resulting floor is 29H/20.

**Constants and scope.** The first two terms of the atanh expansion
of log(2) give 56/81 with remainder at most 1/540. Alternating Taylor
lower cuts for exp(−3s/2) through degree three, and for exp(−2s)
through degrees three and five at s=1/4 and s=1/2 respectively,
give the kernel lower ratios 111/64 and 885/1216. Exact rational
comparisons give the stated endpoint bounds and 29/20>7/5>2log(2).

The proof uses the diagonal gamma energy of the combined test and
the complete reflected kernel. The narrow-bump counterexample in
C0009/T2 to paying the loss from mixed gamma alone still applies.
The bound on the omitted triangle is uniform for localized and
oscillatory signed inputs. It charges this gamma window once.
Complementary shifts, the other signed atoms, both boundary potentials
and the all-support inequality (12) remain in the original source.
An independent written radius-one stage proof is recorded in
[hs#2, comment 6886476754](https://github.com/grwtsk/hs/issues/2#issuecomment-6886476754).
Cofinal conductor-three stages, all other characters, conductor-one
zeta, RH and primitive Dirichlet GRH require their separate returns.

## 10. C0009/T4: signed two-band Schur improvement from the original overlap

**2026-11-14; grwtsk contributors; AI-assisted written analytic proof.**
The preceding §9 provides a source-coupled 29/20 estimate. The present
argument improves its lower constant to **16/9**, for exactly the same
restricted real odd test family, while explicitly retaining the negative
directions of the **truncated** mixed kernel. The result is **not a Lean
declaration**: LEAN_ELABORATION_NOT_RUN, FRESH_KERNEL_NOT_RUN,
TRANSITIVE_AXIOM_AUDIT_NOT_RUN and INDEPENDENT_REVIEW_UNASSESSED.
The full pole-inclusive arithmetic Weil source and RH/GRH remain open.

**Exact physical test and return.** Let B=[a,b]=[3/4,7/8],
r=log(4)=2log(2), J=r-B. For any real C² function u with support strictly
inside B, set v(x)=-u(r-x), h=u+v on [0,1], and extend h oddly to the
original g=liftReal f supported in [-1,1]. Put H=∫_B u(x)² dx,
s₀=1/8, s₁=1/2, and use the *original* positive-half overlap R_s of §2.
The parity-one physical kernel is
K(s)=parityKernel 1 s=exp(-s/2)/(2sinh s), s>0.
The claim for **every** such u, including oscillatory sign-changing u, is

\`\`\`text
G(h):=∫_(s₀,s₁) K(s)R_s(h)ds ≥ (16/9)H
                                  > [2log(2)+7/18]H   if H>0.   (13)
\`\`\`

When H=0, G=0. This is an estimate for a **source subset** of the full
archimedean gamma correction, not an independently defined positive form.
It is only a consumer of the same original arithmetic source as §9.

**Support geometry and an exact identity.** The positive atanh series gives

\`\`\`text
56/81 < log(2) < 56/81+1/540 < 25/36.
\`\`\`

In particular 11/8<r<3/2, J⊂(1/2,3/4), and both bands have
width 1/8. For s∈[1/8,1/2] the cross-origin reflected-sum portion of
the genuine R_s vanishes; same-band translated products vanish
almost everywhere. Directly expanding the *original*
R_s=2∫_0^(1-s)(h(x+s)-h(x))² dx, without periodic wrap, yields

\`\`\`text
G(h)=4 M H +2∫_B u(x)²P(x)dx
        +4∫_B∫_B u(x)u(y)T(x,y)dy dx,        (14)

M=∫_(1/8,1/2)K(s)ds,
P(x)=∫_(1/8,1-x)K(s)ds + ∫_(1/8,1-r+x)K(s)ds,
T(x,y)=K(x+y-r)·1_{1/8≤x+y-r≤1/2}.
\`\`\`

Here both upper limits in P lie in [1/8,1/2] for x∈B, by
the actual support and r bounds. To derive (14), the incoming squared
mass is ∫_s^1h²=2H for s≤1/2<inf J. The outgoing squared mass is
the two displayed P integrals after the change y=r-x on J.
The only surviving shifted product goes from J to B; its
original negative sign v=-u∘(r-·), coupled to the -4 cross
coefficient from expanding the square, gives the **signed**
+4∫∫u(x)u(y)T(x,y) expression. The integrated physical source,
not a surrogate Fourier operator, owns every term.

**Explicit kernel and potential inequalities.** For 0<s≤1/2,

\`\`\`text
1/(2s)-1/3 < K(s) ≤ 1/(2s).                 (15)
\`\`\`

Indeed sinh s≥s, exp(-s/2)≤1 give the upper bound.
For the lower bound,
sinh s≤s/(1-s²/6) follows termwise from
(2n+1)!≥6^n in the power series, and exp(-s/2)≥1-s/2.
Thus

\`\`\`text
K(s)≥(1-s/2)(1-s²/6)/(2s)
    =1/(2s)-1/4-s/12+s²/24
    ≥1/(2s)-7/24 >1/(2s)-1/3.
\`\`\`

These are valid only on the indicated strictly positive s interval,
and no divergent naked K is integrated at zero.

Integrating (15) on [1/8,1/2] gives
M>log2-1/8>13/24.
On B, P'(x)=-K(1-x)+K(1-r+x)<0:
1-r+x>1-x since r<2x, and K strictly decreases.
Consequently, using log(7/2)>2680/2187>29/24
from the first two positive atanh(5/9) terms,

\`\`\`text
P(x)≥P(b)=∫_(1/8,15/8-r)K
       >∫_(1/8,7/16)K
       >(1/2)log(7/2)-5/48>1/2.           (16)
\`\`\`

The lower cutoff and all upper limits are source-supported positive
numbers; the endpoint terms are understood up to Lebesgue-null sets.

**The signed mixed kernel cannot be discarded.** T is symmetric and
pointwise nonnegative, but its associated quadratic form need **not**
be positive semidefinite: at the limiting band endpoints,
T(a,a)=0, T(a,b)>0 and T(b,b)>0, as the indicator deletes
2a-r<1/8 but retains a+b-r and 2b-r. Smooth bumps concentrated
near the two endpoints with opposite coefficients give negative mixed
directions. This is a falsification of a naive Gram-positivity shortcut,
**not a negative value of the full gamma energy**.

Instead, for each fixed x∈B the source y-window has length at most
b-a=1/8 and x+y-r≥1/8 wherever T≠0. Monotonicity and (15) give

\`\`\`text
∫_B T(x,y)dy ≤∫_(1/8,1/4) ds/(2s)
              =(1/2)log2 <25/72.
\`\`\`

By symmetry and 2|u(x)u(y)|≤u(x)²+u(y)²,

\`\`\`text
∫_B∫_B u(x)u(y)T(x,y)dy dx ≥-(25/72)H.    (17)
\`\`\`

Combining (14)--(17), for H>0,

\`\`\`text
G(h)>[4(13/24)+2(1/2)-4(25/72)]H
    =(16/9)H.
\`\`\`

Finally 2log2<25/18, hence
16/9-2log2>7/18, proving (13) with its strict reserve.
No sign assumption on u, independent n=4 component, or gamma
reallocation was used.

**Consumer and exact limitation.** The original positive n=4
weight is w₄=Λ(4)/sqrt(4)=log2/2. Its individual reflected
samples obey R_r(u)=R_r(v)=2H and R_r(h)=0, so the lost diagonal
atom is w₄·4H=2log2·H. The *single physical gamma window*
G(h) exceeds that loss by more than 7H/18 for nonzero u.
This does not control n=2 or n=5 negative signed terms,
n=7 positive term, the conductor constant, either potential
orientation outside this window, arbitrary mixed-support
functions, or the full original Qχ,1 stage.

**Reproduction and falsification.** Local executable
\`python3 /mnt/data/c0009_t4/verify_odd_two_band_schur.py\`
(Python 3.13.5, exit 0) passed **27 exact Fraction assertions** for
cutoff geometry, logarithmic constants, the Schur charge, the
16/9 coefficient, the >7/18 margin and the truncated-kernel
negative-control geometry. Script SHA-256:
\`a851d662dc3962333220a4ecf2e98ff6077305e738fb06790ecec3f8fb951f6a\`.
Output SHA-256:
\`cb64bdfd29bedabe581292789f961505ed6386c9b0594df1ad91f60f2b44c45b\`.
The source-owned portable script is
\`scripts/verify_odd_two_band_schur.py\`; rerun its exact bytes
and compare results on a clean checkout. The arithmetic checks
validate **constants, not the integral proof or Lean**.

An independent exploratory Gauss–Legendre calculation compared the
direct original R_s to the diagonal/mixed expression (14) on six C²
test families, including frequencies 70 and 200; relative residuals
were <4×10⁻¹⁰ and tested G/H ranged from about 3.84 to 4.41.
Those floating-point tests are **not** certified universality,
rounding or independent formal verification.

**Remaining source-return obligations.** The exact integrated
positive-half R_s and all-signed prime Q reassembly still require
pinned Lean elaboration and kernel/axiom checks. The universal joint
arithmetic budget (12) remains **UNPROVED** and needs a bound for
mixed cross-band contributions of the true signed n=2,4,5,7
source and both complete gamma boundary potentials.
The separate completed Weil formula (including all pole
orientations), original test-domain coverage and
\`PrimitiveNegativeWitness\` also remain open. Unconditional RH
for analytically continued zeta and primitive Dirichlet GRH
including conductor one are **UNPROVED**.

## 11. Sound sine-envelope certificate for the original radius-one stage

**2026-11-14, grwtsk contributors, AI-assisted.** Written, computer-assisted
argument for the complete fixed-point envelope requested in
[hs#2, C0010/T2](https://github.com/grwtsk/hs/issues/2#issuecomment-6887126570).
The exact integer/Fraction checker is the sole Python block in
[comment 6886476754](https://github.com/grwtsk/hs/issues/2#issuecomment-6886476754),
SHA-256 2d32581d89dc0a22955a62634bde653a1de4cdf0a8faf26298d94d3d88e47ff2
including its final newline. The proof here audits its true-function
enclosures and sharpens the final rational comparison. Lean elaboration,
kernel replay and transitive axiom audit are NOT_RUN. Independent review
is UNASSESSED.

Fix a primitive nonprincipal parity-one character χ modulo 3 and every
original real f satisfying DirichletStageChain.Admissible χ 1 f. Thus
f is C² and odd with support in [−1,1], its complex lift g is in the
physical L² space, and the full original gamma density is integrable.
Write E=energy(g), Q=primitiveArithmeticValue χ hp hn 1 g and h=f|[0,1].
The bound proved here is Q≥−(219/250)E, strict for E>0.

By the exact §7 arithmetic representation, with positive angular
frequency t, H(t)=∫₀¹h(u)sin(tu)du and m(t)=S(t), we have
Q+E=(4/π)∫₀∞m(t)|H(t)|²dt and E=2‖h‖²=(4/π)∫₀∞|H(t)|²dt.
All native weights n=2,3,4,5,6,7, parity, conductor and the whole
gamma term remain in m. In particular its signed cosine coefficients
are −2w_n, with w₃=w₆=0 and w₄=log(2)/2. The Fourier reduction uses
Plancherel on each translation and Tonelli on the nonnegative original
gamma density, as in §7. It assumes no zero-side or auxiliary sign.

Let d(t)=(1−m(t))₊ and s_t(u)=sin(tu). The tail enclosure below puts d
in [0,256]. The positive operator B=(2/π)∫ d(t)|s_t⟩⟨s_t|dt acts on
all real L²(0,1). The integral exists in Hilbert–Schmidt norm since
‖s_t‖²≤1 and d is continuous and integrable. By the rank-one inner
product and Fubini,

```text
‖B‖HS² = π⁻² ∫_[0,256]² d(x)d(y)[sinc(x−y)−sinc(x+y)]² dxdy.
```

Here sinc(t)=∫₀¹cos(tu)du, including sinc(0)=1. The displayed factor
comes from ⟨s_x,s_y⟩=[sinc(x−y)−sinc(x+y)]/2. Since m≥1−d,
Q+E≥E−2⟨h,Bh⟩≥(1−‖B‖HS)E.

**Constants and entire gamma tail.** Use M=10¹², N=128 cells per unit,
and cell midpoints t_k=(2k+1)/(2N). Machin's identity with alternating
arctangent remainders encloses π. The positive odd-power series for
log(x)=2atanh((x−1)/(x+1)) at x>1 gives the checker interval with its
geometric remainder. Integer square roots enclose the non-square
denominators. The valid upper Euler constant bound follows from
γ≤H_2048−log(2048), rounded up in its harmonic terms. These enclosures
give 1+gammaConstant(3,1)>−133/1000 and absolute signed-weight and
lag errors <100/M. The digamma quarter identity in §7 binds the
constant to the native source.

For a_j=3/2+2j, the gamma summand is 2t²/[a_j(a_j²+t²)]. It increases
in t≥0 and decreases in a_j. The first 64 summands are floored
down and the omitted sum is at least half the integral of the
summand over a∈[a_64,∞). This is (1/2)log(1+t²/a_64²), or atanh(z)
with z=t²/(2a_64²+t²). The first 12 positive atanh terms give a
lower bound with each multiplication and division rounded down.
At t=256, subtracting the upper absolute native prime contribution
gives m(t)≥1214817257836/M>1 uniformly for t≥256 by monotonicity
of the gamma series. For the compact interval the derivative of each
gamma summand is bounded by 2/a_j², whose sum is at most
8/9+2/3=14/9 by the integral test. This controls all increments by
first summing the increment bounds on finite partial sums and taking
their pointwise limit. Adding the four native cosine derivative bounds
as in the checker gives |m(x)−m(y)|≤9|x−y|.

**Fixed-point trigonometry.** Every argument supplied to the trig
routine has absolute value ≤512 when divided by M. The checker
subtracts j periods of rational length 2π_hi, where |j|≤82. The
true phase changes by at most 164/M modulo 2π, because the π
bracket has width 1/M. Centered integer division makes the reduced
argument have absolute value <4. The first sine or cosine Taylor term
is exact. In scaled units each signed floor introduces absolute
error <1, also for a negative term. The recurrence amplification
factor is ≤4/3 at update 2 and ≤8/15 thereafter. Thus the first
update error is <1, the second <7/3, and all twelve updated term
errors are <3 each by induction. The exact Taylor tail is bounded
by the first omitted term since the following terms decrease, at
most 4²⁶/26!<12/M for cosine and 4²⁷/27!<2/M for sine.
Combining the recurrence, tail and period errors gives <212/M,
hence the posted 500/M allowance holds.

At t_k the lag uncertainty and argument floor cost at most 25601/M.
With the <212/M fixed-point estimate above, each true cosine is
within <25813/M of its stored scaled integer (the older 500/M
trigonometric allowance would give <26101/M instead). The stored
signed coefficient before the factor 2 has modulus <1. With
native-weight error <100/M and the single signed product-floor error
<1/M, a conservative per-prime error is
[2(100+25813)+1]/M = 51827/M; allowing a redundant integer unit
gives <51828/M. Four native signed contributions therefore cost
<4·51828/M<10⁻⁶. **Corrigendum:** using *only* the older 500/M
trigonometric allowance would instead give the conservative per-prime
budget <52404/M, not <52403/M; the latter requires the newly
audited stronger 212/M estimate. The actual integer checker
subtracts 10⁻⁶, so either valid bound fits that reserved margin. Subtracting another
9/(2N) covers every point in the closed cell. Consequently the posted
integer deficit price D_k satisfies d≤D_k/M on that entire cell;
an omitted cell with nonpositive raw price has d=0 throughout.

**Sinc pairs and the whole integral.** For integer j>0 the requested
sine argument j/N is exact because N divides M. Dividing by j/N and
flooring adds at most (500N/j+1)/M error, bounded by (500N+1)/M.
At j=0 the value is exactly 1. Midpoint pairs use j=|k−l| and
j=k+l+1, with the same formula for k=l. The integral formula for sinc
gives Lipschitz constant 1/2. Each difference or sum of cell coordinates
moves by at most 1/N, so a total 1/N variation covers the difference
of the two sinc terms. The posted A_kl/M therefore bounds the absolute
sinc difference on every product cell. Evenness and pair exchange
cover both orientations. Squaring the price, multiplying by the
two deficit prices and cell area N⁻², and using π≥π_lo gives the
checker denominator M²N²·PI_LO². Its diagonal contribution is counted
once and off-diagonal twice. Omitting zero-certified cells and the
zero-deficit tail leaves exactly the full integral upper bound.

On the posted rational numerator and denominator, the strict comparison
62500·total<47961·denominator gives ‖B‖HS<219/250. This supplies
the stated bound for the original Q, with equality at the zero test.
The unrestricted multiplier is negative at frequency 13, as in §7,
so this argument uses the entire compactly supported odd sine
space and its cross-frequency inner products. It does not replace
the original test class by arbitrary localized frequency vectors or
a finite set of test profiles. The separate physical budget (12),
radius four, all remaining windows and characters, and the completed
pole-inclusive zeta/Dirichlet consequences retain their own obligations.

## 12. C0010/T4: exact digamma resummation, trace-method warning and signed-roundoff correction

**2026-11-14; grwtsk contributors, AI-assisted. Status:
SOURCE_ANALYTIC_DERIVATION + INDEPENDENT_RECONSTRUCTED_EXACT_INTEGER_AUDIT;
LEAN_ELABORATION, FRESH_KERNEL, TRANSITIVE_AXIOM_AUDIT and
INDEPENDENT_MATHEMATICAL_REVIEW NOT_RUN/UNASSESSED.** This section is a
reproducibility and mathematical-identity clarification of §11, not a new
Lean theorem, a completed Weil criterion or a proof of RH/GRH.

### Canonical parity-one gamma operator: a closed form without numerical series

Keep the original real odd conductor-three `Q`, `E`, the full integer
inventory `n=2,..,7`, and `m(t)` of §7/§11. Let
`z=3/4`, `a_j=3/2+2j=2(j+z)`, `y=t/2` and let
`ψ=Γ'/Γ` denote the standard digamma function on the right half-plane.
The convergent digamma series yields, for every real `t`,

```text
Re ψ(z+i*y) - ψ(z)
  = Σ_(j≥0) [1/(j+z) - (j+z)/((j+z)^2+y^2)]
  = Σ_(j≥0) y^2 / ((j+z)*((j+z)^2+y^2))
  = Σ_(j≥0) 2*t^2 / (a_j*(a_j^2+t^2)).
```

The series is uniformly convergent on each compact real `t` interval:
its terms are `O(t²/j³)` for large `j`. The last equality is an
algebraic identity with the ACTUAL original `a_j`, not a spectral
guess. From the source's digamma-quarter formula

```text
gammaConstant(3,1) = log(3/π) + ψ(3/4)
```

the complete signed original Fourier multiplier is therefore exactly

```text
m(t) = 1 + log(3/π) + Re ψ(3/4 + i*t/2)
       - 2 Σ_(n=2..7) w_n cos(t log n),

w_2=-log(2)/sqrt(2), w_3=0, w_4=log(2)/2,
w_5=-log(5)/sqrt(5), w_6=0, w_7=log(7)/sqrt(7).
```

This is a second exact representation of the SAME gamma and signed
prime-power source. In particular the `ψ(3/4)` constants cancel; no
piece of the infinite gamma tail is dropped. The proposed future
math-owned Lean obligation is
`OddThreeSineHilbertSchmidt.gammaMultiplier_eq_digamma` (**NOT yet an
existing Lean constant**), with explicit real `t`, Mathlib digamma
domains, original source normalization and no RH hypothesis. For
nonreal primitive characters, a separate phase/dual-character proof is
needed; the real cosine weights here cannot simply be copied.

### Why a simpler trace bound is not the same as the Hilbert–Schmidt proof

For the positive deficit operator `B` of §11, its exact trace-class
expression (when the certified compact deficit support holds) is

```text
tr B = (2/π) ∫_0^∞ d(t) ∫_0^1 sin(tu)^2 du dt
     = (1/π) ∫_0^∞ d(t) [1-sinc(2t)] dt.
```

This follows from Tonelli and the rank-one trace; it is **not** the
Hilbert–Schmidt norm. A separate SciPy complex-digamma / Simpson
exploratory mesh on `[0,256]` gave `tr B≈1.9422` (NOT an interval
certificate). Thus the simple sufficient route `tr B<1` is
empirically implausible and must **not** be substituted for the
existing cross-frequency Hilbert–Schmidt estimate. The trace identity
itself is exact; no rigorous lower bound `tr B>1` is asserted here.

### Quantified integer-checker reconstruction and margins

A separately reconstructed Python 3 exact-integer/`Fraction` audit of
the original HS#2 `6886476754` algorithm (not byte-identical source)
repeated **27** checks on the Machin/log/sqrt bounds, exact Taylor
remainders, recurrence-roundoff budgets, signed lag/weight budget, tail,
all 32768 frequency cells and every retained sinc pair. It obtained:

```text
scale M = 1000000000000; cells per unit = 128; cutoff = 256
tail_m_lower_scaled = 1214817257836 / M
positive price cells = 1381; last index = 20275
HS^2 integer upper =
  124086931321930434849361507294029572022081586296979829 /
  161703598507366392702253809664000000000000000000000000
≈ 0.76737272681212265.
```

The exact integer bound lies below `47961/62500=(219/250)^2`
by only approximately `3.27319×10⁻⁶`, whereas its distance below
`81/100=(9/10)^2` is approximately `0.0426273`. The latter is the
more robust initial formal/independent-review target. The source-level
proof obligations are still the *universal correctness* of integer
brackets, full-cell bounds, the gamma lower tail, the original q3
Fourier correspondence, and all integration/operator steps. Replaying
the same finite algorithm, even independently transcribed, is not
itself a proof of those mathematical assertions.

For a cleaner signed-prime budget, the actual <212/M Taylor/period
error and <25601/M lag/phase-roundoff imply a cosine error
<25813/M. If `W=(1/2,35/100,73/100,74/100)` are the actual native
absolute-weight majorants, the four terms and their four integer
floors have aggregate error

```text
< [2*(4*100 + (58/25)*25813) + 4] / M
 = (3014408/25) / M
 = 0.00000012057632 < 0.000001.
```

This also explicitly repairs the 52403/52404 intermediate-bound
ambiguity in §11. The checker’s fixed `10^-6` reserve is not spent
twice. Positive/negative coefficient **signs** are part of the source
binding and must be authenticated against the actual Lean character
and von Mangoldt definitions; the original checker’s absolute-weight
interval checks alone do not authenticate this sign assignment.
Future formal extraction must reject sign-flipped source candidates
*before* running an otherwise internally consistent numerical bound.

### Root and model/harness completion boundary

Even if an independent analytic review accepts the written q3
radius-one Hilbert–Schmidt proof, and a fresh Lean kernel + transitive
axiom check later verifies it, this closes at most the ORIGINAL
`PrimitiveStageLower` for the specified conductor-three/parity-one
`j=0` class. `DirichletStageChain.dirichletGRH_of_source_chains`
has explicit inputs `hRH`, `PrimitiveNegativeWitness` and the
all-character `SmallConductorStages`: that theorem cannot by itself
supply its **own** RH hypothesis or the completed pole-inclusive
negative-test bridge. The full conductor-one zeta and broader primitive
family, all support radii, complete test-domain coverage and source
return remain separate OPEN targets.

[HS journal #2](https://github.com/grwtsk/hs/issues/2) records the
human-stepped mathematical progress; [math observer #1813](https://github.com/grwtsk/math/issues/1813)
owns source-local Lean statement and proof-state semantics;
[HS model #12](https://github.com/grwtsk/hs/issues/12) may ingest
the *observed* source as nonauthoritative model data; and
[Noe harness #76](https://github.com/grwtsk/noeaaeue/issues/76)
must independently check worker/effect receipts before offering a
scoped external API. There was **no** new Lean check, model training,
harness execution or authorized provider effect in this note.

## 13. C0010/T4: executable rational sine-envelope audit

**2026-11-14; grwtsk contributors; AI-assisted.** This section adds a
source-owned reproducible finite arithmetic verifier to the concurrent
**written** all-admissible conductor-three argument of §11. It is not
a new Lean declaration, a kernel check, or independent mathematical review.

The complete Python standard-library checker is
[`scripts/verify_odd_three_sine_hs.py`](../../../scripts/verify_odd_three_sine_hs.py),
Git blob `b35434bed50c8a6ba218d01575e1964cae9a93e6`.
Local command: `python3 /mnt/data/c0010_t4/verify_q3_sine_hs.py`
(Python 3.13.5); exit 0, `FINITE_INTEGER_ASSERTIONS_PASS`.
Script SHA-256: `c7e6323aa011a781c2ef47a7bac0e8c1e3e32149c88778884064282c09d5d177`.
Output SHA-256: `334247935efa70031e5b95cff457f0ca7839756b46ff0e8d58b903594731a6d2`.
Published script bytes are the exact executed bytes, though the source
tree gives the script a functional name.

Reproduced from the original embedded checker in
[hs#2 comment 6886476754](https://github.com/grwtsk/hs/issues/2#issuecomment-6886476754):

```text
tail_m_lower_scaled: 1214817257836 / 1000000000000
positive_deficit_cells: 1381; last_positive_index: 20275
HS_numerator: 124086931321930434849361507294029572022081586296979829
HS_denominator: 161703598507366392702253809664000000000000000000000000
```

Both exact comparisons `100*numerator < 81*denominator` and
`62500*numerator < 47961*denominator` passed. The second
is the §11 written candidate threshold `||B||HS < 219/250`,
subject to the explicit true-function enclosure and source-return
proof obligations in that section.

Additional exact rational subchecks give a **written** universal
trigonometric recurrence error `<212/10^12` for the same integer
sine/cosine algorithm under its stated argument and period limits.
The exact initial Taylor term and twelve rounded updates give
thirteen terms in total. The all-native signed prime-response
error is `<3014408/(25*10^12)<10^-6` at each grid midpoint,
below the embedded checker charge. The finite script separately
checks Machin-pi, logarithm, sqrt, gamma-series tail, derivative
and sinc-grid arithmetic, and enumerates all 32768 frequency cells.
The original source inventory remains n=2,3,4,5,6,7 with
n=3,6 zero weights and a **genuine n=4 prime square**:
`Lambda(4)=log2`, though its shift is `log4`.

Four deliberate mutations—reversing the n=4 response sign, deleting
n=4, collapsing the pi bracket and halving the grid—each caused
the original verifier to exit nonzero in local tests. These negative
controls do not establish correctness against every code error.

**Trust boundary:** This is a finite exact-arithmetic PASS, not
independent checker certification, kernel replay or proof-status
promotion. The printed integers prove an analytic all-test bound
only insofar as the source-to-sine Plancherel normalization, gamma
tail, all-frequency derivative and sinc rectangle enclosures,
and actual complete native signed Weil source identity are proved.
The accompanying §11 gives a **written analytic proof candidate**;
the Lean import, elaboration, transitive axioms, exact statement
correspondence and independent mathematical review remain
`NOT_RUN` or `UNASSESSED`.

Even if the single q=3,j=0 original source stage is independently
accepted, every other conductor/window, both zeta pole orientations,
the genuine `PrimitiveNegativeWitness` and unconditional RH and
primitive Dirichlet GRH including conductor-one zeta remain **UNPROVED**.

## 14. Remove the prime-invariant interval from the signed overlap test

**2026-11-14, grwtsk contributors, AI-assisted.** Written analytic
reduction of (12). Lean elaboration, fresh kernel replay and transitive
axiom audit are NOT_RUN. Independent review is UNASSESSED.

Keep every original admissible real odd C² test f at radius one
for the primitive nonprincipal parity-one character modulo 3.
Let h=f|[0,1] and keep all native w_n, namely (−p,0,a,−b,0,c)
in integer order 2 through 7. The signed residual in (12) is
J(h)=I(h)+Σ_n w_n R_(log n)(h)+2∫₀¹ α(x)h(x)²dx,
with the five-region α in §8 and I(h)=∫₀² K(s)R_s(h)ds.
The actual spatial boundary terms of the original arithmetic
reassembly remain in D of §8.

**Exact continuous decomposition.** In the same-side and reflected
terms of the positive-half overlap, substitute s=|x−y| and s=x+y,
respectively. Symmetry absorbs the factor two in the first term
into the integral over the full square. Thus on [0,1]²,

```text
I(h) = ∬ K(|x−y|)(h(x)−h(y))² + ∬ K(x+y)(h(x)+h(y))²
     = ∬ κ(x,y)(h(x)−h(y))² + 4∫₀¹ U(x)h(x)²dx,
κ(x,y) = K(|x−y|)−K(x+y),    U(x)=∫₀¹ K(x+y)dy.
```

The second equality uses the sum of the plus and minus squares.
The kernel κ is nonnegative off the null diagonal and corner because
K decreases. The integrated terms are finite because h is Lipschitz
at the diagonal and (x+y)⁻¹ is integrable on the square. The defining
integral for U is finite for x>0 and diverges at x=0. Set U(0)=0 as a
Lebesgue-almost-everywhere representative.

Let r=log(2), G=(1−r,2r−1), and O=[0,1]\G. For A=G or O define
J_A^int on h restricted to A by integrating the κ-difference on A²,
the cost (4U+2α) on A, and each native signed atomic integral only
on edges with both endpoints in A. Keep every original square and
its factor in each term. The restrictions are used inside the
integrals as they stand. No separate zero extension is used.

All native nonzero atomic edges lie within G or within O. At r
the same-side endpoints are in [0,1−r] and [r,1], both in O.
The reflection x↔r−x preserves G. At log(n) for n=4,5,7 the
two reflected endpoints are at least log(n)−1≥2r−1. Entries 3 and
6 have zero weight. For u=h|G and v=h|O the exact split is

```text
J(h) = J_G^int(u) + J_O^int(v)
       + 2∫_(G×O) κ(x,y)(u(x)−v(y))²dxdy.
```

**Intrinsic reserve on G.** Here α=2/3, and only the n=2 reflected
square occurs, at cost at most 4p‖u‖² by reflection. The bounds
69/100<r<7/10 give x<2/5 and x+1>13/10 for x in G. Hence
U(x)>∫_(2/5)^(13/10)e^(−3s/2)ds
=(2/3)(e^(−3/5)−e^(−39/20))>2/9.
The cubic lower bound at −3/5 and the first four positive
terms at 39/20 give e^(−3/5)>1/2 and e^(39/20)>6.
Since p<1/2 from r<7/10 and √2>7/5, J_G^int(u)≥(2/9)‖u‖².

**Quantitative return to O.** Write δ=1/9, W_G(x)=∫_O κ(x,y)dy and
P_δ(y)=2δ∫_G κ(x,y)/(δ+2W_G(x))dx. For x in G, W_G(x) is positive
and finite. Distribute δu(x)² over O with density κ(x,y)/W_G(x).
Completing the scalar square gives

```text
(δ/W_G(x))u(x)² + 2(u(x)−v(y))² ≥ [2δ/(δ+2W_G(x))]v(y)².
```

The shared-endpoint singularities on G×O are bounded by
1/[2(s+t)], with s,t distances to the endpoint, and are integrable.
Tonelli gives an integrable density P_δ on O. Its defining integral
diverges at each shared endpoint y₀. For x in G approaching y₀ at
distance s, the bound K(t)≤1/(2t) gives
W_G(x)≤C+(1/2)log(1/s) by integrating on the adjacent component of O.
The other component stays a positive distance away. The small-shift
lower bound K(s)≥1/(2s)−1/3 and bounded K(x+y₀) give
κ(x,y₀)≥1/(4s) for sufficiently small s. The integral of
1/[s(1+log(1/s))] at zero diverges. Choose P_δ=0 at the two shared
endpoints. Tonelli then gives
J(h)≥δ‖u‖²+J_O^int(v)+∫_O P_δ(y)v(y)²dy.

On x∈[1/3,9/25] the distance to O is at least 1/50, so
W_G(x)≤log(50)<4 by K(s)≤1/(2s). Here x+y<7/5, and the first
term of the positive exponential series for K gives
κ(x,y)≥3e^(−21/10)min(x,y)≥e^(−21/10)y>y/10 for y>0.
For the numerical constants, e>8/3 gives e⁴>50, while e²<8
and e^(1/10)≤10/9 give e^(21/10)<10. The interval has length
2/75. Therefore P_δ(y)≥(2/73)(1/10)(2/75)y for almost every y in O,
and the complete inequality reads

```text
J(h) ≥ (1/9)‖u‖² + J_O^int(v) + (2/27375)∫_O y v(y)²dy.
```

To finish this sufficient route, prove the last two terms
nonnegative for every v restricted from the original class. The
continuous kernel and all four nonzero signed prime-power terms
on O remain in its intrinsic form.

**Hostile check.** On separated smooth nonnegative bumps a in G
and b in the interior of O, both away from zero, the interface has
strict negative bilinear term −4ε∫_(G×O)κ a b for h=εa+b.
Its magnitude is of order ε, while any fixed multiple of the pure
G mass is of order ε². The pure G reserve cannot pay that
bilinear term in isolation. The argument above retains the O
diagonal of the same interface. The complementary sign, original
radius-four stage, global zero return, RH and primitive Dirichlet
GRH remain open.

## 15. Coercivity on the exterior support below log(2)

**2026-11-14, grwtsk contributors, AI-assisted.** Written analytic
bound for a subregion of the actual complementary form in §14.
Lean elaboration, fresh kernel replay, and transitive axiom audit
for this increment are NOT_RUN. Independent review is UNASSESSED.

Keep the original admissible real odd C² f for the primitive
nonprincipal odd character modulo 3 at radius one. Let v be the
restriction of h=f|[0,1] to O in §14. Set r=log(2), a₀=1−r,
τ₄=2r−1 and τ₅=log(5)−1. Let L=[0,a₀], M=[τ₄,τ₅) and
N=[τ₅,r]. Assume v vanishes almost everywhere on (r,1]. Write
e_L, e_M and e_N for the respective squared physical masses,
and e_H=e_M+e_N. We prove

```text
J_O^int(v) ≥ (e_L+e_H)/5.
```

In particular the compensated comparator in §14 has this lower
bound as well. This result keeps the actual mixed reflected prime-2
term and the negative prime-5 term on N.

**Exact atoms.** All equations for the restrictions are modulo null
endpoints. The same-side shift by r sees the L mass and zero on
[r,1], while the reflection x↔r−x exchanges L with [τ₄,r].
The reflected prime square sends [τ₄,r] to [r,1]. The prime-5
reflection is active for x≥τ₅ and sends N strictly above r away
from the nonzero support, since log(5)>2r. Finally log(7)−1>r and
the entries 3 and 6 have zero weight. Thus the actual intrinsic
samples satisfy

```text
R_r^O(v)      = 4e_L+2e_H+4∫_L v(x)v(r−x)dx,
R_(log 4)^O(v)= 2e_H,
R_(log 5)^O(v)= 2e_N,
R_(log 7)^O(v)= 0.
```

Here Λ(4)=log(2) and its lag is log(4). Retain the off-diagonal
prime-2 contribution, since it has either sign. Its negative
contribution is bounded below by −4p√(e_L e_H), by physical
Cauchy–Schwarz and the measure-preserving reflection. The continuum
κ-difference in J_O^int is nonnegative by §14. The actual α values
on L, M, N are 1, 3/8, 5/4.

**Diagonal lower bounds.** Use U(x)=∫_x^(x+1)K(s)ds for x>0 as in §14,
with the stated almost-everywhere representative at zero. From
69/100<r<139/200, a₀<1/3. The first three exponential terms of
K on [1/3,1] therefore give, for almost every x in L,

```text
U(x) > (2/3)(3/5−23/100)+(2/7)(3/10−1/30)
                       +(2/11)(3/20−1/100) = 1341/3850.
```

For x∈M, x<5/8 and x+1≥2r>11/8. The first exponential on
[5/8,11/8] yields U(x)>(2/3)(3/8−1/7)=13/84. For x∈N, use
[7/10,11/8] instead to obtain U(x)>(2/3)(1/3−1/7)=8/63.
The following rational bounds justify the evaluations. The first
two positive atanh terms and their geometric remainder enclose
log(2) between 56/81 and 1123/1620. The degree-three alternating
log bound gives log(5/4)<43/192, hence log(5)<81/50. Use
√2>141/100, √5>20/9, 8/3<e<11/4, and e^(1/20)≤20/19.
Alternating Taylor lower cuts at −1/2, −7/6, −11/6, and −15/16
through degrees 3,5,7,5 give, respectively, 3/5, 3/10, 3/20,
3/8 as strict lower comparisons. Positive partial sums at 3/2,
7/2, and 11/2 through degrees 4,6,5 exceed 100/23, 30, 100.
Also e^(33/16)>e²>7 and e^(21/20)<3. Finally e>5/2 and e<7/2
locate τ₅<r<log(7)−1. These inequalities require only rational
comparisons and the signed Taylor remainders.

Now p<99/200 and b<73/100. Including all the diagonal atomic
terms gives the coefficients 4U+2−4p on L, 4U+3/4+r−2p on M,
and 4U+5/2+r−2p−2b on N. The displayed estimates bound them
below by 5441/3850, 449/420, and 3931/3150, respectively. These
exceed 7/5, 16/15, and 16/15, respectively. Hence the full lower
bound, before the extra term of §14, is

```text
J_O^int(v) ≥ (7/5)e_L+(16/15)e_H−2√(e_L e_H)
           ≥ (1/5)(e_L+e_H).
```

The last comparison holds since 6/5 and 13/15 are positive and
their product is 26/25>1. It is a two-variable square estimate
on the actual reflected mixing, with no pointwise phase bound
on the continuum multiplier.

**Why this floor cannot be glued termwise.** Take a smooth
nonnegative nonzero bump A supported in [1/5−η,1/5+η]⊂L, where
0<η<1/100, and B(y)=A(y−r) supported in (r,1). Set v=A−εB for
ε>0 and extend oddly outside the positive half. The difference
between J_O^int(v) and the sum of its two separate quadratic
values is exactly

```text
−4p ε‖A‖² + 4ε∫_(L×(r,1)) κ(x,y)A(x)B(y)dxdy.
```

The atomic cross term is the genuine same-side prime-2 edge.
The other signed atoms have no cross edge between these supports,
and diagonal terms including the §14 allowance have zero cross.
By separation and Cauchy–Schwarz the positive integral is at most
2η K(r−2η)‖A‖² < p‖A‖². Indeed r−2η>67/100, K(s)≤1/(2s),
and p> (69/100)/(3/2). Thus the actual mixed term is strictly
negative and linear in ε, while the upper-supported mass is
quadratic in ε. The two regions cannot be glued by claiming the
mixed term is nonnegative or charging it solely to that upper
mass. This does not assert a negative total comparator. The
remaining above-r and mixed sign, original radius-four stage,
and global RH and primitive Dirichlet GRH returns stay open.

## 16. Upper exterior floor with a separate continuous-interface reserve

**2026-11-14, grwtsk contributors, AI-assisted.** Written analytic
estimate within the same sufficient residual (12), for actual
conductor-three, radius-one restrictions as in §§14–15. Lean
elaboration, fresh kernel replay and transitive axiom audit for this
increment are NOT_RUN. Independent review is UNASSESSED.

For the original real odd admissible C² profile, put r=log(2),
s₅=log(5), τ₄=log(4)−1, and split O into
O_−=[0,1−r]∪[τ₄,r] and O_+=(r,1]. Let v be its positive-half
restriction to O, assumed zero almost everywhere on O_−. Write
H=∫_(O_+)v², I=[r,s₅−r], and ρ(x)=s₅−x. The exact reflected
difference is D₅(v)=∫_I(v(x)−v(ρ(x)))²dx. With the kernel κ of
§14, retain the true zero-lower-region continuous contribution
X(v)=2∫_(O_+×O_−)κ(x,y)v(x)²dxdy. The estimates are

```text
J_O^int(v) − X(v) ≥ H/60 + c R_(log 7)^O(v),
J_O^int(v) ≥ (6/25)H + b D₅(v) + c R_(log 7)^O(v).
```

These are two bounds on the same upper-support form. The second
spends part of X, while the first keeps all of X available as a
separate term. The cross integrals are finite under the §14
almost-everywhere conventions, since the cross-boundary kernel
is bounded by 1/[2(s+t)] in the inward distances s,t.

**Exact source signs.** The n=2 same-side term gives R_r^O=2H
and its reflection sees no upper mass. The n=4 reflection sends
the upper support below r, so R_(log 4)^O=2H. Its native
weight is log(2)/2 because Λ(4)=log(2). The n=5 reflection acts
on all upper mass and has both ends upper exactly in I, giving

```text
R_(log 5)^O = 2H+2∫_I v(x)v(ρ(x))dx = 2H+2∫_I v²−D₅(v).
```

The n=7 sample remains its actual nonnegative reflected square.
Entries 3 and 6 have native zero weights. The actual 2α is at
least 5/2 throughout O_+. Dropping only the nonnegative
continuous difference on O_+² therefore bounds
J_O^int(v)−X(v)−cR_(log 7)^O from below by

```text
∫_(O_+) F₀(x)v(x)²dx − 2b∫_I v(x)v(ρ(x))dx,
F₀(x)=4U(x)+5/2+r−2p−2b.
```

**An upper floor without X.** Put η=1/60. The expansion
U(x)=Σ_(j≥0)(1−e^(−a_j))e^(−a_j x)/a_j, a_j=3/2+2j, is obtained
by positive integration of the full gamma kernel. Thus F₀−η is
a positive constant plus positive exponential terms. Cauchy–Schwarz
on their coefficients gives

```text
(F₀(x)−η)(F₀(ρ(x))−η) ≥ (F₀(s₅/2)−η)².
```

Indeed each geometric mean of corresponding exponential terms
equals that term at the midpoint. The constant is positive from
r>693/1000, p<491/1000 and b<18/25. The midpoint lower bound,
using the first three terms and 5^(−3/4)>299/1000, is

```text
4U(s₅/2) >
(299/1000)[(8/3)(77/100)+(8/7)(29/150)+(8/11)(99/2500)]
= 753181/1093750.
```

For the log comparisons use the first three positive atanh
terms plus the geometric tail at 1/3, and the first term and
tail at 1/9. These yield 693/1000<log(2)<6932/10000 and
log(5/4)<2232/10000. The square-root bounds √2>1413/1000
and √5>559/250 give the stated bounds on p and b. The power
comparison for 5^(−3/4) follows from 125·299⁴<1000⁴.
The exponential comparisons e^(−3/2)<23/100,
e^(−7/2)<1/30 and e^(−11/2)<1/100 follow from positive
Taylor sums through degrees 4,6,5. Hence
F₀(s₅/2)−2b>85849/4375000>η. On a reflected pair the
arithmetic-geometric mean inequality now gives

```text
(F₀(x)−η)v(x)² + (F₀(ρ(x))−η)v(ρ(x))² ≥ 4b|v(x)v(ρ(x))|.
```

Integrate over one half of I. Outside I the positive diagonal
already exceeds η. This proves the first floor with the whole
X kept separate.

**Stronger bound on upper-supported profiles.** Using the exact
difference D₅, the diagonal atomic-and-α coefficient is >−18/25
on I and >37/50 off I, from p<99/200, b<73/100, r>69/100.
It remains to pay the negative coefficient on I from 4U and X.
In X keep only y∈[τ₄,r]. At x∈I we have e^(−x)≥2/5. Therefore
e^(−3x/2)>1/4 and e^(−7x/2)>1/25 by squaring, and the first
two exponential terms of U give 4U(x)>1/2+36/875.

For those same x, each of the first two exponential terms of κ
equals 2e^(−a x)sinh(ay) for y∈[τ₄,r]. Use
2sinh(t)≥2t+t³/3, ∫_(τ₄)^r y dy>81/500 and
∫_(τ₄)^r y³dy>1/20 from r>69/100 and τ₄<39/100.
Writing W(x)=∫_(τ₄)^r κ(x,y)dy gives

```text
2W(x) > 243/1000 + 9/320 + 1134/12500 + 343/6000.
```

Together the exact lower constants for 4U+2W exceed 24/25
by 649/4200000, which pays −18/25 and leaves 6/25 on I.
Off I the standalone diagonal is already larger than 6/25.
The positive bD₅ and cR_(log 7)^O terms are preserved.
The exact boundary potential T(1±x) is separate from U and X
and is unused by these overlap allocations.

**The remaining mixed test.** In the full form, when the lower
profile u on O_− is present, its zero-region contribution to the
upper form is part of the cross square, not a free upper credit.
Subtracting the sum of separate quadratic values gives exactly

```text
 4p∫_[0,1−r] u(x)v(x+r)dx
+4a∫_[τ₄,r] u(x)v(2r−x)dx
−4b∫_[log(5)−1,r] u(x)v(log(5)−x)dx
−4∫_(O_−×O_+) κ(x,y)u(x)v(y)dxdy.
```

The smooth translated-bump example in §15 makes this correction
strictly negative. Neither standalone floor disposes of it.
The compensated all-exterior sign, the original radius-four
stage, and the global RH and primitive Dirichlet GRH source
returns remain open.

## 17. A smooth three-band test that requires the continuous difference

**2026-11-14, grwtsk contributors, AI-assisted.** Written counterexample
to omitting the continuum difference from the sufficient exterior
comparison of §14, with a lower bound for the omitted term on the
same profiles. Lean elaboration, fresh kernel replay and transitive
axiom audit for this increment are NOT_RUN. Independent review is
UNASSESSED.

Keep the actual radius-one real odd C² test class for the primitive
nonprincipal odd character modulo 3. With the notation of §§14–16,
define the displayed sufficient comparator and its reduced form by

```text
C(v) = J_O^int(v)+(2/27375)∫_O x v(x)² dx,
D_κ(v) = ∬_(O×O) κ(x,y)(v(x)−v(y))² dxdy,
S(v) = C(v) − D_κ(v).
```

The five-region α, exact diagonal U and all signed native atoms
remain in S. Only the nonnegative continuous difference is removed.

Let r=log(2), d=log(5/4), t₀=d/2, and 0<η≤1/1000. Choose any
nonzero real C² bump ψ on the real line, supported in
[t₀−η,t₀+η] and even about t₀. For example use the zero extension
of (1−((t−t₀)/η)²)³ on that interval. Let H=∫ ψ². On the positive
half place three copies,

```text
v(t)=−ψ(t)/2,  v(r−t)=−ψ(t),  v(r+t)=ψ(t)
        for t∈[t₀−η,t₀+η],
```

and zero elsewhere. The three bands are in O and away from 0 and 1.
Odd zero extension is C² and has the original full gamma integrability:
the squared shift difference is O(s²) at zero, and bounded at
infinity. The physical half mass is ‖v‖²=9H/4. We prove

```text
S(v) < −(239/1000) H,          C(v) > (319/50) H.
```

**Exact signed atoms.** The log bounds from §16 give
693/1000<r<6932/10000, 2/9<d<2232/10000. The bands lie respectively
in [0,1−r], (log(4)−1,log(5)−1), and (r,log(7)−1). For the
last comparison note log(7)>19/10, since e<11/4 and
e^(1/10)>11/10 give e^(19/10)<55/8<7.
The n=2 same-side and reflected squares have, respectively, the
difference ψ−(−ψ/2) and the sum −ψ/2−ψ. Each has multiplicity two.
The n=4 reflected upper and middle values cancel pointwise.
The n=5 reflection log(5)−x sends r+t to r+d−t, so the even
upper bump retains its sign and doubles; the other bands lie below
its active cutoff. The n=7 square is zero on this support, and
n=3,6 have native zero weights. Thus

```text
R₂^O=9H,  R₄^O=0,  R₅^O=4H,  R₇^O=0.
```

The n=4 coefficient is still log(2)/2, with lag log(4). The α
charge is 15H/4: its three values are 1,3/8,5/4 with amplitude
squares 1/4,1,1. The displayed §14 allowance is at most
(2/27375)(9/4)H < H/1000.

**Strict failure of the reduced sign.** On the low band x>1/10,
so U(x)≤(1/2)log((x+1)/x)<(1/2)log(11)<5/4 by (15) and the
global upper bound K(s)≤1/(2s). The final logarithm comparison
follows from the positive exponential sum through degree five
at 5/2, which exceeds 11. On either higher band use
q=e^(−2x) and the full positive series for U to get

```text
U(x) ≤ q^(3/4)[8/15+(2/7)q/(1−q)].
```

Here e^(3/2)<5 follows from e<11/4, and all terms after the
first have rates at least 7/2. At the middle and upper centers,
q is respectively 5/16 and 1/5. Within η the factors change by
at most e^(2η)≤500/499. Thus on the middle band q<8/25,
q^(3/4)<43/100, and on the upper band q<201/1000,
q^(3/4)<31/100. The power bounds follow by fourth powers.
Substitution gives U<29/100 and U<19/100 on the two bands.
These compare every value on the bands, including their edges.

The total U charge per H is therefore less than
5/4+4(29/100+19/100). Meanwhile p=log(2)/√2>12/25
and b=log(5)/√5>71/100, using √2<10/7, √5<9/4,
log(2)>69/100, and log(5)=2r+d>69/50+2/9.
Including the diagonal terms and all native signs gives

```text
S(v)/H <
5/4+4(29/100+19/100)+15/4+1/1000 −9(12/25)−4(71/100)
= −239/1000.
```

**Continuous payment on the same profiles.** For every x in a
support band, both points y=x±s with 2η<s<1/25 lie in O and
outside all three support bands. Indeed the radius η+1/25
neighborhoods of the three centers are disjoint and inside O
by the above log brackets. In these pairs x+y>1/6, so
K(x+y)≤3. The lower bound (15) then gives
κ(x,x±s)≥1/(2s)−10/3. Both signs of s and both orders of each
support-to-zero pair are present in D_κ. Therefore

```text
D_κ(v) ≥ ‖v‖²[2log(1/(50η))−(40/3)(1/25−2η)].
```

This estimate does not integrate the naked singular kernel at
zero. For η≤1/1000 the logarithm exceeds 5/2 since
e^(5/2)<(11/4)²·2<20. Hence D_κ(v)>(201/20)H.
Keeping the positive diagonal and actual allowance,
S(v)≥(15/4−9/2−4·73/100)H=−(367/100)H by p<1/2 and b<73/100.
It follows that C(v)>(319/50)H as claimed.

This is a strict counterexample to the reduced sign S≥0 with the
displayed linear allowance. The same inputs satisfy the full
comparator with an explicitly paid continuous term. The
zero-neighbor estimate uses their three narrow bands and does
not assert a uniform logarithmic reserve for arbitrary profiles.
The full mixed exterior sign, original radius-four stage and
global RH and primitive Dirichlet GRH returns remain open.

## 18. Coercivity on the entire signed exterior

**2026-11-14, grwtsk contributors, AI-assisted.** Written analytic
proof with exact rational interval certification. Lean elaboration,
fresh kernel replay and transitive axiom audit are NOT_RUN.
Independent review is UNASSESSED.

For every original `DirichletStageChain.Admissible` real odd C² test
at radius one for the primitive nonprincipal character modulo three,
let h be the positive-half profile and v=h|O as in §14. Write
`C(v)=J_O^int(v)+(2/27375)∫_O x v(x)² dx`. The full exterior bound is

```text
C(v) ≥ ‖v‖²/100 + c R_(log 7)^O(v).
```

This proves (12) on its entire original test class by §14. The
estimate permits arbitrary original restrictions, including profiles
that are nonzero throughout O and unrelated on reflected pairs.

### Continuous payment for the actual reflected contrast

Put r=log(2), A=1−r, d=log(5/4), L=[0,A] and Z=[2r−1,1]. Up to null
endpoints O=L∪Z. For t∈[0,A] write l(t)=v(t), m(t)=v(r−t) and
u(t)=v(r+t). The exact exterior continuous difference from §14 is
Dκ(v). Within Z², parametrize the four blocks by (r±t,r±s).
Since K is decreasing, the two same-side kernels are bounded below
by `K(|t−s|)−K(2r−t−s)`. The two cross kernels are bounded below
by `B(t,s)=K(t+s)−K(2r−|t−s|)`. This B is nonnegative because
t+s≤2A<r. The same-side lower kernel also dominates B. In fact,
with a=|t−s| and z=t+s, convexity gives
`K(a)−K(z) ≥ K(2r−z)−K(2r−a)` by comparing two intervals
of equal length, the first entirely before the second. Convexity
follows from the positive exponential series for K. All comparisons
are off null sets, and apply to nonnegative integrals.

Write q(t)=(m(t)+u(t))/2. Summing the squares over both signs in both
variables gives
`4(q(t)−q(s))²+(u(t)−m(t))²+(u(s)−m(s))²`.
Consequently,

```text
Dκ(v) ≥ ∫_[0,A] β(t)(u(t)−m(t))² dt,
β(t)=2∫_[0,A] [K(t+s)−K(2r−|t−s|)] ds.
```

This only uses the Z² block and spends its lower bound once.
For 0<t≤A a scalar lower envelope is

```text
β(t) ≥ log(1+A/t) − A(1/2+(t+A/2)/5+2/15+23/100).
```

`sinh z/z ≤ 1+(z²/6)/(1−z²/20)`: after the z² term each
successive coefficient ratio is at most 1/20 before the z² factor.
Use `K(z)=e^(−z/2)/(2 sinh z)`, `e^(−z/2)≥1−z/2` and
`(1+x)^−1≥1−x` for x≥0. In applying the reciprocal bound, use
`(1−z/2)(1−x)≥1−z/2−x` for x≥0. It follows that
`K(z) ≥ 1/(2z)−1/4−z/10`, since `1/[12(1−z²/20)]<1/10`.
Here 2A<5/8. For the other kernel, `K(2r)=2/15` and
`K(2r−A)<23/100`. For the latter use the exact expression
`K(3r−1)=e^(3/2)/(2^(9/2)(1−e²/64))`, bounded above using
`e<11/4`, `(11/4)^(3/2)<457/100`, and `sqrt(2)>141/100`.
The bound by 23/100 follows by multiplication. Convexity bounds
`K(2r−w)` above by the linear interpolation between the two
endpoint upper bounds for 0≤w≤A. The average of |t−s| over
s∈[0,A] is `[t²+(A−t)²]/(2A)≤A/2`. Integrating the two
bounds gives the stated β envelope.

### Native atomic identities and the prime-five reserve

Use the native weights (−p,0,r/2,−b,0,c) in order 2 through 7.
The same-side n=2 atom and its reflection on O give
`R₂^O=2∫[(u−l)²+(l+m)²]`, and the n=4 reflection gives
`R₄^O=2∫(u+m)²`, with both integrals over [0,A].
These account for both reflected endpoint orders. In particular
the n=4 coefficient is r/2 because Λ(4)=log(2). The sum of
their signed integrands is exactly

```text
−4p l² + 4p l(u−m) − p(u−m)² + (r−p)(u+m)².
```

For n=5, put J=[log(5)−1,1] and ρ(x)=log(5)−x. Its native
signed square rewrites as
`−bR₅^O = −4b∫_J v² + b∫_J (v(x)−v(ρ(x)))² dx`.
Keep the original n=7 positive square cR₇^O unchanged. Entries
3 and 6 have native zero weights.

Use the source potential `4U+2α` from §14. The coefficient of l²
including its n=2 contribution is `4U(t)+2−4p`. Set ε=1/100
and reserve εl². The remaining coefficient is positive, so completing
the l square with the mixed n=2 term bounds its net cost on the
contrast by `4p²/(4U(t)+2−4p−ε)`. Positivity of the denominator
also follows from 2−4p−ε>0 by §16. Thus the remaining adverse
contrast coefficient after paying the continuum is

```text
W(t)=p+4p²/(4U(t)+2−4p−ε)−β(t).
```

The diagonal coefficients for m and u at this point are
`4U(r∓t)+2α(r∓t)−4b·1_J(r∓t)`. Reserve from the middle and upper
diagonals respectively (2/5,2/5) for t<35/1000, and (7/10,0)
for 35/1000≤t<85/1000. Their feasibility will follow from the final
matrix check after subtraction.

Select upper points x=r+t for t≥190/1000. Every such point is
in J. Its n=5 partner is u(d−t) for t≤d, and m(t−d) for t>d.
The bounds (2/9<d<2232/10000) imply that the upper partner has
label below 35/1000 and the middle partner has label below 85/1000.
For t≥259/1000 the middle partner has label above 35/1000.
The selected edges are used in both orders in the positive n=5
difference. They are counted once in each order because the
partner labels are disjoint from the selected upper labels. The
maps t↦d−t and t↦t−d have absolute Jacobian one, and the two
partner types use separate diagonals. Hence the reserved diagonal
can be used once for each partner.

For an edge from U to V with reserve λV², the scalar inequality
`2b(U−V)²+λV²≥[2bλ/(2b+λ)]U²` follows by completing the
square. Use 2b>7/5. Spend λ=2/5 for t<259/1000 and λ=7/10
for t≥259/1000. The resulting upper diagonal credits are 14/45
and 7/15 respectively. All unused reserves and positive n=5
differences may be dropped.

### Pointwise check on every label

The remaining expression, after setting aside ε(m²+u²), has
diagonals (M(t)+r−p−W(t)−ε, U_*(t)+r−p−W(t)−ε) and
off-diagonal (r−p+W(t)). Here M and U_* are the two physical
diagonal coefficients after the stated reserves and credits.

The verifier below checks a **lower** matrix on every rational
half-open cell [i/1000,(i+1)/1000), i=0,…,306. These cells cover [0,A].
All assertions use exact rational arithmetic. In the matrix order,
replacing r−p by a lower bound and W by an upper bound is valid
because they multiply the separate squares (u+m)² and −(u−m)².
For the two physical diagonals, U decreases, so evaluate its lower
envelope at the largest possible input in the cell. For t<85/1000
use (2α(r−t)−4b·1_J(r−t)≥5/2−4(18/25)), valid even on
the small portion outside J. At and above 85/1000 the middle label
is outside J and (2α=3/4). Upper labels are all in J and
(2α≥5/2); for t≥253/1000 they satisfy (2α=11/4).
For this last cutoff, (e^{1253/1000}>7/2) by the exponential
sum through degree seven. The other log, weight and exponential
brackets are those of §§16–17.

The bound for (4U(x)) retains the first eight nonnegative terms
of the integrated exponential series. The odd Taylor polynomial
through degree seven at −x/2 bounds e^(−x/2) below and remains
positive on all evaluation points. For rates 3/2, 7/2 and
11/2 use (1−e^{-a_j}>77/100,29/30,99/100) respectively,
with the last bound valid at all later rates. The lower log
envelope uses the first fourteen positive atanh terms. Both
envelopes are valid at the actual endpoints, independently of
the function v. The cell containing zero evaluates the log
envelope at its positive right endpoint. All divisions in the
check have positive denominators.

```python
from fractions import Fraction as F
from math import factorial

r_lo, r_hi = F(693, 1000), F(6932, 10000)
a_lo, a_hi = 1 - r_hi, 1 - r_lo
p_hi, b_hi = F(491, 1000), F(18, 25)
delta, eps = r_lo - p_hi, F(1, 100)

def four_U_lower(x):
    q = sum((-x / 2)**k / factorial(k) for k in range(8))
    assert q > 0
    factors = (F(77, 100), F(29, 30)) + (F(99, 100),) * 6
    return sum(8 * c * q**(3 + 4*j) / (3 + 4*j)
               for j, c in enumerate(factors))

def log_one_plus_lower(x):
    z = x / (2 + x)
    return sum(2 * z**(1 + 2*j) / (1 + 2*j) for j in range(14))

assert sum(F(1253, 1000)**k / factorial(k) for k in range(8)) > F(7, 2)
assert F(457, 100)**2 > F(11, 4)**3
assert F(457, 100) / (16 * F(141, 100) * (1 - F(11, 4)**2/64)) < F(23, 100)
for i in range(307):
    t0, t1 = F(i, 1000), F(i + 1, 1000)
    middle = four_U_lower(r_hi - t0) + (
        F(5, 2) - 4*b_hi if i < 85 else F(3, 4))
    upper = four_U_lower(r_hi + t1) + (
        F(5, 2) if i < 253 else F(11, 4)) - 4*b_hi
    if i < 35:
        middle -= F(2, 5)
        upper -= F(2, 5)
    elif i < 85:
        middle -= F(7, 10)
    if i >= 190:
        upper += F(14, 45) if i < 259 else F(7, 15)
    beta_lower = log_one_plus_lower(a_lo / t1) - a_hi * (
        F(1, 2) + (t1 + a_hi/2)/5 + F(2, 15) + F(23, 100))
    denominator = four_U_lower(t1) + 2 - 4*p_hi - eps
    assert denominator > 0
    w_upper = p_hi + 4*p_hi**2 / denominator - beta_lower
    aa, bb = middle + delta - w_upper - eps, upper + delta - w_upper - eps
    off = delta + w_upper
    assert aa > F(3, 5) and bb > F(23, 100)
    assert aa*bb - off**2 > F(7, 100)
print("PASS 307 rational exterior cells")
```

The positive principal minors certify the lower matrix at every
label, beyond grid points or a finite-dimensional test space.
Adding back the three ε reserves and unchanged cR₇^O proves
the claimed exterior bound. The nonnegative allowance stays
available. The four continuous blocks supply the contrast
estimate on arbitrary profiles, including values in the §17
zero neighborhoods. The §17 counterexample to deleting Dκ persists.

### Return to the original source

Section 14 now gives
`J(h) ≥ ‖h|G‖²/9 + ‖h|O‖²/100 + cR₇^O ≥ ‖h‖²/100`.
This discharges (12). Section 8 retains the full source gamma
boundary terms $T(1-x)+T(1+x)$, the exact conductor constant
and the six native atoms, and contributes $E/100$ from
$D≥α+1/100$ with $E=2‖h‖²$. Therefore the exact original
`primitiveArithmeticValue χ hp hn 1 (liftReal f)` satisfies
$Q_{\chi,1}\ge-197E/200$ by this physical argument. This is a
second written route to the specific radius-one lower obligation.
The earlier sine-envelope certificate in §11 already provides
the numerically stronger written bound $Q_{\chi,1}\ge-219E/250$.
The routes share the original source and its support hypotheses.

The first new conductor-three stage in the journal is j=3 at radius
four. The required bound is Q_(χ,4)≥−E/8. Its cutoff is n≤2980,
with 458 nonzero unramified prime-power terms, and its sine Gram
requires the corrected Schur sign. The preceding radius-two and
radius-three certificates retain their historical evidence scopes.
The radius-four estimate remains open. The physical source identities
and this argument still need formal correspondence and the usual
exact-source Lean checks. The universal Weil sign, both
conductor-one pole orientations, every primitive
character/window, `DirichletStageChain.PrimitiveNegativeWitness`,
complex zeros and multiplicities, and the exact global source
returns remain open. RH and primitive Dirichlet GRH are unproved.

## 19. Tighter continuum allowances for the radius-one certificate

The [Courtade–Kumar proof](https://arxiv.org/abs/2609.24931v2) uses local analytic inequalities, a finite interval certificate, and a return to the original global statement. The same proof structure applies to the original radius-one rectangle in §11. The following two analytic estimates tighten different terms in its interval enclosure. The original signed prime response, gamma sum, normalization, support, and target `DirichletStageChain.PrimitiveStageLower χ hp hn 0` are the ones in §11. See [math issue 1814](https://github.com/grwtsk/math/issues/1814).

### A uniform eight-Lipschitz bound

For \(a>0\) let \(p_a(t)=2t^2/[a(a^2+t^2)]\). The parity-one term in `OddMultiplierBounds.periodicMultiplierTerm` is \(p_{(4j+3)/2}\). Set \(u=|x|/a\), \(v=|y|/a\), \(m=(u+v)/2\), and \(d=(u-v)/2\). Factoring the difference of squares in the numerator and using \(|x+y|\le |x|+|y|\) gives

\[
|p_a(x)-p_a(y)|\le \frac{2|x-y|}{a^2}\frac{u+v}{(1+u^2)(1+v^2)}.
\]

If \(0\le m\le1\), the denominator equals \((1+m^2)^2+2(1-m^2)d^2+d^4\). The first term alone is at least \(3m\) by the identity

\[
(1+m^2)^2-3m=(m-\tfrac12)^2(m^2+m+\tfrac34)+2(m-\tfrac58)^2+\tfrac1{32}.
\]

If \(m\ge1\), the denominator is \((1-uv)^2+(u+v)^2\ge4m^2\ge3m\). In both cases \(u+v\le (2/3)(1+u^2)(1+v^2)\). Thus the term Lipschitz constant is \(4/(3a^2)=16/[3(4j+3)^2]\). The estimate includes zero, opposite signs, and unbounded real frequencies. As a hostile check on stronger coefficients, at \(a=1,x=1/2,y=2/3\) the exact secant ratio is \(84/65>5/4\).

For \(j\ge1\), \((4j+3)^2=(4j+1)(4j+5)+4\), so

\[
\frac{8}{(4j+3)^2}\le\frac2{4j+1}-\frac2{4j+5}.
\]

Sum from \(j=1\) through \(N\), use the resulting bound \(2/5\), and retain the \(j=0\) term. The existing `periodicMultiplier_summable` at \(x\) and \(y\) lets the finite difference estimate pass to the full series. The full gamma variation coefficient is at most \((2/3)(8/9+2/5)=116/135\). For the signed prime response, the original source enclosures give \(2\sum |w_n|\log n\le3561/500\) over the nonzero rows \(n=2,4,5,7\). The cosine Lipschitz estimate and the triangle inequality therefore give a combined coefficient at most \(107747/13500<8\) for the full original multiplier. At cell half-width \(1/256\), the resulting allowance is \(1/32\).

### Joint variation of the two sinc terms

Let \(K(x,y)=\operatorname{sinc}(x-y)-\operatorname{sinc}(x+y)\), using the original `Real.sinc` convention. For displacements \(u,v\) from the cell midpoints, apply `OddSineKernelOverlap.abs_sinc_sub_sinc_le` with Lipschitz constant \(1/2\) to the difference and sum arguments. Then

\[
|K(x+u,y+v)-K(x,y)|\le\tfrac12(|u-v|+|u+v|)=\max(|u|,|v|).
\]

The equality follows by taking the larger absolute displacement and considering its sign. The pair-cell allowance is at most \(1/256\), including on diagonal cells. Both fixed-point sinc approximation allowances and the existing lower enclosure of \(\pi\) remain in the integer arithmetic.

### Exact finite replay and source return

On the pinned `scripts/verify_odd_three_sine_hs.py` blob `b35434bed50c8a6ba218d01575e1964cae9a93e6` at `f397245883b77886c6431083ec5902ed222e352b`, an isolated replay compared the four combinations of midpoint and sinc allowances. It replaced `9*S//(2*GRID)` by `8*S//(2*GRID)` and `S//GRID` by `S//(2*GRID)` in the corresponding variants and adjusted only the expected positive-cell counts. With `S=10**12` and `GRID=128` all these divisions are exact. Each replay enumerated all 32768 cells. The variant using both estimates retained 1377 positive envelopes and last positive index 20274. The exact rational candidate upper bound for the squared norm is

\[
\frac{15223225953283754189915298350612102673158177815997781}{20212949813420799087781726208000000000000000000000000}
\quad(\approx 0.753142223).
\]

The original finite replay gave approximately \(0.767372727\). In all four runs the exact integer threshold comparisons passed. A Lean proof still has to bind the midpoint enclosures, the signed terms, rounding and full cell coverage to `sineDeficitRectangle 256 (q3SineDeficit χ)`. The existing conditional stage return then accepts the rectangle bound at most one. Source-local Lean elaboration, fresh kernel replay, transitive axiom audit, and independent analytical review for this increment are `NOT_RUN`. This increment addresses the single radius-one lower obligation. RH and primitive Dirichlet GRH remain open.

