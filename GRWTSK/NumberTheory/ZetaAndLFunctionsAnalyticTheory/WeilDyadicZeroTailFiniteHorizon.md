# Explicit dyadic zero tail and finite-horizon almost-positivity of the actual Weil form

Local mathematical attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020 11M26 (zeta zeros), 42A82 (positive definite functions), 11N05 (prime-number distribution), 65G30 (rigorous error bounds).

**EVIDENCE:** WRITTEN_ANALYTICAL_ARGUMENT, SOURCE_PUBLICATION_NOT_A_KERNEL_PROOF. Exact integer-exponent SANITY_ASSERTIONS_RUN under Python 3.13.5 (shown below); local Lean elaboration NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN, local certified zeta-zero computation NOT_RUN, independent review NOT_RUN, mathematical novelty UNASSESSED. The ONLY verified-zero input is the externally published finite-height result of Platt--Trudgian (2021), not a certificate recreated here. No claim of RH, primitive Dirichlet GRH, finite off-line zero count, positive global Weil form, or all-window certificate existence.

**Canonical source and consumer:** This note consumes the existing fixed dyadic smooth convolution bump, the original complete pole-inclusive zeta Weil distribution and its exact zero expansion from [WeilFixedBumpNegativeDepth.md](WeilFixedBumpNegativeDepth.md) (WFDG-1/2), and yields a quantitative source-exact almost-positivity inequality on finite spans of its REAL translates. The verified low-zero part is a bona fide positive-definite subkernel of the ACTUAL source, not an auxiliary operator claimed to encode all zeros. The high-zero remainder is explicitly bounded and is not silently removed. Research consumer: provide an adversarial finite-scale error budget for the WFDG/WPOS/W2S program, separate from the missing ALL-SUPPORT arithmetic cancellation.

Root/scoped repository and publication policies inspected. Source baseline inspected on grwtsk/math/main 8f406c010f512c1a736e532ae5307a7d48f18567 with subsequent concurrent head movement handled by an independent non-force single-file creation on main. Toolchain remains Lean leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination math issue #1801, scope comment 6842560544. No dependency/import, Lean module, root-source or protection changes.

## 1. Exact source objects

For j>=1 put a_j=2^(-j-1) and let phi be the real even nonnegative mass-one C-infinity compactly supported infinite convolution of the uniform probability laws on [-a_j,a_j] (classical Arias de Reyna/Fabius-family construction). Then
\[
\operatorname{supp}\phi\subset[-1/2,1/2],\quad
\Phi(z):=\int_{\mathbb R}\phi(x)e^{zx}dx
=\prod_{j\ge1}\frac{\sinh(a_jz)}{a_jz}.
\tag{1}
\]
Let h=phi*phi, a real even compact smooth function supported [-1,1]. The original zeta Weil distribution W is the COMPLETE one in Suzuki, arXiv:2606.09096v3, p. 1, and WFDG-1: TWO pole orientations, all prime powers, origin subtraction and the entire archimedean gamma term. Its Hermitian quadratic form on complex compact smooth functions is
\[
Q(f)=W(f*\widetilde f),\quad \widetilde f(x)=\overline{f(-x)}.
\tag{2}
\]
Set K(t)=W(h(\cdot-t)). The exact spectral identity, with distinct nontrivial zeta zeros rho counted once with their multiplicities m_rho>0, is
\[
K(t)=\sum_{\rho\ {\rm distinct}}m_\rho\Phi(z_\rho)^2e^{z_\rho t},
\quad z_\rho=\rho-\tfrac12=\delta_\rho+i\gamma_\rho,
\quad |\delta_\rho|<\tfrac12.
\tag{3}
\]
The complex squares are ESSENTIAL for off-line zeros; no ordinate projection or replacement by modulus squares is made. The sum converges absolutely locally uniformly, using the unconditional Riemann--von Mangoldt zero count and compact smoothness.

## WDT-1. A uniform and explicit dyadic-strip transform bound

**Theorem (elementary, written proof).** For every integer n>=6 and every complex z with |Re z|<=1/2 and 2^n<=|Im z|<2^(n+1),
\[
\boxed{|\Phi(z)|\le 2^{\,1-(n-1)(n-2)/2}.}
\tag{4}
\]

