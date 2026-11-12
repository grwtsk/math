# Conductor-resolved dispersion for the fixed Weil probe

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Status, consumer, and source boundaries

This is written mathematical exposition, not a Lean declaration or an RH/GRH proof. It advances the fixed-modulus averaging route isolated in [WeilProbeCorrelationBands.md](WeilProbeCorrelationBands.md), sections 5-6, and retains the original arithmetic observable of [FixedDyadicWeilProbe.md](FixedDyadicWeilProbe.md). Both are inspected at main `bc02189041a5bcece524f93a62527b5cbf2135cf`. Their source blobs are respectively `5c76fee1ed46a40c68be6651d84f2893413a2f0d` and `5999537e7275f43a391ffc6a5c2115f4e01e1be2`. Coordination: math issue 1801, scope comment 6813510775.

The increments are: exact projection under modulus refinement; exact conductor weights and their logarithmic amplification; a conductor-uniform estimate for the SAME signed source observable with its unknown zero-displacement exponent retained; an unconditional smoothed Barban-Davenport-Halberstam estimate with its small-modulus remainder explicit; and a single subpower-modulus sequence whose exponential indicator is the supremum of the actual primitive-character zero displacements. A coherent real test mode demonstrates that the available dispersion bound and the finite-group identities alone do not force that indicator to vanish.

These are worked consequences of classical finite Fourier analysis, partial summation, zero counting, and the stated BDH theorem. Originality is UNASSESSED; no novelty is claimed. Local proposition labels are exposition labels, not new frontier claim IDs. No existing claim or formal-source status is promoted. Independent analytical review, formalization, Lean elaboration, kernel replay, transitive axiom audit, numerical certification, and full repository validation are NOT_RUN. Ordinary source authoring/publication does not dispatch proof automation, another model, or a scheduler.

## 1. Unchanged source and precise notation

Retain the real, even, nonnegative smooth dyadic density h, its entire bilateral transform H, and

$$k=h*h,\qquad c=H(1/2)^2,\qquad \operatorname{supp}k\subseteq[-2,2],\quad\int k=1.$$

H is nonzero off the imaginary axis. The zero-side coefficient below is the ordinary complex square H(w)^2, never an off-axis modulus square.

For a primitive character chi of conductor q, including q=1 and zeta, set

$$\delta_\chi=\mathbf1_{q=1},\qquad \kappa_\chi=\mathbf1_{\chi^2\text{ principal}},$$
$$P_\chi(t)=\sum_p\frac{\chi(p)\log p}{\sqrt p}k(\log p-t),\qquad
D_\chi(t)=P_\chi(t)-\delta_\chi c e^{t/2}+\kappa_\chi/2.$$

For the distinct nontrivial zeros rho of the analytically continued L(s,chi), with positive integer multiplicities m_rho, write

$$w_\rho=\rho-\tfrac12,\qquad d_\chi=\max(0,\sup_\rho\Re w_\rho),\qquad
F_\chi(t)=\sum_\rho m_\rho H(w_\rho)^2 e^{tw_\rho}.$$

The preceding source-local written proof, using the classical explicit formula and zero counting, gives

$$F_\chi(t)+D_\chi(t)=o_\chi(1),\qquad
 d_\chi=\limsup_{T\to\infty}\frac{\log(1+\int_3^T|D_\chi(t)|^2dt)}{2T}.\tag{1}$$

This fixed-character little-o is NOT used uniformly in growing conductors. Section 4 derives a separate uniform bound directly from the exact explicit formula. Both zeta poles, all prime powers, conductor/parity, and the original character orientation remain in that source identity. Same-character reflection is rho -> 1-conj(rho); conjugation alone exchanges chi and its dual. Multiplicities and possible exceptional real zeros are allowed.

For every integer Q>=1, use G_Q=(Z/QZ)^times, phi(1)=1, and its trivial group when Q=1. Define

$$P_{Q,a}(t)=\sum_{p\equiv a\ (Q)}\frac{\log p}{\sqrt p}k(\log p-t),\qquad
r_Q(a)=\#\{u\in G_Q:u^2=a\},$$
$$B_{Q,a}(t)=P_{Q,a}(t)-\frac{c e^{t/2}}{\varphi(Q)}+\frac{r_Q(a)}{2\varphi(Q)},\qquad
S_Q(t)=\sum_{a\in G_Q}|B_{Q,a}(t)|^2.$$

For any character psi modulo Q, primitive or not, put

