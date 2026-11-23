# Conductor bounds for stable class towers and critical character orbits

grwtsk contributors

Consider the source CorG orbit with kernel \(H\subseteq(\mathbb Z/N)^\times\), cyclic quotient of order \(d\), and common primitive conductor \(f\mid N\). Put \(r=\varphi(d)\); the faithful characters form one rational orbit. Write \(p\) for the varying odd coefficient prime and \(e\ge1\) for the weight, and take \(p\nmid d\). All lengths below are over the minimal unramified coefficient DVR \(\mathcal O\) of the character, as in the normalized source length. Write \(S_e(\psi)\) for the strict group with action \(\psi^{-1}\chi_{\rm cyc}^{-e}\). Assume source parity and a nontrivial residual action on the decomposition group at \(p\). This holds for Case I, including a ramified moving prime: the finite inertia character has square one, while \(p-1\nmid 2e\). Two criteria below independently suffice for the full contribution of a summand. Neither is assumed throughout every source orbit. [Exact orbit inequality and quantifiers](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/Counts.lean#L18-L64) · [Host inertia alternatives](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/Cases.lean#L9-L40)

## One rational integer for the entire orbit

Let \(J\ge2\). Retain the terms for which there is \(1\le j\le J\) with \((p-1)p^h\mid e+j\) and \(p^h S_{-j}(\psi)=0\) for some \(h\ge0\). One can use the independently calculated upper bounds on the critical length, with a local correction when available, as sufficient evidence for the latter condition. Then the full source sum over **any** finite set of primes and any such subset of their characters is
\[
 \sum_{p,\psi}(\log p)\operatorname{length} S_e(\psi)
 \ \le\ d\log(8f)+C\,rJ^2\log(8fJ) .                                  \tag{1}
\]
The constant is absolute. Each eligible group is isomorphic to \(S_{-j}(\psi)\) by finite-level transport through depth \(h+1\). Assign it to just one witness \(j\). [Full-group critical transport, rank comparison and local conditions](AlpogeSelmerCriticalWeights.md)

For \(j=1\) the orbit consists of odd characters. Their common cyclic character field \(L\) is CM, and the Kummer unit argument bounds their lengths by the corresponding character components of \(\mathrm{Cl}(\mathcal O_L)[p^\infty]\otimes\mathcal O\). Over a common unramified splitting ring (enlarging it does not change lengths), distinct components are direct summands and their sum of lengths is at most the original \(\mathbb Z_p\)-length. Summing over all primes costs at most \(\log h(L)\le d\log(8f)\) by Minkowski and conductor–discriminant. Each character field enters only once here.

For \(j\ge2\), work in the CM field \(E=L(i)\), of degree prime to \(p\), and use all finite primes dividing \(m=4f\) in the imprimitive special value. The rank-zero argument bounds each critical strict length by the length of the \(\psi\)-component in degree-two integral cohomology, and this increases at most on inverting the extra primes. Apply the equivariant Fitting formula over \(E/\mathbb Q\), projecting the group ring after unramified scalar extension onto \(\psi\). Its torsion correction vanishes for the retained terms: this correction is the component of \(H^0(E,\mathbb Q_p/\mathbb Z_p(j))\), and after twisting down it has zero invariants by the local nontriviality of \(\bar\psi^{-1}\omega^j\). Thus the strict length is at most \(v_p(L^{(m)}(1-j,\psi^{-1}))\), with valuation normalized by \(v_p(p)=1\). Inverting \(p\) in étale cohomology has no impact on this upper bound; its additional Euler factor, when required, is a \(p\)-unit at \(j\ge2\). All good characters in this orbit have parity \(\psi(-1)=(-1)^j\). [Gambheera–Popescu, Theorems 7.14 and 7.16](https://link.springer.com/article/10.1007/s40687-025-00578-8)

Set \(D_j=jm(j+1)!\). The Bernoulli polynomial grid formula gives an algebraic integer \(D_jL^{(m)}(1-j,\theta^{-1})\) for **each** primitive orbit character \(\theta\), whether selected at a prime or not. Consequently
\[
 B_{H,j}=\prod_{\theta\in\mathrm{orb}(H)} D_jL^{(m)}(1-j,\theta^{-1})
\]
is a nonzero rational integer: Galois permutes its factors, the primitive values are nonzero by the matching parity and the functional equation, and any omitted unramified Euler factor has nonzero value. For any one \(p\), sum the selected valuations after denominator clearing. They are bounded by \(v_p(B_{H,j})\) because every other cleared factor also has nonnegative valuation. This handles distinct \(p\)-adic embeddings and proper subsets of the orbit. Summing over any prime set gives the single bound \(\log|B_{H,j}|\). Using the absolute value of the uncleared product here could produce a false estimate. [Integral denominator derivation](AlpogeSelmerGrowth.md)

The primitive functional equation and \(|L(j,\bar\theta)|\le\zeta(j)\le2\) give \(|L(1-j,\theta)|\le 4(j-1)! f^{j-1/2}(2\pi)^{-j}\) for \(j\ge2\), with the trivial primitive character included by the zeta functional equation. Since every primitive conductor equals \(f\), the only possible additional missing unramified factor at \(m=4f\) is the one at 2, of modulus at most \(1+2^{j-1}\). Thus \(\log |B_{H,j}|\le C rj\log(8fj)\). Summing this bound over the admissible \(j\) proves (1).

For a concrete norm check, take the primitive cubic character modulo seven with \(\theta(3)=\zeta_3\), \(j=2\) and \(m=28\). The primitive value at the inverse character is \((-2\zeta_3-6)/7\). Removing the factor at 2 changes it to \((6\zeta_3-10)/7\). Multiplication by \(D_2=336\) gives an algebraic integer whose norm is \(451584=2^{10}\cdot3^2\cdot7^2\). Thus the two coefficient embeddings together have a single explicit cleared product. This check uses exact arithmetic in \(\mathbb Q[x]/(x^2+x+1)\).

## A finite class-tower test for all weights on a tame branch

For a fixed residue class of \(e\bmod p-1\), put \(\theta=\widetilde{\bar\psi^{-1}\omega^{-e}}\), the Teichmüller lift of the residual character. Let \(F\) be any abelian field of degree prime to \(p\) through which \(\theta\) factors, for example the field it cuts out, and \(\Delta=\mathrm{Gal}(F/\mathbb Q)\). Write \(Q_n\) for the degree-\(p^n\) layer of the cyclotomic \(\mathbb Z_p\)-extension of \(\mathbb Q\), \(F_n=FQ_n\), \(\Gamma=\mathrm{Gal}(F_\infty/F)\), and choose its generator \(\gamma\) with principal cyclotomic value \(u=1+p\). Let
\[
 C_n=\big(\mathrm{Cl}(\mathcal O_{F_n}[1/p])[p^\infty]\otimes_{\mathbb Z_p}\mathcal O\big)^\theta .
\]
These are actual split class groups with their arithmetic Galois action. If \(|C_n|=|C_{n+1}|\) at any one layer, the entire strict group for every positive weight on this tame branch has length at most \(\operatorname{length} C_n\). At level zero the formula is sharper. If \(C_0\cong\bigoplus_i\mathcal O/p^{b_i}\), then
\[
                  S_e(\psi)\cong\bigoplus_i\mathcal O/
                  p^{\min(b_i,1+v_p(e))}.                              \tag{2}
\]
In particular a deep base group need not persist at full size at a weight prime to \(p\). Equality of the orders at the consecutive *tower* levels is essential to (2).

Here are the control and stabilization details. Let \(X'\) be the maximal abelian unramified pro-\(p\) Galois group over \(F_\infty\) with all the primes above \(p\) split, and write \(M=(X'\otimes\mathcal O)^\theta\). It is finitely generated over \(\Lambda=\mathcal O[[\Gamma]]\) by the cyclotomic class-module theorem (it is a quotient and summand after finite scalar extension). One has canonical norm-compatible identifications
\[
                        C_n=M/(\gamma^{p^n}-1)M .                       \tag{3}
\]
Indeed dualize and use constant \(\mathbb Q_p/\mathbb Z_p\)-valued characters over \(F_n\). An invariant strict character over \(F_\infty\) lifts globally by inflation–restriction since \(\Gamma^{p^n}\) has cohomological dimension one. The global ambiguity is a character of \(\Gamma^{p^n}\), with trivial \(\Delta\)-action. Away from \(p\), inertia groups do not change since the cyclotomic extension is unramified there. At places above \(p\) the local values of a lift inflate from the decomposition groups in the relative tower. They transform in a permutation module of copies of \(\mathrm{Hom}_{\rm cont}(\Gamma^{p^n},\mathbb Q_p/\mathbb Z_p)\). The tower is locally totally ramified at \(p\), because the completions of \(F\) have degree prime to \(p\) and the cyclotomic \(p\)-tower is totally ramified at every layer. In any case the stabilizer acts trivially on the relative cyclotomic group by abelianity. Its projection to \(\Delta\) detects \(\theta\) by the residual local hypothesis. Thus both the ambiguity and the local obstruction disappear in the dual character component. Taking that component is exact since \(|\Delta|\) is invertible. Class field theory on the finite layer now gives (3). For the actual twist, restricting a cocycle from \(\mathbb Q\) to \(F_\infty\) similarly gives
\[
 S_e(\psi)\cong \{v\in\mathrm{Hom}_{\mathcal O,\rm cont}(M,K/\mathcal O):
                              v(\gamma x)=u^{-e}v(x)\}.
\]
In this calculation the action of \(G_{F_\infty}\) on the coefficient is trivial. The global and \(p\)-local inflation and transgression vanish: in each abelian quotient there is a central prime-to-\(p\) element with nonidentity residual scalar. Averaging on its cyclic group kills all positive cohomology and its invariants vanish. Away from \(p\), any inertia introduced by \(F\) has order prime to \(p\); at strict primes a nontrivial inertia scalar kills invariants, or an unramified Frobenius scalar differs from one and acts surjectively after subtracting one on the divisible coefficient. This recovers exactly the original local conditions. [Iwasawa, *On* \(\mathbf Z_\ell\)*-extensions of algebraic number fields* (1973)](https://doi.org/10.2307/1970784) · [Fukuda, *Remarks on* \(\mathbf Z_p\)*-extensions of number fields*, Theorem 1 (1994), for ordinary class-number stability](https://doi.org/10.3792/pjaa.70.264)

For equal adjacent orders the surjection in (3) is an isomorphism. Put \(T_n=\gamma^{p^n}-1\). It follows that \(T_nM=T_{n+1}M=\nu T_nM\) for \(\nu=\sum_{b=0}^{p-1}\gamma^{b p^n}\). The trace \(\nu\) belongs to the maximal ideal \((p,\gamma-1)\), by reduction modulo that ideal. The image \(T_nM\) is finitely generated, so Nakayama yields \(T_nM=0\). Thus \(M=C_n\), proving the full-length bound. At \(n=0\) the generator acts trivially on \(M\), and equivariance is the annihilator condition \((u^e-1)v(x)=0\). Since \(v_p(u^e-1)=1+v_p(e)\), elementary divisors give (2).

The mean over weights in a stable base branch distinguishes generator rank from the maximum exponent. If the tame residue is \(e_0\bmod(p-1)\), each elementary divisor contributes \(\sum_{k=0}^{b_i-1}\mathbf1_{p^k\mid e}\) to its length. Thus the density-normalized sum over **all** positive integers is exactly
\[
 \lim_{t\to\infty}\frac1t
 \sum_{1\le e<t,\ e\equiv e_0\ (p-1)}(\log p)\operatorname{length} S_e(\psi)
 =\frac{\log p}{p-1}\sum_i\frac{1-p^{-b_i}}{1-p^{-1}} .
\]
Each pair of congruences has density \(1/((p-1)p^k)\) by coprimality. For finite \(t\) counting each nonempty progression gives the upper bound obtained from \(t\) times the displayed limit by adding at most \((\log p)\sum_i\min(b_i,1+\lfloor\log_p(t-1)\rfloor)\), for \(t\ge2\). A large exponent at one weight accordingly costs much less, on average, than the maximum times the total number of weights.

## Recovering the source powers

Allow the successful layer \(n\) and the chosen character at each prime to vary, requiring only \(p^{n+1}\le Y\), \(Y\ge2\). The contribution from all these stabilized terms in the fixed rational orbit at one weight is at most
\[
                          dY^2\log(8 fY).                                \tag{4}
\]
Use the common field \(F=L(\mu_p)\) for that prime. If initially tested in a smaller tame field the character component is unchanged on enlarging to this field: the degree of enlargement is prime to \(p\), norm and extension identify its invariant components on the localized class groups. In detail, the two composites are multiplication by the degree and the sum of relative Galois actions, respectively. At the largest chosen layer \(n_p\) all the stabilized character components are still the same by (3). Distinct \(\psi\) produce distinct residual characters at fixed \(p,e\) since finite prime-to-\(p\) character values reduce injectively. Thus their lengths times \(\log p\) sum to at most \(\log h(F_{n_p})\). The degree is at most \(dY\), the conductor divides \(f p^{n_p+1}\), and Minkowski's bound gives \(\log h(F_{n_p})\le dY\log(8 fY)\). Sum over at most \(Y\) eligible primes. Unlike truncation at \(p^a\le Y\), this argument bounds the whole group after verification of a statement about two field layers. The actual comparison uses the further layer \(n+1\), whose conductor can involve \(p^{n+2}\). [Elementary Minkowski count and the finite-depth comparison](AlpogeSelmerReflection.md)

Take \(J=Y=N^8 e^3\) in the even moduli \(N\ge2\) of CorG. Since \(d\le N\) and \(\log(8 fN^8e^3)\le CN e\), the sum of (1) and (4) is bounded by \(C'\varphi(d)N^{18}e^7\), with absolute constants. The source's extra positive factors \(|\mathrm{disc}(K)|^5\) and the sum of logarithms of its two distinct auxiliary primes are bounded below by one. This proves the CorG-size estimate on the union of the two tested sets, across all finite prime lists, with its original uniform exponents. When neither arithmetic criterion is known for an orbit entry it cannot be included by this argument. In particular, a prime \(p>e+J+1\) satisfies neither the weight congruence nor the bounded layer cutoff for this choice of \(J,Y\). Finiteness at individual primes does not bound this missing sum.

## A varying exponent and a failed rank test

At \(p=3\) and initial character \(\psi=\chi_{-4219}\), the full strict group at every positive odd weight is cyclic of order **three if \(3\nmid e\)** and **nine if \(3\mid e\)**. Indeed \(\theta=\chi_{12657}\), and its field \(F=\mathbb Q(\sqrt{12657})\) is real quadratic with nontrivial residual inertia at three. Its integer ring is generated by a root of \(x^2-x-3164\); its class group is cyclic of order 9. The first relative layer is the compositum with the real cubic field defined by \(x^3-3x+1\), the first cyclotomic layer at three. A reduced defining polynomial for the compositum is
\[
 x^6-6330x^4-3164x^3+10017225x^2+10014060x-3512713229.
\]
Its discriminant is 1478154631939497 and its class group is cyclic of order 9. PARI/GP 2.17.4 returned full unconditional certification \(1\) for **each** group, by computing `b=bnfinit(P,1)` and then `bnfcertify(b)`, with the default certification flag zero. The sextic polynomial is reproduced by `polredabs(polcompositum(x^2-x-3164,x^3-3*x+1)[1])`.

The quadratic base involution acts by inversion on its class group. Norm from the sextic class group onto the base class group is surjective: the relative degree-three extension is totally ramified at the unique prime over 3 and hence has trivial intersection with the Hilbert class field. Chebotarev supplies a representative of each base class splitting in the relative extension. Thus the two 3-class groups are isomorphic by norm. The unique prime over 3 at each level is fixed by the quadratic involution, so localization does not affect the odd component in question. Formula (2) now gives the asserted orders, including weights prime to 3 at which the base group of order nine overestimates the strict group. This prime is exceptional in the host's case division. It verifies the full-weight formula independently of the CorG envelope. [PARI reference, full class-group certification](https://pari.math.u-bordeaux.fr/dochtml/html-stable/General_number_fields.html#bnfcertify)

A neighboring quadratic example shows what would go wrong if one compared only ranks. For initial character \(\chi_{-3763}\) and the same weights, \(F=\mathbb Q(\sqrt{11289})\) has class group \(C_{18}\). Its first relative layer has reduced polynomial
\[
 x^6-5646x^4-2822x^3+7969329x^2+7966506x-2491749179,
\]
discriminant 1048803063984801 and class group \(C_{54}\times C_2\times C_2\). The same full PARI certification returned 1 for both fields. The odd sign accounts for the full 3-part at the top: its plus component descends by norm and extension across the quadratic extension to the real cubic field of conductor nine, which has class number one. Its discriminant is 81, Minkowski's bound is 2, and 2 is inert as the displayed cubic is irreducible modulo two. At both levels the prime over 3 is unique and fixed by the involution. The two relevant class modules have 3-rank one but orders nine and twenty-seven. Therefore the equal-rank test would certify stabilization incorrectly; no such conclusion is drawn for this column.

The failed stabilization test still gives information beyond one layer. In the sextic field for \(d=3763\), the generator \(\gamma\) inducing \(\zeta_9\mapsto\zeta_9^4\) acts on its cyclic 3-class group of order 27 by the scalar **19 modulo 27**. To reproduce the computation use `polcompositum(quadpoly(11289),x^3-3*x+1,1)[1]` for the polynomial and the two embedded generators \(A,B\). Among the automorphisms from `nfgaloisconj` select the one fixing \(A\) and sending \(B\) to \((B^2-2)^2-2\), the fourth-power trace of a ninth root of unity. For the basis of the certified class group \([54,2,2]\), the ideal \(I=\mathrm{gen}_1^2\) has order 27. The class coordinates of \(\gamma I\) from `bnfisprincipal` were \([38,0,0]\), giving the claimed scalar. The full `bnfcertify` test on this compositum presentation returned 1 as well.

The surjection \(M\to C_1\) gives a subgroup of \(S_e\) of order \(\gcd(27,19\cdot4^e-1)\), without any stabilization assumption. Its order is three for \(3\nmid e\), nine for \(e\equiv0,6\bmod9\), and twenty-seven for \(e\equiv3\bmod9\), since 4 has order nine modulo 27 and \(4^6=19\bmod27\). To obtain exact upper bounds, the primitive critical values at \(j=1,3,5,9,15,51\) have 3-adic valuations respectively \(1,2,1,2,3,3\). Here \(j=1\) uses the imaginary quadratic class number, equal to \(L(0,\chi_{-3763})\). For larger odd \(j\) the torsion correction vanishes since the cyclotomic image on the quadratic field contains the nontrivial scalar modulo three. The primitive conductor includes all ramification, and a removed factor at 3 would be a 3-adic unit. Thus the displayed valuations are upper bounds even before the nonnegative local subtraction. Critical transport gives the following complete orders on the indicated progressions.

| Positive odd weights | Strict group |
|---|---|
| \(3\nmid e\) | \(C_3\) |
| \(e\equiv9,15\bmod18\) | \(C_9\) |
| \(e\equiv3,39\bmod54\) | \(C_{27}\) |
| \(e\equiv21\bmod54\) | contains \(C_{27}\); the full order is unresolved |

The first row uses the upper bounds at \(j=1,5\), the second uses \(j=9,3\), and the third uses \(j=51,15\). In each completed case the lower subgroup is cyclic and already has the full bounded order. This settles 26 of the 27 odd residue classes modulo 54. These conclusions depend on the calculated action as well as the field class numbers. [Finite congruence criterion and the critical upper bounds](AlpogeSelmerCriticalWeights.md)

## Conductor cost of the deep lower examples

For the trace-one construction put \(m=p^a\), fix \(p\ge11\) (or \(p=5\)), and choose \(U\) as the least positive multiple of 21 congruent to one modulo \(p\), so \(U\le21p\). The primitive quadratic conductor \(f\) is the absolute field discriminant of \(\mathbb Q(\sqrt{1-4U^m})\); it need not equal the displayed order discriminant. One obtains the explicit two-sided constraints
\[
  m\le h(-f)\le \frac{3}{\pi}\sqrt f\,(2+\log f),
  \qquad f\le 4(21p)^m .                                                   \tag{5}
\]
The lower divisibility follows from the exhibited ideal class, and the local Kummer argument gives an actual strict class of order \(m\) at \(e=(p-1)m-1\). For the upper class number bound use the imaginary quadratic class-number formula \(h(-f)=w\sqrt f L(1,\chi_{-f})/(2\pi)\), \(w\le6\). The first \(f\) Dirichlet series terms cost at most \(1+\log f\). Beyond that complete period, Abel summation and the bound \(f\) for partial character sums give tail at most one. Finally the fundamental discriminant divides the order discriminant of the displayed quadratic generator. These facts give (5) without an assumption on squarefree values of a power polynomial. [Trace-one construction and genuine Case I checks](AlpogeSelmerCriticalWeights.md) · [Louboutin, Theorem 1 and its ideal class](https://doi.org/10.1090/S0002-9939-09-10021-7)

In particular, at each fixed such \(p\), \(f\to\infty\) as \(a\to\infty\), and the individual summand is at least
\[
          \log m \ \ge\ \log\log f-\log\big(\log(21p)+\log 4\big).
\]
The weight chosen here is prime to \(p\). Choosing the minimal dyadic host index and \(t=e+1\) allows the moving primes to exceed \(\max(f,2t+1)\) but be at most a fixed multiple of it for sufficiently large parameters, by the prime number theorem in the fixed progressions \(3\bmod8\) and \(7\bmod16\). The auxiliary constants of the constructed initial characters are 7, 1 and 3, as checked in the preceding manuscript. The resulting host modulus has \(\log N=O(\log(2fe))\), and at fixed \(p\), (5) implies \(\log(2fe)=O_p(\log f)\). Thus these examples also force \(\log\log N-O_p(1)\) growth along this sequence of actual rows. They give neither a lower bound violating CorG nor a lower bound with one fixed initial character as the modulus grows; the optimal dependence across unrestricted rows remains unknown. [Source moving-prime congruences](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/AutomorphicVarieties/PrimeSetBoundDataOfPrimitiveChar.lean#L24-L27)

## Formal evidence

The companion proves the Nakayama implication for adjacent geometric relation submodules, trace reduction, the twisted annihilator identity, denominator clearing on a selected embedding set, selection of prime factors of a single integer, and the polynomial absorption used in the CorG comparison. The class-module identifications, special-value arithmetic, number-field computations and the global budget deductions above are manuscript arguments with the stated external inputs. End-to-end Lean verification and independent review of these arithmetic comparisons remain open. [Lean companion](AlpogeSelmerTowerControl.lean)

At Lean source SHA-256 `cc9608da072de8aa3350c8f38c4512c4a2c4ccc72ea88bb467c682e2cfea90a9` (Git blob `02753ef77b7ab056f4ca11613a6f1ed2bed19de5`), the targeted Lean 4.34.1 build passed. All six public declarations underwent transitive axiom printing, with only `propext`, `Classical.choice` and `Quot.sound` in the union. Finite controls compared 88 complete-period means, 50,000 positive-weight lower and upper checks for the growing column, and 2,744 denominator-clearing tests. The critical values for that column were independently evaluated by integer moments and by exact generalized Bernoulli polynomials in PARI.
