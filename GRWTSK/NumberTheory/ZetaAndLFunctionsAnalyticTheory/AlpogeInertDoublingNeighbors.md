# The inert unitary doubling integral at the Rallis point

grwtsk contributors

At an unramified inert place, counting self-dual Hermitian neighbors bounds the actual normalized graph integral. Let \(k=F_v\), let \(K=E_w\) be its unramified quadratic extension with involution \(\sigma\), and take a uniformizer \(\pi\) of \(k\). The residue fields have cardinalities \(q\) and \(q^2\), respectively. Let \(L\) be a self-dual Hermitian lattice of rank \(r\ge1\), \(G=U(L\otimes K)\), and \(C=\operatorname{Stab}_G(L)\). Use Haar measure giving \(C\) mass one. The archived group called \(\mathrm{GU}\) here preserves the form exactly. Let \(c(g)=\ell(\rho(g)x)\) be a bounded spherical coefficient from the local statement, with \(c(1)\ne0\). For the spherical graph section \(\Phi_s\), write
\[
 J_v(s)=c(1)^{-1}\int_G \Phi_s(\iota(g,1))c(g)\,dg .
\]
At \(2s=t\ge r+5\), the following bound holds independently of an estimate on individual Satake parameters:
\[
 \bigl|\log |J_v(t/2)|\bigr|\ \le\ 3q^{-(t-r+2)}.                                      \tag{1}
\]
In particular the integral is nonzero. The archived local identity is stated for \(\Re s>r\). The elementary estimate above uses the displayed condition on \(t\). The adelic normalization uses the inverse local twist at the unique prime \(w\) over \(v\). [Bounded spherical coefficient and local measure](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Definitions/LatticeFrames/IntegrandSZero.lean#L131-L151) · [Inert specialization and inverse twist](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/DecoratedLatticeProofs/UnramifiedDoublingIntegralInertAdelic.lean#L53-L118)

## From the graph section to a lattice count

A coset \(gC\) has mass one and corresponds to \(M=gL\). Put \(I=L\cap M\). The two lengths of \(L/I,M/I\) over \(\mathcal O_K\) agree because \(\det(g)\sigma(\det(g))=1\). Denote the common length by \(d(L,M)\). On the doubled lattice \(M\oplus L\), its intersection with the diagonal is the copy of \(I\). In a basis of the original diagonal \(L\), a basis of \(I\) has determinant of valuation \(d(L,M)\). This determinant computes the Siegel Levi on the graph: in the source lattice \(L\oplus L\) the inverse image of that diagonal intersection is the primitive isotropic direct summand \(\{(g^{-1}u,u):u\in I\}\). Its basis extends to a hyperbolic integral basis. Indeed perfect pairing and primitivity first provide dual lifts with identity cross-pairings. Shearing these lifts by the isotropic vectors kills their Hermitian Gram matrix: solve the off-diagonal entries in pairs, and solve the diagonal entries by the surjectivity of \(\operatorname{Tr}_{K/k}:\mathcal O_K\to\mathcal O_k\). The latter follows by lifting residue solutions one digit at a time, including in residue characteristic two. The same extension applies on the original diagonal. The resulting compact basis change puts the graph element in the Siegel parabolic with exactly this Levi valuation. Since \(|\pi|_K=q^{-2}\), the unramified section on the graph is therefore
\[
 \Phi_s(\iota(g,1))=X^{d(L,M)},\qquad
 X=\chi_w(\pi)^{-1}q^{-(2s+r)} .
\]
A unit change of the Levi determinant has no effect. This agrees with the pinned graph-section computation and its definition of the two generating variables. [Primitive-frame section computation](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/TwistedOperators/UnramifiedDoublingIntegralInertPlace.lean#L46-L89) · [Definitions of \(X,Y\) and the standard rational function](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/BlockTheory/TwistedDiscreteSeries/GaussianBinomialClosedForm.lean#L35-L49)

For any double coset \(CgC\), average the right translates over its finitely many cosets modulo \(C\). The vector \(x\) is fixed by \(C\) and is an eigenvector for every spherical Hecke operator. Thus its coefficient satisfies \(P_gc=\lambda_g c\) at every translate for this probability average \(P_g\). Since \(P_g\) contracts the supremum norm, \(|\lambda_g|\le1\) when \(c\) is nonzero. Bi-invariance gives \(c(g)=P_gc(1)=\lambda_g c(1)\). Consequently \(|c(g)|\le |c(1)|\) everywhere, and \(c(1)=0\) implies \(c=0\). The translated Hecke identity supplies the uniform bound needed for all shells. [Full spherical Hecke vector identity](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Definitions/Foundations/IsSatVecUOfIsSphericalU.lean#L217-L225)

## Counting the first shell and reaching every endpoint

Every self-dual \(L\) of rank \(r\ge1\) has exactly
\[
 N_r=q\,\frac{(q^r-(-1)^r)(q^{r-1}-(-1)^{r-1})}{q^2-1}
                                                                    \tag{2}
\]
self-dual neighbors \(M\) of colength \(d(L,M)=1\). For such an \(M\), \(\pi M\) gives an isotropic line in \(L/\pi L\), and \(L\cap M\) is the inverse image \(L_0\) of the line's orthogonal hyperplane. Conversely choose a primitive lift \(v\) of a generator of the line. Each candidate is \(M=L_0+\mathcal O_K(v/\pi+b)\) for some \(b\in L/L_0\). Cross-pairings with \(L_0\) are integral. Integrality of the remaining self-pairing is equivalent to
\[
 h(v,v)/\pi+\operatorname{Tr}_{\mathbf F_{q^2}/\mathbf F_q}\overline{h(v,b)}=0
 \quad\text{in }\mathbf F_q ,
\]
where the first term is reduced modulo \(\pi\). The residue pairing identifies \(L/L_0\) semilinearly with the residue coefficient field, so this has exactly \(q\) solutions. They give distinct lattices: two generators of the same enlargement differ by a unit multiple modulo \(L_0\), and the chosen generator of the residue line forces that unit to be \(1\) modulo \(\pi\). Its difference from \(1\) times the generator belongs to \(L_0\). Every resulting integral lattice is self-dual since it has the determinant valuation of \(L\). An integral isometry sends \(L\) to each such lattice after extending scalars to \(K\): any unimodular Hermitian lattice diagonalizes by splitting off a vector of unit norm and its orthogonal complement. Such a vector exists in every nonzero nondegenerate residue Hermitian space by the nonzero residue trace pairing. The norm on units is surjective by residue norm surjectivity followed by successive corrections with the residue trace. Thus each diagonal unit can be made \(1\).

In the resulting diagonal residue form write \(Z_r\) for the number of norm-zero vectors, including zero. There is one element of norm zero and exactly \(q+1\) of each prescribed nonzero norm in \(\mathbf F_{q^2}\). Isolating the last coordinate gives
\[
 Z_0=1,\qquad Z_{r+1}=Z_r+(q^{2r}-Z_r)(q+1),\qquad
 q Z_r=q^{2r}+(-1)^r(q-1)q^r .
\]
For \(r\ge1\), this gives \(Z_r-1=(q^r-(-1)^r)(q^{r-1}-(-1)^{r-1})\). There are \((Z_r-1)/(q^2-1)\) isotropic lines. The \(q\) lifts for each line give (2). For \(r\ge2\), dividing (2) by \(q^{2r-2}\) leaves \((1-(-q)^{-r})(1-(-q)^{-(r-1)})/(1-q^{-2})\), at most \((1+q^{-1})/(1-q^{-2})\le2\). In rank one \(N_1=0\). These computations agree with the nonsplit elementary divisors and neighbor formulation of Greenberg and Voight. [Greenberg and Voight, *Lattice methods for algebraic modular forms on classical groups*, Proposition 4.4 and §5](https://jvoight.github.io/articles/orthohecke-240123.pdf#page=13)

There are at most \(N_r^d\) endpoints of colength \(d\). For \(d>0\) choose the least \(m\) such that \(\pi^m M\subseteq L\) and choose \(x\in M\) such that \(\pi^m x\) is primitive in \(L\). Then \(m\ge1\), \(y=\pi^{m-1}x\in M\setminus L\), and \(L_0=\{z\in L:h(z,y)\in\mathcal O_K\}\) has colength one and contains \(I\). The vector \(\pi y\) lies in \(L_0\), and \(h(y,y)\) is integral since \(y\in M\). Thus \(N=L_0+\mathcal O_K y\) is a self-dual neighbor of \(L\). Moreover \(N\cap M=I+\mathcal O_Ky\), and \(N/(N\cap M)\simeq L_0/I\) has length \(d-1\). Induction connects \(L\) to \(M\) in \(d\) steps. Counting all such paths can overcount endpoints, which gives the upper bound in the required direction.

## The exact factor for ranks two and three

When \(r=2\) or \(3\), put \(B=q^{2r-2}\). Relative to a fixed lattice \(M\), a self-dual lattice \(L\) at colength \(d>0\) admits a Witt basis in which
\[
 L=\mathcal O_K e\oplus W\oplus\mathcal O_K f,\qquad
 M=\mathcal O_K\pi^{-d}e\oplus W\oplus\mathcal O_K\pi^d f .
\]
Here \(W\) has rank \(r-2\), and \(e,f\) are a hyperbolic pair. This is the nonsplit elementary-divisor theorem with a single hyperbolic pair. Among the \(q\) neighbors using the residue line of \(e\), choose representatives \(y=e/\pi+b f\), where \(\bar b\) runs through the trace-zero elements in the residue field. For \(b=0\) the colength relative to \(M\) drops by one. For \(\bar b\ne0\), every unit multiple of \(y\) modulo \(L_0\) has unit \(f\)-coordinate, so \(N\cap M=I\) and the colength remains \(d\). For each of the other \(N_r-q=B\) neighbors, \(N\cap M=I\cap L_0\): every \(u\in M\setminus L\) with \(\pi u\in L\) has \(\pi u\bmod\pi L\) on the line of \(e\). The image of \(I\) modulo \(\pi L\) is \(e^\perp\), distinct from the hyperplane defining \(L_0\), hence \(I+L_0=L\) and the colength increases by one. Thus at positive distance the three neighbor counts are \(1,q-1,B\). At the origin all \(B+q\) neighbors increase the distance.

Let \(S_d\) be the sum of \(c(g)/c(1)\) over the shell \(d(L,gL)=d\). Sum the Hecke eigenidentity for the first-shell operator over each shell and count incoming edges with the preceding three counts. This gives \(S_0=1,\ S_1=\lambda_1\),
\[
 S_2=(\lambda_1-q+1)S_1-(B+q),\qquad
 S_{d+1}=(\lambda_1-q+1)S_d-BS_{d-1}\quad(d\ge2).
\]
Consequently
\[
 J_v(X)=\frac{(1-X)(1+qX)}{1-(\lambda_1-q+1)X+B X^2}.                   \tag{3}
\]
The same edge count shows that the shell of colength \(d\ge1\) has exactly \((B+q)B^{d-1}\) members: every endpoint has one predecessor, and every positive-distance vertex has \(B\) successors. Thus (3) holds as a formal series and evaluates the absolutely convergent integral on \(|X|<B^{-1}\). There the denominator cannot vanish, since its product with the convergent series is the nonzero \((1-X)(1+qX)\).

To compare the parameter, the archived rank-one Satake transform weights an upper-triangular coset with first diagonal valuation \(a\) by \(\alpha^a q^{-a(r-1)}\). Geometrically \(N\cap K e=\pi^a\mathcal O_K e\): the triangular unipotent fixes \(e\). Conversely a primitive generator of this intersection extends to an integral Witt basis of \(N\) by duality, the trace correction, and unit norm surjectivity as above. The resulting isometry preserves \(Ke\) and \(e^\perp\); in these ranks it is upper triangular. Diagonal units can be absorbed by the integral stabilizer. In the first shell, the distinguished neighbor with \(y=e/\pi\) has \(a=-1\). The \(q-1\) others on the same residue line have \(a=0\). Every other isotropic line pairs nontrivially with \(e\), since the residue Witt index is one. For their \(B\) neighbors \(e\notin L_0=N\cap L\) and \(\pi e\in L_0\), giving \(a=1\). Thus \(\lambda_1=q-1+q^{r-1}(\alpha+\alpha^{-1})\) in the literal source normalization. With \(Y=q^{r-1}X\), (3) has denominator \((1-\alpha Y)(1-\alpha^{-1}Y)\). In rank three the source inverse-normalizing numerator also has \(1-q^2X\), which cancels the standard central factor \(1-Y\); rank two already has the two displayed numerator factors. At the source twist parity \(\chi_w(\pi)^{-1}=(-1)^{r+t}\) these are precisely the Tate signs of its nonsplit denominator. This recovers the expected normalized quotient in both ranks. [Source \(t(a)\), half-modulus and Satake transform](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SatakeDualWeyl/StatementF.lean#L26-L61) · [Comparison with the source standard and Tate factors](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/TwistedOperators/UnramifiedDoublingIntegralInertPlace.lean#L91-L109)

The absence of denominator roots on \(|X|<B^{-1}\) bounds both \(|\alpha|\) and \(|\alpha^{-1}|\) by \(B/q^{r-1}=q^{r-1}=(\mathrm Nw)^{(r-1)/2}\). This obtains the individual parameter bound required in the scalar in ranks two and three from the actual bounded coefficient. It is attained by the trivial representation. For the trivial spherical coefficient (3) reduces to \((1+qX)/(1-BX)\). For \(q=2\) and \(t=r+5\) it gives \(85/86\) in rank two and \(341/344\) in rank three. The unramified twist in both evaluations takes \(\pi\) to \(-1\). The two integral values change if one uses \(q\) in place of the coefficient-field cardinality \(q^2\) in the inducing absolute value.

## Local and global estimates

For \(c(1)\ne0\), let \(\lambda_1\) be the eigenvalue of the sum over first-shell cosets \(gC\), so \(|\lambda_1|\le N_r\). For \(\eta=N_r|X|<1\), the shell expansion converges absolutely and gives
\[
 |J_v-1|\le\frac{\eta}{1-\eta},\qquad
 |J_v-1-\lambda_1 X|\le\frac{\eta^2}{1-\eta}.
\]
The source twists are unitary. At \(2s=t\) set \(h=t-r+2\ge7\); then \(\eta\le2q^{-h}\le1/64\). With \(\delta=\eta/(1-\eta)\), the inequalities \(1-\delta\le |J_v|\le1+\delta\) give \(\bigl|\log|J_v|\bigr|\le\delta/(1-\delta)=\eta/(1-2\eta)\le3q^{-h}\). Rank one gives \(J_v=1\) exactly.

Write \(f=[F:\mathbf Q]\). There are at most \(f\) places above a rational prime \(p\), and \(q_v\ge p\). At an inert place \(w\) is unique and its norm is \(q_v^2\), already used in \(X\). Thus the absolute logarithms over any subset of good inert places have sum at most \(3f\,2^{-h}(1+2/(h-1))\), by integral comparison with \(\sum_{n\ge2}n^{-h}\). This estimates the unramified inert integrals in the local product at the source evaluation point. Identification with the all-rank Satake quotient in the scalar requires the unramified local identity as an additional step; identification with the global theta norm also requires the global inner-product formula and the measures and test vectors at exceptional places. In the source scalar the good places occur outside the image of \(R.P_g\cup R.Q_t\). The full global height and covolume inequalities remain open here. [Source Rallis point](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/BlockTheory/TwistedDiscreteSeries/SphericalZero.lean#L34-L40) · [Source scalar and expected quotient](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/DivisorProofs/AdelCOfInnerProductFormula.lean#L52-L65) · [Excluded level and twist places](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/BlockTheory/DivisorBase/TwistedLevelValues.lean#L114-L120)

A finite check enumerated the normalized isotropic projective lines of the diagonal Hermitian form and all their one-coordinate lifts modulo \(p^2\) for \(q=2,3,5,7\), in ranks up to \(6,5,4,3\) respectively. Each isotropic line had exactly \(q\) lifts. For an independent check of the shell argument, in the anti-diagonal form with \(q=2,3\), ranks two and three and starting colengths one, two and three, the minimum valuation of the maximal minors of generators of \(M+N\) relative to \(M\) recovered the neighbor transition counts in all twelve cases. For example rank three over residue base size three gave counts \(1,2,81\) at each tested positive colength.

The [companion Lean module](AlpogeInertDoublingNeighbors.lean) proves the recurrence and closed count for actual quadratic extensions of finite fields in `GRWTSK.NumberTheory.AlpogeInertDoublingNeighbors.isotropicVectors_succ` and `isotropicVectors_closed`. At source SHA-256 `514e20510f62d198a085ac06fac22dc90e6f11ebbea4a3ac059e21fab95f3b37`, both declarations built under Lean 4.34.1, passed fresh kernel replay, and audited transitively to `propext`, `Classical.choice`, and `Quot.sound`. The group-integral estimates, local neighbor classification and rank-two and rank-three Satake computations above are analytic results. A Lean proof of the whole local identity and the higher-rank rational-function computation remain open here.
