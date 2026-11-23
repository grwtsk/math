# Recovering the largest relative zero displacement from the real heat trace

Let \(H\) be the real arithmetic heat trace defined by Laplace inversion in the [saddle estimate](XiHeatSaddleBounds.md). For each integer \(n\ge1\) put
\[
 J_n(x)=e^n x^{-n}(-1)^nH^{(n)}(n/x),\qquad
 M_n=\sup_{x\in\mathbb Q,\ x>0}\frac{|J_n(x)|}{1+x}.
\]
Write \(g=\Im\rho>0\), \(d=\Re\rho-1/2\), \(\lambda=(g+id)^2=A+iB\). In particular \(A=g^2-d^2>0\). Then
\[
 \lim_{n\to\infty} M_n^{1/n}
 =R=\max_{\Im\rho>0}\frac{g^2+d^2}{g^2-d^2},
 \qquad
 \max_{\Im\rho>0}\frac{|d|}{g}=\sqrt{\frac{R-1}{R+1}}.
\]
The maximum exists because the ratio tends to one at large height and is everywhere at least one. If any zero lies off the line, every sufficiently large derivative order has a negative sample. Replacing the absolute value in the supremum by the negative part then gives the same exponential rate. Sra's complete monotonicity criterion gives the equivalence of the all-order sign with RH. The growth formula also gives the extremal ratio and an eventual failure at each order in the off-line case. [Sra, v3, Proposition A.1](https://suvrit.github.io/papers/riem-xi/riem-xi-v3.pdf)

For the upper bound let \(r_\lambda(x)=(e|\lambda|/x)e^{-A/x}\). A single summand of \(J_n\) has modulus \(m r_\lambda(x)^n\). The inequality \(u e^{1-u}\le1\) yields \(r_\lambda(x)\le |\lambda|/A\le R\). Since \(u^2e^{-u}\le1\), also \(\sum m r_\lambda(x)\le e R x\sum m/A\). The reciprocal-square zero count makes this finite. It follows that \(M_n\le e R^n\sum m/A\). For each fixed order the series is continuous for \(x>0\), so the use of positive rationals leaves the supremum unchanged.

When \(R=1\), all the rates are positive real, and the sample at any rate contains a positive summand of magnitude at least one. For \(R>1\), choose a maximizing nonreal rate \(A+iB\) of multiplicity \(m\). At \(x=A\) equality \(r_\lambda(x)=R\) requires both real part \(A\) and absolute value \(AR\). Precisely the conjugate pair satisfies this. All other rates have modulus factor at most \(R-\epsilon\) on a fixed neighborhood of \(A\), for some \(\epsilon>0\). Indeed the factors tend uniformly to zero there as height tends to infinity and only finitely many low rates remain. Choose real \(x_n\) so that \(n(\arg\lambda-B/x_n)\) equals the closest odd multiple of \(\pi\) to \(n(\arg\lambda-B/A)\). Since \(B\ne0\), there is a positive solution \(x_n=A+O(1/n)\) for large \(n\). The logarithm of \(r_\lambda(x)\) has derivative zero at \(A\) and bounded second derivative there, giving \((r_\lambda(x_n)/R)^n\to1\). The remaining series is bounded by \((R-\epsilon)^{n-1}\sum m r_\lambda(x_n)\). Thus \(J_n(x_n)/R^n\to-2m\), proving both lower bounds. The displacement formula follows by solving for \(|d|/g\).

An even finite product with rates \(4,(7+i/2)^2,(7-i/2)^2\) checks the sign mechanism at order 10,000. The scalar Lean file proves the high-ordinate tail and Gaussian inequalities for the finite-order positivity theorem. The limit proved above is a manuscript result. Proving \(R=1\) from arithmetic estimates at all orders remains open, as does the unconditional self-adjoint operator with the exact ξ determinant. [Tail inequalities](XiHeatTailAbsorption.lean) · [Arithmetic and model checks](../../../scripts/verify_xi_heat_saddle.py)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob 4b3c066886ac0ab748d7a37ff27a0a8fc9db2de3. A new empty kernel environment replayed the used declaration closure (4 roots, 15229 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
