# Arbitrary finite ideles and the Picard sum in the CM denominator

grwtsk contributors

Let the field, conductor, CM type, partial zeta values, elliptic period pair and auxiliary primes satisfy the hypotheses of [The CM lattice and its Hilbert Eisenstein jets](AlpogeCMFourierLattice.md). Write \(F=E^+\), \(g=[F:\mathbb Q]\), \(s\ge1\), \(k=2s\), \(h=\sum_i\kappa_i\), \(W=2sg+2h\), \(c=\mathfrak f\prod_{q\in Q}q\), and \(A=\mathrm{Pic}(\mathcal O_F+c\mathcal O_E)\). Fix a unitary Hecke character \(\chi\) trivial on the ideles of \(F\), of the archive's ratio infinity type \((\kappa_i+s)_i\) and level at most \(\mathfrak f\) at both places over each conductor prime. This includes the archive's exact-conductor hypothesis. Use its original factor \(C_0=\mathrm{cmConst}(|\mathrm{disc}F|,d,2s,\kappa)\). For any \(\Omega^{12}=\mathrm{latDisc}(\Lambda)\), put \(X(T)=C_0 T/\Omega^W\). The period pair spans the specified elliptic lattice, so its discriminant and \(\Omega\) are nonzero. Then \(X(T)^{12}=\mathrm{beta}(E,d,s,\kappa,\Lambda,T)\). At a prime \(\ell\) choose an embedding \(\lambda:\overline{\mathbb Q}\to\overline{\mathbb Q}_\ell\) and normalize \(v_\lambda(\ell)=1\). Write \(B_{\ell,\lambda}\) for the per-embedding bound in (1) of the preceding manuscript. The assertion transported here is precisely that whenever \(y=1\) above \(\ell\), \(X(S_y(0))\) is algebraic and \(v_\lambda(X(S_y(0)))\ge -B_{\ell,\lambda}\) for every source lattice-sum witness. [Archive definitions of the admissible data, class term and denominator](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/BlockTheory/DivisorBase/VpBounds.lean#L42-L87)

## Principal ideles, order units and the character correction

For a finite idele \(y\), set \(L_y=E\cap y\widehat{\mathcal O}_c\) and \(D(y)=\chi_f(y)|y|_f^s\), where \(|y|_f=\prod_w Nw^{-\operatorname{ord}_w(y_w)}\). At \(y'=\alpha yu\) for \(\alpha\in E^\times\) and \(u\in\widehat{\mathcal O}_c^\times\), one has \(L_{y'}=\alpha L_y\). Every order unit has modulus one. Its finite character is one as well. At a place outside \(\mathfrak f\) this follows from unramifiedness. At a split place of conductor exponent \(a>0\), an order unit is a pair \((r,t)\) of local units with \(r/t\in 1+\mathfrak p^a\). The diagonal element \((t,t)\) is killed by triviality on \(F\), and \((r/t,1)\) is killed by the level bound. This computation also gives the same conclusion for characters of level at most \(c\) at the indicated split places. [Finite parts on order units](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/DivisorProofs/FinPartEqOneOfLevel.lean#L92-L150)

For \(\alpha\in E^\times\) put
\[
 M(\alpha)=\prod_i\phi_i(\alpha)^{2s+\kappa_i}\overline{\phi_i(\alpha)}^{-\kappa_i}.
\]
The character's archimedean factor on \(\alpha\) is \(\prod_i(\phi_i(\alpha)/\overline{\phi_i(\alpha)})^{\kappa_i+s}\). The complementary CM embeddings give \(N_{E/\mathbb Q}\alpha=\prod_i|\phi_i(\alpha)|^2>0\). Consequently \(M(\alpha)=\chi_\infty(\alpha)(N\alpha)^s\). The principal idele relation and the finite modulus give \(D(y')=M(\alpha)^{-1}D(y)\).

