# Primitive Dirichlet prime towers: exact twisted cancellation and Green source return

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M06 (Dirichlet L-functions), 11M26 (zeta zeros), 11N05 (prime counting), 39A06 (difference equations).

**Status:** WRITTEN_ANALYTICAL_ARGUMENT; SEPARATE_FINITE_EXACT_ALGEBRA_CHECK_RUN; LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN; ORIGINALITY_UNASSESSED. No all-height prime bound, primitive GRH, or RH is proved.

**Owner, inputs and consumer.** Maintained arithmetic exposition in `grwtsk/math`, `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory`. Extends the **actual** von Mangoldt source treatment of [PrimeLaplaceDiscreteMaximumPrinciple.md](PrimeLaplaceDiscreteMaximumPrinciple.md), especially PLMP-6 and PLMP-7, to primitive complex Dirichlet character phases. It uses the special nonnegative, even, smooth, mass-one `WFDG-1` bump of [WeilFixedBumpNegativeDepth.md](WeilFixedBumpNegativeDepth.md), whose bilateral Laplace transform is zero-free for nonzero real part by its explicit infinite-convolution construction. This is **not** a property of arbitrary positive compact bumps. The future consumer is the full pole-inclusive primitive Dirichlet Weil criterion, **not** positivity of a shifted auxiliary operator. Source statements are written analytical arguments, not elaborated Lean declarations.

Inspected the PLMP/WFDG source at `grwtsk/math/main` `c23965a54c7483fddc69c72cbe5f12f9aa1af760`, then rechecked live `main` `88a5a9d2a24fd0b0cdcd3ac4f330cb5640df09e0` (tree `1cced248dff25cd76d5f562c1516edfc41f9de00`) and the contemporaneous WPSQ/WPPC arithmetic work; root/scoped policies and existing PLMP/WFDG sources, Lean `leanprover/lean4:v4.34.1`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Coordination `grwtsk/math#1801`. No Lean imports, source targets or dependency pins are changed. The companion exact *finite-lattice* test (a separate engineering artifact, **not a mathematical proof**) is `grwtsk/hs` at commit `66e6856ff141aa0d05be6c10bcc754ef7f5274b1`, path `scripts/prime-tower-phase-recovery.py`, SHA-256 `623cf9c9924e1018044e6248ceeb7da93ea32562fe842b6f89f3c92b45ba03c6`.

## PTG-1: local phase-sensitive cancellation, all powers included

Fix **any** conductor `q >= 1`, a primitive Dirichlet character `chi` of conductor `q`, and a prime `p` **not dividing q**. Write `lambda=chi(p)`, `|lambda|=1`, `a=sqrt(p)>1`, `b=log(p)>0`, `r=lambda/a`, and `T_b f(t)=f(t+b)`. Let `h=phi*phi` be the original WFDG fixed bump autocorrelation, real, even, smooth, supported on `[-1,1]`. The complete local prime-power source is

\[
S_{p,\chi}(t)=(\log p)\sum_{k\ge1}p^{-k/2}\chi(p)^k h(kb-t)
=(\log p)\sum_{k\ge1}r^k h(kb-t). \tag{PTG.1}
\]

For each fixed real `t`, only finitely many summands are nonzero, but **no prime-power index has been omitted**. Define the twisted Hermitian shift stencil

\[
\mathcal A_{p,\chi}=(p+1)I-a\bigl(\overline\lambda T_b+\lambda T_{-b}\bigr). \tag{PTG.2}
\]

**Theorem (exact cancellation with the actual complex phase).** For **every** real `t`,

\[
\boxed{\mathcal A_{p,\chi}S_{p,\chi}(t)
=(\log p)\bigl[a\lambda h(t-b)-h(t)\bigr].} \tag{PTG.3}
\]

**Proof.** Reindex the locally finite sums:

\[
T_b S_{p,\chi}=r S_{p,\chi}+r(\log p)h(-t),\qquad
T_{-b}S_{p,\chi}=r^{-1}S_{p,\chi}-(\log p)h(b-t).
\]

Since `a*conj(lambda)*r=1` and `a*lambda*r^(-1)=a^2=p`, all coefficients of `S_{p,\chi}` cancel from (PTG.2). Evenness of `h` gives (PTG.3). Its support lies in `[-1,1] union [b-1,b+1]`, so the filtered local tower vanishes identically when `t>b+1`. This holds without truncating its powers or taking absolute squares of character values. QED.

For `q=1`, `chi(p)=1` and this is exactly the conductor-one zeta identity PLMP-6. For nonreal `chi`, the factors `chi(p)^k` remain complex and signed. When `p|q`, `chi(p)=0` and every local `p`-power term is **already zero**; one must **not** use `r^{-1}` or (PTG.2) with `lambda=0`.

