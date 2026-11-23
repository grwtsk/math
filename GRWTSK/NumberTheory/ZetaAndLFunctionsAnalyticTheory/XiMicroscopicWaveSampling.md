# Detecting horizontal zero displacement in microscopic windows of prime sums

grwtsk contributors

Let \(q_n\) be any sequence of integers with \(1\le q_n\le\sqrt n\) and \(q_n\to\infty\). Define
\[
 t_n=n/q_n,\qquad h_n=2^{-\lceil n/q_n\rceil},\qquad
 r_{n,j}=n+jh_n\quad(0\le j\le q_n),\qquad M_n=2^{6n}.
\]
Write \(K_\nu\) for the modified Bessel function of the second kind, and \(\Lambda\) for the von Mangoldt function. Form the finite arithmetic observations
\[
 P_n(r)=\frac12\exp(r/2-t_n\cos(1/2))
   -\frac1{2\pi}\sum_{2\le m\le M_n}\frac{\Lambda(m)}{\sqrt m}
                        K_{i(\log m-r)}(t_n).
\]
For the nontrivial zeros of the Riemann zeta function put \(B=\sup_\rho|\Re\rho-1/2|\). Then
\[
 \lim_{n\to\infty}\frac1n\log\!\left(1+\max_{0\le j\le q_n}|P_n(r_{n,j})|\right)=B.
 \tag{1}
\]
Consequently boundedness of these maxima along any unbounded sequence of complete windows would prove RH. Under RH the maxima actually tend to zero. The sample count \(q_n+1\) may grow arbitrarily slowly. All translation points are rational and all the samples in the \(n\)-th window occupy length \(q_n 2^{-\lceil n/q_n\rceil}\). No corresponding bound on the count of prime summands is intended: the explicit cutoff is exponential in \(n\).

## The exact wave and the finite prime formula