**Proof.** Write J=n-1 and gamma=|Im z|. For each j<=J,
\[
\left|\frac{\sinh(a_jz)}{a_jz}\right|
\le\frac{\exp(a_j/2)}{a_j\gamma},
\]
since \(|\sinh(x+iy)|^2=\sinh^2x+\sin^2y\le\cosh^2x\le e^{2|x|}\).
The product over j<=J is bounded by
\[
\exp\left(\frac12\sum_{j=1}^Ja_j\right)
2^{J(J+3)/2}\gamma^{-J}.
\tag{5}
\]
For the remaining factors use the elementary entire-function inequality
\[
\left|\frac{\sinh w}{w}\right|
\le\sum_{k\ge0}\frac{|w|^{2k}}{(2k+1)!}
\le e^{|w|^2/6},
\tag{6}
\]
where the final inequality follows from \((2k+1)!\ge6^kk!\), proved by induction.
Since
\[
\sum_{j>J}a_j^2=\frac{4^{-J-1}}3=\frac{4^{-n}}3,
\]
their product is at most
\[
\exp\left(\frac{|z|^2}{18\cdot4^n}\right).
\tag{7}
\]
Now \(\sum_{j\ge1}a_j=1/2\), \(|z|^2<4^{n+1}+1/4\), so the combined exponential prefactor in (5)--(7) is less than
\[
\exp(1/4+17/72)<e^{1/2}<2.
\]
Finally gamma>=2^n and J=n-1 imply
\[
2^{J(J+3)/2}\gamma^{-J}
\le2^{(n-1)(n+2)/2-n(n-1)}
=2^{-(n-1)(n-2)/2}.
\]
Multiplying by the prefactor <2 proves (4). QED.

This explicit log-Gaussian decay is a fact about the ACTUAL fixed dyadic bump, not a universal transform bound for every smooth compact test.

## WDT-2. An unconditional aggregate bound for ALL unknown zeta zeros

Define, for N>=6,
\[
\mathcal T_N=
\sum_{\substack{\rho\text{ distinct nontrivial zeta zeros}\\
|\Im\rho|\ge2^N}}
m_\rho|\Phi(\rho-\tfrac12)|^2.
\tag{8}
\]
**Theorem (unconditional).**
\[
\boxed{\mathcal T_N<2^{-N^2+5N+4}\qquad(N\ge6).}
\tag{9}
\]

**Proof.** Let N_zeta(T) be the number of nontrivial zeros with 0<Im rho<=T, COUNTED WITH MULTIPLICITY. The unconditional explicit Riemann--von Mangoldt estimate implies the deliberately coarse inequality
\[
N_{\zeta}(T)<T^2\qquad(T\ge64).
\tag{10}
\]
For example, (10) follows immediately from the explicit main term \(T(2\pi)^{-1}\log(T/(2\pi e))\) and the O(log T+loglog T) error constants of Trudgian (2014) or Hasanalizade--Shen--Wong (2022). This count is entirely independent of RH. The negative-ordinate zeros have identical multiplicity count by conjugation. Thus each dyadic block 2^n<=|Im rho|<2^(n+1) contains fewer than
\[
2N_{\zeta}(2^{n+1})<2^{2n+3}
\]
zeros, with multiplicity. Applying (4) pointwise gives a block-weight bound
\[
\sum_{\substack{2^n\le|\gamma_\rho|<2^{n+1}}}
m_\rho|\Phi(z_\rho)|^2
<2^{2n+3}\cdot2^{\,2-(n-1)(n-2)}
=2^{-n^2+5n+3}.
\tag{11}
\]
The ratio of consecutive terms on the right is \(2^{4-2n}\le2^{-8}\) for n>=6. Hence
\[
\mathcal T_N<
\frac{2^{-N^2+5N+3}}{1-2^{-8}}
<2^{-N^2+5N+4}.
\]
Every unknown zero, multiplicity, horizontal displacement and infinite-height tail is accounted for; no finite numerical zero sample replaces the tail. QED.

**Concrete certified-height selection.** Dave Platt and Tim Trudgian rigorously verified, using interval arithmetic, that all zeta zeros with 0<|Im rho|<=3*10^12 lie on Re rho=1/2 (Bull. Lond. Math. Soc. 53 (2021), 792--797, DOI 10.1112/blms.12460). Negative ordinates follow by conjugation; zeta has no real nontrivial zeros. Set
\[
H_0=2^{41}=2\,199\,023\,255\,552<3\cdot10^{12}.
\tag{12}
\]
Then all zeros with |Im rho|<H_0 are KNOWN TO LIE ON THE LINE, while EVERY unknown/higher zero is bounded by (9):
\[
\boxed{\mathcal T_{41}<2^{-1472}.}
\tag{13}
\]
No computation from Platt--Trudgian was rerun or independently audited in this task; its published finite-height theorem is an external mathematical premise.

## WDT-3. Actual finite-span Weil almost-positivity, with ALL matrix sizes