$$D_{\psi,Q}(t)=\sum_{a\in G_Q}\psi(a)B_{Q,a}(t).$$

The preceding finite Fourier calculation gives, for every t,

$$S_Q(t)=\frac1{\varphi(Q)}\sum_{\psi\bmod Q}|D_{\psi,Q}(t)|^2.\tag{2}$$

The correction transforms correctly because sum_a psi(a)r_Q(a)=phi(Q) if psi^2 is principal and is zero otherwise.

## 2. Modulus refinement preserves coarse modes exactly

Let d|Q. Reduction pi:G_Q -> G_d is surjective, and every fiber has size J=phi(Q)/phi(d). Surjectivity follows from CRT by lifting a unit modulo d to avoid also the prime divisors of Q not dividing d.

For b in G_d define the finite local correction

$$L_{Q,d,b}(t)=\sum_{\substack{p\mid Q,\ p\nmid d\\p\equiv b\ (d)}}
\frac{\log p}{\sqrt p}k(\log p-t).$$

**Proposition 1 (exact coarse-graining).** For every t,

$$\sum_{\pi(a)=b}B_{Q,a}(t)=B_{d,b}(t)-L_{Q,d,b}(t).\tag{3}$$

For t>2+log Q the local corrections vanish. In that range define

$$C_{Q|d,a}(t)=B_{Q,a}(t)-J^{-1}B_{d,\pi(a)}(t).$$

Then sum_{pi(a)=b} C_{Q|d,a}=0 and

$$S_Q(t)=\frac{\varphi(d)}{\varphi(Q)}S_d(t)
+\sum_{a\in G_Q}|C_{Q|d,a}(t)|^2.\tag{4}$$

**Proof.** Sum the prime terms over the fiber: precisely the primes dividing Q but not d are lost. The constant main term is multiplied by J. For the square term,

$$\sum_{\pi(a)=b}r_Q(a)=\#\{u\in G_Q:\pi(u)^2=b\}=Jr_d(b).$$

These facts prove (3). Every prime in its local correction is <=Q, so the kernel vanishes when t>2+log Q. The fiber sums of C are then zero. Expanding the square of J^{-1}B_d+C and summing kills the cross term and gives (4). QED.

Different moduli therefore do not provide independent replicas of a fixed low-conductor mode. The coarse mode is explicitly present in the refined vector. In particular, the conductor-one mode is never silently omitted.

## 3. Exact conductor decomposition and logarithmic amplification

For real R>=1 and integer q<=R define

$$A_q(R)=\sum_{\substack{Q\le R\\q\mid Q}}\frac1{\varphi(Q)},\qquad
\mathscr G(t,R)=\sum_{Q\le R}S_Q(t).$$

**Proposition 2 (conductor-resolved identity).** If t>2+log R, then

$$\mathscr G(t,R)=
\sum_{q\le R} A_q(R)\sum_{\substack{\chi\text{ primitive}\\\operatorname{cond}\chi=q}}
|D_\chi(t)|^2.\tag{5}$$

**Proof.** Every character modulo Q is induced by a unique primitive chi of conductor q|Q. The principal and square-principal flags are preserved by induction. The exact difference D_{psi,Q}-D_chi is minus the prime sum over p|Q, p not dividing q, and vanishes in the stated range. Substitute this into (2), then interchange finite sums. QED.

The corresponding L-functions differ by the finite factors (1-chi(p)p^{-s}); these are nonzero on Re s>0. The induction step thus retains the target strip and multiplicities. It does not identify completed gamma factors at different moduli.

**Proposition 3 (amplification asymptotic).** For fixed q,

$$A_q(R)=\alpha_q\log(R/q)+\beta_q+o_q(1),\qquad R\to\infty,\tag{6}$$

where

$$\alpha_q=\frac1{\varphi(q)}\prod_{p\nmid q}\left(1+\frac1{p(p-1)}\right)>0,$$
$$\beta_q=\frac1{\varphi(q)}
\sum_{(d,q)=1}\frac{\mu^2(d)}{d\varphi(d)}(\gamma_E-\log d).$$

The last series converges absolutely. This is a fixed-q assertion, not a q-uniform asymptotic.

**Proof.** Put Y=R/q. The elementary totient identity gives

$$\frac1{\varphi(qm)}=\frac1{\varphi(q)m}
\sum_{\substack{d\mid m\\(d,q)=1}}\frac{\mu^2(d)}{\varphi(d)}.$$

