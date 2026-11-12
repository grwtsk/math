# Correlation bands, the diagonal asymptotic, and fixed-modulus energy

By grwtsk contributors.

Version 1, 2026-11-11 (America/Los_Angeles).

## Status, source, and precise correction

This is a written analytical continuation of [FixedDyadicWeilProbe.md](FixedDyadicWeilProbe.md), inspected in full at commit `1f388b830a790ee8ebbcdc1459f39abce6237591`, blob `5999537e7275f43a391ffc6a5c2115f4e01e1be2`. Its mathematical consumer is the unresolved centered prime-pair bound in that note, equation (16). Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801), scope comment 6813272394.

The new unconditional estimates below control an entire near-diagonal band and identify the exact quadratic diagonal main term. A finite-group calculation also corrects the previous scope warning about averaging characters. None proves the remaining long-separation bound, improves a zero-free exponent, or proves RH/GRH. These are worked consequences of classical estimates and finite Fourier analysis; no novelty is asserted. Originality is UNASSESSED. Proposition labels are local exposition labels, not new registered frontier claims.

**Scope correction, version 1.** The original note's sections 7 and 9 warned too broadly that an average over characters cannot give a bound for an individual character. An upper bound for the average of NONNEGATIVE energies over a FIXED finite character group does bound every individual energy, with a factor equal to the size of that group. Section 5 proves the exact statement, including the principal and imprimitive cases. Mere character orthogonality supplies an identity, not the requisite upper bound. A signed average, or a growing-family average without quantitative control of the weight of a fixed character, is a different situation. This correction supersedes that overbroad prose only. It does not modify the original residual, energy, arithmetic target, or all-scale quantifiers; the earlier source is preserved rather than silently rewritten.

Evidence is the written proofs in this note. Formalization, Lean elaboration, fresh kernel replay, transitive axiom audit, independent analytical review, numerical certification, and repository-wide validation are NOT_RUN. No executable proof automation or external model/agent dispatch is part of this increment.

## 1. Objects retained from the fixed probe

Let h be the real even compact smooth dyadic density of the preceding note, H its bilateral Laplace transform, and

$$k=h*h,\qquad c=H(1/2)^2,\qquad a_k=\int_{\mathbb R}k(u)^2\,du>0.$$

Thus k is real, even, nonnegative, smooth, supported in [-2,2], and has integral one. H is nonzero off the imaginary axis. The present arguments do not replace H(w)^2 by a modulus square in the zero pairing.

For a primitive Dirichlet character chi of conductor q, including the conductor-one zeta character, retain

$$\delta_\chi=\mathbf1_{q=1},\quad
\kappa_\chi=\mathbf1_{\chi^2\text{ principal}},\quad
b_p=\frac{\chi(p)\log p}{\sqrt p},$$
$$P_\chi(t)=\sum_p b_p k(\log p-t),\quad
m_\chi(t)=\delta_\chi c e^{t/2}-\kappa_\chi/2,\quad
D_\chi(t)=P_\chi(t)-m_\chi(t),$$
$$V_\chi(T)=\int_3^T|D_\chi(t)|^2\,dt\qquad(T\ge3).$$

For distinct nontrivial zeros rho of the actual continued L(s,chi), weighted by their multiplicities m_rho, put w_rho=rho-1/2 and

$$d_\chi=\max(0,\sup_\rho\Re w_\rho),\qquad
F_\chi(t)=\sum_\rho m_\rho H(w_\rho)^2e^{tw_\rho}.$$

The preceding written argument proves, using the classical explicit formula and zero counting,

$$F_\chi(t)+D_\chi(t)=o_\chi(1),\qquad
\limsup_{T\to\infty}\frac{\log(1+V_\chi(T))}{2T}=d_\chi.\tag{1}$$

Both zeta poles, all prime powers, parity and the full character orientation were retained before deriving that asymptotic. The half-unit correction is the proved prime-square contribution, not a conjectural model for primes. This note inherits that exact source return; it is not a fresh formal verification of it.

For T>=3 define

$$K_T(x,y)=\int_3^T k(x-t)k(y-t)\,dt,\qquad
M_{\chi,T}(x)=\int_3^T k(x-t)\overline{m_\chi(t)}\,dt.$$

Then

