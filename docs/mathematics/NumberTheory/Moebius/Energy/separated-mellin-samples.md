# An exact separated-sample return for the actual Type-II source

Research direction: **grwtsk contributors**. Derivation, numerical-source adapter, and finite-check assistance: ChatGPT. Fourier series, Parseval, periodic resolvents, Hilbert projection, and the large-value methods cited below retain their standard ancestry. The new contribution of this extension is the exact source adapter, endpoint/periodization accounting, explicit finite-tail and sample-error constants, and executed arithmetic samples. These are paper proofs and finite calculations, not Lean kernel acceptance or a proof of the remaining all-scale estimate.

## 1. The unchanged source and inherited inputs

Let X=2^J, J>=4, q=2^floor(J/4). Retain exactly

\[
 \nu_q(k)=\mathbf1_{k=1}-\sum_{d\mid k,d\le q}\mu(d),\quad
 v_q(n)=\sum_{mk=n,m>q,k>q}\Lambda(m)\nu_q(k),
\]
\[
 d\sigma_X(y)=\sum_{X<n\le2X}\frac{v_q(n)}n\delta_{n/X}(dy)
  +\frac{a_q\log y+b_{X,q}-1}{y}\,dy,\quad1\le y\le2,
\]
where
\[
 a_q=\sum_{d\le q}\frac{\mu(d)}d,\quad
 b_{X,q}=\sum_{d\le q}\frac{\mu(d)}d\log(X/d)
   -a_q\sum_{k\le q}\frac{\Lambda(k)}k.
\]
The exact Vaughan decomposition is Omega_X^Lambda=Sigma_X^I+sigma_X. The included preceding package supplies the paper bounds
\[
 E(\Sigma_X^I)<17/X,\quad Q_T(\Omega_X^\Lambda)<45/X,
 \quad Q_T(\sigma_X)<118/X\quad(T\ge\sqrt X).
\]
The constant screen bounds use the classical arbitrary-interval Brun--Titchmarsh input recorded in that package. This extension does not reprove that external prime-count theorem or import it as a Lean axiom.

For every finite real signed measure sigma supported on [1,2], put
\[
 E(\sigma)=\iint\min(y,z)\,d\sigma(y)d\sigma(z)
 =\sigma([1,2])^2+\int_1^2\sigma((y,2])^2\,dy.
\]
Its critical transform is P_sigma(t)=integral y^(1/2-it) d sigma(y). With Fourier convention fhat(t)=integral f(u)exp(-itu)du,
\[
 Q_T(\sigma)=\frac1{2\pi}\int_\mathbb R\frac{|P_\sigma(t)|^2}{T^2+t^2}dt
 =\iint\frac{\sqrt{yz}}{2T}e^{-T|\log(y/z)|}d\sigma(y)d\sigma(z).
\]
No atom, continuous density, cutoff condition, or signed coefficient is changed below.

## 2. Ground both moments in the full Green metric

Define m0=integral d sigma and m1=integral (y-1)d sigma. Let
\[
 p_\sigma=(m_0-m_1)\delta_1+m_1\delta_2,\quad
 \eta_\sigma=\sigma-p_\sigma,\quad M(\sigma)=m_0^2+m_1^2.
\]
Then both integral d eta and integral y d eta vanish. The endpoint Gram matrix of min(y,z) is [[1,1],[1,2]], and its source observations are (m0,m0+m1). Its solution is precisely (m0-m1,m1). Thus
\[
 \boxed{E(\sigma)=M(\sigma)+E(\eta_\sigma).} \tag{2.1}
\]
This is the original full-energy center, not the finite-m low-kernel center C_X from the preceding package. That earlier center and its residual remain unchanged. The present comparison will return to their sum, not identify the distinct projections.

Set h=log 2, ell=2h, and
\[
 \tau_k=\frac{\pi k}{h},\quad k\in\mathbb Z,
\]
\[
 R_{\sigma,k}=P_\sigma(\tau_k)-(m_0-m_1)-\sqrt2(-1)^k m_1.
                                                        \tag{2.2}
\]
These are the critical transform values of eta. Both endpoint terms are necessary. An atom at 1 is not automatically silent, and the atom at 2 has the phase (-1)^k.

## 3. Exact infinite sampled identity: no quadrature premise

Let
\[
 f_\eta(u)=e^{u/2}\eta((e^u,\infty)).
\]
Because eta has total mass zero, f_eta vanishes for u<0; because its support is [1,2], it vanishes for u>h. It is in L2, including for atomic eta. Extend it by zero to one interval [0,ell]. Fubini gives
\[
 \int_0^\ell f_\eta(u)e^{-i\tau_k u}du
 =\frac{P_\eta(\tau_k)}{1/2-i\tau_k}.
\]
The possible jumps at 0,h do not affect the Lebesgue norm. Parseval for the complete Fourier series on [0,ell] therefore proves
\[
 \boxed{E(\sigma)=M(\sigma)+\frac1{2h}\sum_{k\in\mathbb Z}
       \frac{|R_{\sigma,k}|^2}{1/4+\tau_k^2}.}              \tag{3.1}
\]
This is exact for the fixed source. It is not a Riemann-sum approximation to the continuous Mellin integral and requires no sampling-derivative estimate. The period is fixed, while the number of retained samples increases.

