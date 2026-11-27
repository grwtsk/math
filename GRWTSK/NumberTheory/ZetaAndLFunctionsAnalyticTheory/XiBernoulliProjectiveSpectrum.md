# A Bernoulli criterion for the Hilbert–Pólya determinant

Local source attribution: grwtsk contributors.

The arithmetic objects below use rational Bernoulli numbers alone. The analytic implications use classical theorems about the actual xi function. None takes an external RH proof, a zero table, a tensor price, or Weil positivity as a premise. Section 5 explicitly identifies a separate finite-height corollary that uses a published zero verification.

**Result.** From rational Bernoulli moments alone one can reconstruct the actual entire xi function and a self-adjoint operator recording the radii of its centered zeros. One signed angular quantity remains. It is nonnegative, equals zero exactly under RH, and admits a separate finite-height bound below $3.42\cdot10^{-38}$. The independent proof of its vanishing is missing. The bounded Bernoulli test below provides a second, entirely integer statement whose proof at all stages would suffice. The all-orders equivalences in this note are mathematical proofs on paper. The explicit kernel and integer checks are identified in Section 6.

## 1. Finite arithmetic equivalent to the spectral assertion

Let $\mathcal B_k$ denote the ordinary Bernoulli numbers, and define
\[
 M_n=\frac{6\,10^n n!\,|\mathcal B_{2n+2}|}{(2n)!},\quad
 v_j=2(j-1)(2j+1),\quad
 P_j=\prod_k(1+v_j b_k),\quad Q_j=P_j/P_2^{j-1}.
\]
Here $M_0=M_1=1$, and the first further moments are $25/21,5/3,625/231$. For integer $m\ge2$ put
\[
 V=v_m,\qquad C=2V+V^2+30m,\qquad N=16mC.
\]
Define $A(m)$ as follows. Test all multisets of at most $\lfloor N/10\rfloor$ positive entries $b_k=k_k/N^2$ with $\sum k_k<N^2/10$. Accept if one has $P_2<2$ and
\[
 \left|Q_j/M_{j-1}-1\right|<1/m\qquad(3\le j\le m).
 \tag{1}
\]
The empty multiset is permitted. Each test is a comparison of integers after clearing positive denominators. The search space is finite irrespective of RH. Its rank bound is $O(m^5)$ and its common denominator is $O(m^{10})$ for the **$b$ coordinates**. Repeated entries can be recorded with multiplicities.

**Theorem.** The following are equivalent on paper: the Riemann hypothesis for the actual zeta function, acceptance of $A(m)$ for every $m\ge2$, and existence of a positive trace-class $K$ with
\[
 \det(I-z^2K)=\xi(1/2+iz)/\xi(1/2).
 \tag{2}
\]
Under (1) at all stages, $K$ is obtained by taking a trace-norm limit of sorted witnesses. The corresponding unbounded self-adjoint operator has compact resolvent and precisely the xi zeros as eigenvalues, with multiplicity.

**Arithmetic normalization.** Write $X(u)=\xi(1/2+u)$, $u_j=2j-1/2$, $a=u_1^2=9/4$. Then $u_j^2-a=v_j$. Euler's even zeta formula gives $B_j=X(u_j)/X(u_1)$ and $M_{j-1}=B_j/B_2^{j-1}$, with $B_2=2\pi/5$. Thus (1) cancels the power of $\pi$ exactly, rather than approximating it at increasing precision. If RH holds, the paired Hadamard product has positive parameters $\lambda=1/\gamma^2$ repeated at the positive zero ordinates. Take $b=\lambda/(1+a\lambda)$. Truncation and rational perturbation give arbitrarily small relative error on any finite set of nodes, with $P_2<2$. Zeros are used here solely in the reverse implication.

