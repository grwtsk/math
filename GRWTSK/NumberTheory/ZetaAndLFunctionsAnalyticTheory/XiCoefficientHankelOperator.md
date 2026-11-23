# The infinite xi Hankel pencil in the Hardy coefficient norm

grwtsk contributors

The consecutive Hankel sections built from the true xi Taylor coefficients recover separated reciprocal nodes and their multiplicities in a large-shift limit. What happens if one first forms the infinite pencil on the ordinary coefficient space \(\ell^2(\mathbb N_0)\)? Its denominator is an injective trace-class self-adjoint operator. Nevertheless the quotient has empty point spectrum, and the inverse of the denominator has too few eigenvalues to give the xi determinant. Both obstructions hold unconditionally. [Finite pencil and its order of limits](NewtonHankelPencil.md) · [Exact determinant problem](https://github.com/grwtsk/math/issues/124)

## An operator specified by the theta coefficients

Write \(X(z)=\xi(1/2+iz)\), \(g(z^2)=X(z)/X(0)\), and \(F(w)=g(-w)\). Set \(p_k=-k[w^k]\log g(w)\) for \(k\ge1\), using the logarithm germ with value zero at zero. For any integer \(r\ge1\) define the operator initially by its matrix on finitely supported vectors,
\[
 T_r=(p_{r+i+j})_{i,j\ge0}.
\]
Its input is the real Taylor series of the completed zeta function. The positive theta kernel gives \(F(w)=1+\sum_{k\ge1}a_kw^k\) with \(a_k>0\). The Mellin theta representation at the center gives \(X(0)=1/2-\beta_0/4\), with
\[
 \beta_0=\int_0^\infty e^{t/4}\sum_{m\ge1}e^{-\pi m^2 e^t}\,dt
 \le 2\int_1^\infty y^{-3/4}e^{-3y}\,dy
 \le 2e^{-3}/3 .
\]
Here \(y=e^t\), and \(\sum_{m\ge1} e^{-\pi m^2 y}\le e^{-3y}/(1-e^{-3y})\) for \(y\ge1\). Thus \(X(0)>1/3\), while \(\xi(2)=\pi/6<2/3\). For \(|w|\le9/4\),
\[
 |g(w)-1|\le F(9/4)-1=\xi(2)/X(0)-1<1.
\]
This supplies a zero-free coefficient disk without a zero table. [Positive theta integral](XiThetaSchurSource.md) · [Mellin center normalization](XiShiftedHankelPositivity.md)

For the proof only, write \(u\) for the reciprocal of a distinct zero of \(g\), and \(m_u\) for its order. By the genus-zero product of this order-\(1/2\) function,
\[
 p_k=\sum_u m_u u^k,\qquad \sum_u m_u|u|<\infty,\qquad |u|<q=4/9 .
\]
Complex conjugation permutes this divisor. It contains infinitely many distinct nodes accumulating at zero, by the classical zero count and finite multiplicity. No reality hypothesis enters. [Xi product and coefficient normalization](XiNewtonMomentHilbertPolya.md)

For \(x\in\ell^2\) put \(f_x(u)=\sum_{j\ge0}x_ju^j\). Then
\[
 (T_rx)_i=\sum_u m_u u^{r+i}f_x(u),\qquad
 \|T_r\|_1\le (1-q^2)^{-1}\sum_u m_u|u|^r .
\]
Indeed \(x\mapsto (u^i)_{i\ge0}f_x(u)\) has rank one and trace norm \(1/(1-|u|^2)\), by Cauchy–Schwarz with equality on the conjugated evaluation vector. Absolute trace-norm convergence gives the unique bounded extension and the displayed action on all of \(\ell^2\). The real symmetric entries imply \(T_r=T_r^*\).

Suppose \(T_rx=0\). All Taylor coefficients at zero of the following meromorphic function vanish:
\[
 t\longmapsto \sum_u \frac{m_u u^r f_x(u)}{1-tu}.
\]
The sum is locally normally convergent off the discrete points \(1/u\), since \(f_x\) is uniformly bounded on \(|u|\le q\) and the denominators in the tail tend to one uniformly on compact sets. The identity theorem and the residue at each \(1/u\) give \(f_x(u)=0\). These zeros accumulate at zero inside the disk of analyticity of \(f_x\), hence \(x=0\). This proves injectivity. Self-adjointness then gives dense range; the inverse \(G_r=T_r^{-1}\) on that range is densely defined and self-adjoint by the spectral theorem.

## Two obstructions to spectral correspondence

Let \(S(x_0,x_1,\ldots)=(0,x_0,x_1,\ldots)\). Equality on basis vectors and continuity give
\[
 T_{r+1}=T_rS=S^*T_r,\qquad T_r^{-1}T_{r+1}=S
\]
on all of \(\ell^2\). The equation \(Sx=zx\) has only the zero solution: for \(z\ne0\) compare successive coordinates from index zero, and for \(z=0\) use injectivity of \(S\). Therefore \(T_{r+1}-zT_r\) has zero kernel for every complex \(z\). Its adjoint is the pencil at \(\bar z\), so its range is dense. It is compact on the infinite-dimensional space and cannot be onto. In particular the spectrum of the quotient cannot supply the nodes recovered by the finite pencils. The usual unilateral shift has the closed unit disk as spectrum; for \(|z|<1\) the adjoint has the geometric eigenvector \((1,\bar z,\bar z^2,\ldots)\) at \(\bar z\), and outside the closed disk the Neumann series gives the resolvent. An equivalent Hilbert norm cannot make \(S\) self-adjoint because bounded similarity preserves that spectrum. A positive moment-space construction would require controlling a different completion. [Moment-space criterion](XiNewtonMomentHilbertPolya.md)

The actual self-adjoint \(G_r\) also fails the requested determinant test. Its inverse is trace class. For any self-adjoint operator with bounded Hilbert–Schmidt inverse and determinant exactly \(X(z)/X(0)\), the reciprocals of its nonzero eigenvalues, with multiplicity, would belong to Schatten class \(\mathcal S_p\) precisely for \(p>1\). Indeed the zeros of the regularized determinant are precisely the eigenvalues of the unbounded operator, with multiplicity; the unconditional Riemann–von Mangoldt formula counts the zeros of \(X\) in \(|z|\le R\) with order of magnitude \(R\log R\), as the imaginary parts of these centered zeros are bounded by \(1/2\). Partial summation gives the asserted threshold. In particular \(\det_2(I-zT_r)\) differs from the normalized xi function for every \(r\ge1\). [Riemann–von Mangoldt formula, Theorem 1 and proof](https://mathweb.tifr.res.in/Documents/Publications/Lectures/tifr01.pdf)

The discrepancy can be quantified. Order the distinct nodes by decreasing modulus. The same zero count gives \(|u_{m+1}|\ll(\log m/m)^2\), since a node from a centered zero of modulus \(R\) has modulus \(R^{-2}\). Remove the first \(m\) rank-one terms. For the rest, with \(|u|\le b=|u_{m+1}|\), replace each functional \(f_x(u)\) by its sum through degree \(k-1\). The replacement operator has rank at most \(k\), since it uses only the first \(k\) input coordinates. The remaining operator norm is at most \(C_r b^k\) by the geometric tail and the trace-norm bound above. Thus \(s_{m+k+1}(T_r)\le C_r b^k\). Taking \(m=\lfloor n/\log n\rfloor,\ k=n-m-1\) yields
\[
 \log s_n(T_r)\le -2n\log n+O_r(n\log\log n).
\]
The number of determinant zeros in \(|z|\le R\) is consequently \(O_r(\log R/\log\log R)\). Even counting every eigenvalue with its full multiplicity cannot repair the deficit.

The meromorphic continuation, operator-ideal estimates, xi-specific injectivity and zero-count arguments above are analytic proofs. The adjacent Lean module constructs the bounded operator on Mathlib’s complex \(\ell^2\) from geometric decay, constructs the unilateral shift as a linear isometry, and proves the exact composition and triviality of every pencil eigenspace when \(T_r\) is injective. The xi specialization has geometric decay since \(|p_k|\le q^{k-1}\sum m_u|u|\) for \(k\ge1\); set the unused \(p_0=0\). The exact module with SHA-256 68aabeabd3c9bed141a02ca0921ac2812d8ea392a6891684adac5ec85e4f5d48 built with Lean 4.34.1 and passed fresh kernel replay. Its public theorems used only the standard axioms of propositional extensionality, choice and quotient soundness. Independent mathematical review is pending. [Formal coefficient result](XiCoefficientHankelOperator.lean)