For K>=1 define S_K(sigma) by restricting the sum to |k|<=K, and H_K(eta) by summing its omitted terms. Both are nonnegative, and
\[
 E(\sigma)=M(\sigma)+S_K(\sigma)+H_K(\eta_\sigma).
                                                        \tag{3.2}
\]
For real sigma only k=0,...,K need to be evaluated; negative samples are their conjugates, with their factor two retained in the sum. The k=0 term is retained and is not one of the grounding conditions: the two grounded Mellin exponents are 0 and 1, not the exponent 1/2.

## 4. Periodization has a signed rank-two correction

The finite-tail bound uses a discrete screened norm of an UNGROUNDED source:
\[
 D_T(\sigma)=\frac1{2h}\sum_{k\in\mathbb Z}
       \frac{|P_\sigma(\tau_k)|^2}{T^2+\tau_k^2}.
\]
The periodic Green function is the absolutely convergent sum of exp(-T|u+ell j|)/(2T). Its Fourier coefficient is 1/[ell(T^2+tau_k^2)]. For |u|<=h,
\[
 \sum_{j\in\mathbb Z}\frac{e^{-T|u+\ell j|}}{2T}
 =\frac{e^{-T|u|}}{2T}
  +\frac{\rho}{T(1-\rho)}\cosh(Tu),\quad\rho=2^{-2T}.
\]
Multiplying by the critical weights sqrt(yz) and integrating against the finite signed source gives
\[
 \boxed{D_T(\sigma)=Q_T(\sigma)
 +\frac{\rho}{T(1-\rho)}A_+(\sigma)A_-(\sigma),}           \tag{4.1}
\]
where A_+=integral y^(1/2+T)d sigma and A_-=integral y^(1/2-T)d sigma.
For T=1/2 this is
\[
 D_{1/2}(\sigma)=E(\sigma)+2m_0(m_0+m_1).
\]
The correction can be positive OR negative. In particular delta_1 has E=1 but D_(1/2)=3. Applying the uncorrected discrete identity to arbitrary sigma is false.

For T=m+1/2 with integer m>=0 the full periodic kernel is rational at rational nodes:
\[
 K_T^{per}(y,z)=\frac{\min(y,z)^{m+1}}{(2m+1)\max(y,z)^m}
 +\frac{y^{m+1}/z^m+z^{m+1}/y^m}
 {(2m+1)(2^{2m+1}-1)}.                                  \tag{4.2}
\]
This includes every periodic image, not finitely many images chosen by numerical tolerance.

Cauchy--Schwarz in Q_T, applied to the actual endpoint deltas, gives
\[
 |A_-|^2\le2TQ_T(\sigma),\quad
 |A_+|^2\le2T\,2^{2T}Q_T(\sigma).
\]
Therefore
\[
 |D_T-Q_T|\le\frac{2r}{1-r^2}Q_T,\quad r=2^{-T}.
\]
If m>=4, r<=1/sqrt(512)<2/45 and 2r/(1-r^2)<180/2021<1/10. Hence
\[
 \boxed{\frac9{10}Q_T\le D_T\le\frac{11}{10}Q_T.}         \tag{4.3}
\]
No pointwise ordering of the signed correction was used.

## 5. An all-scale price for every omitted sample

Take K=ceil(sqrt X), T=K+1/2. The nodes have separation pi/log2>4. For |k|>K, |tau_k|>4T, so
\[
 \frac1{1/4+\tau_k^2}\le\frac{17}{16}\frac1{T^2+\tau_k^2}.
\]
Thus the ungrounded omitted sum obeys
\[
 H_K(\sigma)\le\frac{17}{16}D_T(\sigma)
 \le\frac{187}{160}Q_T(\sigma).
\]
The inherited source screen bounds imply
\[
 H_K(\Omega_X^\Lambda)<53/X,\qquad H_K(\sigma_X)<138/X.
                                                        \tag{5.1}
\]
These H_K terms are defined from the ungrounded P values, not from (2.2).

For p_sigma, its sampled numerator is m0+(sqrt2(-1)^k-1)m1. By real Cauchy--Schwarz its squared modulus is at most (4+2sqrt2)M<7M. Since sum_(k>K)1/k^2<=1/K and 14log2<pi^2,
\[
 \boxed{H_K(p_\sigma)\le\frac{M(\sigma)}{2K}.}            \tag{5.2}
\]
Apply the square inequality to P_eta=P_sigma-P_p, retaining both terms:
\[
 H_K(\eta_{\Omega_X^\Lambda})<106/X+M(\Omega_X^\Lambda)/K,
\]
\[
 \boxed{H_K(\eta_{\sigma_X})<276/X+M(\sigma_X)/K.}        \tag{5.3}
\]
Consequently the Type-II energy has the direct finite return
\[
 M_X+S_X\le E(\sigma_X)
 \le(1+1/K)M_X+S_X+276/X.                                \tag{5.4}
\]
Here M_X=M(sigma_X), S_X=S_K(sigma_X). This is an all-scale bound for the omitted samples, not for the retained packet.