$$V_\chi(T)=\sum_{p,r}b_p\overline{b_r}K_T(\log p,\log r)
-2\Re\sum_pb_pM_{\chi,T}(\log p)
+\int_3^T|m_\chi(t)|^2\,dt.\tag{2}$$

All sums in (2) are finite. The kernel is real, nonnegative and symmetric; K_T(x,y)=0 for |x-y|>4. Let Delta_chi(T) be the p=r contribution, and C_chi(T)=V_chi(T)-Delta_chi(T), so C includes the off-diagonal sum AND both centering terms. No nonnegativity of C is assumed.

## 2. An unconditional short-separation estimate

Let W:[2,infinity)->[1,infinity) be any finite-valued nondecreasing function. Define the ordered-pair band

$$\mathcal B_W=\{(p,r):p,r\text{ prime},\ p\ne r,\ |p-r|\le W(\max(p,r))\}.$$

Write

$$U_{\chi,W}(T)=\sum_{(p,r)\in\mathcal B_W}
 b_p\overline{b_r}K_T(\log p,\log r),$$
$$N_{\chi,W}(T)=\sum_{(p,r)\in\mathcal B_W}
 |b_p|\,|b_r|K_T(\log p,\log r).$$

The definition is symmetric in p,r, so U is real; nevertheless the estimate controls its absolute value, not its sign.

**Proposition 1 (uniform band bound).** For every such W, every Dirichlet character chi, and every T>=3,

$$|U_{\chi,W}(T)|\le N_{\chi,W}(T)
\le 8e^4\log2\,\|k\|_\infty^2
\int_3^T(t+2)W(e^{t+2})\,dt,\tag{3}$$

and consequently

$$N_{\chi,W}(T)\le
4e^4\log2\,\|k\|_\infty^2
\big((T+2)^2-25\big)W(e^{T+2}).\tag{4}$$

The constants in (3)-(4) are independent of the conductor and character. No prime-pair conjecture or zero-location hypothesis is used.

**Proof.** An elementary Chebyshev estimate valid for x>=2 is

$$\vartheta(x)=\sum_{p\le x}\log p\le 4(\log2)x.$$

Indeed, primes n<p<=2n divide the central binomial coefficient, so theta(2n)-theta(n)<=2n log2. Summing at powers of two gives theta(2^j)<2^(j+1)log2, and rounding x upward to the next power of two proves the displayed bound.

At a fixed t>=3 a nonzero kernel product requires both p and r to lie in [exp(t-2),exp(t+2)]. For each p, at most 2 floor(W(exp(t+2))) distinct integers r satisfy the band condition. Bounding those r by all integers, not merely primes, gives

$$\sum_r\frac{\log r}{\sqrt r}
\le 2W(e^{t+2})(t+2)e^{1-t/2}$$

for this inner sum. Meanwhile

$$\sum_{p\in[e^{t-2},e^{t+2}]}\frac{\log p}{\sqrt p}
\le e^{1-t/2}\vartheta(e^{t+2})
\le4(\log2)e^{t/2+3}.$$

Use |chi(p)|<=1 and bound both kernel factors by ||k||_infinity. Multiplication yields the integrand majorant in (3). Integration is legitimate because the sums are finite on [3,T]. Monotonicity of W and integration of t+2 give (4). QED.

**Consequences.** If W(X)=max(1,(log X)^A), A>=0, then

$$N_{\chi,W}(T)=O_{k,A}((T+2)^{A+2}).\tag{5}$$

More generally, if

$$\frac{\log W(X)}{\log X}\longrightarrow0,\tag{6}$$

then for every epsilon>0,

$$N_{\chi,W}(T)=O_{k,W,\varepsilon}(e^{\varepsilon T}),\tag{7}$$

uniformly in chi. This includes W(X)=exp(sqrt(log X)), so the eliminated band is much wider than a fixed or polylogarithmic prime gap.

For W(X)=X^theta with fixed theta>0, the integral version also gives

$$N_{\chi,W}(T)=O_{k,\theta}((T+2)e^{\theta T}).\tag{8}$$

These are upper bounds for the total absolute contribution of a band. They make no claim about how often any particular prime gap occurs.

## 3. Where an exponential obstruction must remain

Define the centered long-separation remainder