Writing h_N=sum_{1<=l<=N}1/l for the harmonic numbers, distinct from the bump h,

$$A_q(R)=\frac1{\varphi(q)}
\sum_{\substack{d\le Y\\(d,q)=1}}
\frac{\mu^2(d)}{d\varphi(d)}h_{\lfloor Y/d\rfloor}.\tag{7}$$

The weights a_d=mu^2(d)/(d phi(d)) have finite sum and finite logarithmic moment: their Euler product converges, and sum_p log p/[p(p-1)] converges. For fixed d,

$$\mathbf1_{d\le Y}h_{\lfloor Y/d\rfloor}-\log Y\longrightarrow\gamma_E-\log d.$$

Its absolute value is bounded by 2+log d: when d<=Y, compare the harmonic number with log(Y/d); when d>Y, use log Y<log d. Dominated convergence in (7) proves (6). QED.

Useful nonasymptotic bounds, valid for R>=q, are

$$\frac{h_{\lfloor R/q\rfloor}}{\varphi(q)}\le A_q(R)
\le\alpha_q(1+\log(R/q)).\tag{8}$$

The lower bound follows before expanding the new-prime factors, all of which are >=1. The upper bound follows from (7). Thus unweighted summation over inducing moduli gives logarithmic, not polynomial-in-R, amplification of one primitive source under the Parseval normalization.

## 4. A source bound uniform in the conductor

**Proposition 4 (uniform bound with the unknown exponent retained).** There are constants C_k,C'_k independent of primitive chi, its conductor q, and t>=3, such that

$$|D_\chi(t)|\le C_k\log(q+2)e^{d_\chi t}+C'_k.\tag{9}$$

No critical-line assertion is assumed in (9). It does not improve d_chi.

**Proof: zero sum.** The classical unconditional counting estimate can be taken in the uniform form

$$N_\chi(Y)\le C(Y+1)\log(q(Y+2))\quad(q>1,\ Y\ge1),$$

with an absolute C; for 0<=Y<1 use N_chi(Y)<=N_chi(1). Bennett--Martin--O'Bryant--Rechnitzer [2], Theorem 1.1 or Corollary 1.2, provides this consequence. For q=1 use the classical zeta counting formula separately and increase C. Both signs of the ordinate and multiplicities are counted.

The fixed dyadic H has |H(sigma+i gamma)|^2 <= C_k(1+|gamma|)^(-4) on |sigma|<=1/2. Summing over |gamma|<=1 and the dyadic bands 2^j<|gamma|<=2^(j+1) yields

$$\sum_\rho m_\rho|H(w_\rho)|^2\le C_k\log(q+2).$$

Each exponential in the absolutely convergent F_chi sum has modulus <=exp(d_chi t). Therefore |F_chi(t)|<=C_k log(q+2)exp(d_chi t).

**Proof: arithmetic remainder.** The exact preceding explicit formula gives

$$F_\chi(t)+D_\chi(t)=\delta_\chi c e^{-t/2}
+\kappa_\chi/2-S_{\chi,2}(t)-S_{\chi,\ge3}(t)-A_\chi(t).\tag{10}$$

Here every prime power was retained before splitting into squares and powers >=3, and A_chi is the actual parity-dependent gamma term. Unlike the fixed-character little-o, this identity yields a UNIFORM O_k(1) remainder:

- For squares, |S_{chi,2}|<=||k||_infinity sum_{Y/e<=p<=eY}(log p)/p, Y=e^(t/2). Chebyshev gives this <=4(log2)e^2||k||_infinity.
- The earlier proved bound for higher powers is <=(e^(5/3)/log2)||k||_infinity(t+2)^2e^(-t/6), uniformly bounded for t>=3.
- 0<=A_chi(t)<=e^(-(t-2)/2)/(1-e^(-2(t-2))) is uniformly bounded there, for either parity.
- The remaining pole term and kappa/2 are uniformly bounded.

The principal exponential pole was already included in D, and the opposite pole is still visible in (10). No uniform PNT error in the conductor is being assumed. Combining this O_k(1) remainder with the zero-sum estimate proves (9). QED.

In particular, UNDER primitive Dirichlet GRH for the stated family,

$$\sup_{t\ge3}|D_\chi(t)|\ll_k\log(q+2).\tag{11}$$

This conditional consequence is stronger than merely having unspecified constants for each fixed chi; its uniformity has been derived rather than inferred from the fixed-chi little-o.

## 5. Transporting the actual unconditional dispersion theorem

Let