For \(t>0\) set \(k_t(z)=e^{-t\cosh z}\), \(D(y)=\Re\psi(1/4+iy/2)-\log\pi\), and \(S_t(r)=\sum_{m\ge2}\Lambda(m)m^{-1/2}K_{i(\log m-r)}(t)\). The arithmetic wave is
\[
 F_t(r)=e^{-t\cos(1/2)}\cosh(r/2)+\frac1{4\pi}\int_{\mathbb R}k_t(y)\cos(ry)D(y)\,dy
              -\frac{S_t(r)+S_t(-r)}{2\pi}.
\]
The unconditional Guinand–Weil formula gives
\[
 F_t(r)=\tfrac12\sum_\alpha m_\alpha k_t(\alpha)e^{ir\alpha},\qquad
 \alpha=(\rho-1/2)/i.
 \tag{2}
\]
The index runs over the distinct signed frequencies with multiplicities \(m_\alpha\). The test is \(k_t(z)\cos(rz)\), analytic with rapid decay on \(|\Im z|\le1\) for each \(r,t\). The divisor is symmetric under negation, turning the cosine into the displayed exponential. The Fourier integral of \(k_t\) at angular frequency \(v\) is \(2K_{iv}(t)\). These conventions give precisely one half of the explicit formula and a real even wave. [Carneiro–Milinovich, *On Littlewood's Estimate for the Modulus of the Zeta Function on the Critical Line*, Lozenets 2023 proceedings, Lemma 2.2](https://www.math.bas.bg/mathmod/Proceedings_CTF/CTF-2023/files_CTF-2023/05-Carneiro-Milinovich.pdf) · [Bessel integral, DLMF 10.32.9](https://dlmf.nist.gov/10.32.E9) · [Earlier fixed-temperature normalization](XiCurvedWaveSampling.md)

For \(t\ge1\), shifting the Bessel integral vertically by one unit toward Fourier decay gives \(|K_{iv}(t)|\le K_0(t\cos1)e^{-|v|}\le C e^{-|v|}\). The integrals on the vertical edges tend to zero by double-exponential decay. With \(r\in[n,n+1]\), the omitted positive-center prime tail is at most
\[
 C e^r\sum_{m>M_n}(\log m)m^{-3/2}
        \le C e^{n+1}(2\log M_n+4)M_n^{-1/2}.
\]
This tends to zero exponentially since \(3\log 2>1\). The full negative-center sum is \(O(e^{-r})\), and the negative exponential in the pole term is \(O(e^{-r/2})\). The gamma integral is \(O(e^{-t})\) for \(t\ge1\), since \(|D(y)|\ll1+\log(2+|y|)\) by Stirling and \(e^{-t\cosh y}\le e^{1-t}e^{-\cosh y}\). All constants are independent of \(r,n\). The window eventually lies in \([n,n+1]\), and thus \(P_n(r)-F_{t_n}(r)=o(1)\) uniformly on it. [Digamma asymptotics, DLMF 5.11.2](https://dlmf.nist.gov/5.11.E2)

## Isolating a mode without uniform spacing hypotheses

Write \(\alpha=a+ib\). The strip gives \(|b|\le1/2\) and
\[
 |k_t(\alpha)|=\exp(-t\cos b\cosh a)\le\exp(-3t e^{|a|}/8).
\]
For \(q=q_n\), take \(G=\log(16q)\). Beyond \(|a|>G\), half this exponent supplies a factor \(e^{-3n}\) at \(t=t_n\). Its other half supplies the summable majorant \(\exp(-3 e^{|a|}/16)\) since \(t_n\ge1\). Multiplication by \(e^{ir\alpha}\) costs at most \(e^{(n+1)/2}\). The divisor sum outside the head \(|a|\le G\) is consequently \(O(e^{-2n})\) throughout the window. The classical zero count gives a head of size \(O(G\log(2+G))=o(q)\), even when counted with multiplicities. It also makes the above majorant summable.

Fix one frequency \(\beta\) and let \(d\) be the number of *other distinct* frequencies in the head, eventually containing \(\beta\). Put \(z_\alpha=e^{ih_n\alpha}\). There is a constant \(c_\beta>0\) with
\[
    |z_\alpha-z_\beta|\ge c_\beta h_n \qquad(\alpha\ne\beta,\ |\Re\alpha|\le G)
\]
for large \(n\). Indeed the discrete zero set has a positive minimum distance to the fixed \(\beta\) after omitting \(\beta\) itself. For every head frequency, \(h_n|\alpha-\beta|\to0\) uniformly because \(G=O(\log n)\) and \(h_n\le2^{-\sqrt n}\). Factoring out \(e^{ih_n\beta}\) and using \(|e^w-1|\ge |w|/2\) near zero proves the claim. Coincident zeros have been combined into their positive multiplicities.

Define a polynomial only for the proof of the lower bound,
\[
 H(Z)=\prod_{\alpha\ne\beta,\ |\Re\alpha|\le G}
                  \frac{Z-z_\alpha}{z_\beta-z_\alpha}
      =\sum_{\ell=0}^d H_\ell Z^\ell.
\]
Its coefficient sum \(\sum_\ell|H_\ell|\) is at most \((3/(c_\beta h_n))^d\) for large \(n\), since \(|z_\alpha|\le e^{h_n/2}\). Its logarithm is \(o(n)\) because \(d=o(q)\) and \(\log(1/h_n)\le (n/q+1)\log2\). This estimate uses separation from the **single fixed frequency**. There is no minimum separation requirement for pairs of discarded frequencies. Eventually \(d\le q\), so every shift needed by the polynomial is available in the window.

Apply the coefficients to the \(d+1\) successive samples of the head of (2). Each mode contributes its initial amplitude times \(H(z_\alpha)\); exactly the \(\beta\) contribution survives. Writing \(U_n=\max_j |F_{t_n}(r_{n,j})|\) gives
\[
 \frac{m_\beta}{2}
    \exp\!\left(-n\Im\beta-\frac{n}{q}\cos(\Im\beta)\cosh(\Re\beta)\right)
 \le e^{o(n)}(U_n+O(e^{-2n})).
\]
For fixed \(\beta\) the temperature loss is \(o(n)\). If \(B>0\), choose \(-\Im\beta\) arbitrarily close to \(B\) from below or equal to it by symmetry. This gives the lower limit in (1). The upper bound follows by \(|F_{t_n}(r)|\le C e^{B r}\) from (2) and \(t_n\ge1\); it also settles \(B=0\). Under RH the real-divisor sum is \(O(e^{-t_n})\) uniformly in \(r\), by domination with \(\sum m_\alpha e^{-\cosh(\Re\alpha)}\). The uniform arithmetic approximation transfers these assertions to \(P_n\).

## Two observations at each temperature slope

There is also a fixed-size test, with successive limits. Prescribe any rational spacings \(0<h_n\le1\) tending to zero with \(\log(1/h_n)=o(n)\). Put \(u_n=\sqrt{n(1+\log(1/h_n))}\). For each fixed positive integer \(q\), use temperature \(t_{n,q}=n/q+u_n\) and the two translations \(n,n+h_n\). Denote by \(P_{n,q}\) the same finite prime formula as above with this temperature and the same cutoff. Set
\[
 c_\alpha=\cos(\Im\alpha)\cosh(\Re\alpha),\qquad
 L(q)=\max_\alpha(-\Im\alpha-c_\alpha/q).
\]
Then
\[
 \lim_{n\to\infty}\frac1n\log\!\big(1+
       \max(|P_{n,q}(n)|,|P_{n,q}(n+h_n)|)\big)=\max(0,L(q)),
 \qquad \lim_{q\to\infty} L(q)=B. \tag{3}
\]
For example, one may take \(h_n=2^{-\lceil n/\log(n+2)\rceil}\). The slopes, translations, temperature perturbations and prime cutoffs use no zeta-zero data. A subexponential upper bound on the two samples along an arbitrarily sparse infinite set of \(n\)'s for each member of an unbounded set of slopes \(q\) would therefore prove RH. The sets of indices may depend on \(q\).

To prove (3), fix \(q\). The expression \(-\Im\alpha-c_\alpha/q\) tends uniformly to \(-\infty\) with \(|\Re\alpha|\), so its maximum is attained on a finite set. Among those maximizers choose one with minimal \(c_\alpha=c_*\), and write it as \(a+ib\). Tying in both quantities fixes \(b\), then \(\cosh a\), so all surviving frequencies are the pair \(\pm a+ib\), or one frequency if \(a=0\). Negation and conjugation of the divisor ensure the pair is present whenever \(a\ne0\). There is a positive gap \(\delta_q\) between the maximum and the values strictly below it because each superlevel set is finite. All other maximizers have \(c_\alpha\ge c_*+\eta_q\) for some \(\eta_q>0\) if any exist. At either translation the discarded contribution is bounded by
\[
 O_q\!\left(e^{n(L(q)-\delta_q)}+
       e^{nL(q)-u_n(c_*+\eta_q)}\right).
\]
Indeed, the first term uses \(\sum m_\alpha e^{-c_\alpha}<\infty\) and \(u_n\ge1\), and a translation increment of at most one costs at most \(e^{1/2}\). Each surviving mode has initial amplitude of absolute value \((m_\alpha/2)e^{nL(q)-u_nc_*}\). For a pair, subtract \(e^{ih_n(-a+ib)}F_{t_{n,q}}(n)\) from \(F_{t_{n,q}}(n+h_n)\). The other mode is multiplied by a number of absolute value \(2e^{-h_nb}|\sin(h_na)|\gg_a h_n\). The discarded bound above is little-oh of \(h_ne^{nL(q)-u_nc_*}\), since \(u_n=o(n)\) and \(\log(1/h_n)=o(u_n)\). For a singleton the first translation suffices. Hence the two wave observations have maximum at least a constant times \(h_ne^{nL(q)-u_nc_*}\) for large \(n\), and at most \(O_q(e^{nL(q)})\). The proved absolute approximation \(P_{n,q}-F_{t_{n,q}}=o(1)\) yields the first assertion of (3), including the case \(L(q)\le0\). Finally \(L(q)\le B\), and every fixed \(\alpha\) gives \(\liminf_{q\to\infty}L(q)\ge-\Im\alpha\). Divisor symmetry gives the remaining inequality.

The sublinear temperature perturbation resolves ties in the leading rate before the two translations distinguish the surviving pair. The proof takes \(n\to\infty\) for fixed \(q\); its spectral gaps depend on \(q\). No effective common threshold in \(n\) for all slopes is supplied.

## A bounded range of the required inequality

With \(H=3\cdot10^{12}\), the verified real divisor through height \(H\) implies an unconditional bound uniform in \(n\) whenever \(1\le q\le \min(\sqrt n,e^H/16)\). For any \(r\in[n,n+1]\), the terms through \(H\) in (2) have positive real weights at zero translation; their absolute sum is at most \(\frac12\sum m_\alpha/(\Re\alpha)^2<0.024\). Here \(e^{-t\cosh a}\le a^{-2}\) at \(t\ge1\) and \(|a|\ge14\). In the part beyond \(H\) use \(e^{|a|}\ge16q\) to bound half of the kernel exponent by \(-3n\). The remaining factor \(e^{-3e^{|a|}/16}\le |a|^{-2}\) for \(|a|\ge14\). Thus the tail is below \(0.024 e^{-3n+(n+1)/2}\). These constants use the unconditional sum over positive ordinates in Brent–Platt–Trudgian, Corollary 1. This proves boundedness of the actual waves, including at arbitrarily large \(n\) for each fixed \(q\) in the stated range. The finite prime approximation has the errors given above. Extending the admissible \(q\)'s without bound is the unresolved arithmetic step. [Platt–Trudgian, *The Riemann hypothesis is true up to \(3\cdot 10^{12}\)*](https://doi.org/10.1112/blms.12460) · [Brent–Platt–Trudgian, *Accurate estimation of sums over zeros of the Riemann zeta-function*, Corollary 1](https://doi.org/10.1090/mcom/3652)

The need to let \(q\) increase has a simple check. For any fixed \(q\), take a symmetric quartet \(\alpha=\pm g\pm ib\) with \(0<b<1/2\) and \(g\) so large that \(\cos b\cosh g/q>b\). Its contribution to (2) tends to zero exponentially on \([n,n+1]\), despite its nonzero displacement. The quartet checks only the spectral estimate. There is no assertion that it is the divisor of an arithmetic prime system.

For each \(t_n,r_{n,j}\), the arithmetic two-point matrix with diagonal \(F_{t_n}(0)\) and off-diagonal \(F_{t_n}(r_{n,j})\) has least eigenvalue \(F_{t_n}(0)-|F_{t_n}(r_{n,j})|\). Its diagonal stays bounded and tends to zero by domination in (2). A common lower bound on these matrices on complete cofinal windows gives (1) with \(B=0\). A self-adjoint multiplication operator and its multiplicities can then be recovered from the **fixed-temperature** arithmetic Gaussian correlation as in the [Weil-matrix construction](XiWeilThetaCluster.md). The varying kernels in (1) have different spectral weights, so they cannot be treated as the orbit of one fixed vector without a separate construction.

The earlier [lattice sampling argument](XiLatticeWaveSampling.md) uses an almost-everywhere fixed spacing and a limsup. The [curved sampling argument](XiCurvedWaveSampling.md) proves a one-sided oscillation theorem through continuation of a discretized Laplace transform. The present conclusion concerns maximum absolute values, with both signs allowed, on every sufficiently large microscopic window. Danesh's two-interval theorem controls a normalized cross term for compactly supported probes. The Bessel smoothing here uses an entire spectral multiplier and rapidly varying temperatures. [Danesh, arXiv:2611.10726v1](https://arxiv.org/abs/2611.10726v1)

At source blob `50209e3d4d80f989c2faf00b53de1b8573ceb5bd` the [Lean companion](XiMicroscopicWaveSampling.lean) proves the finite shift action, its norm bound and the isolation inequality with additive sample errors. Its four declarations passed elaboration and fresh kernel replay over 12,008 declarations. Each root's transitive audit returned only `propext`, `Classical.choice` and `Quot.sound`. The analytic explicit formula, the growing-window estimates and the Hilbert–Pólya implication have no Lean verification in this manuscript. Independent external review remains outstanding.
