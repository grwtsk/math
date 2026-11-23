# Weight one at unbounded conductor and the scalar even-weight obstruction

grwtsk contributors

Consider Alpöge's `CorG` at revision `40e56bab026552e089d7afcfeff08d2defb9c005`. Write \(p\) for the varying coefficient prime and \(r,r'\) for the two auxiliary primes. Let \(d=[(\mathbb Z/N)^\times:H]\). On every nonempty admissible orbit the quotient by \(H\) is cyclic and the characters are faithful on this quotient. They cut out the same cyclic field \(F\) with primitive conductor \(f\mid N\). We prove the weight-one bound for arbitrary finite sets of admissible primes when \(d=2,4,6,8,10\). For the trivial orbit at all even weights we identify the precise uniform bound on the ordinary even K-groups of the integers that the source requires. [Alpöge, admissibility and CorG](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/Counts.lean#L18-L47) · [Coefficients, normalized length and orbit](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/DirichletPrimeToLPartMulLPowerPart.lean#L112-L146)

## The strict group and its integral upper bound

Use the minimal unramified coefficient DVR \(O\) containing the values of \(\psi\), with fraction field \(L\). The discrete Galois module is \(A=(L/O)(\psi^{-1}\chi_{\mathrm{cyc}}^{-e})\). Write \(S_e(\psi)\) for the strict subgroup defining the source length. Scalar extension to the source DVR multiplies length by its relative ramification degree, which the normalization divides out. Finite free scalar extension commutes with the cocycle and local kernel descriptions, as one sees by expanding cochains in a module basis. The normalized length is thus the ordinary \(O\)-length here. We may enlarge the unramified coefficient field to split the cyclic group of order \(d\).

For every admissible coefficient prime, \(p\nmid d\). Over \(F\) the coefficient becomes the inverse cyclotomic twist. Restriction and corestriction give descent on global and local cohomology since the finite group has order invertible on all coefficients. At a finite place away from \(p\), the unramified cohomology over \(F\) vanishes: Frobenius minus one acts surjectively on divisible coefficients since its scalar is \((\#k_v)^{-e}-1\ne0\). Over the base the same conclusion holds with a root-of-unity factor if the character is unramified. If it is ramified, its inertia image has order prime to \(p\) and its nontrivial character has no invariants. Thus the original conditions at primes dividing \(N\), and unramifiedness elsewhere away from \(p\), give precisely the corresponding conditions after restricting to \(F\). In particular strict groups descend, including at the ramified primes of \(F/\mathbb Q\).

The strict group over \(F\) has Pontryagin dual equal to the kernel of localization on \(H^2(G_{F,S_p},\mathbb Z_p(e+1))\), where ramification is allowed at places above \(p\) and infinity. Quillen–Lichtenbaum identifies this global group with \(K_{2e}(\mathcal O_F)\otimes\mathbb Z_p\). Inverting \(p\) leaves its \(p\)-part unchanged by Quillen localization and the orders of the K-groups of finite fields. Descent with the twist picks out the \(\psi^{-1}\)-component on the compact side. Summing distinct idempotents after common unramified scalar extension therefore gives
\[
 \log p\sum_{\psi\in\mathrm{orb}} V_n(p,e,\psi)
 \ \le\ \log |K_{2e}(\mathcal O_F)[p^\infty]|.
\]
Indeed the total length after this scalar extension equals the original \(\mathbb Z_p\)-length, also when only a subset of its idempotents occurs. Global K-groups in positive even degree are finite, so every individual source length is finite. [Milne, Arithmetic Duality Theorems, I.4](https://www.jmilne.org/math/Books/adt.html) · [Meng Fai Lim, On the structure of even K-groups of rings of algebraic integers, v2, Corollary 3.6](https://arxiv.org/pdf/2210.00168v2#page=6) · [Integral localization sequence and source conditions](AlpogeSelmerBudget.md)

## All admissible primes at weight one

The parity condition makes \(F\) totally imaginary. The genericity condition excludes 2 and 3. If \(p\mid w_F=|\mu(F)|\), then \(\mathbb Q(\mu_p)\subset F\). Thus inertia at \(p\) in \(F/\mathbb Q\) surjects onto the group of order \(p-1\) of this totally ramified subextension. But the source requires the square of the \(p\)-component of \(\psi\) to be trivial. Faithfulness bounds that inertia group by two. This contradiction excludes every prime dividing \(6w_F\) from the source sum.

Vincent Emery's Theorem 1.3 gives, for fixed degree \(d\) and \(R=\mathbb Z[1/(6w_F)]\),
\[
 \log|K_2(\mathcal O_F)\otimes R|
       \ll_d |D_F|^2 (\log |D_F|)^{d-1}.
\]
The conductor–discriminant formula gives \(|D_F|\le f^{d-1}\), since each of the \(d-1\) nontrivial characters has conductor dividing \(f\). For \(d\le8\), the resulting logarithmic factors are absorbed by the slack below \(f^{18}\). [Vincent Emery, Torsion homology of arithmetic lattices and K2 of imaginary fields, v2, Theorem 1.3](https://arxiv.org/pdf/1303.6132v2#page=2)

In degree ten the preceding substitution alone incurs an excess power of \(\log f\). Instead retain the exact component count in Emery's proof. Equation (3.2) gives \(|\mathrm{Cl}(F)/\mathrm{Cl}(F)^2|=|\mathrm{Cl}(F)[2]|\) components of the adelic quotient. The localized degree-two homology surjects onto localized \(K_2\) by (3.3). In degree at least six the first two rational homology groups vanish and the bound from Theorem 1.1 and the component covolume gives log order \(\ll_d |D_F|^{3/2}\) per component. Thus, before the relaxation to the full class number in (3.5),
\[
 \log|K_2(\mathcal O_F)\otimes R|\ll_d |\mathrm{Cl}(F)[2]|\,|D_F|^{3/2}.
\]
[Emery, §3, (3.2)–(3.6) and Remark 3](https://arxiv.org/pdf/1303.6132v2#page=6)

Let \(E=F^+\) be the real quintic subfield and \(c\) complex conjugation. On the elementary two-group \(A=\mathrm{Cl}(F)[2]\), the image of \(1+c\) lies in its kernel \(A^c\); hence \(|A|\le |A^c|^2\). Chevalley's ambiguous class number formula gives \(|\mathrm{Cl}(F)^c|\le h(E)2^{t-1}\), where \(t\) counts finite and infinite places of \(E\) ramifying in \(F\). Here \(t\le 5+5\omega(f)\). The fixed-degree class-number bound (1.3) of Emery gives \(h(E)\ll f^2\log^4(2f)\), using the conductor–discriminant formula \(|D_E|\le f^4\). Altogether the log order is
\[
 \ll f^{27/2+4}\,2^{10\omega(f)}\log^8(2f)\ll f^{18}.
\]
Indeed all prime divisors above a fixed threshold satisfy \(2^{10}\le q^{1/4}\). The others contribute an absolute constant, and \(\log^8(2f)\ll f^{1/4}\). Taking the maximum constant over the five displayed degrees proves the weight-one CorG inequality, because \(f\mid N\) and the remaining right-hand factors are bounded from below by positive absolute constants. No averaging over conductors or omission of an admissible prime is needed. [Chia-Fu Yu, Ambiguous class number formulas, Theorem 1.1 and ordinary-class specialization](https://archive.mpim-bonn.mpg.de/id/eprint/3296/1/preprint_2014_68.pdf) · [Emery, (1.3)](https://arxiv.org/pdf/1303.6132v2#page=3)

A conductor check in the extremal discriminant case is \(F=\mathbb Q(\mu_{11})\), which has a faithful odd character of order ten. PARI/GP gave \(D_F=-2357947691=-11^9\), \(D_E=14641=11^4\), \(h(E)=1\), with `bnfcertify` returning 1. The coefficient 11 divides \(w_F\) but fails the squared-inertia condition, since its inertia has order ten. This demonstrates why the localization in Emery's theorem is legitimate here.

## What the trivial character requires at every even weight

With \(H=(\mathbb Z/N)^\times\), the orbit consists of \(\psi=1\). Let \(e=2m>0\). For every odd prime, including primes failing genericity, there is an equality
\[
                |S_e(1)|=|K_{4m}(\mathbb Z)[p^\infty]|
\]
over minimal coefficients. In fact the last map of Poitou–Tate from local \(H^2\) onto the dual of the global invariants is an isomorphism. Its dual is restriction of invariants for \(\mathbb Q_p/\mathbb Z_p(-e)\) from \(\mathbb Q\) to \(\mathbb Q_p\). The cyclotomic image in both cases is \(\mathbb Z_p^\times\), so the fixed subgroups coincide. There is just one place above \(p\), and the real place contributes zero at odd \(p\). All local conditions away from \(p\) were accounted for above.

We can also recover exactly the missing nongeneric factors. Lim's Corollary 4.3 at \(F=\mathbb Q,n=1,i=e\) gives zero \(p\)-rank when \(p-1\mid e\), since \(\mathrm{Cl}(\mathbb Z[1/p])=1\). Otherwise the rank is the \(\omega^{-e}\)-rank of the class group of \(\mathbb Q(\mu_p)\), with \(\omega\) the Teichmüller character. Indeed the decomposition group at the unique prime above \(p\) is the whole Galois group, so the extra local summand in Lim vanishes. That prime is principal, generated by \(1-\zeta_p\), hence its inversion does not affect the class group. The hypothesis \(1\le a+b\) in Lim holds because \(\mathbb Q(\mu_p)\) contains \(\mu_p\). [Lim, v2, §§4.1–4.2, Theorem 4.2 and Corollary 4.3](https://arxiv.org/pdf/2210.00168v2#page=8)

If \(p-1\mid2e\) and \(p-1\nmid e\), the character \(\omega^{-e}\) has order two and is even. Thus \(p\equiv1\pmod4\), and the corresponding quadratic subfield is \(k=\mathbb Q(\sqrt p)\). Extension of ideals and norm identify the subgroup of \(p\)-classes invariant under \(\mathrm{Gal}(\mathbb Q(\mu_p)/k)\) with the \(p\)-class group of \(k\), since the group order is prime to \(p\). Minkowski gives an integral representative of norm at most \(X=\lfloor\sqrt p/2\rfloor\) in each class. For any \(n\ge1\), quadratic prime factorization bounds the number of ideals of norm \(n\) by the divisor count \(\tau(n)\le n\). Consequently \(h(k)\le\sum_{n=1}^X n\le X^2<p\). This eigenspace too has zero rank, so every odd prime discarded for nongenericity contributes zero. This also recovers the odd-prime scalar vanishing predicate `PropZ` on its original even weights.

The trivial-orbit restriction of CorG is therefore equivalent to the existence of an absolute \(C\) such that
\[
             \log |K_{4m}(\mathbb Z)_{\mathrm{odd}}|\le C m^7
                         \qquad(m\ge1).
\]
The bound implies CorG immediately by summing a subset. Conversely take \(N=2\), the unique orbit, \(r=13,r'=17\), and the auxiliary quadratic field \(K=\mathbb Q(\sqrt{-7})\) for all generic primes other than 7. It has class number one, discriminant coprime to \(N\), and cannot lie in \(\mathbb Q(\mu_p)\) because it ramifies at 7. For \(p=7\) use \(K=\mathbb Q(\sqrt{-11})\) instead, again of class number one. Both fixed choices satisfy the auxiliary prime restrictions. Taking the finite support of the K-group and applying CorG to the two subsets gives the displayed bound. This fixes all parameters but the weight and the source's quantified coefficient primes.

The stronger claim that *every* such admissible scalar term vanishes is equivalent to Vandiver's conjecture. Indeed every even residue of \(-e\bmod(p-1)\) occurs for some positive even \(e\). The trivial and order-two residues were handled above. All other even residues are generic and are realized by the indicated auxiliary choices. By prime-to-\(p\) descent the sum of even eigenspaces is the \(p\)-class group of the maximal real cyclotomic subfield. Its vanishing for every odd \(p\) is exactly Vandiver's statement. The quantitative seventh-power upper bound permits nonzero groups. We derive neither that uniform upper bound nor Vandiver's conjecture. The general exceptional-weight sum and the other inputs to (M) remain open here.

## Formal scope

The companion module `GRWTSK.AlpogeSelmerExceptionalWeights` proves `involution_sum_square_zero`, `card_le_kernel_square`, `sum_mem_kernel_iff_fixed`, `decic_conductor_budget` and `sum_norm_counts_le_square`. These results justify the ambiguous two-class inequality, the degree-ten multiplication of estimates and the elementary counting step for real quadratic fields. Coefficient descent, duality, arithmetic K-theory and the analytic estimates above are mathematical arguments with the stated literature dependencies. They have no Lean proofs in this companion. Native elaboration, fresh kernel replay of the used dependency closure (five roots and 7,631 declarations), and transitive axiom auditing succeeded at Lean source blob `431a1ddac6fb34db67e0d43bc75e0570b8d7d6e2`. Audits returned subsets of `propext`, `Classical.choice`, `Quot.sound`. Independent external mathematical review remains outstanding. [Supporting Lean source](AlpogeSelmerExceptionalWeights.lean)