$$R_{\chi,W}(T)=
\sum_{\substack{p\ne r\\|p-r|>W(\max(p,r))}}
 b_p\overline{b_r}K_T(\log p,\log r)
-2\Re\sum_pb_pM_{\chi,T}(\log p)
+\int_3^T|m_\chi(t)|^2\,dt.$$

The centering terms stay together, especially for zeta. Exactly,

$$V_\chi(T)=\Delta_\chi(T)+U_{\chi,W}(T)+R_{\chi,W}(T).\tag{9}$$

**Proposition 2 (localization of the exponential indicator).** If W satisfies (6), then

$$d_\chi=\limsup_{T\to\infty}
\frac{\log(1+|R_{\chi,W}(T)|)}{2T}.\tag{10}$$

**Proof.** The earlier elementary diagonal estimate gives Delta=O_k((T+2)^2), and (7) makes U subexponential. Thus V-R is subexponential. The inequalities

$$|R|\le V+\Delta+|U|,\qquad
V\le|R|+\Delta+|U|$$

show equality of their nonnegative exponential indicators. Apply (1). QED.

For W(X)=X^theta, the same reasoning shows equality in (10) whenever d_chi>theta/2. Thus a hypothetical zero with rightward displacement larger than theta/2 cannot have its entire growth obstruction accounted for by pairs of separation <=max(p,r)^theta.

This is not a proof that the remaining remainder is subexponential. For example, with W(X)=exp(sqrt(log X)), the still unresolved assertion is

$$\forall\chi\text{ primitive}\ \forall\varepsilon>0\quad
|R_{\chi,W}(T)|=O_{\chi,\varepsilon}(e^{2\varepsilon T}).\tag{11}$$

No finite scale or finite family of characters supplies (11). Compared with the prior note, the whole band (6) has now been bounded unconditionally and can be excluded from the unresolved sum.

## 4. The diagonal and the cancellation it requires

**Proposition 3 (sharp diagonal asymptotic).** For each fixed primitive chi there is a real constant B_chi,k such that

$$\Delta_\chi(T)=\frac{a_k}{2}T^2+B_{\chi,k}+o(1).\tag{12}$$

There is no linear term because k is even. This is unconditional.

**Proof.** Differentiate the finite-integral definition of Delta:

$$\Delta_\chi'(t)=
\sum_{p\nmid q}\frac{(\log p)^2}{p}k(\log p-t)^2.$$

For t>2+log(max(2,q)), omitted conductor primes no longer contribute. Write theta(x)=x+E(x). The classical unconditional PNT remainder gives constants C,c0>0 such that, for large x,

$$|E(x)|\le Cx\exp(-c_0\sqrt{\log x}).\tag{13}$$

One may obtain (13) from Johnston--Yang [2], Corollary 1.2, by absorbing the fixed power of log x into a smaller exponential constant. The precise numeric constants are not used.

With f_t(x)=(log x)x^(-1)k(log x-t)^2, Stieltjes integration by parts gives

$$\Delta_\chi'(t)=\int_0^\infty f_t(x)\,dx
-\int_0^\infty E(x)f_t'(x)\,dx.$$

The main integral equals

$$\int_{-2}^2(t+u)k(u)^2\,du=a_kt,$$

since the odd first moment of k^2 vanishes. Direct differentiation gives

$$f_t'(x)=x^{-2}\big[(1-\log x)k(\log x-t)^2
+2\log x\,k(\log x-t)k'(\log x-t)\big].$$

Substitute x=exp(t+u) and use (13). The error is

$$O_k((1+t)e^{-c_0\sqrt{t-2}}),$$

an integrable function of t at infinity. The initial finite interval and the omitted conductor primes contribute a fixed constant. Therefore