## 6. Return to the original source before charging Type I twice

Both M and S_K are quadratic seminorms of LINEAR maps on the original measures. For i=Sigma_X^I, each is at most E(i)<17/X. Thus
\[
 M(\Omega_X^\Lambda)\le2M_X+34/X,
 \quad S_K(\Omega_X^\Lambda)\le2S_X+34/X.
\]
Use the ORIGINAL-source line of (5.3), not the Type-II screen followed by another transfer:
\[
 \begin{aligned}
 E_X&\le(1+1/K)M(\Omega_X^\Lambda)+S_K(\Omega_X^\Lambda)+106/X\\
 &\le 2(1+1/K)M_X+2S_X+(174+34/K)/X.
 \end{aligned}
\]
As K>=4,
\[
 \boxed{E_X\le\tfrac52 M_X+2S_X+183/X.}                  \tag{6.1}
\]
Conversely M_X+S_X<=E(sigma_X)<=2E_X+34/X. Therefore the original all-eta dyadic energy hypothesis is equivalent to
\[
 \boxed{\forall\eta>0:\quad M_X+S_X\ll_\eta X^{-1+\eta}}
                                                        \tag{6.2}
\]
for every sufficiently large dyadic X. One fixed power of log(X) divided by X would suffice. This theorem does not establish (6.2). Its point is that the retained target consists of two exact source moments and 2K+1 specified scalar samples, with a proved price for the entire infinite complement.

The old calibrated low center C_X is different from M_X. Its exact relation is through
\[
 C_X+W_X+Q_T(\sigma_X)=M_X+S_X+H_K(\eta_{\sigma_X}).
\]
No identification of the individual summands is claimed. The prior 79/X return remains available; 183/X is the cost of this new finite-sample interface, not a claim of a better constant for the prior integral interface.

## 7. Dimension-free error for the declared sample observations

If every computed R_k, |k|<=K, has complex absolute error at most epsilon, then
\[
 \boxed{|\sqrt{S_K}-\sqrt{\widetilde S_K}|\le\sqrt3\,\epsilon.}
                                                        \tag{7.1}
\]
Indeed, the triangle inequality in the finite weighted sequence space gives the error norm. Its total weight is at most the full sum
\[
 \frac1{2h}\sum_{k\in\mathbb Z}\frac1{1/4+\tau_k^2}=3,
\]
obtained from the periodic kernel at y=z=1. There is no factor K in (7.1). The error must be for the COMPLETE sample, including the actual coefficient, continuum, and endpoint computations. This is not an error guarantee for a score model or for each raw coefficient separately.

With a computed moment-energy upper bound Mbar and sample energy Stilde, a sufficient numerical return is
\[
 E_X\le\tfrac52 Mbar+2(\sqrt{Stilde}+\sqrt3\epsilon)^2+183/X.
\]
If the moments are approximated as a vector, their Euclidean error must likewise be retained before squaring. The executable instead encloses the actual complete samples and moments with directed intervals.

## 8. One fixed arithmetic polynomial, two explicit parity backgrounds

Write z_k=1/2-i tau_k and s_k=sqrt2(-1)^k. For the fixed source density,
\[
 P_{\sigma_X}(\tau_k)=X^{-1/2+i\tau_k}
 \sum_{X<n\le2X}v_q(n)n^{-1/2-i\tau_k}
 +a_q\left(\frac{s_k h}{z_k}-\frac{s_k-1}{z_k^2}\right)
 +(b_{X,q}-1)\frac{s_k-1}{z_k}.
\]
Subtract the endpoint expression in (2.2). For dyadic X=2^J,
\[
 X^{i\tau_k}=(-1)^{Jk}.
\]
The even and odd samples have two explicit background formulas; they do not have independently fitted centers. The coefficient table v_q(n) is fixed before any sample is inspected. The condition X<mk<=2X remains, so the sum is not replaced by an unrestricted product of two polynomials.

There is also an unconditional source-specific coefficient normalization. Since |nu_q(k)|<=q for k>q, and sum_(m|n)Lambda(m)=log n,
\[
 |v_q(n)|\le q\log n\le q\log(2X).
\]
In fact, in the exact integer prime-log representation, the absolute coefficient of log p is at most q times the exponent of p in n. The executable checks this stronger finite statement before logarithms. Define
\[
 A_{X,n}=\frac{v_q(n)\sqrt{X/n}}{q\log(2X)},\quad |A_{X,n}|\le1,
 \qquad D_X(t)=\sum_{X<n\le2X}A_{X,n}n^{-it}.
\]
Then the atomic part of P_sigma(tau_k) is exactly
\[
 \frac{q\log(2X)}{X}(-1)^{Jk}D_X(\tau_k).
\]
All its coefficients are fixed independently of k. This normalization meets the coefficient-supremum condition of Guth--Maynard's Theorem 1.1; the grid meets its separation condition. Neither normalization is free: the displayed factor q log(2X)/X remains in the return.