$$E_{Q,a}(x)=\vartheta(x;Q,a)-x/\varphi(Q),\qquad
G(x,R)=\sum_{Q\le R}\sum_{a\in G_Q}|E_{Q,a}(x)|^2.$$

The classical Barban--Davenport--Halberstam theorem, in the theta version recorded in Lewko--Lewko [1], Theorem 1, states that for fixed B>0 and x(log x)^(-B)<=R<=x,

$$G(x,R)\ll_B xR\log x.$$

For EVERY fixed A>0, monotonicity in R extends this to

$$G(x,R)\ll_A xR\log x+\frac{x^2}{(\log x)^A},\qquad 1\le R\le x,\tag{12}$$

for sufficiently large x. Indeed, apply the theorem with B=A+1 and R'=max(R,x(log x)^(-A-1)). The extra term in (12) must not be deleted at small R. Constants and thresholds depend on A. No explicit/effective numerical values are supplied here, and A may not be chosen as a growing function of x without new estimates.

Put

$$v_k(u)=k'(u)-k(u)/2,\qquad
I_k=\int_{-2}^2|v_k(u)|du,\qquad
J_k=\int_{-2}^2e^{u/2}|v_k(u)|du.$$

**Proposition 5 (unconditional smoothed dispersion).** For every fixed A>0, all sufficiently large t, and 1<=R<=e^(t-2),

$$\mathscr G(t,R)\ll_{k,A}
R(1+t)+\frac{e^t}{(1+t)^A}+(1+\log R)^2.\tag{13}$$

The constants are independent of R and of all characters being summed. The square bias is included in the left side.

**Proof: smoothing.** Set w_t(x)=x^(-1/2)k(log x-t), supported in [e^(t-2),e^(t+2)]. Its endpoint values vanish. Partial summation gives

$$P_{Q,a}(t)-\frac{ce^{t/2}}{\varphi(Q)}
=-\int_0^\infty E_{Q,a}(x)w_t'(x)dx,$$

because integral w_t(x)dx=ce^(t/2), and

$$w_t'(x)=x^{-3/2}v_k(\log x-t).$$

Minkowski's inequality in the finite-dimensional vector indexed by (Q,a), followed by (12), gives

$$\begin{split}
\left(\sum_{Q\le R}\sum_a\left|P_{Q,a}(t)-ce^{t/2}/\varphi(Q)\right|^2\right)^{1/2}
&\le\int|w_t'(x)|G(x,R)^{1/2}dx\\
&\ll_A I_k\sqrt{R(t+2)}+J_k e^{t/2}(t-2)^{-A/2}.
\end{split}\tag{14}$$

Here R<=x throughout the support. Substitution x=e^(t+u) proves each displayed integral bound. Squaring (14) uses (a+b)^2<=2a^2+2b^2.

**Proof: the full square-bias budget.** Let nu(Q)=#G_Q[2], the size of the kernel of squaring. Then r_Q is nu(Q) on the squares and zero elsewhere; hence

$$\sum_a\left|\frac{r_Q(a)}{2\varphi(Q)}\right|^2=\frac{\nu(Q)}{4\varphi(Q)}.$$

One has nu(Q)<=tau(Q). For odd prime powers there are at most two square roots of 1; for 2^e there are 1,2,4 for e=1,e=2,e>=3, respectively, each <=e+1. CRT proves the inequality for all Q, including Q=1.

Using 1/phi(n)=n^(-1) sum_{d|n}mu^2(d)/phi(d), and tau(dm)<=tau(d)tau(m),

$$\begin{split}
\sum_{Q\le R}\frac{\nu(Q)}{4\varphi(Q)}
&\le\frac14\sum_{d\le R}\frac{\mu^2(d)\tau(d)}{d\varphi(d)}
\sum_{m\le R/d}\frac{\tau(m)}m\\
&\le\frac{C_*}{4}(1+\log R)^2,\qquad
C_*=\prod_p\left(1+\frac2{p(p-1)}\right)<\infty.
\end{split}\tag{15}$$

The inner harmonic divisor sum is at most (1+log(R/d))^2. Finally apply |u+v|^2<=2|u|^2+2|v|^2 to add the bias to (14). This proves (13). QED.

This is an unconditional estimate for the actual prime-source observable, not for a synthetic ensemble. Its second term is precisely the loss that prevents it from yielding the fixed-character subexponential target at subpower R.

## 6. One subpower-modulus sequence retains every primitive zero obstruction

For integers n>=9 set