$$B_{\chi,k}=-\frac92a_k+
\int_3^\infty\big(\Delta_\chi'(t)-a_kt\big)\,dt$$

exists, and integration proves (12). For a general real smooth k the additional linear coefficient would be integral u*k(u)^2 du; it vanishes for this k. QED.

**Proposition 4 (conditional linear full energy).** Assume only the critical-line assertion for this individual chi. Let gamma run over the DISTINCT ordinates of its nontrivial zeros, with multiplicity m_gamma. Then

$$\lim_{T\to\infty}\frac{V_\chi(T)}T
=S_\chi:=\sum_\gamma m_\gamma^2|H(i\gamma)|^4<\infty.\tag{14}$$

No simplicity or linear-independence hypothesis is required. Both signs and a possible central ordinate are retained. S_chi is nonnegative; strict positivity is not asserted, since H has some zeros on the imaginary axis.

**Proof.** Under the stated hypothesis,

$$F_\chi(t)=\sum_\gamma a_\gamma e^{i\gamma t},\qquad
a_\gamma=m_\gamma H(i\gamma)^2,$$

and sum |a_gamma| is finite by the earlier decay/counting argument. The double series for |F|^2 therefore converges absolutely and uniformly. For gamma!=gamma', the time average of exp(i(gamma-gamma')t) tends to zero; for equal ordinates it tends to one. Dominated convergence on the absolutely summable double series yields the limit sum |a_gamma|^2. Multiplicity is grouped BEFORE squaring, which accounts for m_gamma^2. Finally (1) gives D=-F+o(1), with F bounded, so the normalized integral of the difference of the two absolute squares tends to zero. QED.

This is an elementary absolutely convergent instance of the almost-periodic mean-square method. Akbary--Ng--Shahabi [3] supplies a broader prior-art comparator, with its original hypotheses retained, not an unconditional supplier of the critical-line assertion.

Combining (12) and (14), the centered off-diagonal contribution C=V-Delta must satisfy, UNDER the same critical-line hypothesis,

$$C_\chi(T)=-\frac{a_k}{2}T^2+S_\chi T+o(T).\tag{15}$$

In particular, discarding off-diagonal terms or postulating C=o(T^2) is inconsistent with the expected critical-line behavior. Equation (15) is a conditional consistency check, not a proved unconditional cancellation law. The nonnegative auxiliary energy does not imply any arithmetic upper bound.

## 5. Fixed-modulus character averaging and the square bias

Fix an integer Q>=1. Let G_Q=(Z/QZ)^times and n_Q=phi(Q), with the usual trivial group for Q=1. For a in G_Q put

$$P_{Q,a}(t)=\sum_{p\equiv a\ (Q)}\frac{\log p}{\sqrt p}k(\log p-t),\qquad
r_Q(a)=\#\{u\in G_Q:u^2=a\},$$
$$B_{Q,a}(t)=P_{Q,a}(t)-\frac{c}{n_Q}e^{t/2}
+\frac{r_Q(a)}{2n_Q}.\tag{16}$$

Let chi range over ALL characters modulo Q. Define P_{chi,Q}=sum_a chi(a)P_{Q,a}, delta_chi,Q=1 for the principal character and 0 otherwise, and kappa_chi,Q=1 if chi^2 is principal. Set

$$D_{\chi,Q}=P_{\chi,Q}-\delta_{\chi,Q}ce^{t/2}
+\kappa_{\chi,Q}/2.$$

**Proposition 5 (exact finite Fourier identity).** For every real t,

$$D_{\chi,Q}(t)=\sum_{a\in G_Q}\chi(a)B_{Q,a}(t),\tag{17}$$
$$\sum_{a\in G_Q}|B_{Q,a}(t)|^2
=\frac1{n_Q}\sum_{\chi\bmod Q}|D_{\chi,Q}(t)|^2.\tag{18}$$

**Proof.** The constant main term transforms to delta_chi,Q*c*exp(t/2). For the correction,

$$\sum_{a\in G_Q}\chi(a)r_Q(a)
=\sum_{u\in G_Q}\chi(u^2)=n_Q\kappa_{\chi,Q}.$$

This proves (17). Expand its squared absolute value, sum over characters, and use

$$\sum_{\chi\bmod Q}\chi(a)\overline{\chi(b)}
=n_Q\mathbf1_{a=b}.$$

This proves (18). Equivalently r_Q(a)=sum_{chi^2=1} overline(chi(a)). QED.

For Q=5, r_Q(1)=r_Q(4)=2 and r_Q(2)=r_Q(3)=0. The correction in (16) is consequently 1/4 in the square classes and zero in the nonsquare classes, not a common correction for every residue. Summing over a returns the conductor-one half-unit bias. This finite calculation is a sanity check, not evidence for an asymptotic estimate.

