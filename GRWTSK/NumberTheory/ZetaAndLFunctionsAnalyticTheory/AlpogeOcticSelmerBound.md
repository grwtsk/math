# Octic residual characters in the scalar Selmer bound

grwtsk contributors

Write \(G_m=K_{4m}(\mathbb Z)\), \(m\ge1\). Fix an odd prime \(p\) for which the residual character \(\theta=\omega^{-2m}\) has order eight. Equivalently \(p-1\mid16m\) and \(p-1\nmid8m\). Then \((G_m)_{p^\infty}\) is cyclic, and if \(p\mid m\) it has order at most \(p\). For each fixed \(p\), at most one of the four faithful octic characters can support any of these groups. On this character the full lengths have the one-variable description below. Over weights \(1\le m\le B\), the sum of their log-orders is \(O(B\log(2B))\) after discarding at most \(O(B/\log(2B))\) weights. All constants are absolute.

The corresponding source row is the trivial host character at even weight \(e=2m\). Residual order eight implies the original genericity condition \(p-1\nmid 2e\). The scalar strict group over minimal coefficients has the same primary order as \(G_m\), by local and global Tate duality and Quillen–Lichtenbaum, as detailed in the preceding manuscript. The required pointwise source bound on the sum over all admissible primes remains open. [Alpöge, CorG and GD, revision 40e56bab026552e089d7afcfeff08d2defb9c005](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/AutomorphicVarieties/HeightAndVanishing/Counts.lean#L18-L47) · [Scalar strict-group identification and source realization](AlpogeSelmerExceptionalWeights.md)

## A conductor bound for the relative class number

Since \(\theta\) is even, \(p\equiv1\pmod{16}\). Let \(K\) be the real cyclic degree-eight subfield of \(\mathbb Q(\mu_p)\), let \(F\) be its quartic subfield, and write \(\tau\) for the nonidentity automorphism over \(F\). The prime \(p\) is totally ramified, with residue field \(\mathbb F_p\). The conductor–discriminant formula gives \(D_K=p^7\) and \(D_F=p^3\). Denote the class numbers by \(h_K,h_F\), and the ordinary regulators by \(R_K,R_F\). The quotient \(H=h_K/h_F\) is a positive integer. The Hilbert class field of \(F\) is disjoint over \(F\) from the ramified quadratic extension \(K\). Its base change is an unramified abelian extension of \(K\) of degree \(h_F\), split at the infinite places.

Let \(U=\mathcal O_K^\times\), \(U_F=\mathcal O_F^\times\), and define \(V=\{u\in U:N_{K/F}(u)=\pm1\}\), \(V_1=\ker N_{K/F}\). Then \([V:V_1]\le2\). The norm modulo \(\{\pm1\}U_F^2\) has kernel \(U_FV\), since a unit with norm \(\pm a^2\) becomes a member of \(V\) after division by \(a\in U_F\). Hence \(I=[U:U_FV]\le2^3\) by the quartic unit rank. The groups \(V,V_1\) contain \(\pm1\) and have rank four.

Pick one embedding over each real embedding of \(F\), then order the remaining four as their \(\tau\)-partners. The first four absolute logarithms of members of \(V\) form a Euclidean lattice \(M\subset\mathbb R^4\), with covolume \(D\); the remaining four logs are their negatives. For \(V_1\) write \(M_1,D_1\) similarly, so \(D_1\le2D\). In its native zero-sum logarithmic hyperplane a totally real degree-\(n\) unit lattice has covolume \(\sqrt n R\). The embedding of the quartic units duplicates each coordinate, multiplying its three-dimensional covolume by \(2^{3/2}\). The map \(x\mapsto(x,-x)\) multiplies four-dimensional covolume by \(2^2\), and the two subspaces are orthogonal. It follows that
\[
 I\sqrt8\,R_K=(2^{3/2}\sqrt4\,R_F)(2^2D),
 \qquad I R_K=8R_FD,\qquad R_K/R_F\ge D .
\]
For example the finite computation below attains \(I=8\). Omitting this index would give an unsupported factor eight.

Take a nonzero lattice vector \(x\in M_1\) represented by \(u\ne\pm1\). Its residue \(a\in\mathbb F_p^\times\) satisfies \(a^2=1\), since all conjugates have the same residue and \(u\tau(u)=1\). Choose \(\delta\in\{\pm1\}\) with \(a=\delta\). The nonzero integer \(N_{K/\mathbb Q}(1-\delta u)\) is divisible by \(p\). Each of the four reciprocal pairs contributes at most \((1+e^{x_j})(1+e^{-x_j})\le4 e^{|x_j|}\) to its absolute value. Thus
\[
 \log(p/256)\le \textstyle\sum_j |x_j|\le2\|x\|_2 .
\]
For \(p>256\) the shortest length \(\lambda\) in \(M_1\) is therefore at least \(\tfrac12\log(p/256)\). With the convention \(\lambda^2\le\gamma_4D_1^{1/2}\) the sharp four-dimensional Hermite constant is \(\sqrt2\). Therefore \(D_1\ge\lambda^4/2\), giving the relative regulator estimate
\[
                   R_K/R_F\ge \frac{\log^4(p/256)}{64}.
\]
Using the exact norm-one lattice before passing to \(V\) is essential. A norm-minus-one relative unit only gives \(a^2=-1\), and need not reduce to a sign. [Four-dimensional Hermite constant and densest lattices, Ryshkov–Baranovskii, §6](https://www.mathnet.ru/links/2c27056c794a85f3b79d4848a361520d/rm4080_eng.pdf)

Divide the analytic class number formulas of \(K\) and \(F\). The discriminant factor is \(p^2\), the real-place and root-of-unity factors give \(1/16\), and precisely the four faithful, even, primitive characters of conductor \(p\) remain. Each has \(|L(1,\chi)|\le (\log p+c)/2\) with \(c=2+\gamma-\log(4\pi)<\tfrac12\log 2\), where \(\gamma\) denotes Euler's constant. Hence
\[
 H=\frac{p^2R_F}{16R_K}\prod_{\chi\,\mathrm{faithful}}L(1,\chi)
 \ \le\ \frac{p^2}{4}\left(\frac{\log p+c}{\log(p/256)}\right)^4
 \ < p^2\qquad(p\ge2^{30}).
\]
The final ratio is at most \(61/44\), whose fourth power is less than four. The quartic class number \(h_F\) is prime to \(p\) by Moser's Theorem B and the real quadratic bound in the same paper. For primes below \(2^{30}\), Hart, Harvey and Ong verified Vandiver for all irregular primes below \(2^{31}\); regular primes already have trivial cyclotomic \(p\)-class group. Extension and norm inject the octic \(p\)-class group into that of the maximal real subfield since the degree is prime to \(p\). Together these two ranges prove **\(v_p(h_K)\le1\) for every such prime**. The published finite computation is a stated dependency, and was not replayed here. Jakubec's theorem on \(p=n^4+16\) gives a criterion involving Bernoulli numbers for that special family. This proof allows arbitrary prime conductor with a real octic subfield and allows \(p\mid h_K\). [Even primitive character bound, Balady–Washington, §6, p. 55](https://www.impan.pl/shop/en/publication/transaction/download/product/112758) · [Moser, Theorem B and §3.2](https://www.numdam.org/article/STNG_1979-1980__8__A3_0.pdf) · [Hart, Harvey and Ong, Irregular primes to two billion](https://arxiv.org/abs/1605.02398) · [Jakubec, real octic fields of prime conductor of the form \(n^4+16\)](https://dml.cz/handle/10338.dmlcz/107512)

## Specialization at the actual weights

There is one prime above \(p\) in \(K\), and it is principal, generated by the norm of \(1-\zeta_p\) from the full cyclotomic field. Since \(p\equiv1\pmod8\), the tame group ring of the degree-eight group splits into eight characters over \(\mathbb Z_p\). The base \(p\)-class group has order at most \(p\), and its nonfaithful components vanish by norm and extension from \(F\). Thus at most one faithful character has nonzero class component. Lim's Corollary 4.3 identifies the rank of \(G_m[p]\) with the rank on the prescribed \(\omega^{-2m}\)-component. At all weights on the other characters the whole group vanishes. On the possible active character the full finite primary group is cyclic. For \(p\mid m\), the first two torsion layers factor through the same tame field because \((1+p)^{2m}\equiv1\pmod{p^2}\). The strict-group identification with characters of its class group bounds both layers by \(p\); a cyclic group of order \(p^2\) or more would already exhibit \(p^2\) elements in the second layer. This proves the full bound at these weights. [Lim, On the structure of even K-groups of rings of algebraic integers, v2, Corollary 4.3](https://arxiv.org/pdf/2210.00168v2#page=9) · [Strict descent at finite depth](AlpogeScalarSelmerBudget.md)

For greater precision, fix the possible active character. The norm-compatible inverse limit of the split \(p\)-class groups of \(K\) in its cyclotomic tower, projected to this character, is a finitely generated module \(X\) over \(\Lambda=\mathbb Z_p[[T]]\). Write \(T=\gamma-1\), with the principal cyclotomic character of the chosen generator equal to \(1+p\). The control identities give
\[
  X/TX\simeq\mathbb F_p,\qquad
 (G_m)_{p^\infty}\text{ has the same elementary divisors as }
 X/(T-t_m)X,\quad t_m=(1+p)^{-2m}-1.
\]
For the first equality, passing to the maximal abelian quotient at the bottom level divides by \((\gamma-1)X\). The decomposition section from the totally ramified single prime over \(p\) is killed to impose splitting there. For the second, strict cohomology restricts to equivariant characters of the split class module; the residual scalar on tame inertia is nontrivial globally and locally. Averaging on that prime-to-\(p\) tame group kills inflation and transgression. Equivariance imposes the indicated cyclotomic scalar. These are the integral strict-group control statements, including the local conditions at \(p\). [Integral control proof and twist convention](AlpogeSelmerTowerControl.md) · [Iwasawa, On \(\mathbb Z_l\)-extensions of algebraic number fields, Annals 98 (1973)](https://annals.math.princeton.edu/1973/98-2/p04)

Nakayama gives \(X=\Lambda/J\) since \(X/(p,T)X\) has dimension one. Evaluation at zero sends \(J\) onto \(p\mathbb Z_p\). Choose \(f(T)\in J\) with \(v_p(f(0))=1\). If \(f'(0)\equiv0\pmod p\), then \(v_p(f(t_m))=1\) at every weight, so the full length is one. The lower bound follows by reduction modulo \((p,T)\).

If \(f'(0)\) is a unit, Hensel lifting gives a root \(\alpha\in p\mathbb Z_p\), of valuation one since \(v_p(f(0))=1\). In \(\Lambda\), \(f(T)=(T-\alpha)g(T)\) with \(g(0)\equiv f'(0)\pmod p\), so \(g\) is a unit. Division here follows termwise from the differences \(T^i-\alpha^i\), since powers of \(\alpha\) tend to zero. It follows that \(X\) is \(\mathbb Z_p/p^k\) for some \(k\ge1\), or \(\mathbb Z_p\) with the convention \(k=\infty\); in both cases \(T\) acts by \(\alpha\). Define \(s=-\log(1+\alpha)/(2\log(1+p))\in\mathbb Z_p^\times\). For each positive weight on this tame character the full length is
\[
             \min\{k,\;1+v_p(m-s)\}.
\]
Indeed the \(p\)-adic log preserves valuations on principal units at odd \(p\), and \(X/(T-t_m)X\) is the scalar quotient. We use \(v_p(0)=\infty\); finiteness of the K-group prevents an infinite specialization. In particular at most one class of \(m\bmod p\) on the single active character can have length greater than one. This deduction uses the order of the *whole* tame class component, without any stabilization assumption on the next tower layer.

## A sum of full orders on a density-one set of weights

Fix \(B\ge2\). Only primes \(p\le16B+1\) can occur in the octic sum for \(m\le B\). At one prime the single active tame branch, if present, occupies a progression of step \(d=(p-1)/2\), of length \(n\le 1+2B/(p-1)\). In the case with a parameter \(s\), choose an index \(j\) with maximal \(v_p(m_j-s)\) in that progression. For \(i\ne j\), the ultrametric inequality gives
\[
 v_p(m_i-s)\le v_p(m_i-m_j)=v_p(i-j)
\]
since \(d\) is a \(p\)-unit. If \(v_p(m_j-s)=\infty\) the same argument applies. At indices \(0,\ldots,n-1\) the product of gaps from \(j\) is \(j!(n-1-j)!\), a divisor of \((n-1)!\). Thus all other full lengths sum to at most \(n-1+v_p((n-1)!)\le 2n\). The constant-length case already has sum \(n\). This removes at most one weight per coefficient prime even if the class tower is unbounded.

Remove the union of these chosen weights for all octic primes. All lengths are nonnegative. The sum of the remaining **full** log-orders is
\[
 \ll\sum_{p\le16B+1}\left(1+\frac{B}{p-1}\right)\log p
 \ll B\log(2B).
\]
The number of removed weights is at most \(\pi(16B+1)\ll B/\log(2B)\). For the elementary estimates, primes between integers \(n\) and \(2n\) divide \(\binom{2n}{n}\le4^n\), which by dyadic summation gives \(\sum_{p\le x}\log p\ll x\). Applying this on dyadic intervals also gives \(\sum_{p\le x}(\log p)/(p-1)\ll\log(2x)\), and splitting the prime count at \(\sqrt x\) proves the bound for \(\pi(x)\).

The same proof on successive disjoint dyadic weight intervals defines a single set with counting complement \(O(B/\log(2B))\) and retained sum \(O(B\log(2B))\) through \(B\). In particular each retained weight has full octic contribution \(O(m\log(2m))\), which fits the scalar source budget. The same specialization and counting argument applies to the preceding order-five class-number bound with \(p\le10B+1\). Combining the two orders by taking the union of their removed sets preserves both estimates. This does not bound the contributions at the removed weights or from the other residual orders. In particular a bound for every positive integer's \(p\)-adic proximity to \(s\), uniform in the coefficient prime, has not been obtained. [Quintic valuation estimate](AlpogeScalarSelmerBudget.md) · [Comparison with the earlier spacing result for general modules](AlpogeSelmerWeightSpacing.md)

## Finite checks and formal scope

At conductors 17 and 401, native PARI/GP 2.17.4 certified all four fields. The quartic and octic class numbers are respectively \((1,1)\) and \((5,45)\), giving relative class numbers 1 and 9. In both cases the unit index \(I\) is eight. The script computes this index as the size of the image of the norm on the quartic unit group modulo signs and squares, using coordinates of the norms of a certified fundamental octic basis. For each of the seven fundamental units \(w\) in each example, \(w/\tau(w)\) is a nontrivial norm-one unit, and the nonzero rational norm of \(1-w/\tau(w)\) is an integer divisible by the conductor. The two examples realize residual order eight at \(m=1,17\) and \(m=25,10025\), respectively. The checks exercise the cases \(p\mid m\) and \(p\nmid m\). They do not exhibit a nonzero conductor-primary component. [Exact PARI/GP checks](../../../scripts/verify_alpoge_octic_selmer.gp)

The accompanying Lean namespace `GRWTSK.AlpogeOcticSelmerBound` proves `reciprocal_pair_bound`, `four_pair_bound`, `four_log_energy`, `regulator_from_indices`, `conductor_log_ratio`, `class_ratio_lt_square`, `octic_valuation_le_one`, `unique_exception_residue`, `at_most_one_closest_index`, and `prime_le_weight_window`. These check the inequalities, local valuation implication and elementary uniqueness and window steps. Native elaboration, a fresh kernel replay of the used dependency closure (10 roots and 13,950 declarations), and transitive axiom audits passed at Lean blob `9779cd620e2b0529bd26022643ba457338cd119d`. The audits returned subsets of `propext`, `Classical.choice`, and `Quot.sound`. The number-field, analytic class number and Iwasawa arguments are manuscript proofs. Their full Lean verification and external independent mathematical review remain outstanding. [Supporting Lean declarations](AlpogeOcticSelmerBound.lean)