Multiplication by \(\alpha\) gives a bijection on nonzero lattice vectors modulo \(\mathcal O_F^\times\), the precise quotient in the source. The summand at \(\alpha x\) is the summand at \(x\) times \(M(\alpha)^{-1}(N\alpha)^{-\sigma}\). The summand is well defined on unit classes since its unit multiplier is \(N_{F/\mathbb Q}(u)^{-2s}=1\). Thus any entire witness \(S_y(\sigma)\) supplies an entire witness \(S_{y'}(\sigma)=M(\alpha)^{-1}(N\alpha)^{-\sigma}S_y(\sigma)\), by the original convergent half-plane. Any two supplied witnesses agree there and hence everywhere. In particular
\[
 C([y])=D(y)^{-1}S_y(0)
\]
is independent of the representative whenever such a witness is supplied. This derivation only transports the witness given in **IsClassTerm** or **IsToricSum**. It dispenses with the archive proof's additional invocation of the existence of entire continuations at *all* ideles when proving this implication. The separate Hecke argument below constructs the initial witnesses. [Actual order, modulus and toric sum](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Definitions/Divisors/EntireEqOfHalfPlane.lean#L65-L112) · [Homothety calculation](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/DivisorProofs/HomothetyLatSum.lean#L45-L106) · [Archive use of the additional existence input](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/DivisorProofs/ToricDenominatorOfZetaDenominators.lean#L24-L81)

## The exact valuation of the finite factor

The map from \(A\) onto the maximal-order ideal class group has kernel a quotient of \(\widehat{\mathcal O}_E^\times/\widehat{\mathcal O}_c^\times\). This finite quotient is supported on primes dividing \(c\), and at each such place the order units contain the principal units modulo \(c\mathcal O_E\). Finiteness of the ordinary ideal class group gives finiteness of \(A\). Thus for every \(y\) there are \(n>0\), \(\alpha\in E^\times\) and an order unit \(u\) with \(y^n=\alpha u\). It follows that \(D(y)^n=M(\alpha)^{-1}\). Each \(D(y)\) is nonzero algebraic, although its definition involves a complex Hecke character. For each \(i\) let \(w_i,\bar w_i\) be the places induced by \(\lambda\phi_i\) and \(\lambda\bar\phi_i\), respectively. Put \(a_w(y)=\operatorname{ord}_w(y_w)/e(w/\ell)\). Applying normalized valuations to the power relation gives the exact formula
\[
 v_\lambda D(y)=
 \sum_i\big[\kappa_i a_{\bar w_i}(y)-(2s+\kappa_i)a_{w_i}(y)\big].                 \tag{1}
\]
Indeed \(\operatorname{ord}_w(\alpha)=n\operatorname{ord}_w(y_w)\) at every finite place. This also proves that the valuation is zero if every component above \(\ell\) is a unit, with no condition on the residue classes of those units. The possibly different embeddings inducing the same place are counted separately in the sum.

Choose a representative which is literally one above \(\ell\) as follows. The local order units at all places of \(F\) over \(\ell\) form an open subgroup of \(\prod_{w\mid\ell}E_w^\times\), since they contain a sufficiently deep product of principal units. Weak approximation gives \(\alpha\in E^\times\) in the open coset \((y_w^{-1})_{w\mid\ell}\widehat{\mathcal O}_{c,\ell}^\times\). Take \(u\) equal to \((\alpha y)^{-1}\) above \(\ell\) and one elsewhere. This is in \(\widehat{\mathcal O}_c^\times\), including when \(\ell\mid N(c)\). Then \(y'=\alpha yu\) satisfies **OneOver**. Its finite factor and inverse are algebraic units at every embedding above \(\ell\) by (1). Applying the preceding normalized-lattice inequality to the transported witness gives
\[
 v_\lambda X(C([y]))\ge -B_{\ell,\lambda},\qquad
 v_\lambda X(S_y(0))\ge -B_{\ell,\lambda}+v_\lambda D(y).                         \tag{2}
\]
Both quantities inside the valuations are algebraic, with \(v(0)=+\infty\). For example take \(E=\mathbb Q(\sqrt{-7},\sqrt{-2})\) with the two CM embeddings fixing the chosen complex embedding of \(\mathbb Q(\sqrt{-7})\), as in the preceding manuscript. At 29 the quadratic norm of \(\alpha=1+2\sqrt{-7}\) equals 29. For \(y=\alpha\), the two embeddings of the quadratic subfield into \(\overline{\mathbb Q}_{29}\) give \(v_{29} D(y)=-(4s+h)\) and \(h\), because \(v_{29}(\alpha)\) is respectively one and zero, with the complementary valuations on \(\bar\alpha\). Thus the multiplier can have a denominator at one embedding even on a principal class. [Local representative in the archive](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/DivisorProofs/ExistsRepTrivialAbove.lean#L58-L99)

## The forward class sum and its original quantifiers

For a source **IsPicChar** \(\psi\), its finite part is trivial on principal ideles by its trivial archimedean part there, and trivial on order units by hypothesis. Hence \(\psi_f\) descends to a character of the finite group \(A\). Conversely each character of \(A\) yields an admissible Picard twist by taking trivial archimedean part and composing the finite part with the quotient map. The finite part then has finite image, is continuous since the order units are open, and is trivial on principal ideles. The supplied lattice witnesses in **IsToricSum** do not depend on this choice of twist. Write \(b_q=X(C(q))\). The exact normalized twisted sum is
\[
 t_\psi=X(T_{\chi\psi})=\sum_{q\in A}\psi_f(q)^{-1}b_q .                         \tag{3}
\]
Every multiplier is a root of unity. The common scalar defining \(X\) commutes with the sum. At every embedding each \(t_\psi\) is algebraic and has valuation at least \(-B_{\ell,\lambda}\) by (2) and the ultrametric inequality. Raising (3) to its twelfth power gives the archive's beta for the sum. Changing the root \(\Omega\) multiplies the whole family by the same twelfth root of unity and leaves beta fixed. Raising each summand separately would lose the mixed terms, as two summands equal to one already show.

For the archive's original quantifiers, choose once for \(E,s\) the ordinary ideal partial zeta values \(z(C)=\zeta_C(1-2s)\). Their rationality is the classical Siegel–Klingen theorem for totally real fields, also following by summing Shintani's narrow ray class formula over the narrow classes above the ordinary class. The choice precedes all weights, conductors, periods and characters. For every such choice and every \(\ell,Q\) as specified, the preceding manuscript bounds \(12B_{\ell,\lambda}\) by the archive's single \(r=\mathrm{betaBound}_{\rm vp}(d,s,\kappa,\mathfrak f,z,\ell)\). For every integer \(m\) and positive \(n\) with \(m/n\ge r\), equation (2) or (3) yields \(v_\lambda(\ell^m\mathrm{beta}^n)\ge0\) for all \(\lambda\). Its denominator ideal is supported away from \(\ell\), hence one positive integer coprime to \(\ell\) clears it. This is **ValGe_vp** exactly for each class term and every supplied twisted toric sum. It establishes the **DenomBound** implication and, using those analytic lattice estimates and classical partial-zeta rationality, the manuscript version of **ToricDenominator**. It does not supply the further global bounds on the denominators of the rational numbers \(z(C)\) themselves used elsewhere in (M). [Original ToricDenominator and DenomBound](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/BlockTheory/DivisorBase/VpBounds.lean#L15-L85) · [T. Shintani, “On Special Values of Zeta Functions of Totally Real Algebraic Number Fields”, ICM Helsinki 1978, §§3–4, formulas (4)–(6)](https://www.mathunion.org/fileadmin/ICM/Proceedings/ICM1978.2/ICM1978.2.ocr.pdf)

## Unfolding to the Hecke value, including drops of conductor

One can also construct the initial witnesses. Write \(u=s+\sigma\) in this paragraph and \(\eta=\chi\psi\). For \(\Re u>1\), reindex the double sum of nonzero lattice vectors modulo real units and ring classes by \(x/y_q\in(\widehat{\mathcal O}_c\cap\mathbb A_{E,f}^\times)/\widehat{\mathcal O}_c^\times\). Indeed its class determines \(q^{-1}\), and every such idele is a principal element times \(y_q^{-1}\) modulo order units. The stabilizer of the principal element is **exactly** \(\mathcal O_F^\times\). To see this, for a global order unit \(e\), \(e/\bar e\) is an algebraic integer with all conjugates of modulus one, hence a root of unity. Choose any prime of the nontrivial base conductor. Its residue characteristic \(p\) is odd, unramified and completely split in \(E\). The two components of \(e\) are congruent there, so this root of unity is one modulo the maximal ideal. The principal units in \(\mathbb Q_p\) are torsion free for odd \(p\), by the logarithm or binomial valuation. Thus \(e=\bar e\) and the reverse inclusion of real units is immediate. Including this step removes a possible unit-index factor.

The principal relation above identifies the summand with \(\eta_f(x/y_q)|x/y_q|_f^u\). The quotient is a restricted product of local integral cosets, and the absolute series converges for \(\Re u>1\) by comparison with the ordinary ideal-norm Euler product, up to the finitely many local unit indices. At places outside \(c\) this gives the usual maximal-order Euler factors. At each \(v\mid c\) the algebra is split. Put \(Q_v=Nv\), \(a=\operatorname{ord}_v c>0\), \(x=Q_v^{-u}\), choose a local uniformizer \(\pi\), and write \(Y_1,Y_2\) for the two local character values on it and \(V=Y_1Y_2\). The restrictions to units are inverse, since diagonal units are order units. Denote their common unit conductor exponent by \(b\le a\). The scalar \(V\) need not equal one for an arbitrary Picard twist. The factor multiplying the *ordinary* Hecke Euler product at this place is the polynomial
\[
 P_{a,b}(x)=
 \begin{cases}
 (1-Y_1x)(1-Y_2x)\displaystyle\sum_{t=0}^{a-1}(Q_v V x^2)^t
 +(Q_v-1)Q_v^{a-1}V^a x^{2a}, & b=0,\\[3pt]
 \displaystyle\sum_{t=0}^{a-b}(Q_v V x^2)^t, & b>0 .
 \end{cases}                                                         \tag{4}
\]
Indeed a local integral pair with either valuation below \(a\) must have both valuations equal to \(t<a\). Its remaining unit ratio is in \((1+\mathfrak p^{a-t})/(1+\mathfrak p^a)\). The character sum over this group is \(Q_v^t\) if \(b\le a-t\) and zero otherwise. When both valuations are at least \(a\), the unit ratios range over all of \(\mathcal O_v^\times/(1+\mathfrak p^a)\). Their sum vanishes for \(b>0\). For \(b=0\) it has cardinality \((Q_v-1)Q_v^{a-1}\), and summing the two independent valuation tails supplies the two geometric Euler factors. This proves (4), including residue characteristic two at auxiliary places. Changing the uniformizer preserves \(V\). At \(b=0\) each \(Y_i\) also stays fixed.

The absolute class transform thus equals \(L(u,\eta)\prod_{v\mid c}P_{a_v,b_v}(Q_v^{-u})\). This function is entire by the classical analytic continuation of Hecke L-functions. Indeed the angular infinity type is nonzero because \(\kappa_i+s>0\), excluding all characters which are pure powers of the norm. Fourier inversion on \(A\) now constructs each entire lattice witness: multiply the inverse transform of this entire family by \(\chi_f(y_q)|y_q|_f^u\). On the initial half-plane the reindexing identifies this with the defining lattice series, so specialization at \(u=s\) supplies the witnesses and (3). The inverse factor \(1/|A|\) in this analytic existence argument does not enter the denominator estimate (2). [Tate, *Fourier Analysis in Number Fields and Hecke's Zeta-Functions*, 1950, Chapter IV](https://sites.math.rutgers.edu/~alexk/2023S572/Tate1950.pdf) · [Archive reindexing and exact Hecke-value specialization](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AbelianVarietyTheory/Proofs/DivisorProofs/ToricSumEqHeckeLValueMulAuxiliaryFactors.lean#L68-L143)

For an archive character of exact base conductor, trivial on the ideles of \(F\) and of level at most one at each auxiliary split place, \(V=1\). At the base places \(b=a\), so (4) is 1. At auxiliary places with \(b=1\) it is likewise 1. At each remaining auxiliary place it is \((1-Yx)(1-Y^{-1}x)+(Q_v-1)x^2\), exactly the archive's **eq** at \(u=s\). Every auxiliary set is allowed subject to the original hypotheses. For more general Picard twists (4) retains the factors for a drop in conductor at a base place. For example \(a=2,b=1\) contributes \(1+Q_vVx^2\). [Definition of the auxiliary polynomial](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/PairingDivisors/StatementA.lean#L20-L28)

For every allowed twist these local factors are nonzero at the required evaluation. In fact every zero of (4) lies on \(|x|=Q_v^{-1/2}\). For \(b>0\) this follows from the finite geometric series with ratio \(U=Q_v Vx^2\), including the constant case. For \(b=0\) put \(A(x)=(1-Y_1x)(1-Y_2x)\). Direct multiplication of (4) gives
\[
 (1-U)P_{a,0}(x)=A(x)-Q_v^{-1}U^a A(Q_v x).
\]
Each \(|Y_i|=1\) by unitarity. For \(|x|<Q_v^{-1/2}\),
\[
 Q_v |1-Y_i x|^2-|1-Q_vY_i x|^2=(Q_v-1)(1-Q_v|x|^2)>0.
\]
The second term in the polynomial identity therefore has modulus strictly less than \(|U|^a |A(x)|\) for \(x\ne0\), and it vanishes at zero. Hence the polynomial has no zero in this disk. Its constant coefficient is one and its leading coefficient is \(Q_v^a V^a\). The product of the moduli of its \(2a\) roots equals \(Q_v^{-a}\), which forces every modulus to equal the disk radius. These circles belong to finite local correction polynomials.

Formula (1) applied to a single-place idele shows that the character values in (4) are algebraic: \(D(y)\) is algebraic and the modulus is rational. The same holds after twisting by finite-order characters. Since \(s\ge1\), all factors are nonzero at \(x=Q_v^{-s}\), and the actual normalized Hecke value is algebraic with the embedding-specific bound
\[
 v_\lambda X\big(L(s,\eta)\big)\ \ge\ -B_{\ell,\lambda}
       -\sum_{v\mid c} v_\lambda\big(P_{a_v,b_v}(Q_v^{-s})\big).
\]
This is a denominator bound with the individual local values retained. No lower bound for the archimedean size of the global Hecke value follows by this division alone.

## Which collections of twisted values can occur

There are additional constraints on simultaneous twists at primes dividing the Picard number. Consider the local valuation ring \(R\) of a finite extension of \(\mathbb Q_\ell\) containing the coefficients, character values and an element of valuation \(B_{\ell,\lambda}\), enlarging the field if necessary. Multiply the class coordinates and toric sums by that element. Equation (3) then lies in the integral image of the character table. The following description of that image tests whether independently supplied twisted values can be inverted without introducing a denominator.

For a cyclic factor of order \(q=\ell^a\), choose a primitive \(q\)-th root \(z\) absorbing the inverse sign of (3). Index the rows and columns from 0 to \(q-1\), so \(V_{rm}=z^{rm}\). Replace the monomial in column \(j\) by \(P_j(X)=\prod_{i<j}(X-z^i)\). The change of coefficient basis is unitriangular over \(R\) since each \(P_j\) is monic of degree \(j\). The resulting entries factor as
\[
 P_j(z^r)=G_{rj}D_j,\qquad D_0=1,\qquad D_{j+1}=z^j(z^{j+1}-1)D_j .
\]
Here \(G_{00}=1\), \(G_{0j}=0\) for \(j>0\), \(G_{r0}=1\) and
\(G_{r+1,j+1}=z^{j+1}G_{r,j+1}+G_{rj}\). Indeed
\[
 P_{j+1}(zX)=(zX-1)z^jP_j(X)
 =z^{j+1}P_{j+1}(X)+z^j(z^{j+1}-1)P_j(X).
\]
Induction proves the factorization over any commutative ring, including when the diagonal contains zero. The recurrence also proves \(G_{rj}=0\) for \(r<j\) and \(G_{rr}=1\). Thus left multiplication by \(G^{-1}\) is integral, and on this factor a vector \(t\) belongs to the character-table image exactly when \(D_j\mid(G^{-1}t)_j\) for every \(j\).

Since \(z^d\) has order \(\ell^{a-v_\ell(d)}\) for \(1\le d<q\), its conjugates have constant valuation on subtracting one. Their product up to sign is \(\Phi_{\ell^{a-v_\ell(d)}}(1)=\ell\). Consequently the nondecreasing valuations of the pivots are
\[
 v_\lambda D_j
 =\frac{j+\sum_{b=1}^{a-1}(\ell^b-\ell^{b-1})\lfloor j/\ell^b\rfloor}
 {\ell^{a-1}(\ell-1)} .
\]
This formula follows by summing \(\ell^{v_\ell(d)}\) for \(1\le d\le j\) and grouping the multiples of \(\ell^b\). The final pivot has valuation \(a\) because \(\prod_{1\le d<q}(1-z^d)=q\), by evaluating \((X^q-1)/(X-1)\) at one. For the prime-to-\(\ell\) component \(H\) the inverse character table is the conjugate transpose divided by the unit \(|H|\), by character orthogonality. For a product of cyclic primary components, tensoring the preceding basis changes gives the sum of the corresponding pivot valuations, with the multiplicity \(|H|\). Sorting those valuations gives all elementary divisors. This describes the Fourier image of *arbitrary* class coordinates satisfying the local integrality bound. Additional constraints on CM class coordinates can narrow that image.

In particular, the inverse transform may lose as much as \(v_\ell(|A|)\) on arbitrary integral twisted data. The vector supported at the trivial character with entry 1 has inverse constant \(1/|A|\), attaining this loss. The original forward bound in (3) incurs zero loss for every \(A\). As a simpler directly checkable consequence, on any cyclic factor the \(j\)-th forward difference of a row of twisted values of integral coordinates is divisible by \((z-1)^j\). Taking one difference multiplies the summand of index \(m\) by \(z^m-1\), divisible by \(z-1\) via the finite geometric series. Iteration proves every order.

## Formal scope and continuation

The [local Lean companion](AlpogePicardClassTransport.lean) proves representative-factor cancellation, the valued principal-power rearrangement, all forward-difference identities and the exact Gaussian factorization with unit lower-triangular entries. Its namespace is `GRWTSK.AlpogePicardClassTransport`. These are local consequences with the displayed inputs, independently written on the repository pins. All 14 public declarations passed native elaboration, fresh kernel replay and transitive axiom auditing. The CM field, finite-idele, partial-zeta, Hecke Euler-factor and completed-lattice arguments in (1)–(4), their valuation-ring specialization and the resulting **ToricDenominator** are manuscript arguments. Exact controls checked 5,442 local Euler coefficients across 510 character specializations by direct enumeration of local unit ratios, 2,882 finite-field Newton-table entries, 1,510 pivot valuation interval bounds and both 29-adic norm branches modulo the third power of 29. Native formalization of those arithmetic identifications and independent external review are **NOT_RUN**. The sharp inverse example uses arbitrary class data. The actual values of the CM sums, the remaining global theta-lift estimates in (M) and the Hilbert–Pólya determinant identity require further work.