For any fixed **finite** set `F` of primes coprime to `q`, the stencils commute, and applying their product to `S_\chi=\sum_\ell S_{\ell,\chi}` kills the `F`-towers whenever `t>1+\sum_{p\in F}\log p`. This follows by applying the remaining finite shifts to (PTG.3) and enlarging the boundary support by their total shift radii. **All other prime-power towers survive**; the equality is only a finite-place source identity.

## PTG-2: the explicit Green kernel reconstructs the removed tower

For `N>=1`, define

\[
\mathcal G_N f(t)=\frac1{p-1}\sum_{j=-N}^{N}
p^{-|j|/2}\overline\lambda^{\,j} f(t+j b). \tag{PTG.4}
\]

For negative `j`, `\overline\lambda^j=\lambda^{-j}`; these are genuine character phases, not magnitudes. There is an **exact finite boundary identity**

\[
\begin{aligned}
\mathcal G_N\mathcal A_{p,\chi}f(t)=f(t)
+\frac{a^{-N}}{p-1}\Bigl[&
 \overline\lambda^{N}f(t+Nb)+\lambda^{N}f(t-Nb)\\
&-a\overline\lambda^{N+1}f(t+(N+1)b)
-a\lambda^{N+1}f(t-(N+1)b)\Bigr].
\end{aligned} \tag{PTG.5}
\]

**Proof.** Multiply the finite Laurent polynomials in `T_b`. With
`c_j=a^(-|j|)*conj(lambda)^j/(p-1)`, the interior recurrence is
`(a²+1)c_j-a(conj(lambda)c_(j-1)+lambda c_(j+1))=0` for `0<|j|<N`.
At index zero the coefficient is `(a²+1-2)/(p-1)=1`.
The only uncancelled outer coefficients are at `j=+/-N,+/-(N+1)` and equal the four displayed boundary terms. This is elementary finite algebra, valid for complex `lambda`. QED.

**Source-return theorem.** Suppose, for every fixed real `t`,

\[
a^{-N}f(t+Nb)\to0,\quad a^{-N}f(t-Nb)\to0\quad(N\to\infty). \tag{PTG.6}
\]

Then the **symmetric** series converges and reconstructs the original function, not a substitute:

\[
\boxed{f(t)=\frac1{p-1}\lim_{N\to\infty}
\sum_{j=-N}^N a^{-|j|}\overline\lambda^{\,j}
(\mathcal A_{p,\chi}f)(t+j b).} \tag{PTG.7}
\]

This is exactly (PTG.5) with its boundary terms tending to zero. If the stencil is bounded on the whole line, its Green series is absolutely convergent and

\[
\|f\|_\infty\le(a-1)^{-2}\|\mathcal A_{p,\chi}f\|_\infty,\quad
\frac1{p-1}\sum_{j\in\mathbb Z}a^{-|j|}=(a-1)^{-2}. \tag{PTG.8}
\]

**Unconditional local return.** The actual `S_{p,\chi}` is zero for `t<b-1`, and is `O_{p,h}(e^{-t/2})` at the positive end, because only boundedly many powers meet the support of `h`. Therefore it satisfies (PTG.6). Substituting (PTG.3) in (PTG.7) gives the exact original tower:

\[
\boxed{S_{p,\chi}(t)=\frac{\log p}{p-1}
\sum_{j\in\mathbb Z}a^{-|j|}\overline\lambda^{\,j}
\bigl[a\lambda h(t+j b-b)-h(t+j b)\bigr].} \tag{PTG.9}
\]

At each fixed `t` the inverse sum is **finite** (the bracket is compactly supported on a discrete shifted lattice). For large positive `t` the nonzero indices migrate to large **negative** `j`: the apparent removal of the prime-power tower from the filtered source is precisely undone by arbitrarily distant inverse shifts. A finite-place filter does **not** erase this arithmetic information.

On `L²(R)`, the auxiliary stencil has Fourier multiplier

\[
p+1-a(\overline\lambda e^{i\xi b}+\lambda e^{-i\xi b})
=|a-\overline\lambda e^{i\xi b}|^2\ge(a-1)^2>0. \tag{PTG.10}
\]

This proves positivity and invertibility of **this auxiliary difference operator**, not positivity of the actual indefinite Weil quadratic form. No Gram/Hodge/spectral analogy replaces its arithmetic source.

## PTG-3: full primitive-character prime source and pole-aware return

Let

\[
S_\chi(t)=\sum_{n\ge2}\frac{\Lambda(n)\chi(n)}{\sqrt n}h(\log n-t),
\quad \delta_\chi=\begin{cases}1,&q=1,\\0,&q>1\text{ primitive},\end{cases}
\quad D_\chi(t)=S_\chi(t)-\delta_\chi M e^{t/2},\quad M=H(1/2),
\quad H(w)=\Phi(w)^2. \tag{PTG.11}
\]