$$R_n=\lfloor e^{\sqrt n}\rfloor,\qquad
\mathcal J_n=\frac1{R_n}\int_n^{n+1}\mathscr G(t,R_n)dt,$$

and define the global source displacement

$$d_*:=\sup_{\chi\text{ primitive}}d_\chi\in[0,1/2].$$

This supremum includes the conductor-one zeta source. No zero-free region sharper than the classical strip is used.

A basic positive-energy lemma used below is

$$d_\chi=\limsup_{n\to\infty}
\frac{\log(1+\int_n^{n+1}|D_\chi(t)|^2dt)}{2n}.\tag{16}$$

To prove it from (1), bound each block by the cumulative energy through n+1. Conversely, if all sufficiently large blocks are bounded by C exp(2a n), summing the blocks bounds the cumulative energy by a polynomial factor times exp(2a T). Taking a arbitrarily above the block indicator gives equality. This works also at indicator zero and uses nonnegativity, not a pointwise bound on D.

**Proposition 6 (exact global indicator).**

$$\boxed{d_*=
\limsup_{n\to\infty}\frac{\log(1+\mathcal J_n)}{2n}.}\tag{17}$$

Moreover, primitive Dirichlet GRH including RH is equivalent to either

$$\forall\varepsilon>0\quad\mathcal J_n=O_\varepsilon(e^{2\varepsilon n}),\tag{18}$$

or the stronger-looking single bound

$$\mathcal J_n=O_k(n+1).\tag{19}$$

Neither bound is proved unconditionally here.

**Proof: upper bound.** Proposition 4 and q<=Q give, since t>2+log R_n,

$$S_Q(t)=\frac1{\varphi(Q)}\sum_{\psi\bmod Q}|D_{\psi^*}(t)|^2
\ll_k\log^2(Q+2)e^{2d_*t}.$$

The additive constant in (9) is absorbed since d_*>=0 and log(Q+2) is bounded below. Sum over Q<=R_n, divide by R_n, and integrate over the unit interval. Then

$$\mathcal J_n\ll_k(n+1)e^{2d_*(n+1)},$$

which proves the upper bound in (17).

**Proof: lower bound.** Fix ANY primitive chi of conductor q. Eventually q<=R_n. From (5),

$$\mathcal J_n\ge\frac{A_q(R_n)}{R_n}
\int_n^{n+1}|D_\chi(t)|^2dt.\tag{20}$$

The logarithm of the reciprocal weight is O_q(sqrt n+log n)=o(n), by (8), or simply by A_q(R_n)>=1/phi(q). Multiplying a nonnegative sequence by a factor whose logarithm has size o(n) cannot lower its positive exponential indicator. Equations (16) and (20) therefore give the lower bound d_chi. Take the supremum over fixed primitive chi; attainment is not required. If d_*=0, nonnegativity of the logarithm provides the trivial lower bound. This proves (17).

The functional equation and conjugation make d_*=0 precisely the stated GRH target. Equation (17) proves equivalence with (18). Under that target Proposition 4 gives the uniform bound (11), so the preceding upper-bound calculation gives (19). Conversely (19) implies (18). QED.

For any prescribed R_n tending to infinity with log R_n=o(n), the same proof gives (17) once R_n<=e^(n-2); the conditional bound becomes O_k(log^2(R_n+2)). The choice e^(sqrt n) makes the normalization and coverage explicit. It does not remove the unbounded-n quantifier or turn the criterion into finite certification.

**What the actual unconditional theorem gives.** Integrating (13) over the same unit interval and dividing by R_n yields, for every FIXED A>0,

$$\boxed{\mathcal J_n\ll_{k,A}
(n+1)+\frac{e^{n-\sqrt n}}{(n+1)^A}.}\tag{21}$$

Floor effects, e^(t-n), and the bias term are absorbed in constants for sufficiently large n. The second term still has exponential indicator 1/2 in normalization (17). Arbitrarily large fixed logarithmic savings do not make it subexponential. Choosing A=A(n) is not licensed by (12) or (21).

Thus the averaged route has been evaluated at a range that retains every fixed character without an exponential loss. The current dispersion estimate does NOT supply the target (18).

## 7. A coherent test mode that the available estimates do not exclude

Fix 0<delta<1/2. Define SYNTHETIC real vectors, not asserted to come from primes,

$$\widetilde B_{Q,a}(t)=e^{\delta t}/\varphi(Q).$$

They satisfy exact coarse-graining for every divisor relation and have only the principal Fourier mode. Their energies are

