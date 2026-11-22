# An exact theta-source anti-Pick criterion for positive Hilbert–Pólya

**Consumers:** [Prime-Jacobi Hilbert–Pólya #1849](https://github.com/grwtsk/math/issues/1849), [Fredholm divisor #124](https://github.com/grwtsk/math/issues/124), [original arithmetic Gm #1850](https://github.com/grwtsk/math/issues/1850), and [RH/GRH blueprint #1828](https://github.com/grwtsk/math/issues/1828). **Local source:** [XiThetaAntiPickSource.lean](XiThetaAntiPickSource.lean), importing the **actual** sourceXi and normalizedEvenXiTaylor from [XiToeplitzHilbertPolyaCriterion.lean](XiToeplitzHilbertPolyaCriterion.lean), and not redefining a surrogate xi. Related [XiThetaSchurSource.md](XiThetaSchurSource.md) and [XiThetaMomentSpectralModel.md](XiThetaMomentSpectralModel.md).

**Source pin:** grwtsk/math main at 8a844070d03a77d30f08e75dec519bc22b2f75b4 before this increment; Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Original completed-zeta source: Mathlib.NumberTheory.LSeries.RiemannZeta.completedRiemannZeta₀, its entire-function/functional-equation declarations, and the actual sourceXi definition in XiToeplitzHilbertPolyaCriterion. The original theta kernel and exact gamma/pole/prime logarithmic derivative are stated in XiThetaSchurSource.md. The new Lean definitions and elementary finite factor identities are SOURCE_PROOF_CANDIDATES; Lean elaboration, fresh kernel, axiom replay and formalization of the entire-function equivalence are **NOT_RUN**.

**Dated classical background:** Laguerre–Pólya theory and the Herglotz–Nevanlinna characterization of logarithmic derivatives of real entire functions; see Bergweiler–Eremenko–Langley style references such as *Non-real zeros of derivatives of meromorphic functions*, https://citeseerx.ist.psu.edu/document?doi=16bc5a8b2e4ce3eb4c5a3efc10b92c6c96541056, including the implication that −f'/f is Pick for real-zero Laguerre–Pólya functions. Also Edrei’s PF∞ classification in Konstanze Rietsch, *Totally Positive Toeplitz Matrices: Classical and Modern*, ICM 2026, DOI 10.1137/25M1806727. These are classical principles, not claimed novel. The external Alpöge/Claude 2026 claimed/formally checked RH development is **not used as a premise or imported**; it is background orientation only.

## 1. The exact original source

Define
\[
\xi(s)=\frac{s(s-1)}2\pi^{-s/2}\Gamma(s/2)\zeta(s),\qquad
F(w)=\frac{\xi(1/2+\sqrt w)}{\xi(1/2)}.
\]
The second definition is by the unique **even power series** about 1/2, so it is branch-independent and entire. The original completed-zeta functional equation proves evenness. Its order is 1/2, hence strictly below one; F(0)=1. No zeta zero ordinate is an input.

The unconditional positive Riemann-theta cosine source gives
\[
F(w)=\frac1{M_0}\int_0^\infty\Phi(u)\cosh(u\sqrt w)\,du,\qquad
M_0=\int_0^\infty\Phi(u)\,du=\xi(1/2)>0,
\]
with \(\Phi(u)>0\) and superexponential decay for u≥0. Therefore \(F(x)>0\) for **every real \(x\ge0\)**, unconditionally and without RH. These same source properties imply the Schwarz reflection \(F(\bar w)=\overline{F(w)}\).

For every \(w\) with \(\operatorname{Im}w>0\), set
\[
\boxed{B_\Phi(w):=\operatorname{Im}(F'(w)\overline{F(w)}).}\tag{1}
\]
The expression remains well-defined even at zeros of F; unlike F'/F, it has no hidden division or zero-free-domain assumption.

For w≠0 in the upper half-plane, take t=√w on the holomorphic branch with Re(t)>0, and differentiate the **actual** theta integral:
\[
\boxed{
B_\Phi(w)=\frac1{M_0^2}
\int_0^\infty\!\!\int_0^\infty
\Phi(u)\Phi(v)
\operatorname{Im}\!\left[
  \frac{u\sinh(tu)}{2t}\overline{\cosh(tv)}
\right]\,du\,dv.
}\tag{2}
\]
All source terms are present: this is an identity for the exact \(\xi\) and its original theta kernel, not a fitted spectral, finite-moment or Gaussian approximation. Its integrand is **SIGNED** and not generically pointwise nonpositive.

## 2. Complete mathematical equivalence, independent of external RH as a proof premise

**Theorem (actual-\(\Xi\) anti-Pick criterion).** The following are equivalent:

- The entire source \(B_\Phi(w)\le0\) for EVERY \(w\) with \(\Im w>0\).
- All zeros of the original entire \(F\) lie on the negative real axis, including their complete analytic multiplicities.
- The genuine completed \(\Xi(z)=\xi(1/2+iz)\) has only real zeros, i.e. the ordinary Riemann hypothesis.
- The genuine normalized \(\Xi\) has an entire, exact, multiplicity-preserving positive inverse-square-trace-class Hilbert–Pólya determinant:
\[
\boxed{\Xi(z)=\Xi(0)\det_{\rm Fr}(I-z^2H_+^{-2}),\qquad
H_+>0,\quad H_+^{-2}\in S_1.}\tag{3}
\]
There is NO extra nonvanishing entire prefactor in (3).

**Proof (anti-Pick ⇒ all F zeros negative).** Suppose \(F(w_0)=0\) with \(\Im w_0>0\), multiplicity m≥1. Write \(F(w)=(w-w_0)^m h(w)\) with h holomorphic and h(w0)≠0. At nonzeros near w0,
\(F'(w)/F(w)=m/(w-w_0)+h'(w)/h(w)\).
Choose w=w0−iε, with 0<ε<Im w0 and ε sufficiently small so h(w)≠0. Then
\[
\Im\frac{F'(w)}{F(w)}=\frac m\epsilon+O(1)>0.
\]
Multiplying by \(|F(w)|^2>0\) gives \(B_\Phi(w)>0\), contradiction. Conjugation symmetry excludes lower-half-plane zeros. Because the genuine theta source gives \(F(x)>0\) for x≥0, every zero is strictly negative real. This proves RH via the exactly source-identified \(F(-z^2)=\Xi(z)/\Xi(0)\).

**Proof (negative real zeros ⇒ exact positive determinant).** Since F has order 1/2<1 and F(0)=1, Hadamard genus-zero factorization is
\[
F(w)=\prod_j(1+\lambda_j w),\qquad
\lambda_j>0,\quad\sum_j\lambda_j<\infty,
\]
with repeated factors for repeated zeros. No positive-order exponential factor is possible. Let K be diagonal with these λj on the positive spectral support of ℓ². K is positive, compact and trace class. Define \(H_+=K^{-1/2}\) on its maximal self-adjoint domain. Its inverse square is K. The product for \(\det_{\rm Fr}(I-z^2K)\) is locally uniform and equals \(F(-z^2)\). Every zero and multiplicity agrees with genuine Xi. Nothing is inferred about a prime-only Jacobi operator without a separate actual arithmetic determinant identity.

**Proof (positive determinant ⇒ anti-Pick).** Away from zeros in the upper half-plane, the exact logarithmic derivative gives
\[
\frac{F'(w)}{F(w)}=\sum_j\frac{\lambda_j}{1+\lambda_j w}.
\]
For y=Im(w)>0, each term has
\[
\Im\frac{\lambda_j}{1+\lambda_jw}
=-y\frac{\lambda_j^2}{|1+\lambda_jw|^2}\le0.
\]
The series converges locally uniformly; no denominator vanishes in the upper half-plane. Thus
\[
B_\Phi(w)=-y|F(w)|^2
\sum_j\frac{\lambda_j^2}{|1+\lambda_jw|^2}\le0.
\]
The other equivalences follow from the source identification and the Fredholm spectral theorem. QED for this **conditional/equivalence theorem**. It has NOT proved the universal sign from theta.

## 3. Exact prime, gamma and pole compatibility

Let w∈ℂ have Im(w)>0 and s=1/2+√w with Re(s)>1. The actual Euler product and completed zeta yield the exact complex source equality
\[
\frac{F'(w)}{F(w)}
=\frac1{2\sqrt w}\left[
  \frac1s+\frac1{s-1}-\frac{\log\pi}{2}
  +\frac12\psi(s/2)
  -\sum_{n=2}^\infty\frac{\Lambda(n)}{n^s}
\right].\tag{4}
\]
Here ψ denotes the digamma function, **not a Dirichlet character**. The zeta pole, zero of s(s−1), full gamma derivative, and all genuine prime-power von Mangoldt atoms remain. Absolute convergence holds for Re(s)>1, and no assumed RH or imported Alpöge final result is involved.

Therefore the anti-Pick requirement on this source-valid part of the upper w-plane is exactly
\[
\Im\left[
\frac1{2\sqrt w}\left(\frac1s+\frac1{s-1}
-\frac{\log\pi}{2}+\frac12\psi(s/2)
-\sum_{n=2}^\infty\frac{\Lambda(n)}{n^s}\right)
\right]\le0.\tag{5}
\]
For the WHOLE upper half-plane, one needs the original analytic continuation and complete source derivative, not the Euler series outside its convergence half-plane. Establishing (5) only where Re(s)>1 is **not enough** to infer RH. Every off-critical complex zero inside the strip remains a possible obstruction until the continuation sign is proved.

## 4. Exactly why positivity of the theta measure is not enough

Take the legitimate positive spectral source
\(\mu=\frac34\delta_0+\frac14\delta_1\).
Its normalized even transform is
\[
F_\mu(w)=\frac34+\frac14\cosh(\sqrt w).
\]
This is entire, has positive Taylor coefficients and arises from a positive self-adjoint multiplication operator. Nevertheless
\(a_1=1/8,\ a_2=1/96\), so
\[
\frac{d}{dw}(F_\mu'/F_\mu)(0)
=2a_2-a_1^2=1/192>0,
\]
incompatible with a positive Stieltjes logarithmic derivative.

An **exact-rational factorial-series interval certificate** proves a stronger all-infinite-function counterexample at w=i/10:
\[
\boxed{\Im(F_\mu'(i/10)\overline{F_\mu(i/10)})>\frac1{2000}>0.}\tag{6}
\]
Eight Taylor terms, a rational geometric majorant for the remaining factorial tail, and exact complex-rational products prove the strict bound. No floating numerical approximation is used to determine its sign. The full exact rational test is in [verify_xi_theta_antipick_source.py](../../../../scripts/verify_xi_theta_antipick_source.py), independently executable with only the Python standard library.

For comparison, any genuine FINITE positive eigenfactor product \(F(w)=\prod_{j=1}^{N}(1+\lambda_jw)\) obeys the exact, multiplicity-preserving identity
\[
\boxed{
B_F(w)=-\Im(w)\sum_{j=1}^N\lambda_j^2
\prod_{\ell\ne j}|1+\lambda_\ell w|^2,
}\tag{7}
\]
so the sign is nonpositive throughout the upper half-plane. The exact script checks 20 rational complex inputs, including repeated eigenvalues, against both sides of (7). These are genuine proof controls, not evidence that the actual Xi satisfies the all-plane sign.

### A direct sign-change inside the ACTUAL theta double integral

The signedness obstruction can be established **inside the exact Riemann theta source**, not merely by substituting another positive measure. For fixed positive u,v and w=iy with y→0+, expand the genuinely entire integrand in equation (2):

\[
\begin{aligned}
P_w(v)&:=\cosh(v\sqrt w)=1+\frac{v^2}{2}w+O(w^2),\\
Q_w(u)&:=\frac{u\sinh(u\sqrt w)}{2\sqrt w}
 =\frac{u^2}{2}+\frac{u^4}{12}w+O(w^2),\\
\operatorname{Im}\bigl(Q_{iy}(u)\overline{P_{iy}(v)}\bigr)
 &=\frac{y u^2}{12}(u^2-3v^2)+O(y^2).
\end{aligned}
\]

For u=1 and v>0 sufficiently close to 0, the leading signed coefficient is **positive**. For u=v=1, it is \(-1/6\), **negative**. Thus, for sufficiently small y>0, the actual integrand changes sign on open subsets of \((0,\infty)^2\) where the genuine Riemann \(\Phi(u)\Phi(v)\) is strictly positive. This rules out a proof by *pointwise* sign of the double-integrand even for the true theta kernel. A valid proof of the global inequality must exploit a genuinely **nonlocal cancellation/correlation property of the specific theta measure**.

The two low-order identities are elementary algebra independently verified in the adjacent finite Lean source as candidate declarations; the infinite remainder/continuity proof is mathematically standard and not replayed in Lean. The small-y sign split is not a counterexample to the desired **integrated** inequality for actual Xi; it is a counterexample only to a proposed pointwise-sign proof technique.

## 5. Exact remaining source obligation and verification status

**OPEN (independent RH-equivalent supplier):**
\[
\boxed{\forall w\in\mathbb C,\quad \Im w>0\Longrightarrow
\Im(F_\Xi'(w)\overline{F_\Xi(w)})\le0.}
\]
By (2), this is a signed **all-complex, all-height double-theta-integral inequality** for the original source. By (5), it is simultaneously a prime–gamma–pole inequality on the Euler-product domain; completing analytic continuation and the missing sign is the task. Neither positivity of Φ, the unconditional theta Hankel theorem, finite Schur minors, prime-only Jacobi self-adjointness, nor the external formal RH proof (used only for research direction) establishes this sign independently.

**Established analytically here:** the equivalence (including every zero multiplicity and the full positive trace-class determinant), the exact source double-integral and gamma/pole/prime formulas, and the strict rational hostile counterexample. These are classical complex-analysis and spectral principles applied source-faithfully, not a newly claimed unconditional proof of RH.

**Verified computationally here:** 20/20 positive finite-factor Pick identities and a rigorous rational \(>1/2000\) hostile source violation. The actual Xi sign at three upper-half-plane sample points is negative numerically, but those sample checks are **exploratory only**, not interval-certified evidence for every w. See the adjacent verification manifest.

**Formal status:** Lean source candidates (definitions and finite complex algebra only) NOT_RUN for elaboration, kernel and transitive axiom audit. The infinite analytic equivalence and all-plane sign are NOT formalized and independently accepted in Lean. External Alpöge RH source is NOT imported or used. The next mathematics must prove the nonpositivity of (2) for the exact Riemann theta Φ on the entire upper half-plane, or independently prove an equivalent full source Schur/Weil criterion. There is no justified universal-sign shortcut from a positive measure.