The complete R_k is an AFFINE residual with an additional explicit k-dependent background and endpoint term. The published large-value theorem does not, merely by being applicable to D_X, prove a bound for that centered residual. Applying a magnitude bound separately before the main-term subtraction can lose the relevant cancellation. Moreover, the global polynomial here has length X while its sampled time range is O(sqrt X), outside the main improvement regime discussed after Theorem 1.1. A balanced-factor application needs its own exact product-window adapter. No arbitrary rectangle replaces X<mk<=2X.

For a useful sufficient band estimate, let I_j={k:2^j<=k<2^(j+1), k<=K}. Bounds of the form
\[
 |R_0|^2\ll_\eta X^{-1+\eta},\quad
 \sum_{k\in I_j}|R_k|^2\ll_\eta X^{-1+\eta}2^{2j}
\]
uniformly over all j, together with the center estimate, suffice after one logarithmic band count. The factor log X is absorbed by choosing a smaller eta first. The statement is sufficient, not asserted. The exact finite layer-cake identity sum |R_k|^2=integral_0^infinity 2v #{k:|R_k|>v}dv explains how an appropriately source-centered large-value theorem would enter.

## 9. Executed finite computation and limitations

The implementation computes the independent Vaughan coefficient identities in integer prime-log coordinates before evaluating any logarithm. It retains the density and both endpoint terms. The original 224-bit directed-integer/logarithm module and actual Vaughan coefficient builder are copied byte-identically from the provided archive.

New elementary functions use a Machin arctangent formula for pi, integer square-root enclosures, and rigorously bounded sine/cosine Taylor polynomials. A base logarithmic phase is propagated through all integer k; direct range-reduced phase calculations at selected k check that propagation for the small-scale source. Every complex term is summed before the squared modulus is formed. Uniform modulus bounds on known unit phases are intersections with mathematical range bounds, not renormalization of the source coefficients.

The analytic sampling and tail theorems are paper proofs. The new finite code checks their actual finite instances. The report distinguishes the complete Green energy (computed by the inherited exact source formula), finite sampled energy, and the omitted sampled tail. That last numerical value is also obtained by subtracting the finite samples from the exact full energy; it is NOT a quadrature over an uncomputed infinite frequency list.

No new Lean source or compiler acceptance is claimed. No previous formal module is modified. No new all-scale arithmetic witness, RH claim, or unconditional bound on M_X+S_X is supplied.

## References and source ledger

1. grwtsk contributors research programme, *A sieve-priced resolvent and a calibrated two-endpoint low-energy return*, supplied unchanged input. Source definitions, E(I)<17/X, Q(original)<45/X, Q(Type II)<118/X, and prior endpoint calibration are used with their paper-proof and external-input qualifications.
2. grwtsk contributors research programme, *Two-Center Jacobi--Mellin Diagonalization of the Balanced Hyperbola Bridge*. Recovered Library record: earlier continuous critical-line and high-height reduction for a different grounded Heath--Brown carrier. Not an equality with the present Vaughan coefficients.
3. L. Guth and J. Maynard, *New large value estimates for Dirichlet polynomials*, arXiv:2405.20552v2, revised 7 April 2026; Theorem 1.1 and the coefficient-supremum qualification following Lemma 1.7. Inspected as an external method, not used to assert the remaining centered bound.
4. H.L. Montgomery and R.C. Vaughan, *The large sieve*, Mathematika 20 (1973), 119--134. Classical Brun--Titchmarsh ancestry retained through the explicitly stated previous screen input.
5. grwtsk contributors, *Sofic-boundary certificates for the Weil screw kernel*, 12 October 2026. Fixed-coordinate return and explicit arithmetic approximation obligations; no theorem from that paper supplies (6.2).

## 10. Finite separated-sample values

All displayed decimals are upward endpoints of directed rational intervals.
The source, continuous density, zero-frequency sample, endpoint phases, and
factor two for conjugate-frequency pairs are retained.

For these rows the reported decomposition is exactly

\[
  E(\sigma_X)=M_X+S_X+\text{omitted sampled tail}.
\]

| X | K | Full-energy center M | Finite sampled energy S | Omitted sampled tail |
|---:|---:|---:|---:|---:|
| 16 | 4 | 0.020934355032694088670113 | 0.000273699268192530104443 | 0.001047070460731209939092 |
| 32 | 6 | 0.004665327401254047086263 | 0.000302818331130125320042 | 0.000707609102554404560852 |
| 64 | 8 | 0.000048717662357439184966 | 0.000349816062244281735490 | 0.000251902071672787684784 |
| 128 | 12 | 0.000372557635645607642676 | 0.000136743813371530963294 | 0.000128753946306547695573 |
| 256 | 16 | 0.000276333907861236016840 | 0.000062437741675794994521 | 0.000040316998361233744446 |
| 512 | 23 | 0.000039654655775127185714 | 0.000038078289017666361172 | 0.000016090553581505212526 |
| 1024 | 32 | 0.000066174035967455662037 | 0.000029868774282501670596 | 0.000007515091601371489254 |
| 2048 | 46 | 0.000055296428032619886508 | 0.000016476915538288168018 | 0.000002854809116799819001 |
| 4096 | 64 | 0.000042849566884268283009 | 0.000004864422708048263826 | 0.000001000008957667067350 |