Let
\[
K_{\rm low}(t)=\sum_{\substack{\rho\ {\rm distinct}\\
|\Im\rho|<H_0}}
m_\rho|\Phi(i\Im\rho)|^2e^{i(\Im\rho)t},
\qquad R_{H_0}(t)=K(t)-K_{\rm low}(t).
\tag{14}
\]
K_low is a FINITE positive-definite kernel: every verified zero contributes a nonnegative weight to a Fourier character. In particular, \(|K_{\rm low}(t)|\le K_{\rm low}(0)\) for all real t. The full source remainder, containing any hypothetical unverified off-line zeros, obeys
\[
|R_{H_0}(t)|\le e^{|t|/2}\mathcal T_{41}
<e^{|t|/2}2^{-1472}.
\tag{15}
\]
Because \(\log2>2/3\), one has \(e^{|t|/2}<2^{3|t|/4}\) for |t|>0. Therefore
\[
\boxed{
|t|\le1000\Rightarrow |R_{H_0}(t)|<2^{-722},
\qquad
|t|\le1800\Rightarrow |R_{H_0}(t)|<2^{-122}.
}
\tag{16}
\]

**Theorem (unconditional given the published finite verification).** For ANY integer m>=1, complex coefficients c_1,...,c_m and real shifts t_1,...,t_m with diameter \(\max_jt_j-\min_jt_j\le1800\), let
\[
f(x)=\sum_{j=1}^m c_j\phi(x-t_j).
\]
Then the ORIGINAL complete Weil quadratic form satisfies
\[
\boxed{
Q(f)\ge-2^{-122}\left(\sum_{j=1}^m|c_j|\right)^2.
}
\tag{17}
\]
For diameter<=1000 the 2^-122 can be replaced by 2^-722.

**Proof.** Translation invariance of convolution autocorrelations gives the EXACT full-source Gram identity
\[
Q(f)=\sum_{j,k=1}^m c_j\overline{c_k}K(t_j-t_k).
\]
The analogous K_low matrix is positive semidefinite, since its quadratic value is
\[
\sum_{|\gamma_\rho|<H_0}
m_\rho|\Phi(i\gamma_\rho)|^2
\left|\sum_jc_je^{i\gamma_\rho t_j}\right|^2\ge0.
\]
The remainder has absolute value at most \(2^{-122}\sum_{j,k}|c_j||c_k|\) by (16), proving (17). This is source-exact, includes every original zero, and does not assume RH. QED.

**Toeplitz/finite matrix corollary.** If T_m=[K(t_j-t_k)] is a Hermitian m-by-m sampled matrix with diameter<=1800, then
\[
\boxed{\lambda_{\min}(T_m)\ge-m\,2^{-122}.}
\tag{18}
\]
This follows from \((\sum|c_j|)^2\le m\sum|c_j|^2\). It is NOT a matrix-size-independent L2 bound and does NOT control the total number of arbitrarily shallow negative eigenvalues. An explicit certified positive gap of K_low larger than m 2^-122 would be needed to deduce genuine positivity for any specific matrix; no such gap is claimed here. Nor is (17) a universal test-domain Weil positivity theorem, since it applies ONLY to the finite span of translates of this particular phi.

## WDT-4. Complete prime-power source return and a finite arithmetic upper bound

For t>1, WFDG-2 gives the EXACT pole-inclusive separated-support identity
\[
D(t):=\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}h(\log n-t)-Me^{t/2}
=-K(t)-G(t),
\tag{19}
\]
\[
G(t)=\int_{-1}^{1}h(v)\frac{e^{-5(t+v)/2}}{1-e^{-2(t+v)}}\,dv,
\qquad
0\le G(t)\le \frac{e^{-5(t-1)/2}}{1-e^{-2(t-1)}}.
\tag{20}
\]
The main Me^(t/2) comes from the s=1 zeta pole; the s=0 pole cancels the LEADING gamma kernel. Both poles, the origin term and every prime power are part of W and have not been suppressed. No truncated Euler product has been substituted.

Put \(q_0=K(0)=Q(\phi)=W(h)\). Its complete explicit arithmetic evaluation uses ONLY the n=2 prime-power evaluations (as h is supported in [-1,1] and log3>1):
\[
\begin{aligned}
q_0={}&2M-\sqrt2(\log2)h(\log2)
-(\log(4\pi)+\gamma_{\!E})h(0)\\
&-\int_0^\infty
\bigl(2h(u)-2e^{-u/2}h(0)\bigr)
\frac{e^{-u/2}}{1-e^{-2u}}du.
\end{aligned}
\tag{21}
\]
This includes both zeta pole orientations, both prime orientations, the complete archimedean gamma term and Euler's constant gamma_E. It is a finite exact SOURCE constant, NOT an assumed positive quantity; the bound below is valid because the separately defined low-frequency Gram constant is nonnegative.

