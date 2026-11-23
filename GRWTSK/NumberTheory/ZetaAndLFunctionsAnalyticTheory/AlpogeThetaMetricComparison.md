# The marked CM theta metric and the coordinate covolume

Let \(K\) be the source's imaginary quadratic field of fundamental discriminant \(-d\), with \(d\equiv7\bmod 8\). Write \(E\) for the CM host, \(f=[E:K]\), \(\operatorname{rd}E=|\Delta_E|^{1/(2f)}\), and \(\ell=L'(1,\chi_{-d})/L(1,\chi_{-d})\). Write \(\gamma\) for Euler's constant. For the prescribed elliptic curve of discriminant one, its origin-normalized marked theta function, and the induced CM-type coordinate lattice, direct computation gives
\[
 \mathrm{thMean}=\frac{\ell-\gamma}{2}+\frac14\log d,\qquad
 \mathrm{meanLogOm}_{\tau}=\gamma-\ell+\log\frac{2\pi}{\operatorname{rd}E}
 \quad\text{for every }\tau .
\]
In particular their paired contribution \(2\,\mathrm{thMean}+\mathrm{meanLogOm}_{\tau}\) is exactly \(\log(2\pi\sqrt d/\operatorname{rd}E)\). Here thMean is the average of the **log squared** norm. These are the source quantities when the numerical data are tied to the specified CM object. For abstract freely supplied thOne and Om the geometric ties are necessary. The calculation uses neither (M) nor a zero-free region. [Geometric theta tie](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/GlobalTheory/LinkTiesTh.lean#L19-L45) · [Source mean](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/PlaceRankTwoOne.lean#L218-L226) · [Period coordinate](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L148-L166)

## The unique marked two-torsion point

For an ideal lattice \(\Lambda\) of \(K\), put \(A=\mathbb C/\Lambda\). The two factors of \(\mathcal O_K/2=\mathbb F_2\times\mathbb F_2\) act on \(A[2]\), a free module of rank one over this algebra. The elements \((1\pm\sqrt{-d})/2\) reduce to the complementary idempotents. Precisely one nonzero point is killed by neither; denote its order-two subgroup by \(H_*\). The other two points give the kernels \(H_+\) and \(H_-\) of the split primes over two. This argument works on each individual ideal class, including classes where the two stable quotient curves are isomorphic. [Marked point and normalized theta](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/PeriodIntegrals/ThetaNormCM.lean#L9-L39)

Choose \(\Lambda=\omega_1(\mathbb Z+\tau\mathbb Z)\), \(y=\Im\tau>0\), in the ideal class corresponding to the primitive positive form \([a,b,c]\) of discriminant \(-d\), so \(\tau=(-b+i\sqrt d)/(2a)\). The exponent in the source semicharacter on \(u+v\tau\) is the integer \(a u^2-buv+c v^2\). Thus on the two generators the signs are \((-1)^a,(-1)^c\). The characteristic \((a\bmod2,c\bmod2)\) is even since \(4ac=b^2+d\) is divisible by eight. Its single zero is the half-period
\[
 \frac{\omega_1}{2}\big((1-(a\bmod2))\tau+1-(c\bmod2)\big).
\]
To identify it with the mixed point directly, the norm quadratic form on \(\Lambda/2\Lambda\), divided by the norm of the ideal, has exactly two nonzero isotropic vectors, the two coordinate axes of the split algebra. In coordinates the displayed point corresponds to \((u,v)=(1-c,1-a)\bmod2\). Substitution gives norm one in each of the three allowable parity pairs \((a,c)\). This proves the identification with the specific host sign. [Lattice, form and semicharacter](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L45-L85)

Set \(F(A)=\sqrt y\,|\eta(\tau)|^2\). It depends only on the isomorphism class by the transformation law of \(\eta\). For each \(H\) of order two let \(S_H=\sqrt{2y}\,|\theta_H(0,\tau)|^2\) using the even characteristic vanishing at the generator of \(H\). Then \(S_{H_*}\) is the reciprocal of the Gaussian squared norm of the holomorphic theta function with the specified semicharacter and \(G(0)=1\). In the coordinate \(z=\omega_1(u+\tau v)\) its Gaussian point norm is the absolute value of the classical theta series multiplied by \(\exp(-\pi yv^2)\) and divided by the theta constant at zero. This follows by multiplying the series by the holomorphic factor \(\exp(\pi(z/\omega_1)^2/(2y))\), which gives precisely the archive's two multipliers. Squaring and integrating in \(u\in[0,1]\) removes unequal Fourier indices. Integration in \(v\in[0,1]\) unfolds to the integral of \(\exp(-2\pi y x^2)\) over the real line, equal to \((2y)^{-1/2}\). The measure is Haar probability, as in the mean integral of the source. [Gaussian mean and the characteristic](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/PeriodIntegrals/ThetaNormCM.lean#L12-L39)

Two identities recover the mixed characteristic without a choice of a branch of a modular root:
\[
 S_H=2\sqrt2\,\frac{F(A/H)^2}{F(A)},\qquad
 \prod_{H} S_H=2^{7/2}F(A)^3 .
\]
For \(H=\langle\omega_1/2\rangle\) the quotient has parameter \(2\tau\), and \(\theta_2(0,\tau)=2\eta(2\tau)^2/\eta(\tau)\). The other two cases follow by changing the oriented lattice basis, which permutes the nonzero half-periods and preserves the absolute metric. Alternatively use \(\theta_4(0,\tau)=\eta(\tau/2)^2/\eta(\tau)\) and its translate under \(\tau\mapsto\tau+1\). Multiplication uses \(\theta_2\theta_3\theta_4=2\eta^3\). Each of these scalar identities follows by separating even and odd factors in Jacobi's products. [Jacobi products at zero, equations 20.4.3–20.4.5](https://dlmf.nist.gov/20.4) · [Eta normalization](https://dlmf.nist.gov/23.15)

## The second difference and its class average

Write \(F_C\) for \(F\) on the ideal class \(C\). Quotienting by \(H_+\) and \(H_-\) acts on classes by inverse permutations \(P\) and \(P^{-1}\), since the product of the corresponding ideals is \((2)\). Dividing the product of all three \(S_H\)'s by the two stable factors gives the **pointwise** identity
\[
 N_C=\|G\|_{\mathrm{Gauss}}^2
    =\frac{F_{PC}^{\,2}F_{P^{-1}C}^{\,2}}{\sqrt2\,F_C^5}.
\]
The source's scale \(\delta^{12}=\Delta(\mathfrak c)\) gives \(\Delta(\Lambda)=1\). From \(\Delta(\Lambda)=(2\pi/\omega_1)^{12}\eta(\tau)^{24}\) its area is \(4\pi^2 F_C^2\). Consequently
\[
 \log N_C+\tfrac12\log\operatorname{area}(\Lambda)
 =\log(\sqrt2\,\pi)+2\big(\log F_{PC}+\log F_{P^{-1}C}-2\log F_C\big).
\]
Thus replacing one embedding by the class mean generally changes the answer. For \(d=23\) the last term in the principal class is between \(1.12479829729184\) and \(1.12479829729186\).

The conjugated lattices in the source have Weierstrass invariants \(\sigma(g_2),\sigma(g_3)\). These invariants lie in the geometric coefficient field by DataIn. They retain discriminant one and give the periods of the actual conjugate curve. A non-discrete subgroup cannot give this pair in the source's unordered Eisenstein sums: infinitely many terms near zero preclude summability and hence both totalized sums vanish. For a rank-one discrete subgroup the two even zeta values give discriminant zero, and the zero subgroup also gives zero. For a rank-two subgroup the Weierstrass uniformization with its invariant differential recovers the period lattice. Hence the choice in lamConj does not change its metric here. The main theorem of complex multiplication gives the \(h_K\) distinct roots of the Hilbert class polynomial as the \(j\)-invariants of these ideal classes, with transitive Galois action. Each root has the same number of extensions to an embedding of the coefficient field, since this is a separable number field containing \(j\). The mixed point is intrinsic even if conjugation exchanges the two split primes. Thus class averaging equals the required average over **all** embeddings, with multiplicity. [Discriminant normalization and conjugated lattices](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L117-L146) · [Origin and theta data under embedding](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalToGlobal/GlobalTheory/LinkTiesTh.lean#L25-L45) · [Milne, main theorem of complex multiplication](https://arxiv.org/abs/0705.3446)

To compute the common class mean, define \(Z_C(s)=\sum_{0\ne z\in\mathfrak a}(\operatorname{area}(\mathfrak a)/|z|^2)^s\) for an ideal \(\mathfrak a\) in the class \(C\). Dividing \((z)\) by \(\mathfrak a\) enumerates integral ideals in class \(C^{-1}\) with multiplicity \(w_K=|\mathcal O_K^\times|\). Since \(\operatorname{area}(\mathfrak a)=N\mathfrak a\sqrt d/2\), averaging gives
\[
 \frac1{h_K}\sum_C Z_C(s)=\frac{w_K}{h_K}(\sqrt d/2)^s\zeta(s)L(s,\chi_{-d}).
\]
Kronecker's first limit formula has residue \(\pi\) on each class and constant term \(2\pi(\gamma-\log2-\log F_C)\). On the right the residue is also \(\pi\), and the constant term is \(\pi(\gamma+\ell+\log(\sqrt d/2))\). Equating them and using the preceding permutation identity yields
\[
 2\langle\log F\rangle=\gamma-\ell-\log(2\sqrt d),\quad
 \langle\log N\rangle=(\ell-\gamma)/2+\tfrac14\log d,\quad
 \langle\log\operatorname{area}\rangle=\gamma-\ell+\log(2\pi^2/\sqrt d).
\]
The only assertion on \(L(1,\chi_{-d})\) needed here is its classical nonvanishing at one for a nontrivial quadratic character, also obtained from the positive class-number residue. Under the source parameter bounds \(|\ell|\le L\) and \(\log\operatorname{rd}E\le L\), the tower discriminant gives \(\log\sqrt d\le L\). Since \(\gamma>0\), this gives the original upper bound \(\mathrm{thMean}\le L\), with coefficient one. The source also imposes the sharper direct bound on the logarithm of the discriminant parameter in its size package. [Size conditions on the derivative and discriminant](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/PlaceRankTwoOne.lean#L203-L213) [CM Epstein zeta calculation, section 3](https://doi.org/10.1007/s40993-017-0077-7) · [Source target](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/PlaceRankTwoOne.lean#L304-L313) · [Source logarithmic derivative](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataParams₂.lean#L65-L73)

## The finite coordinate ideal and the exact period

Let \(M\) be a geometric coefficient field containing the images of the source CM embeddings \(\tau:E\hookrightarrow M\) above the fixed embedding of \(K\). They are precisely the \(f\) extensions of that embedding, by the induced CM type. The source lattice is the \(\mathcal O_M\)-span of the tuples \((\tau(x))_\tau\) with \(x\in I=\mathfrak b^{-1}\), where \(\mathfrak b\bar{\mathfrak b}=\mathfrak D_{E/K}\). Let \(\mathfrak l_\tau\) denote the ideal cut out by intersection with the \(\tau\)-axis. Then
\[
 \mathfrak l_\tau=\tau(\mathfrak D_{E/K}I)\mathcal O_M
                  =\tau(\bar{\mathfrak b})\mathcal O_M .
\]
Indeed the ordinary trace dual of \(I\) is \(I^\vee=\mathfrak D_{E/K}^{-1}I^{-1}\). Pairing an axis vector of coordinate \(x\) with every embedded dual vector shows \(x\,\tau(I^\vee)\subset\mathcal O_M\). Conversely \(I\) is projective over \(\mathcal O_K\); a finite dual frame \(a_j\in I,\ b_j\in I^\vee\) for its identity operator exists even if it is nonfree. In the split \(M\)-algebra its matrix identity is \(\sum_j\sigma(a_j)\tau(b_j)=\delta_{\sigma\tau}\), by applying the identity to every embedded element and extending scalars. Using the integral coefficients \(x\tau(b_j)\) against the vectors \((\sigma(a_j))_\sigma\) now gives exactly the desired axis vector. Taking norms and using the tower discriminant gives, for every \(\tau\),
\[
 \frac2{[M:\mathbb Q]}\log N_M\mathfrak l_\tau
 =\log\operatorname{rd}E-\tfrac12\log d .
\]
In detail \(N_E(\mathfrak b)^2=N_E(\mathfrak D_{E/K})=|\Delta_E|/d^f\); extending ideals multiplies the logarithmic norm by \([M:E]\). This derivation requires no principalization and applies at wild primes. [Half different in the host](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataHost.lean#L59-L69) · [Host integral ideal](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataHost.lean#L139-L161) · [Independent archive axis characterization](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Definitions/GlobalTwisting/ExistsPowPrincipalFractionalIdeal.lean#L453-L497)

The original period uses an arbitrary nonzero \(s\in\mathfrak l_\tau\). Its numerator is \(2\log[\mathfrak l_\tau:\mathcal O_Ms]-\sum_\sigma\log(\pi|\sigma s|^2/\operatorname{area}(\Lambda_\sigma))\). The index is \(|N_{M/\mathbb Q}s|/N_M\mathfrak l_\tau\); the embedding sum counts a complex conjugate pair twice. The field norms cancel exactly. Division by \([M:\mathbb Q]\) gives the mean log area minus \(\log\pi+(2/[M:\mathbb Q])\log N_M\mathfrak l_\tau\). Substitution gives the stated \(\gamma-\ell+\log(\pi/v)\), where the host defines \(v=\operatorname{rd}E/2\). Independent rescaling of a single embedding would change this expression. [Archive index and squared metric](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalSchurBounds/GeneralLinearActions/IsDiscriminantTwelfthRootOfIdealLattice.lean#L153-L166) · [Normalized period target](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataParams₂.lean#L220-L226)

For the original successive ranks \(N=N_i\) and \(N'=N_{i+1}\), set \(R_0=fNN'\) and \(W=\sum_{\tau,j}\nu_{i+1,\tau,j}\), with the same range \(0\le j<N\) as the archive's sumKerAt. The mean of its period-dependent summand together with the marked theta term in Conclusion4 is now exactly
\[
 -W\,\mathrm{logOm}+R_0\,\mathrm{thMean}
 =-(W+R_0/2)\,\mathrm{logOm}
      +(R_0/2)\log(2\pi\sqrt d/\operatorname{rd}E).
\]
This is an equality for each admissible row and consecutive rank pair. The hook factors, nonperiodic kernel terms, finite local Rallis factors and remaining operator norm estimate retain their own assumptions. [Exact weights and ranges](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/PlaceRankTwoOne.lean#L46-L70) · [Rank factor in Conclusion4](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/Divisibility/PlaceRankTwoOne.lean#L353-L356)

## Contribution of the mixed local lattices to a global determinant

Consider separately a single principally polarized abelian fibre over a totally imaginary number field \(M\), with compatible split models as in the [mixed lattice comparison](AlpogeMixedThetaLattice.md). At all but finitely many places assume good reduction. In degree \(k\ge1\), let \(P_{\mathrm{ord}}\) and \(P_{\mathrm{mov}}\) be the intersections in its rational sections of, respectively, the ordinary local lattices and the lattices integral under every normalized geometric torsion move. The local lattices agree outside finitely many places, and at a good place the torus rank is zero. With any one fixed choice of the same archimedean metrics the exact global covolume ratio is
\[
 \log\frac{\operatorname{covol}(P_{\mathrm{mov}})}{\operatorname{covol}(P_{\mathrm{ord}})}
 =\sum_{v\ {\mathrm{bad}}}\log q_v\ k^{b_v}
     \sum_{u\in X_v/kX_v}\left\lceil\min_{\alpha\bmod kX_v=u}Q_v(\alpha)/k\right\rceil .
\]
Here \(q_v\) is the residue cardinality, \(b_v\) the abelian quotient dimension, and \(v\) is normalized by its own uniformizer. Finite support and the Chinese remainder theorem identify the quotient with the direct sum of the local finite quotients. The real covolume scales by this integer index; no relation between unrelated infinite-place bases is needed for the ratio.

For clarity, the absolute determinant retains a further comparison. Put \(R=k^g\) for a fibre of dimension \(g\), choose a rational basis, and denote by \(\det P\) the associated fractional determinant ideal of either integral lattice. At \(\sigma\) choose a period matrix \(X_\sigma+iY_\sigma\) and the standard level-\(k\) theta basis with the canonical point metric, normalized by its rigidified value of the frame at the identity. Let \(C_\sigma\) be the coordinate matrix of the rational basis in that analytic basis, including its line normalization. Distinct characteristics are orthogonal by the same real-torus integral as above. For each diagonal coefficient the remaining Gaussian integral equals \(h_\sigma=(2k)^{-g/2}(\det Y_\sigma)^{-1/2}\). Therefore, with ordinary real Lebesgue measure in its complex orthonormal coordinates, the raw covolume is
\[
 (2^{-r_2}|\Delta_M|^{1/2})^{R}N_M(\det P)
       \prod_{\sigma\bmod\text{ conjugation}} h_\sigma^R\,|\det C_\sigma|^2,\qquad r_2=[M:\mathbb Q]/2 .
\]
This follows by the Minkowski covolume of \(\mathcal O_M\) and by taking the real determinant of each complex Gram change. A general semicharacter is handled by translating and changing the frame to the corresponding characteristic, an isometry with a phase or constant recorded in \(C_\sigma\). A rational change of basis changes the determinant ideal and embedding factors by reciprocal field norms. The fibre calculation neither identifies these comparison determinants with the Petersson metrics of the higher-rank cusp spaces nor bounds them. That step needs the actual cusp rows and normalized Petersson pairings. [Source use of the normalized log covolume](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataArith.lean#L85-L109) · [Covolume assembly and its further slope hypotheses](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/MeanHeightDescent/CovolumeEstimateAnchoredWeights.lean#L30-L76)

## Formal verification and comparison

The [Lean companion](AlpogeThetaMetricComparison.lean) in namespace GRWTSK.NumberTheory.AlpogeThetaMetricComparison proves the two integral implications axis_from_trace_frame and trace_test_on_axis, the formula weighted_neighbor_sum for an arbitrary class sampling weight, the cancellation marked_norm_class_sum, and the final paired_period_mean identity. These are the algebraic steps of the proof. The primary complex multiplication, Fourier, trace-duality and Kronecker arguments above have not all been formalized locally. At SHA-256 4336f1314cc10ab30fae090c7950b68d0c439d69838d70f7866741cfde08fe4e, the five declarations passed native elaboration and fresh kernel replay of their 8,819-declaration closure. All five transitive axiom audits passed. Only propext, Classical.choice and Quot.sound occurred. Certified complex ball arithmetic at 180-bit precision independently compared 83 fundamental discriminants through 800, 1,136 reduced ideal classes and 3,408 individual dyadic eta quotient values to direct Jacobi theta constants, and compared the mean to direct evaluations of the quadratic Dirichlet series and its derivative. These are finite checks of signs and constants. The full higher-rank Petersson covolumes, global divisibilities and (M) remain open.