These nine scales contain 8,176 complete integer prime-log coefficient
identities and 220 independently computed nonnegative-frequency samples. The
largest arithmetic label is 8192 and the largest declared frequency is
$64\pi/\log 2$; this is not a zero-verification height. The omitted tail is the
exact center-free Green energy minus the retained sample sum under the proved
Parseval identity, not numerical quadrature over an infinite frequency list.

## 11. Source and verification boundary

The maintained finite implementation (artifact:gitblob:a61b60340ef8995511d4d4d163abc8c0d7037aac),
tests (artifact:gitblob:aae1824bc815bdfdf8212e08030085c05d91e7ca),
and versioned input verifier (artifact:gitblob:0d4059a87a56cc31225becbe07e817f3b9d0a803)
use Python's standard library and directed integer intervals. The required
prior-center fixture is source-bound separately (artifact:gitblob:dfb8527cbc7285f4d49fc4b88fb107fbae85fed6).
The additive complete-packet diagnostic (artifact:gitblob:d58b95b71144e6358e0dbf7af53f5ccf67e4ba21)
first verifies that immutable input closure, then checks the center identities,
the lattice remainders, the six-term signed reconstruction, the zero sample,
and the unweighted frequency bands without changing the baseline report.

The finite calculations through $X=4096$ were replayed in ordinary and
optimized Python with identical complete numeric output. The analytic sampling
and tail arguments remain paper proofs with inherited inputs. This layer adds
no Lean declarations and has no Lean kernel status. The all-scale estimate

\[
  M_X+S_X=O_\eta(X^{-1+\eta})
\]

on the complete sufficiently large dyadic tail remains unproved. Accordingly,
neither that estimate nor RH is claimed. The Lean source associated with this
page is contextual energy formalization; it does not certify the separated
sample argument.

Repository integration and fresh replay assistance: OpenAI Codex. The original
research direction, derivation assistance, inherited attribution, and licenses
remain as stated above.

## 12. The two center channels are exact prime-discrepancy channels

The two moments can be read directly from the unchanged measure.  Put
$c_{X,q}=b_{X,q}-1$.  Since

\[
 \int_1^2\frac{\log y}{y}\,dy=\frac{h^2}{2},\qquad
 \int_1^2\frac{dy}{y}=h,
\]

the mass is exactly

\[
 \boxed{
 m_0=\sum_{X<n\leq2X}\frac{v_q(n)}n
      +\frac{a_qh^2}{2}+c_{X,q}h.}
 \tag{12.1}
\]

Likewise $m_0+m_1=\int y\,d\sigma_X(y)$, and

\[
 \int_1^2\log y\,dy=2h-1,\qquad \int_1^2dy=1.
\]

Therefore

\[
 \boxed{
 m_0+m_1=\frac1X\sum_{X<n\leq2X}v_q(n)
      +a_q(2h-1)+c_{X,q}.}
 \tag{12.2}
\]

For the separately named original Mangoldt source the same calculation gives

\[
 \boxed{
 m_0^\Lambda+m_1^\Lambda
   =\frac{\psi(2X)-\psi(X)}X-1.}
 \tag{12.3}
\]

These are identities, not bounds.  The small-divisor cancellation can also be
made exact without Brun--Titchmarsh.  Let the Type-I atomic coefficient be

\[
 I_q(n)=\sum_{\substack{d\mid n\\d\leq q}}\mu(d)\log(n/d)
 -\sum_{\substack{dm\mid n\\d\leq q,\ m\leq q}}
     \mu(d)\Lambda(m).
 \tag{12.4}
\]

The second sum includes prime powers through $\Lambda(m)$ and has no hidden
coprimality condition.  For $Y>0$ define

\[
 \begin{aligned}
 H(Y)&=\sum_{Y<r\leq2Y}\frac1r,&
 L(Y)&=\sum_{Y<r\leq2Y}\frac{\log r}{r},\\
 N(Y)&=\#\{r\in\mathbb Z:Y<r\leq2Y\},&
 G(Y)&=\sum_{Y<r\leq2Y}\log r,
 \end{aligned}
\]

and their exact sum--integral remainders

\[
 \begin{aligned}
 e_0(Y)&=H(Y)-h,\\
 e_1(Y)&=L(Y)-h\log Y-\frac{h^2}{2},\\
 d_0(Y)&=N(Y)-Y,\\
 d_1(Y)&=G(Y)-Y(\log Y+2h-1).
 \end{aligned}
\]

Set

\[
 \rho_0(X,q)=
 \sum_{d\leq q}\frac{\mu(d)}d e_1(X/d)
 -\sum_{d,m\leq q}\frac{\mu(d)\Lambda(m)}{dm}e_0(X/(dm)),
 \tag{12.5}
\]

\[
 \rho_1(X,q)=\frac1X\left(
 \sum_{d\leq q}\mu(d)d_1(X/d)
 -\sum_{d,m\leq q}\mu(d)\Lambda(m)d_0(X/(dm))\right).
 \tag{12.6}
\]

