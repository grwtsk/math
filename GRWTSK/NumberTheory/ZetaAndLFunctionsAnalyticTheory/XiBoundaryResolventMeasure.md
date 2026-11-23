# A self-adjoint resolvent from critical-line data and its spectral gap

Write \(X(z)=\xi(1/2+iz)\), with the classical entire completion. For \(\Im z>0\) set \(s=1/2-iz\) and
\[
 g(z)=(s-1)\zeta(s)/(s+2)^8,\qquad
 k(s)=s(s+2)^8\pi^{-s/2}\Gamma(s/2)/2 .
\]
The functional equation gives \(X(z)=k(s)g(z)\). Define the analytic function
\[
 M(z)=i\frac{k'(s)}{k(s)}
       -\frac1{\pi i}\int_{\mathbb R}\frac{\log|g(t)|}{(t-z)^2}\,dt.       \tag{1}
\]
This input uses the gamma factor and the critical-line values of zeta. Its Herglotz measure defines a self-adjoint multiplication operator \(H\). A gap about zero in the spectrum of \(H\) is equivalent to RH. Under RH its inverse is Hilbert–Schmidt, and the multiplicity construction below gives the exact normalized xi determinant. If RH fails, \(H\) has absolutely continuous spectrum of multiplicity one on the entire real line. Hence bounded invertibility at zero is itself an unresolved mathematical requirement in this construction.

## Positivity, point masses and continuous spectrum

The bounded multiplier \(g\) is analytic across every finite real point. Its only possible singular inner support on the compactified boundary is infinity, and its polynomial decay along the positive imaginary axis rules out an exponential inner factor there. Boundary zeros have finite order and carry no singular inner factor. Thus \(g=BO\) with \(B\) pure Blaschke and \(O\) outer. In particular \(\log |g(t)|\) is integrable with weight \((1+t^2)^{-1}\), including at real zeros. The analytic Poisson formula gives \(O'/O=(\pi i)^{-1}\int \log|g(t)|(t-z)^{-2}dt\); its subtraction constant disappears upon differentiation. Equation (1) is therefore the negative logarithmic derivative of \(k O\):
\[
 M=-X'/X+B'/B .
\]
This step is the reason for removing the gamma factor before applying the boundary integral. The linear decay of \(\log|X(t)|\) makes its unsubtracted integral against this kernel inappropriate. [Hardy factorization and the arithmetic growth estimates](XiHardyDissipativePart.md)

For verification let \(p=\gamma+i\sigma\), \(\sigma>0\), run over upper zeros of \(X\), with multiplicities \(m_p\). This set corresponds to right-of-line zeros of zeta via \(s=1/2-iz\) and conjugation. The upper zeros have their lower reflections \(\bar p\). In the symmetric order-one product for \(X\), group by conjugation and negation. The logarithmic derivative of \(B\) adds \((z-p)^{-1}-(z-\bar p)^{-1}\) for each occurrence. Thus \(M\) has one term \(m_\tau/(\tau-z)\) at each real zero and \(2m_p/(\bar p-z)\) for each upper zero. The latter description pairs ordinates of opposite signs before summation. The paired terms are locally normally summable off their poles by the zero count and \(|\sigma|<1/2\). The constant is fixed by the symmetric product for \(X\); an exponential factor in \(B\) has already been excluded. In particular \(\Im M(z)>0\) throughout the upper half-plane. Its meromorphic continuation has lower poles with residues \(-2m_p\) and real poles with residues \(-m_\tau\).

For \(y>0\) put \(P_y(t)=y/[\pi(t^2+y^2)]\). The Herglotz measure of (1) is exactly
\[
 d\mu(t)=\sum_{\tau\ \mathrm{real}}m_\tau\delta_\tau
   +2\sum_{p}m_p P_\sigma(t-\gamma)\,dt .                                \tag{2}
\]
Indeed the imaginary part of each lower-pole term is the Poisson extension of the displayed Cauchy density, by \(P_y*P_\sigma=P_{y+\sigma}\). Real-pole terms give the usual point masses. The positive sums can be interchanged by monotone convergence and their weighted mass is finite by evaluation at \(i\). There is no further affine term, since these Poisson extensions already give the full imaginary part. The symmetry makes the real normalization constant zero. This proves (2) from (1) and uniquely identifies the measure. The construction can use Stieltjes inversion directly on (1). [Teschl, *Mathematical Methods in Quantum Mechanics*, second edition, §3.4 and Appendix on Herglotz–Nevanlinna functions](https://www.mat.univie.ac.at/~gerald/ftp/book-schroe/schroe2.pdf)

Take \(H_0\) to be multiplication by the real coordinate in \(L^2(\mu)\) on its maximal domain. The truncations to bounded intervals show density, and division by \(t\pm i\) gives surjective shifted operators and self-adjointness. For \(v(t)=1/(t-i)\), the true scalar resolvent satisfies
\[
 M(z)=(1+z^2)\langle (H_0-z)^{-1}v,v\rangle+z\|v\|^2
 \quad(\Im z>0)
\]
with the scalar product linear in its first argument. This follows by combining the subtracted Cauchy kernels. Lower xi poles in the continuation are resonances of this scalar matrix element. Its division by \(1+z^2\) may also introduce a pole at \(-i\). They are never nonreal eigenvalues of the self-adjoint operator. More precisely the lower zeros of xi, which all have nonzero real ordinate, give poles there; the reconstruction of xi residues uses the continued \(M\).

At a real zero the scalar multiplicity of multiplication is one whatever the mass of the atom. To recover every actual multiplicity, adjoin a copy of the same multiplication operator on \(L^2(\mu_j)\) for each integer \(j\ge1\). Define \(\mu_j\) by the local weak limit of
\[
 \min(1,\max(0,y\Im M(t+iy)-j))\,d\mu(t),\qquad y\downarrow0 .
\]
For the Herglotz measure \(y\Im M(t+iy)\to\mu(\{t\})\), by dominated convergence against its weighted measure, first on a bounded interval, then on the tail. The bounded cutoff gives convergence on compactly supported continuous tests. Exactly the indices \(1\le j<m_\tau\) give additional copies at \(\tau\). All construction choices depend on (1) and its spectral measure. The orthogonal sum with its maximal graph domain is self-adjoint.

If a single upper zero exists, its Cauchy density is positive on the entire real axis and bounded below on each compact interval. The total continuous density is real analytic locally, by normal convergence around every finite real interval (there are finitely many nearby poles). It is equivalent to Lebesgue measure and occurs only in the base summand. Thus every real point belongs to the spectrum, zero belongs to the continuous spectrum, and the resolvent is noncompact. If the upper divisor is empty, the measure is purely atomic, the real divisor has a gap at zero since \(X(0)\ne0\), and the eigenvalues escape to infinity. In this case the sum of squared reciprocal eigenvalues with their full multiplicities converges by the classical zero count. The paired Hadamard product gives \(\det_2(I-zH^{-1})=X(z)/X(0)\) for all complex \(z\). In particular even a single gap anywhere in the real spectrum forces RH. Formula (2) is used to prove these alternatives. Prescribing the atoms of (2) as the operator input would omit the arithmetic construction.

## Positive moments and a quantitative comparison on the Euler side

For \(n\ge0\) put \(u_n=\langle (I+H_0^2)^{-n}v,v\rangle=\int(1+t^2)^{-n-1}d\mu(t)\). For \(|x|<1\), with \(y=\sqrt{1-x}\) positive at zero, the generating function and its comparison function are
\[
 U(x)=\sum_{n\ge0}u_nx^n=\frac{M(iy)}{iy},\qquad
 C(x)=\frac{\xi'(1/2+y)}{y\xi(1/2+y)}=\sum_{n\ge0}C_nx^n .
\]
The formula for \(U\) follows first for real \(x<1\) near zero by symmetry of \(\mu\), then by continuation. Every \(C_n\) can be evaluated by derivatives at \(s=3/2\), in the absolutely convergent Euler half-plane. Near \(x=1\), \(C\) is the average of the two continuations of \(U\) on the square-root surface: \(-X'/X\) is odd in \(z\), whereas \(B'/B\) is even by the two symmetries of the divisor. This is an identity of analytic germs; continuation through the continuous spectrum does not preserve a physical resolvent.

Set \(r_p^2=\gamma^2+\sigma^2\), \(D=\sum_p m_p\sigma/r_p^2\), \(W=\sum_p m_p\sigma/r_p^4\), and \(c_n=4^{-n}{2n\choose n}\). The trace-minimal realization in the [preceding construction](XiHardyDissipativePart.md) has imaginary trace norm \(2D\). The published zero verification supplies \(r_p>T=3\cdot10^{12}\) for every possible upper zero. Without assuming any such zero exists one has, for every \(n\ge1\),
\[
 \left|\,(2n-1)\left(\frac{u_n-C_n}{2c_n}-D\right)-3W\,\right|
       \le 400W/T^2 .                                                     \tag{3}
\]
Consequently equality \(u_n=C_n\) at **any one** positive index is equivalent to RH. If RH fails, every difference is positive and its leading term is \(2Dc_n\). Equation (3) also gives an arithmetic recovery of the next transverse moment to explicit relative precision. [Platt–Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765)

To prove it expand
\[
 \frac{B'(iy)}{i B(iy)}=
   2\sum_p\frac{m_p\sigma}{(iy-\gamma)^2+\sigma^2}
   =2D+\sum_{k\ge1}a_k y^{2k}.
\]
The linear and all odd terms cancel by \(\gamma\mapsto-\gamma\). Expanding the two geometric factors \((1-z/p)^{-1}(1-z/\bar p)^{-1}\) gives
\[
 a_1=-2\sum_p\frac{m_p\sigma}{r_p^4}(3-4\sigma^2/r_p^2),\qquad
 |a_k|\le2(2k+1)W T^{-2(k-1)}\ (k\ge1).
\]
Hence \(U-C=2D(1-x)^{-1/2}+\sum_{k\ge1}a_k(1-x)^{k-1/2}\), locally normally around zero. For \(k=1\) the coefficient of degree \(n\ge1\) is \(-c_n/(2n-1)\). In general its absolute value divided by \(c_n\) is \(\prod_{j=1}^k(2j-1)/|2n-(2j-1)|\). For \(1\le n\le k\) this is \({2k\choose2n}/{k\choose n}\le4^k\). For \(n\ge k\), multiplying the ratio by \(2n-1\) leaves a decreasing product, bounded by its value \(2k-1\) at \(n=k\). This bounds the ratio times \(2n-1\) by \(2k4^k\) throughout. The \(k=2\) error uses \(320W/T^2\), the first-order coefficient contributes at most \(W/T^2\) because \(4\sigma^2<1\), and the remaining geometric tail fits inside (3). For instance consecutive bounds \(2k4^k(2k+1)T^{-2(k-1)}\) have ratio at most \(9/T^2\) for \(k\ge2\). No nonvanishing of a transverse quantity was used.

The base moment obeys a separate exact identity:
\[
 u_0-C_0=\frac{B'(i)}{iB(i)}=2\sum_p m_p\sigma\,
 \frac{r_p^2-1}{(r_p^2-1)^2+4\gamma^2}.
\]
It follows by pairing the two signs of the ordinate in the logarithmic derivative. All displayed summands are positive when present. Thus equality at index zero also characterizes RH. In the continuation of the weighted scalar resolvent the residue at \(-i\) is exactly \(-(u_0-C_0)\), since \(M(-i)+M(i)=2B'(i)/B(i)\) and \(M(i)=iu_0\). This pole arises from the vector weight and cancels on reconstructing \(M\); it is removable precisely if the upper divisor is empty.

In fact index zero needs only one signed critical-line integral and an absolutely convergent prime sum. Put \(K(t)=(t^2-1)/(1+t^2)^2\). Direct substitution in (1) gives
\[
 u_0-C_0=\frac1\pi\int_{\mathbb R}K(t)\log|\zeta(1/2+it)|\,dt
              +\sum_{n\ge2}\frac{\Lambda(n)}{n^{3/2}}-\frac43.              \tag{4}
\]
For the constants, the differentiated Poisson integral of \(\frac12\log(t^2+c^2)\) against \(K/\pi\) is \(1/(1+c)\) for \(c>0\) (its harmonic extension at \(iy\) is \(\log(c+y)\)). The numerator \(|s-1|\) gives \(2/3\), the denominator gives \(-16/7\), and the log derivative of the rational factor at \(s=3/2\) is \(2-16/7\). The remaining derivative is the logarithmic Euler series. The paired positive terms for \(u_0-C_0\) are at most \(2D\), since \((r^2-1)^2+4\gamma^2-r^2(r^2-1)=1+3\gamma^2-\sigma^2>0\). In particular the signed integral divided by \(\pi\) lies between \(-0.171902022454935\) and \(-0.171902022453454\) using the previous upper bound on \(D\). Exact equality to \(4/3+\zeta'(3/2)/\zeta(3/2)\) remains open here. Inversion \(t\mapsto1/t\) also writes the integral as \(2\int_1^\infty K(t)\log|\zeta(1/2+it)/\zeta(1/2+i/t)|dt\). Integral criteria for RH of this kind have prior literature; the extra identification here is the residue of the continued resolvent and its quantitative bound. [Sekatskii, Beltraminelli and Merlini, *A few equalities involving integrals of the logarithm of the Riemann zeta-function and equivalent to the Riemann hypothesis*](https://arxiv.org/abs/0806.1596)

The moments also separate two asymptotic rates. For \(D>0\), \(\sqrt{\pi n}\,u_n\to2D\), since \(c_n\sim1/\sqrt{\pi n}\) and \(C\) is analytic on a disk of radius greater than one. For the latter assertion its possible poles are \(x=1+\tau^2\) for zeros of \(X\); the center \(x=1\) is removable. The known first ordinate and finite-height theorem put all the poles outside the closed unit disk. If \(D=0\), positivity in the purely atomic measure gives \(u_n^{1/n}\to(1+\gamma_1^2)^{-1}\), where \(\gamma_1\) is the first positive ordinate. Bound the tail above by \(u_0(1+\gamma_1^2)^{-n}\) and below by the first atom. An independent proof of an \(o(n^{-1/2})\) bound for the actual moments would suffice. Analytic continuation of the Euler comparison function alone gives a bound on \(C_n\); the square-root term of \(U\) remains unresolved.

The [Lean companion](XiBoundaryResolventMeasure.lean) works with Mathlib's actual zeta-zero predicate and finite analytic multiplicities. It proves the positive single-zero bound uniformly on every compact interval, and proves that the Poisson comparison density vanishes at a specified point exactly when Mathlib's RiemannHypothesis holds. Its definition uses a nonnegative extended-real sum, so it requires no conditional rearrangement. The manuscript supplies the identification with the arithmetic boundary resolvent. The [numerical and rational controls](../../../scripts/verify_xi_boundary_resolvent.py) check the coefficient comparison, the two continuations, and Euler-side Taylor coefficients. The infinite-dimensional spectral construction, (3) and its identification with the formal divisor are manuscript results. Independent external review is unrecorded.

At 640-bit precision the first Euler comparison coefficient lies in \((0.00007377245548353023,0.00007377245548353024)\). Formula (3) and the previous tail bound give \(0\le u_1-C_1<7.399\cdot10^{-13}\). Five Taylor coefficients through index 16 were compared with 32 independently enclosed positive zeta ordinates and their negatives, with the remaining tail bounded using \(2C_0\). Indeed once \(|\Re\tau|\ge14\), \(|1+\tau^2|\le2\Re(1+\tau^2)\) for \(|\Im\tau|<1/2\); pairing roots gives \(C_0=\sum_\tau(1+\tau^2)^{-1}\). On rational test divisors 1,920 generalized-binomial comparisons, four resolvent evaluations and twenty two-term moment comparisons passed. These checks leave the equality of an actual moment open.

Native elaboration, fresh kernel replay and transitive axiom audits passed with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 for XiBoundaryResolventMeasure at 48f9df08b3d0fcdff41c0a1dfa01f1ac6339e887. Across the declarations the reported axioms were propext, Classical.choice and Quot.sound.
