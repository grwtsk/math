# Original Weil forms: non-vacuous high-modulation positivity on supported tests

Local author: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26, 11M06, 42A38, 46E35, 47A12.

**Evidence:** WRITTEN_ANALYTICAL_ARGUMENT; a separate EXACT_RATIONAL_FINITE_ALGEBRA_TEST is RUN. Lean elaboration, complete build, fresh kernel replay, transitive axiom audit and independent mathematical review: **NOT_RUN / UNASSESSED**. Originality **UNASSESSED**. This does not prove RH, primitive GRH, universal Weil positivity or a zero-free statement.

## Source, consumer and genuine test domain

Work with the unchanged arithmetic source in [WeilFullFrequencyTail.md](WeilFullFrequencyTail.md), §§1–5 (WFFT-A–C), and the exact conductor-one signed pole return in [WeilZetaPoleRankOneReturn.md](WeilZetaPoleRankOneReturn.md), §§1–3. The Fourier/Plancherel source return is WRITTEN there, not a fresh kernel-certified declaration. The consumer is the original source-specific full Weil form and the finite negative-index analysis in [WeilSignedDeficitNegativeIndex.md](WeilSignedDeficitNegativeIndex.md): the result below gives an explicit *positive* admissible subspace of arbitrarily large finite dimension at **every** fixed window, including zeta with BOTH real signed pole orientations.

Fix **every** support radius `A>0`, **every** primitive Dirichlet character `chi` of exact conductor `q>=1`, and every `g ∈ C_c^∞((-A,A);C)` with zero extension to the real line. For `q=1`, `chi=1` and `L(s,chi)` is the actual analytically continued Riemann zeta function. For `q>1`, `chi` is primitive nonprincipal. Put `a=gammaParity(chi)∈{0,1}`, `b=a+1/2`, and

\[
\begin{gathered}
w_n=\frac{\Lambda(n)}{\sqrt n},\quad
I_A=\{n\ge2: n<e^{2A}\},\quad
c=\log(q/\pi)+\psi_\Gamma(1/4+a/2),\\
\Gamma_b(f)=\int_0^\infty
\frac{e^{-br}}{1-e^{-2r}}\|f(\cdot+r)-f\|_2^2\,dr,\\
S_{\chi,A}(f)=2\sum_{n\in I_A}w_n\,
\Re\!\big(\overline{\chi(n)}C_f(\log n)\big),\quad
C_f(r)=\int_\mathbb R\overline{f(t)}f(t+r)\,dt.
\end{gathered}\tag{WSMP.1}
\]

The inventory includes **all prime powers** and every non-prime-power with its true zero von Mangoldt weight. Character phases remain complex and ramified values vanish. The actual arithmetic form is

\[
Q_{\chi,A}(f)=c\|f\|_2^2+\Gamma_b(f)-S_{\chi,A}(f)+\delta_{q=1}P_\zeta(f),\quad
P_\zeta(f)=M_+(f)\overline{M_-(f)}+M_-(f)\overline{M_+(f)},\quad
M_\pm(f)=\int_{-A}^A e^{\pm t/2}f(t)\,dt.
\tag{WSMP.2}
\]

Both original zeta pole orientations are preserved; **not** replaced by `|M_+|²+|M_-|²`. The smooth supported test is in the true logarithmic form domain because for small `r`, `||f(.+r)-f||₂ ≤ r||f'||₂`, while `k_b(r) = O(1/r)`, and for large `r`, the compensated kernel decays exponentially. No invented independent Fourier-projected test is admitted.

## WSMP-v1-1: explicit original signed Fourier multiplier

Use the angular-minus convention
\(\widehat f(\xi)=\int_\mathbb R f(t)e^{-i\xi t}\,dt\).
By the actual finite correlation identity and Plancherel,

\[
C_f(r)=\frac1{2\pi}\int_{\mathbb R}e^{i\xi r}|\widehat f(\xi)|^2\,d\xi,
\quad \Psi_b(\xi)=2\int_0^\infty
\frac{e^{-br}}{1-e^{-2r}}(1-\cos(\xi r))\,dr.
\]

All integrals genuinely converge for smooth compact tests. Tonelli applies to the nonnegative compensated gamma integrand, and the integer prime inventory is finite. Define

