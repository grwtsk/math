# Divisor response and the recorded prime-noise comparison

Local attribution: grwtsk contributors.

This preserves the mathematical content of section 8.5 of the
[pinned former research prompt](https://github.com/grwtsk/math/blob/8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec/documentation/mathematics/_support/reference/RH-GRH-Unified-Research-Closure-Prompt-v5.md),
blob `e1bf2b21d682de1b0fe2f1b8d611faab51def4ee`. The underlying local packet
`rh_grh_prime_noise_increment/RESEARCH_NOTE.md` was **NOT_PUBLISHED**, its native
checks **NOT_RUN**, and its exact response/coefficient identifications incomplete.
The editorial origin had not reopened that packet's original bytes. This note
retains that reported analytical argument and its limitations; it does not add a
fresh independent review, novelty claim, Lean theorem or verification result.

The **NOT_PUBLISHED** labels below describe the earlier handoff/packet at its
recorded time. Publishing this retained note does not retroactively publish or
verify that historical attempt, establish novelty, or upgrade mathematical or
formal acceptance.

## Explicit model, separate from the terminal source

For positive integers `n,d`, a genuine Dirichlet character `χ` and `T≥0`, let

\[
r_n(u)=\begin{cases}2(n^{-1/2}-e^{-u/2}),&u\ge\log n,\\0,&u<\log n,
\end{cases}\qquad
W_\chi(u)=\sum_{1\le n\le e^u}\mu(n)\chi(n)r_n(u).
\]

Let `W_(χ,d)` restrict this sum by `d|n`. Define
`𝓔_χ(T)=∫₀ᵀ|W_χ(u)|²du` and `𝓔_(χ,d)` analogously, with zero extension at
nonpositive arguments. These are the explicit model quantities, not an assumed
identification with the terminal Lean energy criterion.

For the positive integers `𝓢(d)` supported on primes dividing `d`, the reported
decisive identities are

\[
\mu(n)\mathbf1_{(n,d)=1}
=\sum_{\substack{r\mid n\\r\in\mathcal S(d)}}\mu(n/r),
\qquad r_{dn}(u)=d^{-1/2}r_n(u-\log d),
\]

and

\[
W_{\chi,d}(u)=\frac{\mu(d)\chi(d)}{\sqrt d}
\sum_{\substack{r\in\mathcal S(d)\\dr\le e^u}}
\frac{\chi(r)}{\sqrt r}\,W_\chi(u-\log(dr)).
\]

The stated argument checks the convolution prime-power by prime-power and uses
complete multiplicativity of `χ`, the Möbius dilation rule and exact response
dilation. The displayed sum is finite. Squareful `d` or `χ(d)=0` makes both
sides zero; `d=1` recovers the original waveform. No division by a nonunit
character value occurs.

Finite `L²` triangle inequality, the exact translated norm, energy monotonicity
and convergent geometric sums on the finite prime support give the recorded
comparison

\[
\mathcal E_{\chi,d}(T)\le
\frac{|\mu(d)\chi(d)|^2}{d}
\prod_{p\mid d}\left(1-\frac{|\chi(p)|}{\sqrt p}\right)^{-2}
\mathcal E_\chi((T-\log d)_+).
\]

The same explicit birth-gated model has

\[
W_\chi(u)=\int_0^u e^{-v/2}M_\chi(e^v)\,dv\qquad(u\ge0).
\]

Its identification with the authentic consumer still needs the actual response
map, coefficient coercions, fixed-inventory versus moving-prefix map, and the
finite-response versus cumulative-energy comparison. Those are source-return
obligations, not consequences of naming these expressions alike.

## Divisor expansion and relative costs

The source candidate `MoebiusLFunctionPrimeNoiseDivisorEnergy.lean`, inspected at
`f61109b6d67bd0496181dc54503fb1dd6ab1897d`, uses

\[
K_x(m,n)=\prod_{p\mid\gcd(m,n)}(1+x_p),\qquad
G_{F,x}(T)=\sum_{D\subseteq\mathcal P_T}
\left(\prod_{p\in D}x_p\right)E_{F,d(D)}(T),\quad d(D)=\prod_{p\in D}p.
\]

The empty subset is exactly the original finite-response energy. Nonnegative
energy comparisons require the stated hypotheses, including `T≥0` and `x_p≥0`.
Its deterministic identity is separate from construction of a probability law;
native compilation, expected types, fresh kernel replay and transitive axiom
audit at the recorded inspection were **NOT_RUN**.

For scalar `x≥0`, the inherited explicit-model argument reported

\[
\mathcal E_\chi(T)\le\mathcal G_{\chi,x}(T)
\le\mathcal E_\chi(T)
\prod_{p\le e^T}\left(1+\frac{x}{p(1-p^{-1/2})^2}\right)
\le e^{C_0x}(1+T)^x\mathcal E_\chi(T),
\]

with universal `C₀≥0`. The reported mechanism uses an unconditional
prime-reciprocal bound and convergence of
`∑_p([p(1−p^(−1/2))²]^(−1)−p^(−1))`. Their exact primary-source statement
and formal dependency were not rechecked by the editorial origin. Uniformity of
this relative comparison in character/modulus is not a modulus-uniform bound on
the original energy.

The corresponding unresolved source-bound target was

\[
\forall\rho\in(0,1]\ \exists C_\rho\ge1\ \forall q\ge1\
\forall\chi\bmod q\ \forall T\ge0,\quad
\operatorname{normalizedPrimeCovarianceEnergy}
(\operatorname{dirichletCharacterCoefficients}\chi)\,\rho\,T
\le C_\rho(1+T)^{\rho^{-2}-1}
\operatorname{familyFiniteResponseEnergy}
(\operatorname{dirichletCharacterCoefficients}\chi)\,T.
\]

This is the historical mathematical target, not a newly checked Lean declaration.
The separate [issue #334 report](https://github.com/grwtsk/math/issues/334#issuecomment-6612873855)
instead used `B=4/(1−1/√2)²` and the relative envelope
`E_χ≤Q_(χ,ρ)≤e^(Bx)(1+T)^(ex)E_χ`. The handoff had not audited its linked
full proof and recorded no new source commit. The two reports retain their
distinct constants, source identifications and evidence limits.

## Conditional transfer and known unsuccessful bound

Under the explicit premise `𝓔_χ(t)≤C e^(λt)` for every `t≥0`, with `λ>0`,
the retained shifts give the reported same-rate comparison

\[
\mathcal G_{\chi,x}(T)\le C K(\lambda,x)e^{\lambda T},\qquad
K(\lambda,x)=\prod_p\left(
1+\frac{x}{p^{1+\lambda}(1-p^{-(1+\lambda)/2})^2}\right)<\infty.
\]

The input energy estimate remains a premise. Heterogeneous weights require
`0≤x_p≤x` and the actual nonnegative divisor expansion. For horizon-dependent
bias, constants depending on `ρ` cannot be treated as fixed: the recorded
envelope requires control of `x(T)(C₀+log(1+T))`; the sufficient subexponential
budget is `x(T)(1+log(1+T))=o(T)`, with local boundedness for all-horizon
constants. Such finite laws do not automatically define a common random process
or one almost-sure event at all horizons. Zero-bias normalization is undefined
probabilistically.

The same packet's direct absolute-value attempt yielded only

\[
\mathcal E_{\chi,d}(T)\le\frac{4(e^T-d)_+}{d^2},\qquad
\mathcal G_{\chi,x}(T)\le4(e^T-1)\exp(x(\zeta(2)-1)).
\]

This is a rate-one estimate, not every-positive-rate cancellation. Relative
normalization overhead leaves the original unknown energy on the right, and
coprime normalized weights remain one. The independent arithmetic supplier and
the [complete prime-credit return](rh-grh-source-targets-and-prime-credit.md)
therefore remain separate from these comparisons. Historical diagnostic runs
are retained externally; no such run or formal check occurs in this extraction.