**Recovering the scale in the forward implication.** With only the stage predicates assumed, $P_2\ge1+10\sum b_k$ gives $\sum b_k<1/10$. Thus $P_m(u)=\prod(1+b_k(u^2-a))$ is locally uniformly bounded. Each factor has two imaginary zeros. Montel and Hurwitz give an even entire subsequential limit $P$, with $P(u_1)=1$ and no zeros off the imaginary axis. On a further subsequence $P_m(u_2)\to p\in[1,2]$. For every $j$,
\[
 P(u_j)=B_j(p/B_2)^{j-1}.
\]
Put $c=\tfrac12\log(p/B_2)$. On $\Re u>1/2$, $P'/P$ has nonnegative real part, by passage from the finite imaginary-root products. Independently of RH, $X'/X$ also has positive real part there. Indeed in its even paired Hadamard product each pair of zeros $r,-r$ contributes $1/(u-r)+1/(u+r)$ and $|\Re r|\le1/2$. The paired series converges locally normally.

Rolle's theorem applied to the real logarithms of $P$ and $e^{c(u-u_1)}X(u)/X(u_1)$ yields $P'/P=X'/X+c$ at a point in each successive node interval. Add a common real constant larger than $|c|+1$ and apply $w\mapsto(w-1)/(w+1)$ to both logarithmic derivatives. The resulting bounded holomorphic functions on $\Re u>1/2$ agree on a sequence $2j+O(1)$ violating the half-plane Blaschke zero condition. Hence they agree identically. Integration, normalization and analytic continuation give $P(u)=e^{c(u-u_1)}X(u)/X(u_1)$. Both $P$ and $X$ have derivative zero at zero and $X(0)>0$. Consequently **$c=0$**. The projective normalization retained enough information to force the lost scale back to its true value.

**Constructing the operator.** After sorting rows and selecting a subsequence, let $b_k$ be their coordinate limits and $d$ the loss between the limiting row sum and $\sum b_k$. In $w=u^2-a$ the limit is $e^{dw}\prod_k(1+b_kw)$. This follows by expanding the tail logarithm, since the sorted entries satisfy $b_{m,k}\le1/(10k)$ and the tail sum of squares is $O(1/k)$. Here $d\ge0$. At $u_j$ all factors are at least one and Stirling gives $\log B_j=O(j\log j)$, forcing $d=0$. Coordinate convergence and convergence of the sums now give $\ell^1$ convergence. The map $b\mapsto\lambda=b/(1-ab)$ is Lipschitz on $[0,1/10]$. Normalizing the limit at zero gives (2) with $K=\operatorname{diag}(\lambda_k)$ on its positive support. Its multiset of positive entries is characterized by (2), so every subsequential limit agrees and the full sorted sequence converges in trace norm. On two copies of its support space, take $H$ diagonal with entries $\pm\lambda_k^{-1/2}$ on the maximal square-summability domain. It is self-adjoint, has compact resolvent, and $\det_2(I-zH^{-1})=\det(I-z^2K)$. Conversely (2) forces all zeros of $\xi(1/2+iz)$ to be real.

**Why a polynomial grid suffices.** Start with any finite unrestricted row at precision $1/(8m)$ on the first $m$ nodes and $P_2<2$. Round every $b\ge1/N$ down to the nearest multiple of $1/N^2$. Replace all entries below $1/N$, of total mass $T$, by $\lfloor NT\rfloor$ copies of $1/N$. The new mass does not increase and its rank is at most $N\sum b<N/10$. Concavity of $\log(1+vb)$ and its value zero at zero show that compressing the small entries never increases their log product. The large entries lose at most $v/(10N)$. For the small entries, $0\le vb-\log(1+vb)\le v^2b^2/2$ bounds their total loss by $v/N+v^2/(20N)$. In particular the change in $\log P_j$ is at most $(2v_j+v_j^2/10)/N$. Since $v_2=10$, the change in $\log Q_j$ is at most $C/N$. The original log relative error is less than $1/(4m)$, so the new error is less than $5/(16m)$ in logs, and less than $1/m$ in (1). This is a proof about all stages and allows stronger starting precision. It does not identify two differently normalized finite tests at the same tolerance.

**A necessary lower bound on rank.** Suppose rows of ranks $r_m$ succeed as $m$ increases. In the last two samples we have $P_m/P_{m-1}\ge P_2(M_{m-1}/M_{m-2})(1-1/m)/(1+1/m)$, where the $P_j$ here refer to a single row. The moment ratio is asymptotic to $10m/(4\pi^2)$ by Euler and Stirling, and $P_2\ge1$. Each positive $\lambda$ contributes a ratio smaller than $(u_m/u_{m-1})^2$. Taking logs gives $\liminf r_m/(m\log m)\ge1/2$. Hence a fixed-rank ansatz cannot realize the arithmetic requirement even with changing entries.