$$\widetilde S_Q(t)=e^{2\delta t}/\varphi(Q),\qquad
\widetilde{\mathscr G}(t,R)=A_1(R)e^{2\delta t}.$$

Since A_1(R)<<1+log R and R<=e^(t-2), for every fixed A>0,

$$\widetilde{\mathscr G}(t,R)\ll (1+t)e^{2\delta t}
=o_A\big(e^t/(1+t)^A\big),$$

uniformly in that R-range. Therefore this coherent mode obeys the SHAPE of (13), with constants depending on A and delta, yet its normalized sequence satisfies

$$\widetilde{\mathcal J}_n
=\frac{e^{2\delta}-1}{2\delta}
\frac{A_1(R_n)}{R_n}e^{2\delta n},\qquad
\lim_{n\to\infty}\frac{\log(1+\widetilde{\mathcal J}_n)}{2n}=\delta>0.\tag{22}$$

This falsifies the inference from finite Fourier identities, coherent modulus refinement, and the bound (13) ALONE to a zero indicator. It is not an arithmetic counterexample: these synthetic vectors have no asserted prime support, Euler product, or full explicit formula. It does not refute RH/GRH or the possibility of a stronger arithmetic argument.

Taking an exponentially large modulus cutoff instead would dilute this fixed mode exponentially. That is exactly why a polynomial-looking normalized average in an exponentially growing family cannot be substituted for the subpower range in Proposition 6.

## 8. Mathematical disposition and next premise

The all-scale centered long-separation bound from the preceding note is unchanged. The present alternative route would discharge it at the zero-location target if one proved the actual estimate (18), equivalently (19). The derived unconditional result (21) does not do so. A successful continuation must replace the large small-modulus remainder using arithmetic cancellation, not discard it by normalization or vary an uncontrolled logarithmic-saving parameter.

The precise advances delivered are unconditional Propositions 1-5, including the conductor-uniform statement (9) WITH d_chi retained, and Proposition 6's exact equivalence and indicator. The forward use of (11) and the polynomial bound (19) remains conditional on the critical-line target. The countermodel separates insufficiency of these particular estimates from any claim of impossibility of another method.

No off-critical arithmetic zero is asserted. No prime-power term, multiplicity, character phase, pole orientation, or functional equation is modified. The finite unit groups do not impose a real-axis spectrum on the continued functions. No finite experiment or source publication establishes (18).

## References and statement correspondence

[1] Allison Lewko and Mark Lewko, *A Variational Barban-Davenport-Halberstam Theorem*, arXiv:1111.6190v2 (6 February 2012), Journal of Number Theory 132 (2012), 2020-2045. Theorem 1 records classical BDH and explicitly states the theta variant. This is the ONLY external dispersion estimate used in (12)-(14); the stronger variational theorems are not imported without their hypotheses. The all-R extension and the weighted smoothing calculation are written out above. https://arxiv.org/html/1111.6190v2

[2] Michael A. Bennett, Greg Martin, Kevin O'Bryant and Andrew Rechnitzer, *Counting Zeros of Dirichlet L-Functions*, arXiv:2005.02989v1 (6 May 2020), Math. Comp. 90 (2021), 1455-1482, Theorem 1.1 and Corollary 1.2. They give unconditional bounds counting both signs and multiplicities for conductor q>1 and height >=5/7. The coarser uniform counting estimate used in Proposition 4 follows directly; low heights use monotonicity. Zeta is covered separately by its classical counting formula, not by pretending their q>1 statement includes q=1. https://arxiv.org/html/2005.02989v1

[3] grwtsk contributors, *A fixed dyadic Weil probe and the centered prime-correlation obstruction*, source and pin identified above, especially sections 1-7. This supplies the exact signed source identity, fixed-character growth return and explicit higher-power/gamma bounds; its individual primary-source correspondence remains in that file. No fresh formal acceptance of those inputs is claimed.

[4] grwtsk contributors, *Correlation bands, the diagonal asymptotic, and fixed-modulus energy*, source and pin identified above, section 5 for the Fourier/bias identity and finite omitted-prime transfer. Proposition 1 and sections 3-6 here prove the additional cross-modulus, uniform-conductor and dispersion statements, rather than inferring them from the earlier fixed-modulus result.

This file adds no Lean declarations or research axioms. It is not a transitive axiom audit of imported candidates. Publication/readback and any later analytical or formal review must remain separately recorded in issue 1801.