Changing variables $n=dr$ and $n=dmr$ in the two sums in (12.4) shows that
their mass main term is

\[
 \frac{a_qh^2}{2}+b_{X,q}h,
\]

exactly the negative of the Type-I continuum mass.  Their $y$-moment main
term is

\[
 a_q(2h-1)+b_{X,q},
\]

again exactly the negative of the Type-I continuum moment.  Consequently

\[
 m_0(\Sigma_X^I)=\rho_0(X,q),\qquad
 (m_0+m_1)(\Sigma_X^I)=\rho_1(X,q),
 \tag{12.7}
\]

and the unchanged Vaughan identity gives

\[
 \boxed{
 \begin{aligned}
 m_0(\sigma_X)&=\sum_{X<n\leq2X}\frac{\Lambda(n)}n-h-\rho_0(X,q),\\
 (m_0+m_1)(\sigma_X)&=
 \frac{\psi(2X)-\psi(X)}X-1-\rho_1(X,q).
 \end{aligned}}
 \tag{12.8}
\]

These remainders have an elementary all-scale price.  With
$D(t)=\lfloor t\rfloor-t$, summation by parts on the lower-open,
upper-closed interval gives

\[
 \sum_{Y<n\leq2Y}f(n)-\int_Y^{2Y}f(t)\,dt
 =D(2Y)f(2Y)-D(Y)f(Y)-\int_Y^{2Y}D(t)f'(t)\,dt.
\]

For the ranges in (12.5)--(12.6), this yields

\[
 |e_0(Y)|\leq\frac2Y,\quad
 |e_1(Y)|\leq\frac{2\log Y}{Y},\quad
 |d_0(Y)|<1,\quad
 |d_1(Y)|\leq2\log(2Y).
\]

Using only
$\sum_{d\leq q}|\mu(d)|\leq q$,
$\sum_{m\leq q}\Lambda(m)\leq q\log q$,
$q\leq X^{1/4}$, and $J\geq4$, one obtains

\[
 \boxed{
 |\rho_0(X,q)|\leq\frac{3\log X}{2\sqrt X},\qquad
 |\rho_1(X,q)|\leq\frac{3\log X}{2\sqrt X}.}
 \tag{12.9}
\]

For example, before simplifying powers of $X$, the two estimates are

\[
 |\rho_0|\leq\frac{2q\log X+2q^2\log q}{X},\qquad
 |\rho_1|\leq\frac{2q\log(2X)+q^2\log q}{X}.
\]

Thus every small-divisor main term in both center channels cancels, and the
surviving quantities are the two explicit lattice remainders and the original
Mangoldt discrepancies in (12.8).  The logarithmic estimate (12.9) is
independent of the stronger inherited energy screen.

For comparison, write the exact source decomposition as
$\Omega_X^\Lambda=\Sigma_X^I+\sigma_X$.  The inherited estimate
$E(\Sigma_X^I)<17/X$ and the center-energy inequality

\[
 m_0(\Sigma_X^I)^2+m_1(\Sigma_X^I)^2\leq E(\Sigma_X^I)
\]

give

\[
 \left|(m_0+m_1)(\sigma_X)
   -\left(\frac{\psi(2X)-\psi(X)}X-1\right)\right|
 <\sqrt{\frac{34}{X}}.
 \tag{12.10}
\]

In particular, if
$\Delta_X=(\psi(2X)-\psi(X))/X-1$, then

\[
 \boxed{
 M_X\geq\frac12
   \left(|\Delta_X|-\sqrt{34/X}\right)_+^2.}
 \tag{12.11}
\]

The center retains two original-source discrepancies.  If

\[
 M_X\leq C_\eta X^{-1+\eta},
\]

then (12.8)--(12.9) give the explicit consequences

\[
 \left|\sum_{X<n\leq2X}\frac{\Lambda(n)}n-h\right|
 \leq \sqrt{C_\eta}X^{-1/2+\eta/2}
      +\frac{3\log X}{2\sqrt X},
 \tag{12.12}
\]

\[
 \left|\frac{\psi(2X)-\psi(X)}X-1\right|
 \leq \sqrt{2C_\eta}X^{-1/2+\eta/2}
      +\frac{3\log X}{2\sqrt X}.
 \tag{12.13}
\]

The first is a weighted Mangoldt discrepancy and the second is the dyadic
endpoint discrepancy.  Partial summation relates them, but a bound for one
dyadic endpoint alone does not silently prove the other.  Grounding records
both channels; it does not normalize either away.

## 13. Exact finite quadratic form for the complete residual

Put

\[
 x_n=\log(n/X),\qquad
 \alpha_n=\frac{v_q(n)}{\sqrt{nX}},\qquad
 f(u)=e^{u/2}(a_qu+c_{X,q}),
\]

and set $\beta_0=m_0-m_1$, $\beta_1=m_1$.  On $[0,h]$ define the real
signed measure

\[
 d\lambda_X(u)=
 \sum_{X<n\leq2X}\alpha_n\delta_{x_n}(du)
 +f(u)\,du-\beta_0\delta_0(du)-\sqrt2\beta_1\delta_h(du).
 \tag{13.1}
\]

