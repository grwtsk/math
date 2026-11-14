# Full signed conductor-three shift source and odd-support Fourier control

**2026-11-14 · grwtsk contributors · AI-assisted mathematical drafting**

**Evidence:** The associated Lean module is a SOURCE_PROOF_CANDIDATE. The source and imported C0003–C0005 modules have **not** been elaborated, kernel-replayed, transitive-axiom audited, or independently reviewed. The Fourier statement below is a **written analytical proof, not a Lean declaration**. No full Weil explicit-formula return, certified negative multiplier, RH, or primitive Dirichlet GRH is claimed.

## Actual arithmetic source (not a surrogate)

Work with the canonical GRWTSK NumberTheory definitions of energy, antilinear-first correlation, gammaCorrectionDensity, primitiveArithmeticValue, pairedPrimeWeight, activePrimePowers, and the real-correlation bridge. For a real test f with g = liftReal f in complex L², set

\[
E=\int_{\mathbb R}|g(t)|^2dt,\quad C(r)=\int_{\mathbb R}\overline{g(t)}g(t+r)dt,
\quad A(r)=\int_{\mathbb R}|g(t+r)-g(t)|^2dt.
\]

The existing complex polarization identity gives \(A(r)=2E-2\operatorname{Re}C(r)\). On this ORIGINAL real-test carrier, the original twisted prime response equals the native conjugate-paired response (the imaginary part of each correlation is zero). With \(w_n=\Lambda(n)\operatorname{Re}\chi(n)/\sqrt n\) and the unchanged strict cutoff \(I_T=\mathrm{activePrimePowers}(T)\),

\[
Q_{\chi,T}(g)=
\left(\gammaConstant(N,\gammaParity\chi)-2\sum_{n\in I_T}w_n\right)E
+\int_{0}^{\infty}K_{\gammaParity\chi}(r)A(r)\,dr
+\sum_{n\in I_T} w_n A(\log n).
\]

All signs remain in the source. This is an exact algebraic identity, not an inequality or a proof of any stage. The physical gamma integral is the original integrable density, **including** its near-zero behavior and infinite positive-shift tail. The correspondence to the completed Weil explicit formula is a separate **unproved** requirement.

For the primitive parity-one character modulo 3 at T=1, \(7<e^2<8\) gives precisely \(I_1=\{2,3,4,5,6,7\}\). The native Dirichlet and von Mangoldt values are:

| n | Character value χ(n) | von Mangoldt Λ(n) | signed w_n |
|---|---:|---:|---:|
| 2 | −1 | log 2 | −log 2 / √2 |
| 3 | 0 | log 3 | 0 |
| 4 | +1 | **log 2** | +log 2 / 2 |
| 5 | −1 | log 5 | −log 5 / √5 |
| 6 | 0 | 0 | 0 |
| 7 | +1 | log 7 | +log 7 / √7 |

In particular \(\Lambda(4)=\Lambda(2^2)=\log2\), **not** \(\log4\). The entries 3 and 6 are kept in the actual Finset and only vanish after native evaluation.

An explicit cutoff proof uses pinned Mathlib bounds \(2.7<e<2.75\); squaring yields \(7<e^2<8\). An independent elementary lower alternative is the finite exponential Taylor sum \(e^2\ge\sum_{k=0}^{5}2^k/k!=109/15>7\). Neither finite cutoff nor full-signed source equality implies \(-E\le Q\) for every admissible real odd function.

## Odd compact-support Fourier lemma (written argument; Lean NOT_RUN)

Let \(T>0\). Let \(g:\mathbb R\to\mathbb C\) be L², vanish almost everywhere outside \([-T,T]\), and be odd (almost everywhere). Finite-measure support implies L¹ by Cauchy–Schwarz. Define the **analytic** Fourier transform with the explicit normalization

\[
F_g(\xi)=\int_{\mathbb R}g(t)e^{-i\xi t}\,dt.
\]

Since cosine is even and g is odd, its cosine integral vanishes. Consequently
\[
F_g(\xi)=-i\int_{-T}^{T}g(t)\sin(\xi t)\,dt.
\]
Cauchy–Schwarz on exactly the original time-support interval gives
\[
|F_g(\xi)|^2\le E(g)\int_{-T}^{T}\sin^2(\xi t)\,dt
=E(g)\left(T-\frac{\sin(2T\xi)}{2\xi}\right),\qquad \xi\ne0.
\]
At \(\xi=0\), \(F_g(0)=0\), and the bracket has continuous value 0. Since \(|\sin x|\le|x|\), another global bound without a removable quotient is
\[
|F_g(\xi)|^2\le\frac{2T^3}{3}\xi^2E(g),\qquad \xi\in\mathbb R.
\]

For every measurable frequency set \(I\) of finite measure, integrate to obtain
\[
\frac1{2\pi}\int_I|F_g(\xi)|^2d\xi
\le\frac{E(g)}{2\pi}\int_I
\begin{cases}T-\sin(2T\xi)/(2\xi),&\xi\ne0,\\0,&\xi=0.\end{cases}d\xi.
\]
This is stronger near zero than the generic compact-support bound \(T\,\mathrm{measure}(I)E/\pi\). No assumption that Fourier energy can concentrate arbitrarily in a negative multiplier pocket is allowed.

Mathlib's standard Fourier character uses the exponential \(e^{-2\pi ixt}\). A future source theorem must explicitly convert \(x=\xi/(2\pi)\), justify L² Plancherel, all measure scaling, and show equality of the **original physical gamma and full signed prime source** with a Fourier multiplier. That source identification has **not** been proved by this note or by the associated Lean candidate. The eventual all-frequency multiplier integral also requires the gamma/digamma identity, Tonelli, convergence, parity and all prime powers.

## Falsification and remaining proof roots

The previously observed numerical q3 multiplier value near \(\Phi_3(6)\approx-1.4797074\) is **EXPLORATORY_UNCERTIFIED**. A negative single-frequency value could only reject an unrestricted pointwise sufficient inequality. It cannot produce an admissible negative Weil test because the Fourier transform of an odd function supported in \([-1,1]\) is constrained. Finite positive sine-matrix tests have no infinite-dimensional coverage. No certified special-function interval, global negative-pocket enclosure, or universal high-frequency bound was obtained in this turn.

A noncircular completion still requires a source-exact, uniformly quantified lower bound for the **complete coupled** physical gamma and signed-prime expression on every actual admissible test, not merely a re-expression. Other open obligations include a completed pole-inclusive Weil formula with both zeta pole orientations, dual-character functional equations, test-domain density/equivalence, the off-critical-zero-to-negative-test primitive witness, all conductors and all windows, and independent RH for the analytically continued zeta function.

**Provenance/verification:** Prepublication math main observed at 5e8076ff57b2898d1b3efb8719b6015428a11693; Lean leanprover/lean4:v4.34.1 and mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. This analytical document contains no invented check receipt. Lean/lake/elan were unavailable locally. Source, mathematical, and journal publication receipts belong in math#1789 and hs#2.