Every prime power appears with its **actual character phase**, including its zero value at primes dividing `q`. For each fixed primitive character, the ordinary PNT for `q=1`, or the PNT in arithmetic progressions for fixed `q>1`, gives

\[
\sum_{n\le x}\Lambda(n)\chi(n)=\delta_\chi x+o_\chi(x). \tag{PTG.12}
\]

Stieltjes integration against the compact, smooth `h(\log x-t)/sqrt(x)` yields
`D_\chi(t)=o_\chi(e^{t/2})` as `t\to+\infty`. For `t<\log2-1`,
`D_\chi(t)=-\delta_\chi M e^{t/2}`, since `S_\chi(t)=0`.
These are **fixed-conductor** bounds; no uniformity in `q` is asserted.

When `q=1`, `lambda=1` and `\mathcal A_{p,\chi}` kills the **true zeta pole main term** `M e^{t/2}`. When `q>1` primitive, `delta_\chi=0`, so in both cases
`\mathcal A_{p,\chi}D_\chi=\mathcal A_{p,\chi}S_\chi`.
Applying (PTG.7) to `D_\chi` using the PNT growth condition gives the **unconditional pointwise symmetric-limit reconstruction**

\[
\boxed{D_\chi(t)=\frac1{p-1}\lim_{N\to\infty}
\sum_{j=-N}^N p^{-|j|/2}\overline\lambda^{\,j}
(\mathcal A_{p,\chi}S_\chi)(t+j\log p).} \tag{PTG.13}
\]

It does **not** give a uniform upper bound in `t`, a character-uniform bound, or control of an infinite set of removed primes. The original conductor-one pole main term must be added back to reconstruct `S_1`; applying the inverse to the unsubtracted `S_1` generally violates the growth condition.

In the genuine Euler-product convergence region `\Re w>1/2`, Fubini gives the **actual** phase-weighted transform

