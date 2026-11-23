# The boundary spectral measure of the modular cusp operator

For \(1\le Y<4\pi e^{-\gamma_E}\), set \(L=\log Y\). Start from the Green operator \(G=\Delta_Y^{-1}\) on the noncuspidal modular surface truncation and the vector \(h=\mathbf 1_{\{\text{below }Y\}}\) in its noncuspidal Hilbert space. Use the block operator \(T\), the positive metric \(W\), and \(S=W^{1/2}\) in the companion energy calculation. Put \(e=(h,0)\), \(g=S^{-1}e\), \(k=Y/2\). The compact shifted operator and its real part are
\[
 R=S\,\tfrac i2 T(I-T/2)^{-1}S^{-1}=A-ik\,g\otimes g,\qquad A=\Re R .
\]
These definitions use the surface, height, closed form and boundary vector. The energy identity gives the displayed rank-one imaginary part. The target central shift in this notation is \(T(I-T/4)^{-1}i/2\). [Geometric definitions and pencil determinant](XiModularCuspSpectra.md) · [Height-one extension](XiCuspEndpointResolvent.md) · [Metric and rank-one energy identity](XiCuspTraceNormInfimum.md)

The inverse \(A^{-1}\), on \({\rm ran}(A)\), is a densely defined self-adjoint operator with Hilbert–Schmidt inverse. Write \(\alpha=\xi'(1)/\xi(1)\). Its exact determinant is
\[
 \det\nolimits_2(I-zA)=
 \frac{e^{iLz/2}\xi(1+iz)+e^{-iLz/2}\xi(1-iz)}{2\xi(1)}.                 \tag{1}
\]
Its spectral points are the simple real solutions \(t\) to
\[
 \phi_L(t)=(2n+1)\pi,\qquad
 \phi_L(t)=Lt+2\arg\xi(1+it),\quad \arg\xi(1)=0 ,
\]
where the argument is continued on the line. For a unit eigenvector \(e_t\) at \(t\) the mass in the boundary vector is
\[
 k|\langle e_t,g\rangle|^2=\frac{2}{t^2\phi_L'(t)},\qquad
 \sum_t\frac{2}{t^2\phi_L'(t)}=\tfrac12 L+\alpha .                      \tag{2}
\]
At \(Y=1\) the entire function in (1) is Lagarias's symmetric differenced xi function evaluated on the central line with shift \(1/2\). Real and simple zeros for this function and its de Branges interpretation are established results. The calculation below recovers the individual weights of this specific geometric boundary vector and its height law. [Lagarias, *Zero spacing distributions for differenced L-functions*, v2, §§2, 6](https://arxiv.org/pdf/math/0601653v2)

## Characteristic function from the relative determinant

The determinant of \(P(v)=I+v(v-1)G+Yv h\otimes h\) is \(2Y^v\xi(2v)\). The regularized determinant of \(I-vT\) is \(2\exp((2+\gamma_E-\log(4\pi))v)\xi(2v)\). Factor \(I-(1/2+iz/2)T\) at \(v=1/2\). The product correction in \(\det_2\) is the exponential of a linear function of \(z\), because \(T^2(I-T/2)^{-1}\) is trace class. The normalization and zero linear coefficient of the logarithm at zero therefore give
\[
              \det\nolimits_2(I-zR)=e^{-i\alpha z}\xi(1+iz)/\xi(1).
\]
In particular \(R\) has no real nonzero eigenvalue by the classical nonvanishing theorem on \(\Re s=1\), and it is injective by the block equations and injectivity of \(G^{1/2}\). The trace formula at the same center gives \({\rm Tr}\Im R=-L/2-\alpha\). Indeed \(S-I\) is Hilbert–Schmidt, so the similarity changes the trace-class part by a trace-zero commutator of Hilbert–Schmidt factors. Comparing the rank-one imaginary part yields \(k\|g\|^2=L/2+\alpha\). [Block and trace calculation](XiCuspMetricInfimum.md)

For \(\Im z>0\), define
\[
 m_L(z)=kz\langle(I-zA)^{-1}g,g\rangle,\qquad
 \Theta_L(z)=e^{iLz}\frac{\xi(1+iz)}{\xi(1-iz)}
             =\frac{1+i m_L(z)}{1-i m_L(z)} .                           \tag{3}
\]
Here the inner product is linear in its first entry. To prove (3), form the relative determinant of \(I-zR\) against \(I-zR^*\); the difference is rank one. For either sign, comparison against \(I-zA\) gives \(1\pm i m_L(z)\) by the ordinary rank-one determinant lemma. In comparing the relative determinant to the two regularized determinants one multiplies their quotient by \(\exp(-z\,{\rm Tr}(R-R^*))\). These identities follow first from ordinary determinants of simultaneous finite-rank compressions, then by Hilbert–Schmidt convergence for both regularized determinants and trace-norm convergence of the compressed difference. Initially near zero, they extend meromorphically. Substitution of the trace and the two reflected regularized determinants gives (3). For \(\Im z>0\), the scalar \(z/(1-za)\) has positive imaginary part for real \(a\); consequently \(m_L\) has positive imaginary part and \(|\Theta_L|<1\). On the real axis the characteristic function has modulus one.

The vector \(g\) is cyclic for \(A\). Otherwise the orthogonal complement of its polynomial orbit reduces both \(A\) and \(R\), with \(R=A\) there. A nonzero compact self-adjoint restriction has a real eigenvalue, and an identically zero restriction violates injectivity of \(R\). Compactness and cyclicity make all nonzero eigenvalues simple. To test the remaining possibility of an atom at zero, the functional equation and Stirling's formula give
\[
 \Theta_L(iy)=e^{-Ly}\xi(y)/\xi(1+y)
          \sim e^{-Ly}\sqrt{2\pi/y}\quad(y\to+\infty).
\]
Hence \(m_L(iy)\to i\), whereas \(m_L(iy)/(iy)\to k\|P_{\ker A}g\|^2\) by dominated convergence in the spectral measure. Cyclicity then implies \(\ker A=0\). The spectral theorem yields the stated domain and self-adjointness.

At regular points \(1+i m_L=2\Theta_L/(1+\Theta_L)\); comparison of \(I-zR\) against \(I-zA\) as above now gives (1), with equality everywhere by analyticity. Real poles of \(m_L\) occur exactly at reciprocals of the nonzero eigenvalues of \(A\), and all are simple by positivity of the spectral weights. From \(m_L=-i(\Theta_L-1)/(\Theta_L+1)\) their residues are \(-2/\phi_L'(t)\). From the compact spectral theorem these same residues are \(-k\,t^2|\langle g,e_t\rangle|^2\). This proves both claims in (2) and the locally normally convergent partial fraction expansion
\[
 m_L(z)=\sum_t \frac{2}{t^2\phi_L'(t)}\,\frac{z}{1-z/t}.
\]
Off the poles, \(m_L'(t)=k\|(I-tA)^{-1}g\|^2>0\); together with the pole residues this gives strict increase of the unwrapped real phase everywhere.

## Height variation and the central-line obstruction

Differentiation of (3) at a regular point gives
\[
 \partial_L m_L(z)=\tfrac z2(1+m_L(z)^2),\quad
 \frac{dt}{dL}=-t/\phi'_L(t),\quad
 k|\langle e_t,g\rangle|^2=-2t^{-3}\frac{dt}{dL}.
\]
The phase law and implicit function theorem apply separately at every simple real root, including the one-sided height derivative at \(L=0\). Each measured spectral weight is determined by motion of the corresponding reciprocal eigenvalue under variation of truncation height. The sign agrees at both positive and negative roots. The positive and negative partner masses are equal by conjugation.

There is an exact test for the remaining spectral displacement. In the upper half-plane \(m_L(z)=i\) precisely at the zeros of \(\xi(1+iz)\), with the same orders by (3). For \(z=x+iy\), \(y>0\), writing \(w_t=2/(t^2\phi'_L(t))\), the test is the pair of absolutely convergent real equations
\[
 \sum_t w_t\,\frac{x-(x^2+y^2)/t}{|1-z/t|^2}=0,\qquad
 y\sum_t\frac{w_t}{|1-z/t|^2}=1.
\]
Indeed these are the real and imaginary parts of the partial fractions. Changing \(L\) multiplies \(\Theta_L\) by a zero-free exponential and leaves the simultaneous solutions fixed. The original independent Hilbert–Pólya problem would require showing every such solution has \(y=1/2\), and constructing a self-adjoint realization for the resulting central determinant. The positivity of the weights proves the Herglotz property and simplicity of the real *poles* of \(m_L\). It supplies no such height constraint on its preimages of \(i\). For example the positive two-atom function \(m(z)=2z/(1-z^2)\) takes \(i\) at \(i\) with multiplicity two. This distinguishes an actual arithmetic constraint from positivity alone.

The accompanying Lean file proves the scalar boundary equation, the multiplicative Cayley height transport, and the identity relating an implicit root derivative to the spectral mass. The infinite-dimensional determinant, cyclicity, domain, mass identification and arithmetic height formula have the manuscript proofs above. End-to-end formalization and external independent review of these proofs are NOT_RUN. [Lean statements](XiCuspClarkSpectrum.lean)

The second Lean module defines the scalar response from the actual pole-removed xi built with Mathlib's completed zeta. It proves that, for every real log height and every upper-half-plane input, taking the value \(i\) is equivalent to vanishing of the outgoing xi factor. Its equivalence with Mathlib's proposition uses nonvanishing on the closed right half-plane, reflection, and removal of the negative-even trivial zeros and the restored endpoints. The final universal height equality is open. Eight 160-bit Arb root enclosures, at heights 1 and 2, independently compared the residue formula with the implicit derivative of the real part of the weighted xi. For instance the height-one root near 13.98838069823498 has mass 0.00272512076626571; at height two the root near 4.24096938666620 has mass 0.149488822067923. Both calculations agreed within their enclosures. [Mathlib height criterion](XiCuspClarkHeightCriterion.lean)

At the following source blobs the public declarations passed native compilation, fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The only axioms reported across these declarations were propext, Classical.choice and Quot.sound. XiCuspClarkSpectrum at b5a4269c4829a55c35766cf22e056fa4b551db84, XiCuspClarkHeightCriterion at cb619eecbe002c92549b1f7683d7a64dce71d7f5.
