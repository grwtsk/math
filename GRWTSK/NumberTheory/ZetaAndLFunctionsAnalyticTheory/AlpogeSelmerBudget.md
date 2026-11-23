# The strict Selmer term in the main inequality

grwtsk contributors

Let \(E\) be the CM host of an actual row, \(t\) its upper twist endpoint, \(d_E=[E:\mathbb Q]\), and \(S_p=\{w:w\mid p\}\). For a rational prime \(p\) and \(1\le e<t\), put \(A=\mathbb Q_p/\mathbb Z_p(-e)\) and
\[
 \sigma_{p,e}=\operatorname{length}_{\mathbb Z_p}\ker\big(
 H^1(G_{E,S_p},A)\longrightarrow\prod_{w\mid p}H^1(E_w,A)\big).
\]
The source is Levent Alpöge's *A remark*, as archived at revision `40e56bab026552e089d7afcfeff08d2defb9c005`. Cohomology is continuous. The permitted infinite places contribute no positive-degree cohomology because \(E\) is totally imaginary. The source's `VV(p)` sums these lengths over the indicated twists after identification with the row data. The finite-prime-set bound `LinkV_at` is quantified over **every** finite set of rational primes. Its budget is \(C\exp(C\log^2(ntQ_Sqd))\). We retain the actual \(E\), including small ramified primes. [Source definitions, lines 51–114](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/GaloisCohomology/Statement.lean#L51-L114) · [Finite-length identification with the row](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/LevelLetterCocycles/DataN.lean#L64-L67) · [VV](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/LocalRingCardinality/DataParams₂.lean#L238) · [LinkV and finiteness](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/SharpRestriction/GlobalTheoremInputs.lean#L14-L43)

## An integral description for every prime

For \(u=E,E_w\) write \(h_u=\operatorname{length} H^0(u,A)\), and set \(c_{p,e}=\sum_{w\mid p} h_{E_w}-h_E\). The restriction of fixed points to any one local fixed group is injective, hence \(c_{p,e}\ge0\). For \(e>0\),
\[
                 \sigma_{p,e}+c_{p,e}=v_p(|K_{2e}(\mathcal O_E)|).             \tag{1}
\]

Indeed, set \(T=\mathbb Z_p(e+1)\), whose Tate dual is \(A\). Poitou–Tate identifies the kernel of \(H^2(G_{E,S_p},T)\to\bigoplus_{w\mid p}H^2(E_w,T)\) with the Pontryagin dual of the strict \(H^1\) kernel. The cokernel is \(H^0(E,A)^\vee\), and local Tate duality identifies each local \(H^2\) with \(H^0(E_w,A)^\vee\). The compact/discrete form follows by passing from the finite dual pairs \(T/p^j,A[p^j]\) to inverse and direct limits. The finite-coefficient global and local cohomology groups are finite, so inverse systems here are Mittag–Leffler. The cyclotomic bound proved below gives finiteness of the invariant terms. Quillen finite generation and Borel's rank formula give finiteness of \(K_{2e}(\mathcal O_E)\). Quillen–Lichtenbaum in bidegree \((e+1,2)\) identifies its \(p\)-primary part with the global continuous \(H^2\) here. For odd \(p\) this is Lim's Corollary 3.6. For \(p=2\), Kahn's Theorem 1 gives the comparison on \(S_2\)-integers because \(E\) has zero real places. Inverting 2 preserves the 2-primary part by Quillen localization since the adjacent residue-field groups are \(K_{2e}(k_w)=0\) and \(K_{2e-1}(k_w)\) of order \(|k_w|^e-1\), odd. Taking lengths proves \(1\), including genuine finiteness before extracting a natural number from the source's extended length. [Lim, *On the structure of even K-groups*, v2, §3.2 and Cor. 3.6](https://arxiv.org/pdf/2210.00168v2#page=6) · [Kahn, *The Quillen–Lichtenbaum conjecture at the prime 2*, Thm. 1](https://webusers.imj-prg.fr/~bruno.kahn/preprints/QL2.pdf) · [Milne, *Arithmetic Duality Theorems*, I.4.10](https://math.stanford.edu/~conrad/BSDseminar/refs/MilneADT.pdf) · [Corresponding source length formula](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/GaloisCohomology/Statement.lean#L91-L146)

Put \(N=\prod_{1\le e<t}|K_{2e}(\mathcal O_E)|\),
\(W=\prod_{p\mid N}p^{\sum_e\sigma_{p,e}}\),
and \(R=\prod_{p\mid N}p^{\sum_e c_{p,e}}\). Equation (1) gives \(N=WR\). Thus every fixed row has finite support for `VV`. Its maximal weighted finite-set sum is exactly \(\log W\), attained by the prime divisors of \(N\). The individual prime divisors may depend on both the host and the twist.

For any finite extension \(L/\mathbb Q_p\) of degree \(d\), let \(h=\operatorname{length} H^0(L,A)\). If some invariant has order \(p^j\), the cyclotomic image in \(U=(\mathbb Z/p^j)^\times\) has exponent dividing \(e\). Its index in \(U\) is \([L\cap\mathbb Q_p(\mu_{p^j}):\mathbb Q_p]\le d\). The group \(U\) is cyclic for odd \(p\). For \(p=2\), it is a product of a group of order at most two and a cyclic group. Hence its \(e\)-torsion has at most \(2e\) elements in either case. It follows that
\[
 \varphi(p^j)\le 2ed,\qquad p^j\le 2\varphi(p^j)\le4ed .
\]
The invariant group is a subgroup of \(\mathbb Q_p/\mathbb Z_p\), so it is finite cyclic and \(p^h\le4ed\). For \(t\ge1\) put \(M=4td_E\). Only \(p\le M\) can give positive corrections. Each such prime has at most \(d_E\) places above it and contributes at most \(d_E\log M\) per twist. In particular
\[
 0\le\log R\le t M d_E\log M=4t^2d_E^2\log(4td_E).
\]
This estimate includes primes dividing \(2Q_Sqd\). The host embeds in \(\mathbb Q(\mu_{Q_Sqd})\), whence \(d_E\le Q_Sqd\). The displayed polynomial-logarithmic error can therefore be absorbed in \(C'\exp(C'\log^2(ntQ_Sqd))\) with an absolute enlargement of the constant for \(n,t\ge1\). The original uniform bound is equivalent, up to such enlargement, to a uniform bound of this form on **\(\sum_{1\le e<t}\log |K_{2e}(\mathcal O_E)|\)** over the same rows. Finiteness alone supplies no bound uniform in these parameters. [Host cyclotomic embedding](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Development/AutomorphicArithmetic/CyclotomicBounds/ZmodTwoQuadraticNeZero.lean#L48-L77)

## A residual class-group test and a nonzero host example

Write \(M_1=A[p]\), \(F=E(\mu_p)\), \(\Delta=\mathrm{Gal}(F/E)\), and \(C_S(F)=\mathrm{Cl}(\mathcal O_F[1/p])\). The strict \(H^1\) group with coefficients \(M_1\) identifies with
\[
 \operatorname{Hom}_{\Delta}(C_S(F)/p,\mathbb F_p(-e)).
\]
In fact \(|\Delta|\mid p-1\), so inflation–restriction is an isomorphism onto invariants both globally and at each decomposition group. Over \(F\) the coefficients are trivial. Vanishing at all places above \(p\) then picks the abelian characters unramified everywhere and split at these places. Global reciprocity gives exactly the indicated \(S\)-class group.

For completeness, write \(r\) for this Hom dimension, \(b=\dim_{\mathbb F_p}H^0(E,A)/p\), and \(D_w\subset H^1(E_w,M_1)\) for the image of the connecting map on \(H^0(E_w,A)/p\). The exact sequence for multiplication by \(p\) on \(A\) gives
\[
 \dim\mathrm{Sha}(E,A)[p]
 = r + \dim\big(\operatorname{loc} H^1(G_{E,S_p},M_1)\cap\textstyle\bigoplus_w D_w\big)-b.
\]
Here the global classes mapping to \(\mathrm{Sha}[p]\) are exactly the preimage of \(\bigoplus D_w\), and the kernel of that surjection is the image of the global connecting map, of dimension \(b\). For \(p=2\) every \(H^0\) contains the nonzero element of order two, and is finite cyclic by the preceding bound. Thus \(r-1\le\dim\mathrm{Sha}[2]\le r+|S_2|-1\), with \(r=\dim C_S(E)/2\). For odd \(p\nmid Q_Sqd\) with \((p-1)\nmid e\), local unramifiedness gives the full mod-\(p\) cyclotomic image at every \(w\mid p\), so \(b=0\) and all \(D_w=0\). The strict rank is then exactly \(r\). Compare Lim's separate calculation for full even \(K\)-groups using the sign \(-e\) in the idempotent. [Lim, v2, Thm. 4.2 and Cor. 4.3](https://arxiv.org/pdf/2210.00168v2#page=8)

In the archive's `HostExample` take \(s=0,q=11,d=7\). The layer has \(\zeta_4+\zeta_4^{-1}=0\), so \(E=\mathbb Q(\sqrt{-11},\sqrt{-7})\). At \(p=3\) this field is unramified. For every odd \(e\) the preceding argument applies by local unramifiedness itself. In \(F=E(\sqrt{-3})\) the sign eigenspace for \(\mathrm{Gal}(F/E)\) has 3-rank exactly one. To see this, split the 3-primary \(S\)-class group by the eight sign characters of \(\mathrm{Gal}(F/\mathbb Q)\), whose order is invertible at 3. For every subgroup \(H\), extension and norm identify \(H\)-invariants with the 3-primary \(S\)-class group of \(F^H\). The composites are multiplication by \(|H|\) and the sum over \(H\), respectively. The trivial component is zero over \(\mathbb Q\). The four relevant quadratic components are therefore those of discriminants \(-3,33,21,-231\). The first has class number one by Minkowski. For the two real fields, the Minkowski bounds are \(\sqrt{33}/2\) and \(\sqrt{21}/2\). In the first, \((5+\sqrt{33})/2\) has norm \(-2\), so the norm-two prime and its conjugate are principal. In the second, 2 is inert.

For the fundamental discriminant \(-231\), reduced positive forms have \(1\le a\le\lfloor\sqrt{231/3}\rfloor=8\), \(-a\le b\le a\le c\), \(c=(b^2+231)/(4a)\) integral, and \(b\ge0\) when \(|b|=a\) or \(a=c\). Primitivity follows because the discriminant is squarefree. In order of \(a=1,\dots,8\) the respective counts are \(1,2,1,2,2,2,1,1\). Reduction of primitive positive forms identifies these 12 representatives with the ideal classes. The unique prime above 3 is ramified and its square is principal, so inverting 3 leaves the 3-primary subgroup of order three intact. Consequently
\[
 \dim_{\mathbb F_3}\mathrm{Sha}(E,\mathbb Q_3/\mathbb Z_3(-e))[3]=1
 \quad(e\text{ odd}),\qquad
 \sum_{1\le e<t}\sigma_{3,e}\ge\lfloor t/2\rfloor .
\]
The full strict length can be determined for every \(e\equiv3\pmod6\) on this host. The cyclotomic image of \(G_F\) modulo 9 lies in the three-element subgroup of units congruent to 1 modulo 3. Since \(3\mid e\), this subgroup acts trivially on \(A[9]\). The other coset acts through the sign because \(e\) is odd. All global and local fixed points of \(A\) over \(E\) vanish, as they already vanish modulo 3. The multiplication-by-9 exact sequence and the same prime-to-3 descent therefore identify \(\mathrm{Sha}(E,A)[9]\) with \(\operatorname{Hom}_{\Delta}(C_S(F),\mathbb Z/9(-e))\). The sign part of the 3-primary class group has order three, so this Hom has order three. An element of order at least nine in a finite 3-group would generate a subgroup of order nine killed by 9. Thus
\[
                    \sigma_{3,e}=1\qquad(e\equiv3\pmod6).
\]
The lower bound propagates through all the source's layers with this fixed pair of primes. Set \(E_s=E(\zeta_{2^{s+2}}+\zeta_{2^{s+2}}^{-1})\). The degree \([E_s:E]\) is a power of two. Restriction on absolute Galois cohomology is injective on 3-primary classes because its composite with corestriction is multiplication by that degree. Unramified classes outside 3 stay unramified after base change, and zero local classes at 3 restrict to zero. Inflating from the restricted-ramification group to absolute cohomology is injective in degree one. Hence every odd twist of every \(E_s\) has strict length at least one, and each such host has \(\mathrm{VV}(3)\ge\lfloor t/2\rfloor\). The upper bound of one for twists congruent to 3 modulo 6 above applies to the base layer. For the other odd twists the base-layer rank calculation leaves the exponent undetermined. The example specializes the archive's host construction. Its occurrence in an eventual family of rows is a separate hypothesis. A bound uniform across the original rows remains outstanding. [Host definition and example](https://github.com/leanprover-community/riemann-hypothesis/blob/40e56bab026552e089d7afcfeff08d2defb9c005/src/Formalism/FrobeniusOrbits/Statement.lean#L54-L95)

## Formal evidence and dependencies

The companion has namespace `GRWTSK.AlpogeSelmerBudget`. Its `primaryProduct`, `twisted_primary_factorization`, `strict_zero_outside`, `log_primaryProduct` and `finite_budget_iff` establish the integral and weighted finite-sum deductions from (1). The theorems `prime_power_cutoff` and `local_correction_sum_bound` establish the prime-power and summation inequalities from the explicit group-order and local-size bounds. The definition `reduced231` and theorem `count_reduced_231` certify the finite form enumeration by kernel reduction. These are local deductions. The number-field duality, étale comparisons, reciprocity and correspondence between ideal classes and reduced forms used above are analytic mathematical inputs whose integration in Lean is **NOT_RUN**. Independent external review is **NOT_RUN**. [Lean source](AlpogeSelmerBudget.lean)

At Lean source blob `060c3a75a2a37755274282126f2f1cade3109e44` (SHA-256 `15646fe3ff831834b277f35c050243ff5ece005f123c891d4f011441c4596312`), the targeted Lake build and fresh `leanchecker` replay both exited successfully. Transitive `#print axioms` on all nine public declarations returned only `propext`, `Classical.choice` and `Quot.sound`, with only `propext` for `reduced231`.