\[
\begin{aligned}
P_{\chi,A}(\xi)&=2\sum_{n\in I_A} w_n\,
\Re\big(\overline{\chi(n)}e^{i\xi\log n}\big),\\
m_{\chi,A}(\xi)&=c+\Psi_b(\xi)-P_{\chi,A}(\xi),\\
\mathcal M_{\chi,A}&=2\sum_{n\in I_A}w_n|\chi(n)|,\qquad
D_{\chi,A}=\mathcal M_{\chi,A}+|c|.
\end{aligned}\tag{WSMP.3}
\]

The **actual** form—not a positive comparator—has the source return

\[
Q_{\chi,A}(f)=\frac1{2\pi}\int_\mathbb R
m_{\chi,A}(\xi)|\widehat f(\xi)|^2\,d\xi
+\delta_{q=1}P_\zeta(f).
\tag{WSMP.4}
\]

There is **no symmetry assumption** `m(ξ)=m(-ξ)` for nonreal `chi`. The only absolute-value comparison is used AFTER defining the original signed symbol: `|P_{chi,A}(ξ)|≤M_{chi,A}`.

**Gamma lower bound, with a direct proof.** Since `1-e^{-2r}≤2r` for `r>0`,
\[
\Psi_b(\xi)\ge\int_0^\infty e^{-br}\frac{1-\cos(\xi r)}r\,dr
=\tfrac12\log(1+\xi^2/b^2).
\tag{WSMP.5}
\]
The displayed integral identity follows by differentiating in real `ξ`: the derivative is `∫₀^∞ e^{-br} sin(ξr)dr = ξ/(b²+ξ²)`, and both sides vanish at `ξ=0`. Differentiation is dominated on compact `ξ`-sets. Consequently `m(ξ)≥−D` at every frequency and, for arbitrary `κ>0`,

\[
T_{\chi,A}(\kappa):=b\exp(D_{\chi,A}+\kappa)
\quad\Longrightarrow\quad
m_{\chi,A}(\xi)\ge\kappa\quad(|\xi|\ge T_{\chi,A}(\kappa)).
\tag{WSMP.6}
\]

The latter follows from `½ log(1+ξ²/b²) ≥ log(|ξ|/b)` and `c+|c|≥0`. No positivity of the full signed symbol inside the finite low-frequency interval is assumed.

## WSMP-v1-2: exact signed zeta pole budget, not a pole-neutral restriction

For `q=1` retain the identity
\[
2P_\zeta(f)=|M_+(f)+M_-(f)|^2-|M_+(f)-M_-(f)|^2.
\]
By Cauchy–Schwarz on the **centered original support** `[-A,A]`,
\[
\begin{aligned}
P_\zeta(f)&\ge-\tfrac12|M_+(f)-M_-(f)|^2\\
&\ge-\tfrac12\|f\|_2^2
  \int_{-A}^A|e^{t/2}-e^{-t/2}|^2dt\\
&=-2(\sinh A-A)\|f\|_2^2.
\end{aligned}\tag{WSMP.7}
\]

This bound is **sharp** for the full original signed pole kernel as an `L²[-A,A]` operator: the odd moment vector `e^{t/2}-e^{-t/2}` makes the positive moment sum vanish. The bound stays valid on the smooth source test subspace by density. Set

\[
B_{\chi,A}=\begin{cases}2(\sinh A-A),&q=1,\\0,&q>1.\end{cases}
\tag{WSMP.8}
\]

Thus the **complete** pole-inclusive form satisfies `Q(f) ≥ ∫m|F|²/(2π)−B||f||²`. For the primitive nonprincipal case no zeta pole is inserted. This estimates the actual negative pole direction; it does not falsely declare the pole positive.

## WSMP-v1-3: non-vacuous supported high-modulation theorem

Fix **any** `σ>0`. Define the explicit, finite source-dependent constants
\[
\kappa=B_{\chi,A}+2\sigma,\quad
D=D_{\chi,A},\quad
T=b\exp(D+\kappa).
\tag{WSMP.9}
\]

**Theorem.** For every nonzero `g ∈ C_c^∞((-A,A);C)` and every REAL modulation `ν` with `|ν|>T`, define the **genuinely supported** original test `f_ν(t)=e^{iνt}g(t)`. Then

\[
\boxed{
Q_{\chi,A}(f_\nu)\ge
2\sigma\|g\|_2^2-
\frac{\kappa+D}{(|\nu|-T)^2}\|g'\|_2^2.
}\tag{WSMP.10}
\]