### 5.1 Explicit imprimitive transfer

Let chi* be the unique primitive character inducing chi, of conductor q* dividing Q. At primes outside Q the two values agree. Hence

$$D_{\chi,Q}(t)=D_{\chi^*}(t)
-\sum_{\substack{p\mid Q\\p\nmid q^*}}
\frac{\chi^*(p)\log p}{\sqrt p}k(\log p-t).\tag{19}$$

The principal flags agree, and the square-principal flags agree because the unit reduction G_Q -> G_(q*) is surjective. Its surjectivity follows by choosing, with CRT, a lift coprime also to the prime divisors of Q that do not divide q*.

At the level of the continued functions,

$$L(s,\chi)=L(s,\chi^*)
\prod_{\substack{p\mid Q\\p\nmid q^*}}
(1-\chi^*(p)p^{-s}).$$

Each displayed finite factor is nonzero for Re s>0: its subtracted term has modulus p^(-Re s)<1. Thus this transfer does not introduce additional zeros in the target critical strip or change multiplicities there. It makes no false identification of completed gamma factors at the imprimitive modulus.

Choose t_Q=3+log Q. For t>=t_Q all terms in the finite correction (19) vanish by support. Consequently, for T>=t_Q,

$$\mathcal E_Q(T):=
\int_{t_Q}^T\sum_{a\in G_Q}|B_{Q,a}(t)|^2\,dt
=\frac1{n_Q}\sum_{\chi\bmod Q}
\int_{t_Q}^T|D_{\chi^*}(t)|^2\,dt.\tag{20}$$

In particular every summand satisfies

$$\int_{t_Q}^T|D_{\chi^*}(t)|^2\,dt\le n_Q\mathcal E_Q(T).\tag{21}$$

This is the precise correction to the earlier blanket averaging warning. It uses NONNEGATIVITY and a FIXED modulus, not cancellation in a signed average.

Using (1) and the finiteness of the character group gives the exact indicator

$$\limsup_{T\to\infty}\frac{\log(1+\mathcal E_Q(T))}{2T}
=\max_{\chi\bmod Q}d_{\chi^*}.\tag{22}$$

Changing the finite lower integration endpoint changes no exponential indicator. Every primitive character whose conductor divides Q occurs through its unique induced character modulo Q. Therefore primitive Dirichlet GRH, including zeta, is equivalent to

$$\forall Q\ge1\ \forall\varepsilon>0\quad
\mathcal E_Q(T)=O_{Q,\varepsilon}(e^{2\varepsilon T}).\tag{23}$$

No constant uniform in Q is required in (23). All Q are still required. Neither (18) nor (20) proves the bound (23).

A growing-family normalized average must be examined separately: if the weight of a fixed term becomes exponentially small in T, the average can hide its positive exponential growth. Conversely, a quantitatively sufficient nonnegative average can control an individual term. The distinction is its exact weights and estimates, not the word "average".

## 6. The direct arithmetic estimate attempted

For each primitive chi define

$$\Theta_\chi(x)=\sum_{p\le x}\chi(p)\log p,\qquad
E_\chi(x)=\Theta_\chi(x)-\delta_\chi x,$$
$$\eta_\chi(t)=\sup_{e^{t-2}\le x\le e^{t+2}}\frac{|E_\chi(x)|}{x},\qquad
J_k=\int_{-2}^2e^{u/2}|k'(u)-k(u)/2|\,du.$$

Partial summation with x^(-1/2)k(log x-t) gives the unconditional inequality

$$|D_\chi(t)|\le J_ke^{t/2}\eta_\chi(t)+\kappa_\chi/2.\tag{24}$$