## 2. The unconditional operator determined by the rational moments

The classical theta formula is $X(u)=\int_{\mathbb R}e^{ut}\phi(t)\,dt$ with an even, strictly positive, superexponentially decaying density. GRWTSK already uses this formula to construct a self-adjoint cosine model and positive Hankel minors from the moments in $t^2$. Here the change of variable makes the moments themselves rational. [GRWTSK theta spectral model](https://github.com/grwtsk/math/blob/36c52a33f8ef731c3bc58bb68cc086906a750bab/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiThetaMomentSpectralModel.md) · [Romik, theta formula](https://arxiv.org/abs/1902.06330)

Use the probability density $e^{3t/2}\phi(t)/X(3/2)$ and let $Y=e^{2t}/B_2$. Then $\mathbb E[Y^n]=M_n$. The law has a strictly positive density on $(0,\infty)$ and moments of every real order. Every minor $\det(M_{r_i+s_j})$ for strictly increasing nonnegative row and column indices is strictly positive, by the Andréief integral identity and the generalized Vandermonde determinant on strictly ordered positive arguments. In particular Gram–Schmidt gives a monic orthogonal polynomial recurrence with rational diagonal and positive rational subdiagonal coefficients. Its first coefficients are $\alpha_0=1$, $\beta_1=4/21$, $\alpha_1=3/2$. The symmetric Jacobi matrix has off-diagonals $\sqrt{\beta_n}$.

Stirling and Euler's formula give $M_{2n}^{1/(2n)}=\Theta(n)$. The Hamburger Carleman condition gives determinacy, and the minimal Jacobi operator is essentially self-adjoint. Write $J$ for its closure and $e_0$ for the cyclic basis vector. Everything defining $J$ uses the rational $M_n$. [Simon, the classical moment problem](https://arxiv.org/abs/math-ph/9906008)

Set $v=J^{-3/8}e_0/\|J^{-3/8}e_0\|$ and $L=(\log J-\langle v,(\log J)v\rangle I)/2$ by spectral calculus. The spectral law of $v$ weights the law of $Y$ by $Y^{-3/4}$. This cancels the original $e^{3t/2}$ tilt. Evenness now gives $\langle v,(\log J)v\rangle=-\log B_2$. In the theta variable, $L$ acts by multiplication by $t$. Taking the inner product linear in its second argument gives
\[
 \langle v,e^{izL}v\rangle=\xi(1/2+iz)/\xi(1/2).
\]
The identity is entire, since $v$ lies in the domain for every complex $z$ by exponential integrability. The spectrum of $L$ is the entire real line, simple and absolutely continuous. This gives an arithmetic reconstruction of xi as a matrix coefficient. Equation (2) is the additional zero-spectrum identity required of a Hilbert–Pólya operator.

**Counterexample to the positivity shortcut.** Take rationals $q>1$ tending to one. Multiply $X(u)$ by $G_q(u)=1+(q-1)^2/16+\cosh(2u\log q)$. This preserves a strictly positive even bilateral Laplace density by convolution, keeps order one, and keeps every projectively normalized sample rational since $q^{2u_j}=q^{4j-1}$. The normalized modifying factors tend to one uniformly on compact sets. Nevertheless their zeros have real parts of magnitude $\operatorname{arcosh}(1+(q-1)^2/16)/(2\log q)\to1/(4\sqrt2)$ and least positive imaginary part $\pi/(2\log q)\to\infty$. These functions retain strict Hankel positivity at every order and introduce off-axis zeros inside the critical strip. They change the Bernoulli sequence. A proof for that exact sequence must use more than its status as strictly positive moment data.

### A determinant obtained from the Bernoulli source at all orders

GRWTSK already recovers the radii of the centered zeros from Jensen circle means, and builds the radial determinant in its Jensen–Appell construction. Its Lean circle theorem compares the actual divisor with vertical projection. Here we apply those ideas to the Bernoulli-defined function from Section 2 and integrate the radial count against an explicit kernel. This gives a single scalar comparison at positive argument. [GRWTSK circle means](https://github.com/grwtsk/math/blob/36c52a33f8ef731c3bc58bb68cc086906a750bab/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiJensenDiskProjection.md) · [GRWTSK radial product](https://github.com/grwtsk/math/blob/36c52a33f8ef731c3bc58bb68cc086906a750bab/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiJensenAppell.md)

Write $F(u)=X(u)/X(0)$, so $F(0)=1$. Define from the reconstructed function
\[
 J_F(r)=\frac1{2\pi}\int_0^{2\pi}\log |F(re^{i\theta})|\,d\theta,\qquad
 \Delta(t)=2t\int_0^\infty\frac{rJ_F(r)}{(r^2+t)^2}\,dr-\log F(\sqrt t),\quad t>0 .
\]
The logarithm in the last term is real because the theta representation makes $F(u)>0$ on the real axis. Here $\pi$ in angular integration is a universal geometric normalization. The only function-specific inputs are the rational $M_n$. Jensen gives $J_F(r)=\sum_{|w|<r}\log(r/|w|)$ over all centered zeros counted with multiplicity. The integral admits logarithmic singularities on circles that contain zeros. Its weighted integral is finite by the classical zero count. One may recover the radial counting measure as the jumps of $rJ_F'(r)$, using the right derivative at jump radii. Every mass is even by the symmetry $w\leftrightarrow-w$.

Let $K_{\rm rad}$ have the eigenvalue $r^{-2}$ for each counted radius, with half its full centered multiplicity. This positive trace-class operator is now specified by the Bernoulli source without an input list of zero ordinates. Jensen and two integrations, or Tonelli applied to the nonnegative single-zero terms, give
\[
 \log\det(I+tK_{\rm rad})
 =\tfrac12\sum_w\log(1+t/|w|^2)
 =2t\int_0^\infty\frac{rJ_F(r)}{(r^2+t)^2}\,dr .
\]
The signed inverse square roots give the compact-resolvent self-adjoint operator with eigenvalues $\pm r$, counting the same half multiplicity for each sign. What it captures unconditionally is the **radius** of each centered zero.

For every $t>0$, the quartet identity in Section 5 gives
\[
 \Delta(t)=\sum_{\rm off\text{-}axis\ quartets}
 -\log\!\left(1-\frac{4t\delta^2}{(\gamma^2+\delta^2+t)^2}\right)\ge0 .
 \tag{3}
\]
Each off-axis quartet makes a strictly positive contribution for each fixed $t>0$. Thus
\[
 \boxed{\quad\mathrm{RH}\quad\Longleftrightarrow\quad\Delta(1)=0.\quad}
\]
If the scalar equality holds, the radial operator has the exact centered zero spectrum with multiplicity and realizes the full determinant (2). Proving the reverse inequality $2\int_0^\infty rJ_F(r)/(r^2+1)^2\,dr\le\log F(1)$ from the specific Bernoulli source would finish this route. Equation (3) also shows that $\Delta(t)\to0$ as $t\to\infty$ independently of RH, by dominated convergence: outside a finite head the summands are bounded by a fixed constant times $\gamma^{-2}$. Thus decay at large positive arguments cannot substitute for equality at the one fixed argument.

**A rational anchor.** Set $t=1/4$, so $1/2+\sqrt t=1$ and $\xi(1)=1/2$. The radial weight has mass one. After $v=2u$, the central normalization cancels and the same scalar gate becomes
\[
 \mathcal E=\int_{\mathbb C}\log\left|2\xi\left(\frac{1+v}{2}\right)\right|
             \frac{dA(v)}{\pi(1+|v|^2)^2}
 =\sum_{\rm off\text{-}axis\ quartets}
 -\log\!\left(1-\frac{\delta^2}{(\gamma^2+\delta^2+1/4)^2}\right).
\]
Here $dA$ is planar area and the displayed measure is spherical probability. The positive part is integrable by the order-one xi growth bound $\log^+|\xi(s)|=O(|s|\log(2+|s|))$. Jensen bounds the angular means below by a finite constant, giving integrability of the negative part as well. Thus $\mathcal E\ge0$ and $\mathcal E=0$ is equivalent to RH. The constant inside the logarithm is exactly two. Indeed $2\xi(1/2+u)=F(u)/F(1/2)$, so even this absolute normalization is recovered from the rational moments. At this anchor the upper bound from Section 5 is $\mathcal E<3.42\cdot10^{-38}$. Strictly positive contributions from a quartet at arbitrarily large height have no universal positive lower bound.

## 3. The analytic step still required

To close the independent GRWTSK route it suffices to prove that (1) has a witness for every stage from the Bernoulli recurrence, or from source-specific arithmetic independently established. The theorem in Section 1 then supplies the operator and the multiplicities. Its trace formula gives Weil positivity for every compactly supported smooth test, by summing squared Fourier values on the spectrum. OpenAI tensor prices and GRWTSK affine port transports can represent such a positive geometry after its inner product is supplied. They add no premise to this reformulation. Calling Alpöge's certified RH theorem would prove the reverse-direction existence and would change the independence claim. The same applies to invoking the full Weil positivity criterion as an axiom.

## 4. A rational floor test for the existing Hardy operator

The [GRWTSK Hardy manuscript](https://github.com/grwtsk/math/blob/36c52a33f8ef731c3bc58bb68cc086906a750bab/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiHardyDissipativePart.md) gives the exact xi determinant and writes its defect as $\|\operatorname{Im}K_{\rm H}\|_1=2D$, where $D=\sum_{\Re\rho>1/2}(\Re\rho-1/2)/|\rho-1/2|^2$ counts multiplicities. One can attack this specific defect using integers.

Take finite rational $a_k$ with $\sum a_k/k=0$, set $f(x)=\sum a_k\{1/(kx)\}$, and put $R(n)=1+\sum a_k\lfloor n/k\rfloor$. This residual is periodic. If $C_0$ is its maximal absolute value over one full period, then
\[
 \|1-f\|_{L^2(0,1)}^2\le q_M=\sum_{n=1}^M R(n)^2/[n(n+1)]+C_0^2/(M+1).
\]
For any hypothetical right-side zero $\rho$, the Mellin transform of $f$ at $\rho$ vanishes by the elementary fractional-part Mellin formula and balance. Cauchy–Schwarz against $x^{\bar\rho-1}$ gives
\[
 (2\Re\rho-1)/|\rho|^2\le q_M .
\]
Thus rational floor certificates with $q_M\to0$ would themselves exclude every right-side zero. Reflection would give RH. This implication uses neither a theorem asserting RH nor an inner-factor identification.

There is an exact operator interpretation. Let $V$ be the closed span in $L^2(0,1)$ of $\{\theta/x\}-\theta\{1/x\}$ for $0<\theta<1$. Burnol identifies its Mellin image with $BH^2$ for the Blaschke product of the right-side zeros. Projection of the kernel at $1/2+z$ gives
\[
 \operatorname{dist}(x^{z-1/2},V)^2=(1-|B(1/2+z)|^2)/(2z)\longrightarrow 2D
 \quad(z\downarrow0).
\]
Indeed each summand of $-\log|B(1/2+z)|$ divided by $z$ tends to $2\Re(\rho-1/2)/|\rho-1/2|^2$. The centered zeros stay away from zero and the latter sequence is summable, permitting dominated convergence. For $a=(-1,1,1,0,1,-1,14/15)$, the period is 210 and $C_0=4/3$. Rounding individual summands upward at scale $10^{10}$ through $M=8400$ gives $q_M\le5442263162681/151218000000000<0.035990$. The classical strengthened Nyman–Beurling criterion supplies the converse direction from RH. An independent sequence with errors tending to zero remains missing. [Burnol](https://arxiv.org/abs/math/9910055) · [Báez-Duarte](https://arxiv.org/abs/math/0202141)

The Hardy and radial defects have a quantitative link. For one quartet put $x=\delta/(\gamma^2+\delta^2+1/4)$. Its term in $\mathcal E$ is $-\log(1-x^2)$, and it contributes $2\delta/(\gamma^2+\delta^2)$ to $D$. There exists $\kappa<1$ bounding all $x$: each $x<1$ because $(\delta-1/2)^2+\gamma^2>0$, and $x\to0$ at large height. Hence $\sum x\le D/2$ and
\[
 \mathcal E\le\frac{1}{1-\kappa^2}\sum x^2\le\frac{D^2}{4(1-\kappa^2)} .
\]
Together with the floor-to-defect bound $D\le q_M/(1-q_M)$ for $q_M<1$ proved in [the Hardy-space floor comparison](XiHardyFloorDefect.md), this gives a route from any convergent rational floor family directly to the radial determinant.

**A natural coefficient family fails.** Let $P$ be the product of primes at most $y$, choose $a_k=-\mu(k)$ for divisors $k$ of $P$, and add $c=\varphi(P)/P$ to $a_1$ to enforce balance. Inclusion–exclusion gives $R(n)=cn$ for $1\le n\le y$. Each fixed such residual tends to zero, yet the full squared error is at least $yc^2/2\to\infty$. For example, Mertens' product estimate gives $c\sim e^{-\gamma_{\rm E}}/\log y$. Thus this explicit choice cannot supply the missing all-orders approximation. The [Hardy-space floor comparison](XiHardyFloorDefect.md) also gives an elementary divergence proof.

## 5. A uniform positive comparison and a finite-height corollary

**Corollary on paper.** Every relative-error stage $2\le m\le2\cdot10^{12}$ of Section 1 admits a witness. On arbitrarily large finite windows positive rational rows still exist at the fixed relative tolerance $4.5\cdot10^{-13}$. This proof uses Platt–Trudgian's rigorous finite verification to height $T=3\cdot10^{12}$ and an explicit zero-count estimate. It uses no global RH theorem and does not compute two trillion individual matrices. [Platt–Trudgian](https://arxiv.org/abs/2004.09765) · [Hasanalizade–Shen–Wong, Corollary 1.2](https://www-math.nsysu.edu.tw/~pjwong/stuff/CountingRiemannZeros.pdf)

In the centered Hadamard product, radially project every possible off-axis quartet $\pm\delta\pm i\gamma$ to $\pm i\sqrt R$, doubled, where $d=\delta^2\le1/4$ and $R=\gamma^2+d$. Count multiplicities. All line zeros keep their factors. For $t=u^2\ge0$, the true and projected quartet factors satisfy the exact identity
\[
 \frac{1+2t(\gamma^2-d)/R^2+t^2/R^2}{(1+t/R)^2}
 =1-\frac{4dt}{(R+t)^2}.
\]
The loss is at most $\min(t/\gamma^4,1/(4\gamma^2))$ for every $t\ge0$. The projected product defines a positive trace-class diagonal since the inverse-square sum converges. Because $\gamma>T$ for all possible off-axis quartets, the losses are below $1/16$. The log loss is at most $16/15$ times the loss.

Let $N_\zeta(x)$ count positive ordinates with multiplicity. The cited explicit estimate gives $N_\zeta(x)\le x\log x/6$ for $x\ge T$. Each quartet uses two positive ordinates. Partial summation gives
\[
 \sum_{\rm quartets}\gamma^{-2}\le\int_T^\infty N_\zeta(x)x^{-3}\,dx
 \le(\log T+1)/(6T),\qquad
 \sum_{\rm quartets}\gamma^{-4}\le2\int_T^\infty N_\zeta(x)x^{-5}\,dx
 <1.28\cdot10^{-37}.
\]
For the origin-normalized projected and true products the log distortion $E(t)$ therefore obeys
\[
 0\le E(t)\le(2/45)(\log T+1)/T<4.405\cdot10^{-13}.
\]
The termwise distortion tends to zero as $t\to\infty$, and the summable bound also proves $E(t)\to0$. Normalizing the products at $a$ gives a log error $E(t)-E(a)$, still bounded in magnitude by the same constant. At $t=u_2^2$ the sharper local sum gives a normalization mismatch below $(16/15)(u_2^2+a)1.28\cdot10^{-37}<2\cdot10^{-36}$.

For the projective samples, fix $P_2$ exactly before allowing $j$ to grow. The same zero-count estimate gives $N_\zeta(200)>N_\zeta(50)$. Choose a verified on-line zero in this interval. Its factor has $1/40000\le\lambda=\gamma^{-2}\le1/2500$. Alter only this factor to match $P_2=B_2$. The derivative of its normalized log value at $u_2$ is $10/[(1+u_2^2\lambda)(1+a\lambda)]>9$ in a neighborhood of that range. The intermediate value theorem keeps the parameter positive and supplies a change of magnitude $<4\cdot10^{-37}$. For every $u\ge u_1$, the derivative of the normalized log factor is bounded by $1/\lambda'<41000$ over the interval of correction. The added global distortion is less than $2\cdot10^{-32}$. With $P_2$ exact, the model's log relative error at **every projective sample** is now below $4.41\cdot10^{-13}$.

Any finite window permits truncation and rational approximation while retaining a strict relative tolerance $4.5\cdot10^{-13}$. For the specified integer grid at a chosen $m\le2\cdot10^{12}$, choose truncation and rationalization costing less than $1/(100m)$ in projective log error and retaining $P_2<2$. Compression costs at most $1/(16m)$. For $20\le m\le2\cdot10^{12}$ the combined log error is less than $0.955/m<\log(1+1/m)$. The same strict inequality follows directly from the bounds for $2\le m<20$. This proves (1) throughout the finite range.

The radial product before the one-factor calibration also has the zero-table-free definition in Section 2. The calibration uses a low zero, and the error estimate uses the published finite-height verification. In particular its bound at the fixed argument in (3) is $0\le\Delta(1)<1.37\cdot10^{-37}$. Sections 1–4 use no zero table. An independent proof that the fixed relative tolerance can be driven to zero on arbitrarily large windows is still needed.


## 6. Explicit finite checks

The explicit stage-128 witness on the polynomial grid of Section 1 has 15 distinct entries, rank 32,767 and $N=8{,}727{,}248{,}240{,}640$. All 126 nontrivial relative errors are strictly below $10^{-5}$, versus the required $1/128$. A standard-library verifier computes the Bernoulli recurrence using exact fractions and encloses all logarithms by directed integer arithmetic and an explicit convergent-series remainder. This row also has sufficient margin for the compression argument to establish the smaller stage-dependent predicates. It uses no zero data.

In a separate test of the stronger **absolute-error** normalization, a rank-345 positive rational row meets all 20 nontrivial tests through stage 22. Its maximum absolute error is between $0.038088095552$ and $0.038088095553$, below $1/22$. The fixed row misses the next sample by more than $7700$. The input spectrum, exact Bernoulli recurrence, integer inequalities and next-node check accompany this note. These are direct calculations, distinct from the analytic finite-height corollary in Section 5.

Lean 4.34.1 and Mathlib at d13f23b723b8a846827a245b89c10fc7d3f11612 accepted `ProjectiveMatrix.xi_projective_certificate`. Its rank-117 positive definite matrix has absolute projective error below $1/50$ through stage 15, including 13 nontrivial comparisons and the normalization at $j=2$. Fresh kernel replay of the combined matrix and normalization theorems checked 54,330 transitive constants. Its axiom report lists only `propext`, `Classical.choice`, and `Quot.sound`. The Mathlib-only theorem `PureXiIdentity.xi_div_first_pow` proves the projective cancellation at every positive even xi sample for Mathlib's own pole-cancelled completion. The Mathlib-only source `GRWTSK.XiRadialQuartet` checks the quartet identity, strictness for a positive displacement, exact finite-product equality, and its extension to arbitrarily accurate finite products containing each specified factor. A fresh kernel replay of these eight radial declarations covered 7,513 transitive constants and used only the three standard axioms. The infinite determinant and all-orders deductions are proved on paper. No priority claim is made for the moment or Jensen techniques.

The [Bernoulli interpolation cost and scalar rational product](XiBernoulliInterpolationCost.md) give exact exponents for the maximum horizontal displacement of a nontrivial zeta zero.
