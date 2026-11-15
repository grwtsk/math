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