In particular, if
\[
\boxed{
|\nu|\ge T+
\sqrt{\frac{\kappa+D}{\sigma}}\,
\frac{\|g'\|_2}{\|g\|_2},
}\tag{WSMP.11}
\]
then `Q_{chi,A}(f_ν) ≥ σ||g||² >0`. This is **unconditional** for every fixed primitive source including conductor-one zeta, every support `A>0`, both frequency signs and every original smooth compact test. The threshold depends explicitly on the exact prime-power inventory, conductor, gamma parity, two signed zeta poles when applicable, the support and the chosen template's derivative-to-mass ratio. It does **not** assert one threshold works uniformly for every template `g`.

**Proof.** Plancherel on the true supported `g` gives
`||f_ν||₂=||g||₂`, `F_{f_ν}(ξ)=F_g(ξ−ν)` and

\[
E_{<T}:=\frac1{2\pi}\int_{|\xi|<T}|\widehat{f_\nu}(\xi)|^2d\xi
\le\frac{\|g'\|_2^2}{(|\nu|-T)^2},
\tag{WSMP.12}
\]

since `|ξ−ν|≥|ν|−T` on the low band and the exact Fourier derivative identity is
`||g'||₂²=(2π)^{-1}∫ω²|F_g(ω)|²dω`.

First evaluate the **original complete form** (WSMP.4) on `f_ν`. Split only its genuine frequency integral, not the compact-support test. On `|ξ|≥T`, (WSMP.6) gives `m≥κ`; on `|ξ|<T`, the global source estimate gives `m≥−D`. The pole estimate (WSMP.7), where applicable, is `≥−B||g||²`. Thus

\[
\begin{aligned}
Q_{\chi,A}(f_\nu)
&\ge\kappa(\|g\|_2^2-E_{<T})-D E_{<T}-B_{\chi,A}\|g\|_2^2\\
&=(\kappa-B_{\chi,A})\|g\|_2^2-(\kappa+D)E_{<T}\\
&=2\sigma\|g\|_2^2-(\kappa+D)E_{<T},
\end{aligned}
\]
which with (WSMP.12) proves (WSMP.10), then (WSMP.11). QED.

**Finite-dimensional source consumer.** Let `E⊂C_c^∞((-A,A);C)` be ANY N-dimensional complex subspace, with `N>=1`. By finite dimensionality,
\(R_E=\sup_{g\in E\setminus\{0\}}\|g'\|_2/\|g\|_2<\infty\).
Choose one `ν` satisfying
\[
|\nu|\ge T+\sqrt{(\kappa+D)/\sigma}\,R_E.
\]
Then the *linear* N-dimensional subspace `e^{iνt}E` consists entirely of genuine supported tests and satisfies
\[
Q_{\chi,A}(f)\ge\sigma\|f\|_2^2
\qquad(f\in e^{i\nu t}E).
\tag{WSMP.13}
\]
For every `N`, such an `E` exists (choose N independent smooth bumps with disjoint subinterval supports). Hence the original Weil form has **infinite positive index at EVERY fixed support**, even if its negative index is nonzero. This is a valid source-return consequence of the previous high-frequency multiplier but not a universal `hpositive` supplier.

## WSMP-v1-4: sharp leading high-modulation growth of the original form

The previous theorem proves explicit eventual positivity without needing a
pointwise *upper* asymptotic for the gamma multiplier. The true leading growth
can also be identified, and it is uniform across **both signs** of the
modulation for each fixed source and template.

**Theorem.** For EVERY fixed `A>0`, primitive `chi` of conductor `q>=1`
(including zeta `q=1`), and `g∈C_c^∞((-A,A);C)`, one has

\[
\boxed{
Q_{\chi,A}(e^{i\nu t}g(t))
=\|g\|_2^2\log|\nu|+O_{\chi,A,g}(1)
\quad\text{as }|\nu|\to\infty.
}\tag{WSMP.14}
\]

In particular, for every nonzero such `g`, the quotient by
`log|ν|` tends to **exactly** `||g||₂²`; its leading coefficient
is not an artifact of replacing the original gamma kernel.

**Proof.** The actual compensated gamma kernel satisfies
\[
k_b(r)=\frac{e^{-br}}{1-e^{-2r}}
=\frac1{2r}+O_b(1)\quad(r\downarrow0),
\quad k_b(r)=O_b(e^{-br})\quad(r\to\infty).
\]
Thus `R_b(r)=k_b(r)-e^{-r}/(2r)` belongs to `L¹(0,∞)`.
The same exact Frullani integral used in (WSMP.5) with `b=1`
shows
\[
\begin{aligned}
\Psi_b(\xi)
&=\tfrac12\log(1+\xi^2)
 +2\int_0^\infty R_b(r)(1-\cos(\xi r))dr,\\
&=\log|\xi|+O_b(1)\quad(|\xi|\to\infty).
\end{aligned}\tag{WSMP.15}
\]
The remainder is bounded by `4||R_b||₁` for **all** real
frequencies. It follows also that
`|Psi_b(xi)| <= C_b+log(1+|xi|)` for every real `xi`.

Plancherel and the **actual supported** modulation give
\[
\Gamma_b(e^{i\nu t}g)
=\frac1{2\pi}\int_\mathbb R
\Psi_b(\nu+\omega)|\widehat g(\omega)|^2d\omega.
\]
On `|omega|<=|nu|/2` use (WSMP.15) and
`log|nu+omega|=log|nu|+O(1)` uniformly. On the
complement, the Schwartz decay of the transform of this
**smooth compact** `g` bounds the integral of
`[C_b+log(1+|nu|+|omega|)]|F_g(omega)|²`
by `o(1)`; the tail of `||g||² log|nu|` is also `o(1)`.
Hence
\[
\Gamma_b(e^{i\nu t}g)=\|g\|_2^2\log|\nu|+O_{b,g}(1).
\tag{WSMP.16}
\]

For EVERY original active prime power the **exact** phase law is
\[
C_{e^{i\nu t}g}(\log n)
=e^{i\nu\log n}C_g(\log n).
\]
The complete signed sum (WSMP.1) therefore has absolute value
at most `M_{chi,A}||g||²`, uniformly in both signs of `nu`.
For conductor-one zeta, integrate by parts against the compact
smooth factors `e^{±t/2}g(t)` to get
`M_±(e^{i nu t}g)=O_{A,g,N}(|nu|^{-N})`
for every positive integer `N`. Thus the **actual cross-paired
signed pole** is `O_{A,g,N}(|nu|^{-2N})`, not a pole-neutral
or sign-changed term. For primitive q>1 it is absent.
The unchanged conductor/parity scalar contributes just
`c||g||²`, independent of `nu`. Substituting these
literal source identities proves (WSMP.14). QED.

This high-modulation asymptotic also proves strict positivity
for every fixed nonzero smooth template at large `|nu|`, but does
**not** replace WSMP-v1-3: the latter provides a completely
explicit threshold in the source and first derivative norm,
without needing an asymptotic remainder or its unknown constant.

## WSMP-v1-5: falsification, literature and the exact remaining GRH-strength premise

1. **A sharp spectral cut destroys the source test.** A compactly supported smooth `g` has an entire Fourier transform (Paley–Wiener). If its transform vanished on an open low-frequency interval, analyticity would force `g=0`. Projecting a compact test onto `|ξ|>T` is therefore **not** a method for producing an admissible test. The present theorem controls the **actual low-frequency leakage** instead; it never evaluates a Fourier-projected component as a separately supported Weil test.
2. **No uniform-in-template positivity.** Within `C_c^∞((-A,A))` the ratio `||g'||/||g||` is unbounded, even at fixed `A`: take rapidly oscillating `g`. Thus (WSMP.11) does not prove nonnegativity for all original tests at any support, nor GRH-equivalent universal Weil positivity.
3. **Nonreal character phases and frequency signs.** `m_{chi,A}` may not be even. Both `ν>0` and `ν<0` are treated by the global `|ξ|` cutoff without assuming a real character or dropping `chi(n)^k`.
4. **The zeta pole is genuinely indefinite.** Its negative direction is explicitly charged by `2(sinh A−A)`, equal to the magnitude of the negative eigenvalue on the centered interval. The positive pole orientation is not silently discarded or replaced by its absolute square. No q>1 branch is instantiated at conductor one.
5. **Large cutoffs are not arithmetic cancellation.** The cutoff `T=b exp(D+B+2σ)` can be huge for large support and/or conductor. Its existence uses gamma growth at very high modulation, NOT the missing signed low-frequency prime-power cancellation. The unresolved original-source low-frequency region persists and can contain genuine negative directions.
6. **Original test and quantifiers.** Every test above is a genuine smooth compactly supported Weil test, not a dense surrogate or H¹ test declared equivalent without proof. The Fourier and pole decompositions are identities on this test class. No equivalence with prime-only boundedness or a pole-neutral restriction is claimed.

**Primary comparison.** The Fourier/variational source treatment is classical in Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I* (2000), §§2–3, available at https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0. Paley–Wiener analyticity of the Fourier transform of compact support is standard. The WFFT high-frequency multiplier source already appeared at canonical `grwtsk/math`; [WeilSupportedFourierBessel.md](WeilSupportedFourierBessel.md) independently develops the original supported Fourier Bessel trace for negative-index bounds at SOURCE_PROOF_CANDIDATE status. The present theorem supplies a **quantitative, non-vacuous high-modulation admissible-test return**, distinct from both the high-frequency projection and that Bessel trace, rather than introducing a new RH criterion. These elementary leakage/derivative inequalities have no novelty claim; independent review and detailed paper-to-Lean adaptation are UNASSESSED / NOT_RUN.

**Precise remaining obligation:** RH and primitive Dirichlet GRH still require the full original pole-inclusive Weil quadratic form to be nonnegative for **every** primitive character (including conductor-one zeta), **every** support `A>0` and **every** admissible test `g`, not just highly modulated or finite-dimensional subspaces. The source-exact signed **low-frequency** inequality, its all-prime-power gamma/conductor/pole interactions, and universal test-domain transfer are NOT proved. The present theorem gives neither a zero-free region nor even a bound on the number of negative directions; the separate WSDI negative-index work owns that claim at WRITTEN status.

**Individual finite-check provenance.** The adjacent
`WeilSupportedModulationCertificate.py` is a Python-standard-library-only
independently authored rational hostile checker; source SHA-256
`094ab6ab1e007a36d20b6f7476c9715c3c3841d436d5b06933e1f9c10bde3340`,
Git blob `2f79dbd6fc89c4b28fd45a1c4eb687af2b54bbda`.
Run locally on Debian GNU/Linux 13 / Python 3.13.5:

```sh
python3 WeilSupportedModulationCertificate.py
python3 -m py_compile WeilSupportedModulationCertificate.py
python3 -O WeilSupportedModulationCertificate.py # must reject disabled assertions
```

The first command returned PASS for **625** exact signed complex pole
pairings (25 sharp negative cases), **784** complex root-of-unity
character/modulation phase pairs, and **1,200** finite rational spectral
leakage algebra cases (10 triggered the quantitative positivity premise,
767 had nonempty low frequency and 839 had negative low-band symbol
coefficients). The illustrative H¹₀ polynomial gradient/mass ratio
squared is exactly `5/2`; that polynomial is **not** represented as an
original `C_c^∞` Weil test. The test output SHA-256 is
`181d42bee0a6a7a61ff9183d0d89cb5bac918d34337647ae2de39706a1284850`.
Python bytecode compilation PASSED and optimized `-O` invocation
intentionally EXITED NONZERO; no floating-point sign decisions were
made. These tests validate only the stated algebra, **not** the
Frullani integral, Paley–Wiener, Fourier/Plancherel source equivalence,
or infinite dimensional inequality. The written analytic proof above
owns those steps and has not been independently reviewed or kernel checked.

**Source pins and verification boundary.** Initial inspected `grwtsk/math/main` at `378dc2a6df3ebd08e80e5a5f69816d17ad81ce5f`, rechecked concurrent source additions through `47fd150a90bd0206fa1f169126307a982db8337d` and preserved them; Lean toolchain `leanprover/lean4:v4.34.1`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Root/scoped AGENTS and publication policy inspected, coordination `grwtsk/math#1801`. The required canonical `grwtsk/noeaaeue/main/workflows/research/orchestration/skills/noe-proof-automation/SKILL.md` returned HTTP 404, and no verified local `~/.agents/skills` or `~/.codex/skills` copy was available: **no covered Lean or proof automation was invoked**. No new Lean imports, axioms, `sorry/admit`, pins, RH/GRH targets or research repository copies. This source is a WRITTEN mathematical argument; exact rational algebraic checks are separate, and full Lean/kernel replay/axiom audit remain `NOT_RUN`.
