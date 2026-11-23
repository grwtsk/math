# The all-rank unramified inert factor in the theta-lift norm

grwtsk contributors

Let \(k=F_v\) and \(D=E_w\) at an unramified inert finite place of the CM extension in the source. Write \(q\) for the residue cardinality of \(k\), \(O=\mathcal O_D\), and \(\pi\) for a uniformizer in \(k\). Normalize \(v_D(\pi)=1\). In the unramified chart the group \(G_n\) preserves the anti-diagonal Hermitian form \(J_n\) exactly. Its hyperspecial subgroup is \(K_n=G_n\cap\mathrm{GL}_n(O)\) and has Haar mass one. Write \(\epsilon=\chi(\pi)\) for the character of the *section*, so that in the adelic application it is \(\chi_w(\pi)^{-1}\). Set \(X=\epsilon q^{-2s-n}\), \(y=q^{n-1}X\). If \(w(1)=1\) is bi-\(K_n\)-invariant with the spherical Hecke character attached to \(\alpha_1,\ldots,\alpha_{\lfloor n/2\rfloor}\in\mathbb C^\times\), then on the source domain \(|y|<1,\ |y\alpha_i|,|y/\alpha_i|<1\),
\[
 \int_{G_n}\Phi_s(\iota(g,1))w(g)\,dg =
 \frac{\prod_{j=0}^{n-1}(1-(-q)^jX)}
 {\prod_i(1-y\alpha_i)(1-y/\alpha_i)\,(1-y)^{n\bmod 2}}.             \tag{1}
\]
The integral is absolutely convergent there. In ranks zero and one it equals one for every \(s\). For \(\epsilon=(-1)^m\), the right hand side on this domain is \(\mathrm{stdL}(q,n,\alpha,\epsilon,s+1/2)/\mathrm{dFac}(q,n,m,s)\) with exactly the unramified Tate factors of the pinned source. The result below concerns the actual local fields at good inert places. The archive also formulates an abstract complete-valued-field interface. [Section, normalized zonal function, domain and local theorem](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/BlockTheory/TwistedDiscreteSeries/GaussianBinomialClosedForm.lean#L22-L64)

## The quotient by the maximal parabolic radical

For an invertible matrix \(g\) let \(\ell(g)\) be the \(O\)-length of \((O^n+O^n g)/O^n\) in row coordinates. If \(g\) has elementary divisors \(\pi^{b_i}\) this is \(-\sum_i\min(0,b_i)\). Transposing gives the same length in columns, and for unitary \(g\), \(v_D(\det g)=0\), so it also equals \(\operatorname{length}(O^n/(O^n\cap gO^n))\). The graph section is \(X^{\ell(g)}\). Indeed the diagonal intersection in \(gO^n\oplus O^n\) is the copy of \(gO^n\cap O^n\). Its inverse image in \(O^n\oplus O^n\) is primitive, and its integral isotropic basis can be completed to a hyperbolic basis by pairing and integral trace correction. Thus the graph Siegel Levi determinant has this valuation; its units disappear under \(\chi\), and \(|\pi|_D=q^{-2}\). [Integral graph-section argument and its dyadic trace step](AlpogeInertDoublingNeighbors.md)

Suppose \(n=N+2\). The Levi of the isotropic-line parabolic is \(D^\times\times G_N\). Take representatives
\[
 m=\operatorname{diag}(\pi^a,g_0,\pi^{-a}),\qquad a\in\mathbb Z,\quad g_0\in G_N/K_N.
\]
For the unipotent radical \(U\) write \(i'=N+1-i\) and use coordinates
\[
 u(x,c)=\begin{pmatrix}1&x&c\\0&I&h\\0&0&1\end{pmatrix},
 \qquad h_i=-\overline{x_{i'}},\qquad c+\bar c=-\sum_i x_i\bar x_{i'} .
\]
These identities follow by multiplying against \(J_n\). The cosets \(m u K_n\), for these fixed representatives and \(u\in U/(U\cap K_n)\), exhaust \(G_n/K_n\). To see surjectivity, \(K_n\) is transitive on isotropic lines: intersect the line with \(O^n\), take a primitive generator, pair it with an integral vector to one, and kill the latter's norm by an integral trace correction. The remaining unimodular complement is the standard rank-\(N\) lattice. Indeed the reduction of any positive-rank nonsingular Hermitian lattice has a vector of nonzero norm (by nondegeneracy of the residue trace pairing); split off its unit-norm lift, rescaling to norm one by surjectivity of the unramified unit norm, then iterate. Unit norm surjectivity follows from residue norm surjectivity and correction of each subsequent digit by the residue trace. This works over dyadic \(k\) as well. Transitivity gives \(G_n=P K_n\); the image of \(P\cap K_n\) in its Levi is \(O^\times\times K_N\), attained already by integral block diagonals. After fixing \(m\), equality of right cosets is exactly \(u^{-1}u'\in U\cap K_n\). Each group coset has mass one. Thus the inner sum is radical Haar measure with \(U\cap K_n\) of mass one.

Conjugating \(U\) by \(\operatorname{diag}(1,k_0,1)\), \(k_0\in K_N\), preserves this measure and the integral subgroup. Separate the two middle compact factors of \(g_0\) in its hyperspecial Cartan decomposition. Since \(\ell\) is bi-invariant, the *radical integral at fixed* \(g_0\) can now be calculated for the middle diagonal \(\operatorname{diag}(\pi^{b_i})\), where \(b_{i'}=-b_i\) and a middle unpaired exponent is zero. This substitution applies only inside the radical length integral; the middle spherical weight below is evaluated at the original \(g_0\). The Cartan theorem applies to the unramified quasi-split unitary group with hyperspecial stabilizer, whose maximal split diagonal torus consists of these opposite valuation pairs. [Haines and Rostami, Theorem 1.0.3 and §6](https://arxiv.org/abs/0907.4506) · [Greenberg and Voight, Proposition 4.4, nonsplit elementary divisors](https://jvoight.github.io/articles/orthohecke-240123.pdf#page=13)

## The length of a radical translate

Put \(A=\max(a,0)\), \(a_-=\max(-a,0)\), \(B_i=\min(b_i,0)\), \(l=-\sum B_i\), and use \(v_D(0)=+\infty\). Define
\[
 e=\max\bigl(\{0\}\cup\{B_i-v_D(x_i)-A\}_i\bigr),\qquad
 c'=c-\sum_{b_i<0}x_i h_i .
\]
First generate a row lattice from \(O^n\) and all rows of \(m u\) except the first. Its projection away from the last coordinate is the lattice with first generator \(e_1\) and middle generators \(\pi^{B_i}e_i\) in block notation. For \(b_i<0\) lift the latter by the middle row with last coordinate \(\pi^{b_i} h_i\), and for \(b_i\ge0\) lift it by the original standard vector. Subtracting multiples of these lifts from the other generators leaves the last-coordinate ideal
\[
 O+\pi^{-a}O+\sum_i\pi^{\max(b_i,0)}h_i O = \pi^{-A-e}O.
\]
Indeed \(\max(b_{i'},0)=-B_i\) and conjugation preserves valuation. This triangular basis has index length \(l+A+e\) over \(O^n\). The omitted first row has coordinates relative to the basis
\[
 \pi^a,\qquad (\pi^{a-B_i}x_i)_i,\qquad \pi^{a+A+e}c'.
\]
Adjoining one vector to a free lattice increases length by the largest pole order among its coordinates and zero. The first and middle coordinates alone contribute \(a_-+e\): when \(e>0\) one middle entry attains the defining maximum, and when \(e=0\) the first coordinate attains \(a_-\) after taking the positive part. Including the corner gives \(a_-+\max(e,-2A-e-v_D(c'))\). Consequently
\[
 \ell(m u)=|a|+l+e+\max(e,-2A-e-v_D(c')).                       \tag{2}
\]
This particular choice of lifts is necessary. Using the unadjusted \(c\) can change the predicted length.

For an integer \(j\ge0\), (2) gives \(\ell(m u)\le |a|+l+j\) precisely when
\[
 v_D(x_i)\ge B_i-A-\lfloor j/2\rfloor\quad\text{for every }i,
 \qquad v_D(c')\ge -2A-j.                                     \tag{3}
\]
The trace of \(c'\) is \(-\sum_{b_i=0} x_i\bar x_{i'}\). Each negative-weight correction and its conjugate removed the pair of opposite nonzero weights, including all cross terms involving large coordinates in those positions. On the box in (3) the remaining trace lies in \(\pi^{-2A-j}\mathcal O_k\). Integral trace is surjective, since the unramified residue trace is onto and an element with nonzero residue trace can be divided by its unit trace. The same holds on every uniformizer scale. Choose an integral trace-one \(\tau\), and parametrize \(c=-\tau\sum_i x_i\bar x_{i'}+z\) by trace-zero \(z\). Product measure \(dx\,dz\), normalized on the two integral lattices, is radical Haar measure, since multiplication changes \(x\) by translation and \(z\) by a translation depending on \(x\). It gives the integral radical mass one. For each allowed \(x\), the fiber in (3) is nonempty and is a translate of \(\pi^{-2A-j}\ker(\operatorname{Tr}|_O)\). The kernel is a rank-one \(\mathcal O_k\)-lattice, so the fiber has mass \(q^{2A+j}\). The middle box has mass \(q^{2l+2N(A+\lfloor j/2\rfloor)}\), since the residue field of \(D\) has size \(q^2\). The cumulative mass is therefore
\[
 C_j=q^{2l+(2N+2)A}\,q^{2N\lfloor j/2\rfloor+j}.             \tag{4}
\]
The source constant term has exactly (4), expressed with an auxiliary lattice frame and small-corner condition. Here the Cartan reduction, explicit lifts and trace calculation supply these facts directly from the group at the place. Neither the global theta identity nor a conclusion about zeta zeros enters the count. [Archived constant term and count it requires](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/TwistedOperators/HasSumSpherical.lean#L16-L53)

## The normalized spherical transform

The shell of extra length \(j\) has mass \(C_j-C_{j-1}\), taking \(C_{-1}=0\). The \(j\)-dependent mass in (4) is \(q^{(2N+2)h}\) for \(j=2h\) and \(q^{(2N+2)h+1}\) for \(j=2h+1\). Summing gives
\[
 \int_U X^{\ell(mu)}\,du
   = X^{|a|+l}q^{2l+(2N+2)A}\frac{(1-X)(1+qX)}{1-q^{2N+2}X^2}.       \tag{5}
\]
The series is absolute for \(q^{N+1}|X|<1\).

The Borel spherical function used here is the right-\(K_n\)-invariant section \(\varphi(bk)=\chi_\alpha(b)\delta_B^{1/2}(b)\) in the normalized unramified induction, with \(\varphi(1)=1\). Iwasawa decomposition follows by iterating the line argument above. The inducing character has precisely the exponents \(\alpha_i^{a_i} q^{-(n+1-2i)a_i}\) in one-based indexing. On \(mu\), its value is \(\alpha_1^a q^{-(N+1)a}\varphi_0(g_0)\), where \(\varphi_0\) uses the remaining coordinates. Indeed the modulus on the outer radical scales its \(D^N\) coordinates by \(\pi^a\) and its trace-zero center by \(\pi^{2a}\), while the middle unitary block has determinant of valuation zero. Applying the middle Iwasawa decomposition absorbs its compact factor on the right after conjugating the radical. On each compact double coset the sum of \(\varphi(g)\) over right cosets is exactly the prescribed normalized Satake transform of its characteristic function by the source definition of \(\mathrm{SatU}\). This is also the sum of \(w(g)\) there by the defining Hecke character. Since \(w\) is constant on this double coset, its absolute sum is bounded by the sum of \(|\varphi(g)|\) there. This passes both the integral and integrability to \(w\). [Normalized character, Satake sum and spherical induction convention](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SatakeDualWeyl/StatementF.lean#L35-L64)

In (5), \(q^{(2N+2)A-(N+1)a}=q^{(N+1)|a|}\). Summing the outer torus gives
\[
 \sum_{a\in\mathbb Z} y^{|a|}\alpha_1^a
  =\frac{1-y^2}{(1-y\alpha_1)(1-y/\alpha_1)} .
\]
Its numerator cancels the shell denominator in (5). The middle length is now weighted by \((q^2X)^l\), with the same \(y\) in the next rank. Thus the recurrence for the normalized transform is
\[
 Z_{N+2}(X;\alpha)=
 \frac{(1-X)(1+qX)}{(1-y\alpha_1)(1-y/\alpha_1)} Z_N(q^2X;\alpha').
\]
Replacing \(X,\alpha_i\) by their absolute values first gives finite sums of nonnegative terms in the stated domain, inductively from ranks zero and one. This justifies all rearrangements for complex data. The starting transforms are one since the norm-one group is compact in rank one. Iteration produces exactly (1), including the odd-rank factor: the final numerator \(1-y\) and central standard denominator \(1-y\) cancel. In the source \(\mathrm{bcParam}\) gives the reciprocal pairs and the odd central one. Its Euler argument \(\epsilon (q^2)^{-(s+1/2)}=y\) and its inverse Tate factors \(1-(-1)^{m+j}q^{-(2s+n-j)}=1-(-q)^jX\) prove the asserted local-factor comparison. [Archived normalization comparison](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/TwistedOperators/UnramifiedDoublingIntegralInertPlace.lean#L91-L108)

## An independent bound on the Satake parameters

For the trivial representation set \(\alpha_i=q^{n+1-2i}\), so the inducing Borel weight is identically one. For sufficiently small \(X\), (1) is the ordinary generating series of the cardinalities of the actual length shells. Its denominator before cancellation has factors \(1-q^{2j}X\), \(0\le j<n\). Cancelling the even-indexed factors of its numerator gives
\[
 T_n(X)=\frac{\prod_{j=0}^{\lfloor n/2\rfloor-1}(1+q^{2j+1}X)}
 {\prod_{j=\lceil n/2\rceil}^{n-1}(1-q^{2j}X)}.                       \tag{6}
\]
The series thus converges for \(|X|<q^{-2(n-1)}\) for \(n\ge2\), with a genuine pole at the positive endpoint. For a bounded normalized spherical coefficient the integral series converges absolutely throughout this disc by domination by \(\|w\|_\infty T_n(|X|)\), independently of \(\alpha\). Near zero it agrees with (1); multiply by the denominator and continue the holomorphic identity throughout the disc. The numerator has no zeros there since its smallest root modulus is \(q^{-(n-1)}\). Every factor \(1-q^{n-1}X\alpha_i^{\pm1}\) must therefore have its root outside the open disc. This proves simultaneously
\[
 |\alpha_i|,\ |\alpha_i^{-1}|\le q^{n-1}=(\mathrm Nw)^{(n-1)/2}
\]
in every rank. Equality is attained by the two extreme parameters of the trivial representation counted with reciprocals. For the source bounded Hecke coefficient \(c\), the probability-normalized double coset matrices contract the supremum norm, hence \(|c(g)|\le|c(1)|\) by their eigenfunction identity. If \(c(1)=0\), all the integrals are zero. Otherwise \(w=c/c(1)\) and \(|Z_n(X;\alpha)-1|\le T_n(|X|)-1\) on this disc; the trivial representation attains the bound at real positive \(X\). The rank-two and rank-three specialization of (6) gives \((1+qX)/(1-q^{2n-2}X)\), an independent check against direct neighbor counting. [Bounded coefficient argument and low-rank neighbor computation](AlpogeInertDoublingNeighbors.md)

An all-rank check uses the first-shell term of (6). Writing \(r=\lfloor n/2\rfloor\), it is \(\sum_{j=0}^{r-1}q^{2j+1}+\sum_{j=n-r}^{n-1}q^{2j}\). Summing these two geometric series for even and odd \(n\) gives \(q(q^n-(-1)^n)(q^{n-1}-(-1)^{n-1})/(q^2-1)\), the direct count of isotropic lines and their \(q\) lifts in the neighbor argument. For \(n=4\), \(q=2\), (6) gives 90 neighbors and 6,192 vertices of length two. At \(t=9\), \(\epsilon=-1\), the actual trivial-coefficient integral is \(155155/156864\).

At \(2s=t\ge n+5\) with unitary twist, \(|y\alpha_i^{\pm1}|\le q^{n-t-2}<1\); the computation covers the Rallis point itself. Together with the split lattice-count identity, this identifies the factors at the good finite places and establishes the individual good-place Satake bounds for bounded coefficients there. The global equality between the theta norm and the product of local integrals still requires the chosen measures and vectors, global unfolding, and the exceptional and archimedean integrals. It is a separate input to the source scalar bound. [Split local proof](AlpogeSplitDoublingFactor.md) · [Good-place and scalar hypotheses](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/DivisorProofs/AdelCOfInnerProductFormula.lean#L52-L65)

## Formal and computational scope

The [companion module](AlpogeInertRadicalIntegral.lean) in namespace
\(\texttt{GRWTSK.NumberTheory.AlpogeInertRadicalIntegral}\) formalizes the cross-term cancellation for any finite index permutation reversing signed weights (\(\texttt{correctedCornerTrace}\)), the equivalence bounding the extra length (\(\texttt{excess_le}\)), the two parity formulas for \(\texttt{radialMass}\), the rational cancellation (\(\texttt{rankStep}\)), and the rank shift of the Tate factors (\(\texttt{peelTatePair}\)). At Lean source SHA-256 `cc1ce78c9c42223621e5de4788f7b547408c0f8f9303fa60a0fdf3ddb9336678`, all seven public declarations built under Lean 4.34.1 and the compiled module passed fresh kernel replay. Transitive axiom audits used only `propext`, `Classical.choice` and `Quot.sound`. These local consequences use the full exponents from the source constant term. The geometric row-lattice identity, integral, analytic continuation and Satake bound are analytic arguments here. Full Lean formalization of (1), and independent mathematical review of the all-rank proof, remain open.

An exact finite check formed 896 matrices \(mu\) in \(\mathbb Q(\omega)\), \(\omega^2+\omega+1=0\), at the inert rational primes 2 and 5. It sampled 64 sets of outer and paired middle valuations and Heisenberg coordinates per prime and rank, for ranks 2 through 8. Discrete-valuation Smith elimination on the stacked matrix \([I;mu]\) gave the length in (2) in all 896 cases; replacing \(c'\) by \(c\) failed in 32. This checks signs and corner dependence on actual matrices over both residue characteristics. A second test enumerated 5,018 right radical coset representatives in finite coordinate windows at the same primes. After taking canonical representatives of each middle coordinate modulo the integers, the central coordinate runs independently modulo the trace-zero integers. Smith elimination gave the cumulative mass (4) at all 34 tested cutoffs. For example at \(q=5,N=2,a=0,(b_1,b_2)=(-1,1)\), the first two cumulative counts were 25 and 125. Equations (2)–(5) establish the general result.