\[
\int_\mathbb R(\mathcal A_{p,\chi}S_\chi)(t)e^{-wt}\,dt
=-H(w)\frac{L'(w+1/2,\chi)}{L(w+1/2,\chi)}
\bigl[p+1-a(\overline\lambda p^{w}+\lambda p^{-w})\bigr]. \tag{PTG.14}
\]

The factor equals
`(a-conj(lambda)p^w)(a-lambda p^(-w))`. Its zeros have
`\Re w=\pm1/2`: no off-critical-strip zero pole inside
`-1/2<\Re w<1/2` is erased. Equation (PTG.14) is **not** a Dirichlet series identity in the critical strip; outside `\Re w>1/2` it is used only by justified meromorphic continuation.

## PTG-4: a precise GRH-strength premise, not a GRH proof

**Conditional theorem.** Fix `q>=1`, a primitive `chi` of conductor `q`, and a prime `p\nmid q`. Suppose there exist real `T` and `C<\infty` such that

\[
|\mathcal A_{p,\chi}S_\chi(t)|\le C
\qquad\text{for EVERY real }t\ge T. \tag{PTG.15}
\]

Then every zero `\rho` of the analytically continued `L(s,\chi)` in
`0<\Re\rho<1` satisfies `\Re\rho=1/2`; when `q=1` this is **RH for zeta**. **No such all-height bound is established here.**

**Proof.** The filtered source is continuous and vanishes below a sufficiently negative `t`, so an eventual modulus bound is a global modulus bound. By (PTG.13) and (PTG.8), `D_\chi` is globally bounded. For `q=1`, PLMP-2's source-exact one-sided oscillation theorem then proves RH.

For `q>1` primitive, `D_\chi=S_\chi`, which is bounded and supported below by `\log2-1`. Its bilateral Laplace integral is **holomorphic** on `\Re w>0`. In `\Re w>1/2` it equals

\[
\int_\mathbb R S_\chi(t)e^{-wt}\,dt
=-H(w)\frac{L'(w+1/2,\chi)}{L(w+1/2,\chi)}. \tag{PTG.16}
\]

The special WFDG-1 bump gives `H(w)\ne0` for `\Re w\ne0`. Analytic continuation of (PTG.16) thus rules out zeros of `L(s,\chi)` with `\Re s>1/2`: any such zero would create a nonremovable logarithmic-derivative pole in a holomorphic half-plane. This uses only the actual absolutely convergent Euler identity for `\Re s>1` and analytic continuation, not a totalized series.

For the primitive nonprincipal character, retain its full **dual-character functional equation** and parity/conductor:

\[
\Lambda(s,\chi)=(q/\pi)^{(s+\kappa_\chi)/2}
\Gamma((s+\kappa_\chi)/2)L(s,\chi),\quad
\Lambda(s,\chi)=\varepsilon_\chi\Lambda(1-s,\overline\chi),\quad
\kappa_\chi\in\{0,1\},\ |\varepsilon_\chi|=1. \tag{PTG.17}
\]

Conjugation then gives the nontrivial-zero reflection `\rho\mapsto1-\overline\rho` **for the same `chi`**. A zero strictly to the left would force one strictly to the right, which has been excluded. QED.

The **modulus** condition is essential for this complex-phase criterion; PLMP's real one-sided maximum principle does not automatically apply to nonreal arithmetic sources. For a fixed **finite** set of primes coprime to `q`, a modulus bound on their product stencil likewise suffices: each intermediate finite-shift source still has the fixed-character PNT growth condition, and one successively applies the exact inverse to obtain a bounded `D_\chi`. This shows that finitely deleting Euler towers does **not** weaken the GRH-strength missing inequality.

**Quantifiers:** A fixed-character bound proves the zero statement for that character only; primitive Dirichlet GRH requires it for **every** primitive `chi`, explicitly including `q=1`, and across **all** sufficiently large `t`. No finite list, fixed-window large-conductor estimate, or finite prime deletion supplies it.

## Hostile checks, literature and unresolved arithmetic consumer

1. **Apparent deletion is reversible.** (PTG.9) reconstructs all removed prime powers through unbounded shifts as `t\to+\infty`. Compact boundary support does not mean the full arithmetic source is eventually zero.
2. **No pole-free shortcut.** The inverse applies to `D_1=S_1-Me^{t/2}` in conductor one, not directly to `S_1`; the zeta main term must be restored. For nonprincipal primitive characters the zeta pole is absent, not copied.
3. **No phase squaring.** The complete complex factors `\chi(p)^k`, `\overline{\chi(p)}^j`, their multiplicities and the signed pairing are retained. The positive auxiliary multiplier (PTG.10) is **not** the indefinite Weil source and does not establish its positivity.
4. **Conductor and ramification.** When `p|q`, `\chi(p)=0`, so no phase inverse is defined. Imprimitive characters and broader automorphic families require explicit Euler-factor/functional-equation transfers.
5. **No infinite-tail bound.** The full pole-inclusive Weil form still requires all prime powers outside the finite set, gamma/parity and conductor contributions, multiplicities, dual-character symmetry, and both zeta pole orientations. The actual cutoff and test domain remain unconstrained by this shift identity.
6. **Exact symbolic falsification.** The independently owned `grwtsk/hs` script cited above uses exact `Q(sqrt(2),i)` arithmetic on the lattice-sampled even profile `h[-1]=h[1]=1/4,h[0]=1/2`. It executed 144 local filter identities, 144 tower recoveries, and 432 finite boundary identities for phases `1,-1,i,-i`, also refusing optimization with disabled assertions. It does **not** prove any all-real-`t` theorem, characterize a canonical smooth bump, or establish an all-prime-power cutoff estimate. Independent mathematical review is **UNASSESSED**.
7. **Source comparison and novelty.** PLMP-3--7 provide the real-shift and half-line Green calculations. The later `WeilPrimeSquareTail.md` (WPSQ-1--6) analyzes each fixed prime-power exponent by Stieltjes/PNT asymptotics, while `WeilPrimePowerCluster.md` (WPPC) retains all same-prime power correlations on finite Weil test fibers with a Kac--Murdock--Szego matrix. Neither directly supplies the bilateral translation-inverse (PTG.5)--(PTG.13) for a single complex Dirichlet prime tower; conversely the new identities give no WPPC finite-window sign bound or WPSQ quantitative higher-power asymptotic. They are complementary source computations, not separate proofs of GRH. The present bilateral twisted kernel is elementary discrete convolution algebra, not asserted novel. WFDG-1 provides the special nonvanishing transform (a genuine additional input). The classical fixed-modulus PNT in arithmetic progressions and logarithmic-derivative identities are standard; see Kedlaya, [*Error bounds for primes in arithmetic progressions*, §10.1](https://kskedlaya.org/ant/chap-errorbounds2.html). No individual paper-to-Lean adaptation or new Lean theorem is claimed.

**First unresolved premise:** supply (PTG.15), or its finite-product version, as an unconditional bound on **the actual full phase-weighted prime-power source** for every relevant primitive character and all required heights, without assuming GRH. Alternatively, prove a genuinely weaker arithmetic estimate with a source-exact return to the original Weil criterion. The elementary local cancellation and inverse do **not** discharge this premise. Their exact return cannot be silently combined with a positive auxiliary operator to claim RH/GRH.

**Execution boundary:** Written analysis only, plus the separately described exact symbolic finite checks. Lean elaboration, kernel replay, axiom audit, full arithmetic Weil-source verification, independent review: **NOT_RUN/UNASSESSED**. The current canonical `noe-proof-automation/SKILL.md` in `grwtsk/noeaaeue/main` returned HTTP 404; no covered proof automation was invoked. Source publication and hashes are not kernel proof evidence.