As K_low is positive definite,
\[
|K(t)|\le K_{\rm low}(0)+|R_{H_0}(t)|
\le q_0+\mathcal T_{41}+e^{|t|/2}\mathcal T_{41}.
\]
For 2<=t<=1800, (13),(16),(19) imply the concrete unconditional finite-horizon prime-power bound
\[
\boxed{
|D(t)|<
q_0+2^{-121}
+\frac{e^{-5(t-1)/2}}{1-e^{-2(t-1)}}.
}
\tag{22}
\]
This is an all-real-t inequality through the stated FINITE horizon, derived from one externally certified zero verification plus a complete analytic high-zero budget, rather than from prime enumeration up to e^1800. It does not assert the same bound for arbitrary t>1800.

## Quantifiers, falsification, literature and remaining all-scale obstacle

- The verified zero height H_0=2^41 is FINITE. The high-zero contribution is NOT set to zero; it is bounded by a strictly positive exponentially growing-in-|t| envelope. The estimate is unusable for all t as |t|->infinity at FIXED H_0. To prove global RH one would need all-height cancellation or a proven universal certificate family, not just a larger finite H.
- The finite-span inequality (17) is UNIFORM over m and coefficients in their l1 norm; the matrix eigenvalue statement (18) explicitly loses m. Neither is a proof of nonnegative full Q, uniform finite negative index, or RH. For primitive Dirichlet chi, a similar decay would require its ACTUAL zero count depending on conductor q and verified-zero coverage for EACH chi, along with parity/gamma/dual-character transfer. No primitive GRH theorem is asserted.
- The dyadic strip bound (4) is explicit and unconditional for the fixed WFDG bump. Its structural infinite-convolution antecedent is classical (Juan Arias de Reyna, *An infinitely differentiable function with compact support: Definition and properties*, arXiv:1702.05442, original 1982 article). No uniqueness/novelty of the dyadic Fourier decay is asserted.
- The zero count (10) is a deliberately coarse elementary consequence of published effective Riemann--von Mangoldt estimates, e.g. T. S. Trudgian, *An improved upper bound for the argument of the Riemann zeta-function on the critical line II*, J. Number Theory 134 (2014), 280--292, DOI 10.1016/j.jnt.2013.07.017, and E. Hasanalizade, Q. Shen and P.-J. Wong, *Counting zeros of the Riemann zeta function*, J. Number Theory 235 (2022), 219--241, Table 1. The latter works are NOT proof of RH; they bound total zero count independent of locations.
- Finite RH verification: Dave Platt and Tim Trudgian, *The Riemann hypothesis is true up to 3*10^12*, Bulletin of the London Mathematical Society 53 (2021), 792--797, DOI 10.1112/blms.12460. Its scope is EXACTLY heights up to 3*10^12, not beyond. The zero-count and verification inputs are logically independent: one controls the total infinite tail, the other makes the low-zero part positive.
- Original source and arithmetic return: M. Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3, printed p. 1; WFDG-1/2 adjacent canonical written source. This is a proof from the full actual Weil distribution, NOT a positive auxiliary spectral model. No proof of arithmetic cancellation beyond the verified horizon has been supplied.
- **Executed sanity checks, non-formal:** On the local container Python 3.13.5, exact integer assertions confirmed H=2^41<3*10^12; N=41 tail exponent -1472; the diameter 1000 and 1800 exponents -722 and -122; and the dyadic block exponent identities for integers n=6..99. These finite integer checks are NOT a proof of the infinite sum, NOT Lean elaboration/kernel replay and NOT a local certified zero computation. All transcendental inequalities and the infinite tail are supported by the written mathematical argument above.

**First unresolved mathematical premise:** A source-exact arithmetic positivity/finite-negative-index argument over ALL support diameters and ALL primitive Dirichlet characters, which does not assume RH/GRH. WDT-1--4 furnish a robust finite-horizon boundary but no uniform-in-H all-scale cancellation or full source-return positivity. Do not promote a finite RH verification, a tiny numerical tail, a bounded window or a positive truncated kernel to an unconditional proof of RH.

No new Lean declarations, research axioms, sorry, admit, root imports or dependency pins. Formal elaboration, fresh kernel replay, transitive axiom audit and independent review remain NOT_RUN; originality UNASSESSED. No Noe proof automation, cross-chat messaging, scheduler or browser action was invoked.