The main integral is exactly c*exp(t/2). For the error, the derivative is x^(-3/2)[k'(log x-t)-k(log x-t)/2]; substitution x=exp(t+u) yields (24).

For zeta, (13) only makes the first term O_k(exp(t/2-c1*sqrt(t))) for some c1>0 and large t. Its exponential indicator is still 1/2. More generally an input E_chi(x)=O(x^(1/2+d)) produces a bound O(exp(dt)+1), not a bound with an improved displacement exponent. Thus this direct use of a PNT remainder does not close (11). This statement does not deny stronger separately proved zero-free regions; it says this particular calculation is not a bootstrap reducing their exponent.

The remaining task is a signed long-separation dispersion estimate with the centering terms intact, or a quantitatively adequate fixed-modulus bound in (23). Neither an upper-bound sieve with an uncontrolled excess main term nor an orthogonality identity alone supplies it. There is no proven arithmetic contraction in this note.

## 7. Falsification, correspondence, and limits

1. The near-band estimate is by absolute values and Chebyshev alone. It cannot be promoted to an absolute-value bound on all off-diagonal pairs; W(X)=X would restore an exponential-scale estimate.
2. The band threshold is an additive prime separation, while |log p-log r|<=4 is the original kernel-support condition. They are different scales.
3. The diagonal asymptotic uses the actual primes and an unconditional strong PNT remainder. It does not model primes as independent random variables.
4. Equation (15) is explicitly conditional on the individual critical-line assertion; it is not an unconditional supplier for (11) or (23).
5. Multiplicity is squared in (14) only after coincident frequencies are grouped. No simplicity or linear independence of ordinates is inserted.
6. The fixed-modulus identity includes the principal character, all real-character square biases, and the finite omitted-prime transfer. Character phases are not replaced by absolute values in that identity.
7. The earlier full pole-inclusive arithmetic identity is the source return. The present band decomposition does not modify either pole orientation, the character convention, the archimedean terms, or the actual continued L-functions.
8. Publication and source identity are not Lean verification, numerical certification, independent review, or a new zero-free theorem.

The concrete mathematical increment is Proposition 1's all-scale band bound, Proposition 3's sharp diagonal, and Proposition 5's corrected fixed-modulus interface. Propositions 2 and 4 locate and constrain the unresolved part; they do not establish its upper bound. No actual off-critical arithmetic zero is asserted.

## References and statement correspondence

[1] grwtsk contributors, *A fixed dyadic Weil probe and the centered prime-correlation obstruction*, `FixedDyadicWeilProbe.md` at commit `1f388b830a790ee8ebbcdc1459f39abce6237591`, blob `5999537e7275f43a391ffc6a5c2115f4e01e1be2`. Sections 1-7 supply the objects and written source-return argument in (1); section 9 supplies (2). The present note is a successor for the averaging scope correction only. No previous formal status is promoted.

[2] Daniel R. Johnston and Andrew Yang, *Some explicit estimates for the error term in the prime number theorem*, arXiv:2204.01980v1 (submitted 5 April 2022), Corollary 1.2 and section 4.1. Used only for the unconditional shape of the theta remainder in (13), after reducing its exponential constant; no table-dependent numerical certification is asserted. https://arxiv.org/html/2204.01980v1

[3] Amir Akbary, Nathan Ng, and Majid Shahabi, *Limiting distributions of the classical error terms of prime number theory*, arXiv:1306.1657, Introduction and Theorem 1.2. Prior-art comparison for almost-periodic error-term methods; the simple absolutely summable proof of (14) is given in full here. Their conditional arithmetic applications are not assumed unconditionally. https://arxiv.org/abs/1306.1657

[4] Michael A. Bennett, Greg Martin, Kevin O'Bryant, and Andrew Rechnitzer, *Counting Zeros of Dirichlet L-Functions*, arXiv:2005.02989; and *Explicit bounds for primes in arithmetic progressions*, arXiv:1802.00085v3, especially sections 5-6. The former is the zero-counting input inherited from [1]; the latter is a primary comparator for fixed-modulus prime-counting estimates and their exceptional-zero qualifications. The band bound (3) does not require their numerical constants. https://arxiv.org/abs/2005.02989 ; https://arxiv.org/abs/1802.00085v3

[5] Richard P. Brent, David J. Platt, and Timothy S. Trudgian, *The mean square of the error term in the prime number theorem*, arXiv:2008.06140, Introduction and Theorems 1-2. Comparator only: their additive-x mean square is a different observable, and its RH-dependent upper bound is not an unconditional input here. https://arxiv.org/abs/2008.06140

The proofs are source-local mathematical exposition. No Lean declaration, runtime certificate, trained model, or universal prime-pair estimate is delivered by this document. Exact-source review and any later formalization should remain separately recorded in issue 1801.