Changing variables $y=e^u$ in the continuum term proves, without an
approximation,

\[
 R_{X,k}=\int_0^h e^{-i\tau_ku}\,d\lambda_X(u),\qquad
 S_X=\iint_{[0,h]^2}W_K(u-v)\,d\lambda_X(u)d\lambda_X(v).
 \tag{13.2}
\]

The parity in the endpoint term is exactly
$e^{-i\tau_kh}=(-1)^k$.  Split (13.1) as $A+C+E$, for its atomic,
continuum and endpoint parts.  Since $W_K$ is real and even, (13.2) is the
following exact six-term identity:

\[
 S_X=S_{AA}+S_{CC}+S_{EE}+S_{AC}+S_{AE}+S_{CE},
 \tag{13.3}
\]

\[
 S_{AA}=\sum_{n,n'}\alpha_n\alpha_{n'}W_K(x_n-x_{n'}),
\]

\[
 S_{CC}=\int_0^h\!\int_0^h f(u)f(v)W_K(u-v)\,du\,dv,
\]

\[
 S_{EE}=(\beta_0^2+2\beta_1^2)W_K(0)
       +2\sqrt2\beta_0\beta_1W_K(h),
\]

\[
 S_{AC}=2\sum_n\alpha_n\int_0^h f(v)W_K(x_n-v)\,dv,
\]

\[
 S_{AE}=-2\beta_0\sum_n\alpha_nW_K(x_n)
        -2\sqrt2\beta_1\sum_n\alpha_nW_K(x_n-h),
\]

\[
 S_{CE}=-2\beta_0\int_0^h f(u)W_K(u)\,du
        -2\sqrt2\beta_1\int_0^h f(u)W_K(u-h)\,du.
\]

No term in (13.3) is separately declared positive or negligible.  In
particular, estimating the atomic polynomial before combining it with the
other five terms discards the cancellation that defines the centered
residual.

## 14. What the supplied shifted correlation actually costs

For

\[
 I_m=\{r>q:X<mr\leq2X\},
\]

expanding $v_q$ in the atomic--atomic term gives

\[
 S_{AA}=\frac1X\sum_{m,m'>q}
 \frac{\Lambda(m)\Lambda(m')}{\sqrt{mm'}}
 \sum_{\substack{r\in I_m\\r'\in I_{m'}}}
 \frac{\nu_q(r)\nu_q(r')}{\sqrt{rr'}}
 W_K\!\left(\log\frac{mr}{m'r'}\right).
 \tag{14.1}
\]

After writing $r'=r+\ell$, the actual weight on the interval
$D_{m,m',\ell}=I_m\cap(I_{m'}-\ell)$ is

\[
 g_{m,m',\ell}(r)=\frac1{\sqrt{r(r+\ell)}}
 W_K\!\left(\log\frac{mr}{m'(r+\ell)}\right).
 \tag{14.2}
\]

Thus the shift in the available correlation and the ratio in the sampling
kernel coexist; one is not a relabeling of the other.  If

\[
 A_s=\sum_{r=R+1}^{R+s}
 \bigl(\nu_q(r)\nu_q(r+\ell)-\mathfrak C_q(\ell)\bigr),
\]

then the supplied correlation gives $|A_s|\leq q^2$.  Discrete summation by
parts gives the complete endpoint-plus-variation price

\[
 \left|\sum_{r\in D_{m,m',\ell}}
 \bigl(\nu_q(r)\nu_q(r+\ell)-\mathfrak C_q(\ell)\bigr)g(r)\right|
 \leq q^2\left(|g_{\rm end}|+\sum|\Delta g|\right).
 \tag{14.3}
\]

The full kernel satisfies

\[
 \|W_K\|_\infty<3,\qquad
 \|W_K'\|_\infty
 \leq\frac1\pi\sum_{k=1}^K\frac1k
 \leq\frac{1+\log K}{\pi}.
 \tag{14.4}
\]

Take dyadic factor boxes $m\asymp M$, $m'\asymp M'$.  Then
$r\asymp R=X/M$ and $r'\asymp R'=X/M'$.  Equations (14.2)--(14.4) imply

\[
 |g_{\rm end}|+\operatorname{Var}(g)
 \ll\frac{1+\log K}{\sqrt{RR'}}.
\]

After restoring $1/(X\sqrt{MM'})$, the two von Mangoldt factors, and the
$O(X(M+M'))$ nonempty ordered $(m,m',\ell)$ triples, the use of (14.3)
followed by triangle inequalities costs

\[
 \boxed{
 \ll q^2\frac{M+M'}X\log^3(2X)}
 \tag{14.5}
\]

per ordered box pair.  All constants here are absolute.  The displayed
logarithmic power is deliberately a safe envelope for the harmonic derivative
sum and the two von Mangoldt weights.

For a balanced pair $M=M'=\sqrt X$, (14.5) is
$O(q^2X^{-1/2}\log^3X)=O(\log^3X)$, with normalized exponent zero.  Summing
the absolute prices over all dyadic factor boxes gives
$O(q\log^4X)=O(X^{1/4}\log^4X)$.  Even the $m=m'$ sector only gives

\[
 O(q^2X^{-1}\log^4X)=O(X^{-1/2}\log^4X).
 \tag{14.6}
\]

This is a rigorous obstruction to a specific method: pointwise use of the
given $q^2$ correlation remainder followed by absolute summation.  It is not a
counterexample to the arithmetic source.

The apparent gain from a frequency band also disappears in (14.3).  For
$L=2^j$ put

\[
 W_j(u)=\frac1h\sum_{L\leq k<2L,\ k\leq K}
 \frac{\cos(\tau_ku)}{1/4+\tau_k^2}.
\]

Then

\[
 \|W_j\|_\infty\leq\frac{h}{\pi^2L},\qquad
 \|W_j'\|_\infty\leq\frac1\pi.
 \tag{14.7}
\]

The variation term in (14.3) therefore loses the $L^{-1}$ size of the
kernel.  A useful next estimate must retain signed aggregation across factors
and shifts, or prove a genuinely averaged dispersion estimate.

The same parameter check rules out a direct invocation of the current
Guth--Maynard large-value gain.  Their Theorem 1.1 applies to a length-$N$
polynomial with $|b_n|\leq1$ on a 1-separated set in $[0,T]$ and bounds the
number $R$ of values of size at least $V$ by

\[
 R\leq T^{o(1)}
 \left(N^2V^{-2}+N^{18/5}V^{-4}+TN^{12/5}V^{-4}\right).
 \tag{14.8}
\]

Here $N\in\mathbb N$, $T,V>0$, and the authors interpret $o(1)$ as
$T\to\infty$: equivalently, for each $\epsilon>0$ the right side can be
multiplied by $C_\epsilon T^\epsilon$ for all sufficiently large $T$, with
$C_\epsilon$ depending only on $\epsilon$.

Here $N\asymp X$ and $T\asymp\sqrt X=N^{1/2}$.  The improvement regime
described with that theorem has $N$ smaller than $T^{10/11}$, whereas the
present geometry has $N\asymp T^2$.  Moreover (14.8) counts the uncentered $D_X$;
it contains none of the five compensating terms in (13.3).  The theorem is
applicable as a true statement, but this substitution does not improve the
required centered packet estimate.

## 15. Smallest surviving signed estimate

With the band kernel $W_j$, define the signed correlation remainder

\[
 \Delta^{(j)}_{m,m',\ell}=
 \sum_{r\in D_{m,m',\ell}}
 \bigl(\nu_q(r)\nu_q(r+\ell)-\mathfrak C_q(\ell)\bigr)
 g^{(j)}_{m,m',\ell}(r),
\]

and form the signed aggregate before absolute values:

\[
 \mathcal D_{X,j}=\frac1X\sum_{m,m'>q}
 \frac{\Lambda(m)\Lambda(m')}{\sqrt{mm'}}
 \sum_\ell\Delta^{(j)}_{m,m',\ell}.
 \tag{15.1}
\]

Let $\mathcal P_{X,j}$ be the correlation-main part of (14.1), combined
with the continuum, endpoint, and both mixed terms from (13.3), before taking
absolute values.  Thus the exact contribution of the positive-frequency band
is $\mathcal D_{X,j}+\mathcal P_{X,j}$.  A source-faithful next sufficient
inequality is

\[
 \boxed{
 \begin{aligned}
 &\forall\epsilon>0\ \exists C_\epsilon>0,J_\epsilon\in\mathbb N\\
 &\quad\forall J\geq J_\epsilon\ \forall j\in\mathbb N_0
       \text{ with }2^j\leq K:\quad\\
 &\qquad
 |\mathcal D_{2^J,j}+\mathcal P_{2^J,j}|
 \leq C_\epsilon(2^J)^{-1+\epsilon}.
 \end{aligned}}
 \tag{15.2}
\]

Together with the analogous zero-sample and center bounds, (15.2) implies
the weighted target after summing the actual weighted band contributions and
choosing a smaller $\epsilon$ than the final $\eta$.  It is strictly weaker
than bounding every $(m,m',\ell)$ remainder separately, or than bounding
$\mathcal D_{X,j}$ and $\mathcal P_{X,j}$ separately.  It also states the
remaining obligation honestly: the correlation remainder and main profile
may cancel with each other and with the fixed continuum and endpoint terms;
none is estimated as a separate positive contribution.

At the completed finite scale $X=4096$, a recomposition of (13.3) gives,
as a theorem-selection diagnostic only,

\[
 (S_{AA},S_{CC},S_{EE},S_{AC},S_{AE},S_{CE})\approx
 (0.00410317,0.00576894,0.000145964,-0.00972123,
  0.00152439,-0.00181637).
\]

Their signed sum is the certified
$S_X\approx4.86442\mathbin{\cdot}10^{-6}$; the sum of their absolute values
is about $4.7\mathbin{\cdot}10^3$ times larger.  This finite calculation does
not prove (15.2), but it rejects termwise absolute bounds as a plausible
all-scale mechanism for the retained packet.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean`](../../../../../GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 31 |
| Theorem/lemma commands | 19 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
