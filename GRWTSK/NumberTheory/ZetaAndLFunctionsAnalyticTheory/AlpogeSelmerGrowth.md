# Uniform bounds for parts of the strict Selmer budget

grwtsk contributors

Let \(E\subseteq\mathbb Q(\mu_m)\) be an abelian CM field, \(m=Q_Sqd\) for an original row, \(d_E=[E:\mathbb Q]\), and \(c\) complex conjugation. For \(1\le e<t\) write \(A_{p,e}=\mathbb Q_p/\mathbb Z_p(-e)\) and \(\mathcal S_{p,e}\) for its strict Selmer group, with vanishing local restrictions at every \(w\mid p\) and unramified cohomology outside \(p\). Logarithms are natural. The inequalities below hold separately for every such field and endpoint. The source asks for an upper bound \(C\exp(C\log^2(n_0tm))\) for every finite set of rational primes, with \(n_0\) the row parameter called \(n\) in the archive. [Host and cyclotomic embedding](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ConjEMemHostFIff.lean#L12-L44) · [LinkV_at and Vbound](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalTheoremInputs.lean#L14-L28) · [Finiteness and Poitou–Tate comparison](AlpogeSelmerBudget.md)

## A bound for the complete odd-primary special-value component

For odd \(p\) set \(j=e+1\) and \(\pi_j=(1+(-1)^jc)/2\). There is an absolute constant \(C\) such that
\[
 \sum_{1\le e<t}\sum_{p>2}\log|\pi_{e+1}\mathcal S_{p,e}|
 \ \le\ C d_E t^2\bigl(t+\log(2md_E)\bigr).                    \tag{1}
\]
The same bound holds with the strict groups replaced by \(\pi_{e+1}K_{2e}(\mathcal O_E)_p\). All irregular odd primes, including primes dividing \(m\) or \(d_E\), are included.

Take the **relative** extension \(E/E^+\) of degree two and let \(S\) contain precisely the archimedean places and the places of \(E^+\) above primes dividing \(m\). The integral group ring of the relative group over \(\mathbb Z_p\) splits as two copies of \(\mathbb Z_p\) for every odd \(p\). Complex conjugation at each real place of \(E^+\) is the same element \(c\). The idempotent in Gambheera–Popescu's unconditional Theorem 7.14 is therefore \(\pi_j\). Project its equality of zeroth Fitting ideals onto that copy of \(\mathbb Z_p\). Over this DVR the Fitting ideal of a finite module of length \(a\) is \(p^a\mathbb Z_p\), by its elementary divisors. This gives
\[
  \log_p|\pi_j K_{2j-2}(\mathcal O_{E,S})_p|
  =\log_p|\pi_j K_{2j-1}(\mathcal O_{E,S})_{p,\mathrm{tors}}|+v_p(Z_j),
 \quad Z_j=\prod_{\chi(c)=(-1)^j} L^{(m)}(1-j,\chi).
\]
Here \(\chi\) runs through characters of \(\mathrm{Gal}(E/\mathbb Q)\), and the Euler factors at **all** primes dividing \(m\) are omitted. This last identity is Artin induction of the relative character to \(\mathbb Q\). Its constituents are exactly the characters restricting to the specified sign, each occurring once. Removing the indicated Euler factors commutes with induction by the local factor formula. The product contains \(d_E/2\) factors and is rational by Galois invariance of the Bernoulli formula below. Each factor is nonzero by parity and the primitive Dirichlet functional equation at \(j\ge2\). Each removed unramified Euler factor is nonzero since its nontrivial term has modulus \(r^{j-1}>1\). This argument uses only the *relative* group-ring splitting. [Gambheera and Popescu, *An unconditional equivariant main conjecture in Iwasawa theory and applications*, §7.3, Theorem 7.14 (2025)](https://link.springer.com/article/10.1007/s40687-025-00578-8)

The Quillen–Lichtenbaum identification in degree one and the exact sequence of \(\mathbb Z_p(j)\subset\mathbb Q_p(j)\) identify the torsion term before projecting with the cyclic group \(H^0(E,\mathbb Q_p/\mathbb Z_p(j))\). Indeed, \(H^0(E,\mathbb Q_p(j))=0\) and the kernel of rationalization on the finitely generated \(H^1\) is its torsion. Complex conjugation acts on these invariants by \((-1)^j\). If they contain an element of order \(p^a\), the cyclotomic image modulo \(p^a\) has exponent dividing \(j\) and index at most \(d_E\). The unit group is cyclic for odd \(p\), giving \(p^a\le2jd_E\). Hence the sum over all odd \(p\) of the natural logarithms of the torsion orders is at most \(2jd_E\log(2jd_E)\). The localization sequence injects \(K_{2j-2}(\mathcal O_E)\) into the corresponding \(S\)-integer group, because positive even \(K\)-groups of finite residue fields vanish. Finally, the Pontryagin dual of the strict group is a subgroup of global \(H^2(E,\mathbb Z_p(j))\) with ramification restricted to \(p\). Quillen–Lichtenbaum identifies that ambient group with \(K_{2j-2}(\mathcal O_E)_p\). Equivariance and the sign character's self-duality preserve the length after projection. [Source strict kernel](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/GaloisCohomology/Statement.lean#L66-L112) · [Lim, v2, §3.2–3.3 and Corollary 3.6](https://arxiv.org/pdf/2210.00168v2#page=5)

It remains to bound the **odd numerator** of \(Z_j\). The size of a rational number alone cannot bound it if the denominator is large. For each imprimitive character of modulus \(m\), the Hurwitz formula gives
\[
 L^{(m)}(1-j,\chi)=-\frac{m^{j-1}}{j}
       \sum_{a=1}^m\chi(a) B_j(a/m).
\]
Dirichlet characters here are zero on nonunits. Put \(D_j=jm(j+1)!\). The recurrence \(\sum_{i=0}^{k}\binom{k+1}i B_i=0\) for \(k\ge1\) gives \((k+1)!B_k\in\mathbb Z\) by induction, since \((i+1)!\mid k!\) for \(i<k\). Expanding \(B_j(a/m)\) proves \((j+1)!m^j B_j(a/m)\in\mathbb Z\). Thus \(D_j L^{(m)}(1-j,\chi)\) is an algebraic integer, and
\(U_j=D_j^{d_E/2}Z_j\) is a nonzero rational integer. Consequently \(\prod_{p>2}p^{v_p(Z_j)}\le |U_j|\), including when \(v_p(Z_j)<0\) for some \(p\).

For an elementary archimedean estimate, \(|B_k|\le 2^{(k+1)^2}\). In the recurrence, the \(k\) earlier summands each have modulus at most \(2^k 2^{k^2}\), since \(\binom{k+1}i\le2^k\). Divide by \(k+1\) and include \(B_0=1\). Expanding the polynomial for \(0\le x\le1\) now gives \(|B_j(x)|\le (j+1)2^{(j+1)^2+j}\). Hence
\[
 |U_j|\le
 \left[(j+1)!\, m^{j+1}(j+1)2^{(j+1)^2+j}\right]^{d_E/2}.
\]
Taking logarithms, adding the torsion cost, and summing \(2\le j\le t\) proves (1). There is no \(S\)-dependent constant. [Mathlib's Hurwitz zeta evaluation](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/HurwitzZetaValues.lean#L189-L201)

## Both signs and the dyadic prime up to any specified prime-power cutoff

For every prime \(p\), integer \(a\ge1\), and every twist \(e\ge1\), write \(P=p^a\). Then
\[
 \log|\mathcal S_{p,e}[P]|
 \le (d_E+2)\log P+d_EP\log(8mP).                              \tag{2}
\]
Fix \(L=E(\mu_P)\), \(\Delta=\mathrm{Gal}(L/E)\) and \(M=A_{p,e}[P]\), a cyclic group of order \(P\). The sequence for multiplication by \(P\) shows that every strict class killed by \(P\) lifts to \(H^1(G_{E,S_p},M)\). Its localizations lie in the connecting images of \(H^0(E_w,A_{p,e})/P\), each of order at most \(P\). There are at most \(d_E\) places \(w\mid p\). Thus the lifted preimage has size at most \(P^{d_E}\) times the order of the strict kernel with finite coefficients \(M\). Restriction of the latter kernel to \(L\) has kernel contained in the inflation of \(H^1(\Delta,M)\). The group \(\Delta\subseteq(\mathbb Z/P)^\times\) has at most two generators, including at \(p=2\). Values at these two generators determine a crossed homomorphism by the cocycle law and its inverse law, so \(|H^1(\Delta,M)|\le P^2\). Over \(L\), \(M\) is trivial. Global reciprocity sends the strict finite-coefficient characters into \(\operatorname{Hom}(\mathrm{Cl}(\mathcal O_L[1/p]),M)\). Its order is at most the ordinary class number \(h_L\), by elementary divisors.

Put \(d_L=[L:\mathbb Q]\le d_EP\). The conductor–discriminant formula gives \(|\mathrm{disc}(L)|\le(mP)^{d_L}\), since all the Dirichlet character conductors divide \(\mathrm{lcm}(m,P)\). Minkowski supplies an integral ideal of norm at most \(X=2^{d_L}|\mathrm{disc}(L)|^{1/2}\) in each class. The number of ideals of norm at most \(X\) is at most \(X^2\zeta_L(2)\le X^2\zeta(2)^{d_L}< X^2\,2^{d_L}\) by the Euler factors. In particular \(h_L\le(8mP)^{d_L}\), which proves (2).

Given \(B\ge2\), take the largest \(a_p\) such that \(p^{a_p}\le B\). Summing the logarithms of the orders of \(\mathcal S_{p,e}[p^{a_p}]\) over \(e<t\) and \(p\le B\) costs at most
\[
 tB\big[(d_E+2)\log B+d_E B\log(8mB)\big].                     \tag{3}
\]
For \(B=\max(2,\lfloor\exp(c_0\log^2(n_0tm))\rfloor)\) with any fixed \(c_0>0\), (3) is within the size allowed by LinkV after an absolute enlargement of its constant depending only on \(c_0\). This uses \(d_E\le m\). Taking the matching-sign estimate (1) at all odd primes leaves the logarithmic sizes of the quotients by \(p^{a_p}\)-torsion in the opposite odd sign and at \(p=2\). For \(p>B\) take \(a_p=0\). No uniform bound for this combined tail is derived here. Bayer–Fluckiger, Emery and Houriet's Theorem 1.1 bounds a quotient by small torsion, but its exponent on the field discriminant grows with both degree and weight. Substitution yields a larger function than the required uniform bound. [Bayer–Fluckiger, Emery and Houriet, *Hermitian lattices and bounds in K-theory of algebraic integers*, v3, Theorem 1.1](https://arxiv.org/pdf/1406.5953v3#page=1)

There is also a high-prime estimate in a restricted range of row sizes. De la Torre Durán's November 2026 preprint, v2, Theorem 4.5, bounds the full prime-to-small-primes part by a Voronoi complex estimate. With \(h=4e+1\) it gives
\[
 \sum_{p>d_Eh+1}\log|K_{2e}(\mathcal O_E)_p|
 \le \exp\!\left(O(h^2d_E\log(2hd_E))\right)
       |\operatorname{disc}(E)|^{O(h^2)}.
\]
Use its general cutoff \(d_Eh+1\). A smaller cutoff justified by linear disjointness would be unsafe for the ordinary hosts, since \(\mathbb Q(\sqrt{-q})\subset\mathbb Q(\mu_q)\) is typically a nontrivial proper cyclotomic subfield already contained in \(E\). The general cutoff follows by embedding \(\mathrm{GL}_h(\mathcal O_E)\) into \(\mathrm{GL}_{d_Eh}(\mathbb Z)\), so any eigenvalue of prime order \(p\) requires dimension at least \(p-1\). Parity projections are unnecessary in this estimate. Applying the injection of the dual strict group and \(|\operatorname{disc}(E)|\le m^{d_E}\), summing all \(e<t\) costs at most
\[
 t\,\exp\!\left(Ct^2d_E\log(2td_E m)\right)
 \quad\text{over } p>d_E(4t+1)+1 .
\]
Thus both signs satisfy the requested budget at those primes on rows with \(t^2d_E\log(2td_E m)\le C_0\log^2(n_0tm)\) for fixed \(C_0\). This use of Theorem 4.5 is a literature-based consequence. The source family's eventual satisfaction of the last row inequality is unproved, and the prime-to-small-primes bound removes the *entire* primary parts at excluded primes. It cannot pay the deep dyadic tail in (3). [De la Torre Durán, *Perfect Forms and Torsion Bounds in Algebraic K-Theory over Totally Real and CM Fields*, v2, Lemma 4.3, Remark 4.4 and Theorem 4.5](https://arxiv.org/html/2611.06300v2#S4.SS2)

## A nonzero group in the opposite parity

Use the source's ordinary host construction with \(q=107,d=7,s=0\). The primes satisfy the required congruences and \((-7/107)=(107/7)=(2/7)=1\). Although the general row definition requires tower index at least two, restriction below carries the example to these higher layers. Write \(E_0=\mathbb Q(\sqrt{-107},\sqrt{-7})\), \(L=E_0(\sqrt{-3})\) and \(\Delta=\mathrm{Gal}(L/E_0)\). For every odd \(e\), the strict group \(\mathcal S_{3,e}\) has an *opposite*-sign part (the \(c=-1\) part) of 3-rank exactly one. At \(e\equiv3\bmod6\) its order is exactly three. [Host construction and congruences](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/FrobeniusOrbits/Statement.lean#L12-L18) · [Host field](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/FrobeniusOrbits/Statement.lean#L54-L72)

In fact \(E_0\) is unramified at 3. The mod-3 cyclotomic character is surjective at each place above 3, so all local and global fixed points of \(A_{3,e}\) vanish. Its strict 3-torsion identifies by the multiplication exact sequence and prime-to-3 descent with \(\operatorname{Hom}_{\Delta}(\mathrm{Cl}(\mathcal O_L[1/3]),\mathbb F_3(-e))\). The target is odd for both \(\Delta\) and \(c\). To obtain sign \(-1\) for \(c\) on this Hom one needs the \(c\)-even and \(\Delta\)-odd part of the class group. The order-eight multiquadratic Galois group over \(\mathbb Q\) acts semisimply on the 3-primary part in the sense of its eight integral sign idempotents. The required quadratic subfields are precisely \(\mathbb Q(\sqrt{321})\) and \(\mathbb Q(\sqrt{21})\). Extension and norm identify each component with the respective quadratic 3-primary \(S\)-class group. Their two composites on the invariants are multiplication by a power of two, and the trivial class component over \(\mathbb Q\) is zero. The second field has class number one by its Minkowski bound \(\sqrt{21}/2\) and inertness of 2.

For \(K=\mathbb Q(\sqrt{321})\) put \(u=215+12\sqrt{321}\), \(\alpha=(17+\sqrt{321})/2\), and \(\beta=(19+\sqrt{321})/2\). Their norms are respectively \(1,-8,10\). The prime 2 splits, since 321 is a fundamental discriminant congruent to 1 modulo 8. As \(\alpha=8+(1+\sqrt{321})/2\) is indivisible by the integer 2, its ideal is the cube of one prime above 2. Neither prime above 2 is principal. Indeed, a generator of absolute norm two could be multiplied by a power of \(u>1\) so that both its real absolute values are at most \(\sqrt{2u}\), by rounding the logarithm of the first absolute value relative to \(\sqrt2\). Writing the result as \((x+y\sqrt{321})/2\) gives \(|y|\sqrt{321}\le2\sqrt{2u}<60\) since \(u<431\). Thus \(|y|\le3\), \(|x|\le54\) by the norm equation, and \(x^2=321y^2\pm8\) has no solution in that box. The ordinary Minkowski bound is \(\sqrt{321}/2<9\). The primes of norm at most 8 above 2 and 5 suffice after inverting 3, because 7 is inert and 3 is ramified. The norm of \(\beta\) relates one prime over 5 to one over 2, and conjugation supplies the other relation. Inverting 3 preserves all 3-primary classes because the ramified prime above 3 has square principal. This proves \(\mathrm{Cl}(\mathcal O_K[1/3])\simeq C_3\).

For \(3\mid e\) odd, the cyclotomic action on \(A_{3,e}[9]\) also factors through the same signs, since every unit congruent to 1 modulo 3 has cube 1 modulo 9. The same descent, applied to 9-torsion, gives order three in the opposite sign. Every element of order nine would already produce nine elements killed by 9. Hence the full opposite-sign length is one for these twists. For every higher layer \(E_s=E_0(\zeta_{2^{s+2}}+\zeta_{2^{s+2}}^{-1})\), restriction injects the strict 3-primary classes because corestriction after restriction acts by the extension degree on absolute cohomology, and that degree is a power of two. Restriction preserves the local conditions and commutes with \(c\). The opposite-sign component therefore contributes at least \(\lfloor t/2\rfloor\log3\) on each of these hosts. This verifies that the missing sign in (1) can carry actual strict classes.

## Formal evidence

The companion's namespace is GRWTSK.AlpogeSelmerGrowth. The theorems bernoulli_factorial_integral, bernoulli_grid_integral, integral_character_sum, abs_bernoulli_le and abs_bernoulli_grid_le prove the rational denominator clearing, integral character sum and archimedean bounds. The theorems cocycle_pair_injective and cocycle_pair_card_le verify the two-generator estimate for genuinely twisted cocycles. The theorems norm_two_box_321 and norm_certificates_321 check the exact integer calculations in the opposite-sign example. These are local formal deductions supporting the proofs above. The number-field comparisons, regulator-free Fitting identity, class group identification and the full assembled bounds are manuscript arguments. Their end-to-end Lean verification and independent external review are **NOT_RUN**. [Lean companion](AlpogeSelmerGrowth.lean)

At Lean blob `8c9a0990757bab0f346099b0135139521ebd431d` (SHA-256 `6f284e015f1545693b09d8d3963059f30d0b5ccdcbfd654338a55a6574596175`), the targeted Lake build and fresh `leanchecker` replay passed. Transitive axiom queries for all nine public declarations returned only `propext`, `Classical.choice` and `Quot.sound`. Each of the two exact norm certificates uses only `propext`.
