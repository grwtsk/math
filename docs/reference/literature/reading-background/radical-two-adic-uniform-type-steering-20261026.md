# Uniform arithmetic steering for fixed 2-adic multiplicity types

Local mathematical attribution: **grwtsk contributors**. Date: 2026-10-26.

**Research classification:** Independently derived elementary finite arithmetic and finite reversible operator mathematics. The named GRWTSK modules below are source proof candidates until pinned compilation, fresh kernel checking and full transitive axiom auditing succeed. **NEW Lean declarations NOT_WRITTEN; compilation NOT_RUN; fresh kernel NOT_RUN; transitive axiom audit NOT_RUN.** The prior validation gate [#1267](https://github.com/grwtsk/math/issues/1267) remains open. Main mathematical tracking issue [#1329](https://github.com/grwtsk/math/issues/1329). No force push, no merge or unauthorized remote verification.

## What this proves and does not prove

This note supplies an *actual arithmetic* positive type-mass lower bound for **every fixed 2-adic valuation type**, without assuming the positivity of the type weights. It upgrades the source's finite polynomial inverse-cutoff minorization for a particular coprimality sieve to a **positive cutoff-independent type floor** for each fixed type. It further identifies the exact reversible stationary measure of the repository's **source-dependent dense diagonal kernel**, its universal Doeblin minorization and its uniform spectral gap. Its Markov kernel is dense over coprime survivors; the earlier [local Metropolis odd-path analysis](reversible-radical-sieve-metropolis-20261026.md) is a DIFFERENT operator and can have vanishing gaps with growing cutoff.

This is **not** a global non-blowup theorem for classical 3D Navier–Stokes, a Yang–Mills mass gap, a Grothendieck-to-analytic-C*-K-theory equivalence, an unconditional prime-number theorem, or simultaneous positive density of infinitely many types with one shared fixed lower bound. The source arithmetic only involves the simple sieve of integers coprime to **3** and the exact integer squarefree radical.

## Immutable existing mathematical source pins

Inspected grwtsk/math main commit **709591998452962245618c804c044981c220861a**:

- GRWTSK/GraphSandwichDiffusion.lean — blob **162f66a42b2b3b82483249c86f3305f07abb825a**. Existing fully qualified source declarations in namespace GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel include radicalCoprimeWeight, totalWeight_pos, resetKernel, resetKernel_typeMass_eq_fiber_sum, resetKernel_typeMass_pos_iff_coprime_witness, diagonalEdgeWeight, diagonalKernel, diagonalKernel_edge_iff_certified, diagonalKernel_evolve_succ_ge_inv_two_cutoff_sq, and diagonalKernel_typeMass_succ_ge_inv_two_cutoff_sq. The module defines a genuine source-first row-stochastic finite sieve kernel, but its existing explicit positive-type bound decays with N as 1/(2 N²). It does not already contain the squarefree-progression density or the reversible Doeblin proof in this note.
- GRWTSK/Algebra/KTheory/RadicalCollisionBoundary.lean — blob **ea6491fa07bf72e31a22ee8a4ec83d9d7cceb73c**. Existing declaration GRWTSK.Algebra.KTheory.RadicalCollisionBoundary.twoAdicMultiplicityType n = n.factorization 2, along with the source-only multiplicityOneType_diagonal_complete_and_collision, multiplicityOneType_diagonal_mass_ge_inv_two_cutoff_sq and multiplicityOneType_diagonal_complete_all_positive_steps. This is a **K₀-shaped** no-decoder context, not analytic K₀(C*).
- GRWTSK/Algebra/KTheory/GrothendieckPort.lean — blob **d7a5a42313aec365d7f6bd15d51d74a5a4fb4d8f**. Generic algebraic group completion and joint-observable information-loss boundary, not a constructed analytic assembly map.
- GRWTSK/NumberTheory/Factorization/NaturalRadicalExcess.lean — blob **1392f6a2237cc7af5ebc6d994188900c6e0f4657**; its local radical and logs belong to another typed module and are **not silently substituted** for Mathlib Nat.radical.
- Toolchain leanprover/lean4:v4.33.0, lean-toolchain blob **025e59548e48cf71f2744154e2890beefe30a258**; Mathlib revision **db584cd6d46c92f209a44c0f1c829460d327499d**, lake-manifest blob **1f2e3e2d66253933a410e981eb359a9b454aae0b**.
- Actual pinned Mathlib source **Mathlib/RingTheory/Radical/NatInt.lean**, blob **fa1204627a638b49490459d716d5d33763da30f1** (Nat.radical_pos, radical_eq_prod_primeFactors, radical_le_self_iff); **Mathlib/Data/Nat/Squarefree.lean**, blob **5fd20e08fc8cfde99dd334bf66a3071da498cfc4** (squarefree_iff_prime_squarefree, squarefree_mul, prod_primeFactors_of_squarefree); **Mathlib/RingTheory/Radical/Basic.lean**, blob **2b536c44fb969e0d8284ff5dabc7dcde7acc7b29** (UniqueFactorizationMonoid.radical_pow and radical_mul with prime-coprimality hypothesis). Actual Lean signatures for the forthcoming squarefree arithmetic progression count and 2-adic factorization adapter remain to be checked before writing new code.

## Definitions and the exact arithmetic objective

For cutoff N≥1, on the finite integer scope {1,…,N}, define

\[
w_3(n)=
\begin{cases}
\operatorname{rad}(n),&\gcd(n,3)=1,\\
0,&3\mid n,
\end{cases}
\qquad
Z_N=\sum_{n=1}^N w_3(n)>0,
\qquad
\pi_N(n)=w_3(n)/Z_N.
\]

The positivity of Z_N follows already from the fact that n=1 has weight 1, matching ArithmeticSieveKernel.totalWeight_pos.

For integer r≥0 let

\[
T_r(N)=\{1\le n\le N:v_2(n)=r\},
\qquad
\pi_N(T_r)=Z_N^{-1}\sum_{n\in T_r(N)}w_3(n),
\]

where v₂(n) is the exponent of prime 2 in positive integer n. This is the actual existing twoAdicMultiplicityType, not an invented congruence or merely the Boolean v₂=1 label.

## Theorem A — many squarefree integers in an explicit coprime progression

**Statement.** For every integer k≥192, at least k/2 of the k integers

\[
m_j=6j+1,\qquad k\le j<2k,
\]

are squarefree. All these integers are odd, coprime to 3, and satisfy 6k<m_j<12k.

**Proof.** If one of these m_j is not squarefree, some prime p≥5 has p² dividing m_j: the primes 2 and 3 are excluded by m_j≡1 (mod 6). Since gcd(6,p²)=1, the congruence 6j+1≡0 (mod p²) determines one residue class of j modulo p². In an interval of k consecutive integers it occurs at most k/p²+1 times. Necessarily p²<12k. Hence the count of non-squarefree m_j is at most

\[
k\sum_{\substack{p\ge5\\p\text{ prime}}}p^{-2}
+\#\{p\ge5:p^2<12k\}
\le k\sum_{n=5}^{\infty}n^{-2}+\sqrt{12k}
\le k/4+\sqrt{12k}.
\]

The last series bound is elementary integral comparison:
\(\sum_{n=5}^\infty n^{-2}\le\int_4^\infty x^{-2}dx=1/4\).
For k≥192, \(\sqrt{12k}\le k/4\). Thus the bad count is ≤k/2 and at least k/2 are squarefree. There is no appeal to the prime-number theorem or to a deep squarefree density theorem.

## Theorem B — unconditional cutoff-independent mass for each fixed 2-adic type

**Statement.** With the exact weights above:

\[
\boxed{\pi_N(T_0)\ge1/32\qquad(N\ge2304)}
\]

and, **for each fixed integer r≥1**,

\[
\boxed{\pi_N(T_r)\ge\frac{1}{16\cdot4^r}
\qquad(N\ge2304\cdot2^r).}
\]

**Proof.** Fix r≥0 and N≥2304·2^r, and put \(k=\lfloor N/(12\cdot2^r)\rfloor\), so k≥192 and
\(12\cdot2^r k\le N<12\cdot2^r(k+1)\).

For every squarefree \(m_j=6j+1\) from Theorem A, take \(n_j=2^r m_j\). Then \(n_j\le12\cdot2^rk\le N\), gcd(n_j,3)=1, and **v₂(n_j)=r** because m_j is odd. These k/2 or more n_j are distinct and are actual sieve survivors.

For r=0, squarefreeness gives rad(n_j)=m_j>6k, so the unnormalized weight of T₀ is at least \(3k^2\). For r≥1, the prime factors of 2^r m_j are exactly 2 and those of m_j, so rad(n_j)=2m_j>12k; total type-r weight is at least \(6k^2\).

On the other hand, \(\operatorname{rad}(n)\le n\) for all positive n and the excluded multiples of 3 only decrease the normalizer. Thus

\[
Z_N\le\sum_{n=1}^Nn=\frac{N(N+1)}2
\le72\cdot4^r(k+1)^2.
\]

Therefore

\[
\pi_N(T_0)\ge\frac1{24}\left(\frac{k}{k+1}\right)^2
\quad(r=0),
\qquad
\pi_N(T_r)\ge\frac1{12\cdot4^r}
\left(\frac{k}{k+1}\right)^2
\quad(r\ge1).
\]

Since k≥192, \((k/(k+1))^2\ge3/4\), proving the displayed explicit constants. This is **true arithmetic type mass** and not a diffusion hypothesis.

**Finite declared type vocabulary.** For every integer R≥1, the first R+1 exact labels v₂∈{0,…,R} have a COMMON positive stationary-reference mass floor

\[
\boxed{\min_{0\le r\le R}\pi_N(T_r)\ge\frac1{16\cdot4^R}
\qquad(N\ge2304\cdot2^R).}
\]

This is a positive lower bound for a fixed finite *vocabulary* of types, not for all infinitely many exact valuations at one cutoff. Indeed a uniform-in-r positive bound across arbitrarily many disjoint nonempty type classes is impossible by total mass one.

## Theorem C — the actual source-dependent diagonal kernel is reversible and uniformly Doeblin

The existing source defines the (source-first) diagonal-biased raw edge weight as \( (1+\mathbf 1_{x=y})\,w_3(y)\). Its row normalizer is therefore \(Z_N+w_3(x)\), and its exact transition is

\[
K_N(x,y)=\frac{w_3(y)(1+\mathbf1_{x=y})}{Z_N+w_3(x)}.
\]

Put \(w_x=w_3(x)\), \(Z=Z_N\), \(U=\sum_xw_x^2\) and \(C=Z^2+U>0\). Then the **explicit stationary probability**

\[
\boxed{\rho_N(x)=\frac{w_x(Z+w_x)}{C}}
\]

is normalized and satisfies **detailed balance**:

\[
\rho_N(x)K_N(x,y)
=\frac{w_xw_y(1+\mathbf1_{x=y})}{C}
=\rho_N(y)K_N(y,x).
\]

The zero-weight excluded integers have \(\rho_N=0\); all reversible Hilbert-space and first-excitation spectral statements below are on the **positive-weight survivor space** \(S_N^+=\{x:w_x>0\}\), not on an incorrectly assumed strictly positive full-scope measure.

Let \(w_{\max}=\max_xw_x\) and

\[
\delta_N=\frac{Z}{Z+w_{\max}}\in(0,1].
\]

Since \(w_{\max}\le Z\), \(\delta_N\ge1/2\), and for all source/target states

\[
\boxed{K_N(x,y)\ge\delta_N\,\pi_N(y).}
\]

This is a **real, proved-on-paper Doeblin minorization for the existing source-dependent diagonal kernel**, not an artificial restart or an extra axiom. It supplies a strictly positive transition mass for each actual coprime sieve state, but it still does not turn the old unrelated seed candidate graph into certified edges.

For any initial probability \(P_0\), every n≥1 and every type T,

\[
P_0K_N^n(T)\ge\delta_N\pi_N(T).
\]

Moreover, by writing K as \(\delta_N\mathbf1\pi_N+(1-\delta_N)R\) for a row-stochastic nonnegative remainder, total variation contracts:

\[
\boxed{\operatorname{TV}(P_0K_N^n,\rho_N)
\le(1-\delta_N)^n\operatorname{TV}(P_0,\rho_N)
\le(1-\delta_N)^n.}
\]

Each step uses the same finite kernel K; a changing-kernel claim would require extra hypotheses.

## Theorem D — exact weighted Dirichlet form and a cutoff-uniform spectral gap

For every real function f on positive-weight survivors, detailed balance and the row sums give

\[
\mathcal E_{\rho_N}(f)
=\langle f,(I-K_N)f\rangle_{\rho_N}
=\frac1{2C}\sum_{x,y}w_xw_y(f_x-f_y)^2
=\frac{Z^2}{C}\operatorname{Var}_{\pi_N}(f).
\]

Since
\[
\frac{\rho_N(x)}{\pi_N(x)}
=\frac{Z(Z+w_x)}{C}
\le\frac{Z(Z+w_{\max})}{C},
\]
the variational definition of weighted variance implies
\(\operatorname{Var}_{\rho_N}(f)
\le[Z(Z+w_{\max})/C]\operatorname{Var}_{\pi_N}(f)\).
Consequently

\[
\boxed{
\mathcal E_{\rho_N}(f)\ge
\frac{Z}{Z+w_{\max}}\operatorname{Var}_{\rho_N}(f)
=\delta_N\operatorname{Var}_{\rho_N}(f).}
\]

The first positive eigenvalue of the reversible operator \(I-K_N\) on its positive-weight survivor space thus satisfies

\[
\boxed{\lambda_1(I-K_N)\ge\delta_N\ge1/2.}
\]

This theorem has **a stronger conclusion than a finite-specific positive gap**. It is uniform over all cutoffs N and arises because the diagonalKernel is DENSE and satisfies a Doeblin minorization. It does not transfer to the **sparse local Metropolis path kernel** of the preceding source note.

All eigenvalues of K_N on its positive-weight reversible space are nonnegative: direct expansion gives

\[
\langle f,K_Nf\rangle_{\rho_N}
=\frac1C\left[
\Bigl(\sum_xw_xf_x\Bigr)^2+\sum_xw_x^2f_x^2
\right]\ge0 .
\]

Together with stochasticity/reversibility this places the eigenvalues in [0,1]. For at least two surviving states, \(0<\lambda_1(I-K_N)\le1\).

## Theorem E — explicit asymptotic steering and spectral improvement with cutoff

The squarefree progression also supplies a **quadratic lower bound for the true sieve normalizer**. For N≥2304, let \(k=\lfloor N/12\rfloor\ge192\). Theorem A with r=0 yields \(Z_N\ge3k^2\). Since \(k\ge N/13\) for N≥156, and \(w_{\max}\le N\),

\[
Z_N\ge\frac{3N^2}{169},
\qquad
\boxed{\delta_N\ge\frac{3N}{3N+169}.}
\]

For every initial probability P0 and n≥0,

\[
\boxed{\operatorname{TV}(P_0K_N^n,\rho_N)
\le\left(\frac{169}{3N+169}\right)^n}
\qquad(N\ge2304).
\]

In particular the nonzero spectral height \(\lambda_1(I-K_N)\) tends to **1 from below** as N→∞ (it lies between the displayed lower bound and 1). This is a genuine uniform finite Markov spectral theorem about the **dense source-dependent sieve kernel**, not a continuum Navier–Stokes or Yang–Mills spectral theorem.

**Uniform positive arithmetic steering.** Combine Theorems B and C. For any initial probability, every positive integer time n and all N satisfying the corresponding type cutoff:

\[
\boxed{
(P_0K_N^n)(T_0)\ge1/64\quad(N\ge2304),}
\]

\[
\boxed{
(P_0K_N^n)(T_r)\ge\frac1{32\cdot4^r}
\quad(r\ge1,\ N\ge2304\cdot2^r).}
\]

The same lower bounds hold for the stationary distribution \(\rho_N\) since it is stationary and the Doeblin bound applies. For a fixed finite required vocabulary \(\{0,\ldots,R\}\) with R≥1 and \(N\ge2304\cdot2^R\), every required class gets mass at least \(1/(32\cdot4^R)\) after each positive step. This establishes a genuine finite-vocabulary weighted-sieve **type completeness and asymptotic steering theorem** for the stated arithmetic source. It is stronger than a hypothesis that eventually assigns a type positive mass; the arithmetic witness and operator minorization are both supplied mathematically.

## The radical / K₀-shaped information-loss boundary remains

For any squarefree m≡1 (mod 6), the integers \(2^r m\) and \(2^{r+1}m\), r≥1, share radical \(2m\) but have different v₂ values. As the sieve scope grows, BOTH exact types have positive weighted probability, yet a decoder using only the integer radical or a K₀-shaped feature that factors through it cannot reconstruct the exponent. The existing radical-collision no-decoder source is a separate observation theorem, not disproved by type-positive diffusion.

The type-vocabulary parameter R is necessarily finite for a **common** positive lower bound. For the whole infinite set of exact 2-adic multiplicities a fixed positive uniform floor would force total mass to exceed one. Even for each fixed r, nothing here proves uniform positive density for every other arithmetic type (such as primes, irreducible ideals, prime pairs or solutions to global PDEs).

## Executed bounded arithmetic and finite operator preflight

**ACTUALLY EXECUTED (not a Lean/kernel receipt):**

1. Python standard-library Fraction and elementary integer squarefree checks, exit **0**. For k in {192,193,256,384}, the counts of squarefree 6j+1 in j=k,…,2k−1 were {172,173,232,351}, each ≥k/2.
2. Python exact integer radical-sieve weights for r=0,1,2,3,4,5 at respective threshold N=2304·2^r, exit **0**. The exact stationary-reference type mass fractions met the displayed bounds for all six cases. For r=2, N=9216, the exact reference weight numerator was 1,620,864 and Z_N was 21,783,040, far above the conservative lower bound 1/256.
3. Python exact Fraction checks for the actual source diagonalKernel at q=3, N∈{2,3,4,6,9,12,24}, exit **0**. Verified all row sums, exact \(\rho_N\), detailed balance and the source-row Doeblin lower bound against \(\delta_N\pi_N\). Numerical eigenvalues of the EXACT rational matrices (via numpy symmetric eigvalsh, finite evidence only) were nonnegative, and each computed positive spectral gap exceeded \(\delta_N\). These checks do not justify extrapolation to arbitrary N or kernel acceptance; Theorems A–E provide the general paper-and-pencil proofs.

**Negative controls:** The original source seedInventory has an empty certified edge relation. The diagonally biased arithmetic kernel and the reset kernel operate in separately supplied, internally certified arithmetic support; these statements do not promote candidate relations to semantic certificates. The sparse path Metropolis chain has a separate source/operator identity and can have gap tending to zero with the cutoff. The actual local source-based diagonalKernel stationary measure is \(\rho_N\), **not** \(\pi_N\); they are pointwise comparable but not identical. An arbitrary signed Möbius or von Mangoldt weight is not a Markov probability without a separate nonnegative encoding.

## Smallest future Lean proof chain and verification boundary

After the previous source validation gate #1267 has been resolved, use the existing subject taxonomy rather than creating a new numerical or mathematical root. First add a **pure arithmetic squarefree-progression count** lemma (k≥192, at least k/2 witnesses 6j+1), preserving exact primality/squarefree/coprime hypotheses. Then specialize to actual Nat.radical and the existing twoAdicMultiplicityType n=n.factorization 2, deriving Theorem B and Z_N≥3N²/169 without postulated sieve asymptotics. Next establish the explicit diagonalKernel transition formula, reversible stationary probability, finite Dirichlet energy equality, Doeblin minorization and its exact type-mass consumer. The published RootHeatState/GraphSandwichDiffusion existing mass preservation and type-support lemmas may be reused **only after their own Lean compilation and axiom auditing**, not from this note alone.

For future paper-derived formal source, update the canonical paper-to-formalization-references.md with original upstream authors/versions, actual hypotheses, fully qualified new declarations, source commits/blobs, real receipts/NOT_RUN and missing mathematical bridges. The present squarefree bound is independent elementary mathematics, not a theorem imported from Tao or Hastings.

**Current receipt status:** new Lean source NOT_WRITTEN; source elaboration NOT_RUN; module/root compilation NOT_RUN; fresh kernel checking NOT_RUN; full transitive axiom audit NOT_RUN. No remote workflows dispatched, no force pushes or merges. Future effectful verification logs and receipts belong in grwtsk/noeaaeue outside math.


---

## Bounded successor — Positive collision density forces persistent radical-only decoding error (2026-10-26)

**Attribution:** grwtsk contributors. **Novel mathematical status:** complete elementary finite counting/Markov/information-theory proofs below, **NOT new Lean declarations**, **NOT an imported Tao theorem**, and **NOT kernel-accepted GRWTSK mathematics**. This section strengthens the existing *existential* radical K0-shaped no-decoder theorem by a **cutoff-independent quantitative misclassification floor**. It is genuinely different from the concurrently added positive type-mass and pointwise eventual type-coverage source. Gate #1267 remains OPEN; no dependent mathematical Lean source added.

### Pinned existing declarations, precise objects and trust boundary

Source inspected at immutable grwtsk/math main **f4155d626ba567822d4a3a7df8ad9474cb08185d**:

- GRWTSK/GraphSandwichDiffusion.lean, blob **7d861591c9721a85819f291aac5178fffd29101a**. Existing GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel.radicalCoprimeWeight, .scope, .totalWeight, .diagonalEdgeWeight, .diagonalKernel, .diagonalKernel_typeMass_succ_ge_inv_two_cutoff_sq, .certifiedArithmeticInventory; exact matrix entries follow by expanding definitions, not by assuming another kernel.
- GRWTSK/Algebra/KTheory/RadicalCollisionBoundary.lean, blob **b5ffd382ebf12afc5bf8718733dcf7da2391c19c**. Existing GRWTSK.Algebra.KTheory.RadicalCollisionBoundary.twoAdicMultiplicityType, .multiplicityOneType, .no_exact_multiplicityOneType_decoder_on_certified_sieve and .twoAdicMultiplicityType_buffered_eventually_pos source theorem family. The last concerns a DIFFERENT buffered kernel, and the earlier no-decoder result does not supply a positive Bayes-error probability bound.
- GRWTSK/Algebra/KTheory/GrothendieckPort.lean, blob **d7a5a42313aec365d7f6bd15d51d74a5a4fb4d8f**. Generic group completion is K0-SHAPED, not a constructed analytic K0(C*) class.
- Lean v4.33.0 / Mathlib db584cd6d46c92f209a44c0f1c829460d327499d. No executed Lean compile, fresh kernel replay or transitive axiom audit is available for these new mathematical results.

Fix modulus 3 and integer cutoff \(N\ge1\). On the finite full state set \(S_N=\{1,\ldots,N\}\), write
\[
w_N(n)=\mathbf1_{\gcd(n,3)=1}\operatorname{rad}(n),\quad
Z_N=\sum_{n\le N}w_N(n)>0,\quad
\pi_N(n)=w_N(n)/Z_N.
\]
The fine Boolean label is \(c(n)=\mathbf1_{\nu_2(n)=1}\), precisely the existing multiplicityOneType. The observable \(h(n)=\operatorname{rad}(n)\), or \(h_K(n)=(\operatorname{rad}(n),\mathrm{kZeroRadical}(\mathrm{lift},n))\), cannot separate powers. **An observation may also be any deterministic function of h; it cannot add lost exponent information.**

### Theorem F — a positive density of indistinguishable opposite-type pairs

For **every cutoff \(N\ge9216\)**, put \(k=\lfloor N/48\rfloor\ge192\) and let
\[
G_k=\{m_j=6j+1:\ k\le j<2k,\quad m_j\ {\rm squarefree}\}.
\]

By the elementary squarefree progression count proved earlier in this file, \(|G_k|\ge k/2\). Each \(m\in G_k\) is odd and coprime to 3, and \(4m<48k\le N\). Thus **both** integers \(x_m=2m,y_m=4m\) lie in the actual arithmetic sieve scope and
\[
h(x_m)=h(y_m)=2m,\quad
w_N(x_m)=w_N(y_m)=2m,\quad
c(x_m)=1,\ c(y_m)=0.
\]
All pairs are disjoint, and distinct m give distinct radical labels 2m.

For **every** deterministic decoder \(d\) that sees only \(h(n)\), the error under \(\pi_N\) is bounded below by the stationary-reference weight of one member of each indistinguishable pair:
\[
\operatorname{Err}_{\pi_N}(d)
:=\sum_{n=1}^N\pi_N(n)\mathbf1_{d(h(n))\ne c(n)}
\ge\frac1{Z_N}\sum_{m\in G_k}2m.
\]

Proof: for each pair, the decoder returns the SAME value on 2m and 4m but the true types are opposite; it misclassifies at least one. Both members have the same positive mass 2m/Z_N. Disjointness allows the pair lower bounds to be summed.

Since every \(m>6k\) and \(|G_k|\ge k/2\), \(\sum_{m\in G_k}2m>6k^2\). On the other hand, \(Z_N\le N(N+1)/2<1152(k+1)^2\) because \(N<48(k+1)\). Therefore
\[
\boxed{
\operatorname{Err}_{\pi_N}(d)>
\frac1{192}\left(\frac{k}{k+1}\right)^2
\ge \frac1{256},\qquad N\ge9216.
}
\]
The final weak inequality is elementary for k≥192. The bound is uniform in **N**, not in all possible arithmetic classifiers or non-radical observations.

For the paired K0-shaped feature h_K, the same theorem holds because its second coordinate definitionally factors through Nat.radical. This is an explicit probabilistic strengthening of a generic no-exact-type-decoder obstruction. It does NOT constrain a genuine analytic K0 class that independently contains exponent-sensitive information.

### Theorem G — exact strong lumpability of the existing source-dependent diagonal kernel

The actual GRWTSK source-dependent transition has entries
\[
K_N(x,y)=\frac{w_N(y)(1+\mathbf1_{x=y})}{Z_N+w_N(x)}
\]
in SOURCE-FIRST convention. On finite \(S_N\), \(w_N(x)\) factors through the radical: if h(x)=h(x′), then x and x′ have identical prime support, hence the same coprimality-to-3 status and \(w_N(x)=w_N(x′)\).

For a coarse radical \(a\in h(S_N)\), let \(v_a=w_N(x)\) for any x with h(x)=a (well-defined); let \(W_b=\sum_{y:h(y)=b}w_N(y)\). Summing the fine row over all targets of coarse radical b gives
\[
\boxed{
\overline K_N(a,b)=
\frac{W_b+v_a\,\mathbf1_{a=b}}{Z_N+v_a}.
}
\]

The RHS depends on x **only through a=h(x)**, so K_N is strongly lumpable with respect to h. It is nonnegative, row-stochastic since \(\sum_bW_b=Z_N\), and it gives an exact intertwiner between fine and coarse Markov distributions.

**This is a genuine special-case positive answer to the earlier general lumpability criterion**, and is distinct from the odd-integer *local Metropolis path*, for which coarse radical lumpability can fail. It does not repair type decoding: exact radical evolution says nothing about prime exponents hidden inside each radical fiber.

### Theorem H — uniform decoding-error floor after any positive diffusion step

Let \(w_{\max}=\max_{x\in S_N}w_N(x)\) and
\[
\delta_N=\frac{Z_N}{Z_N+w_{\max}}\ge\frac12.
\]
The row-wise Doeblin minorization from the preceding mathematical proof yields, for every x,y∈S_N,
\[
K_N(x,y)\ge\delta_N\pi_N(y).
\]
Consequently for any initial probability \(P_0\), any integer \(t\ge1\), and any fine state y, \(P_t(y)\ge\delta_N\pi_N(y)\). For every radical-only deterministic decoder d, the pair argument gives
\[
\boxed{
\operatorname{Err}_{P_t}(d)\ge
\frac{\delta_N}{Z_N}\sum_{m\in G_k}2m
\ge\frac{\delta_N}{256}
\ge\frac1{512}
\quad(t\ge1,\ N\ge9216).
}
\]

Moreover, the earlier direct arithmetic normalization bound \(Z_N\ge3N^2/169\), \(w_{\max}\le N\) gives
\[
\operatorname{Err}_{P_t}(d)\ge
\frac{3N}{256(3N+169)}.
\]
This shows that the persistent **single-snapshot** decoding-error floor is unaffected by the speed of coarse Markov mixing. It is not a theorem that arbitrary INITIAL priors remain ambiguous when a decoder also knows their individual fine input identity.

### Theorem I — even a complete finite radical-observation history does not decode the hidden type in stationarity

The actual diagonal kernel is reversible for
\[
\rho_N(x)=\frac{w_N(x)(Z_N+w_N(x))}
{Z_N^2+\sum_zw_N(z)^2}.
\]
This measure is supported on the positive-weight survivors, and is stationary. Its reversible time-reversed kernel equals the forward K_N on this support.

For a stationary fine Markov chain \(X_0,\ldots,X_T\) and any observation index \(0\le s\le T\), **the conditional joint law of the entire observed radical history**
\[
(h(X_0),\ldots,h(X_T))\mid X_s=x
\]
depends on x only through h(x). Proof: conditioned on X_s=x, forward and backward chain portions are independent; the forward and reversed transition kernels are both K_N by detailed balance, and BOTH are strongly lumpable by Theorem G. Thus coarse past and future carry no further information about fine x once its present radical is known.

Hence for any deterministic or randomized classifier \(d\) of the fine Boolean type \(c(X_s)\) from the **entire** observed radical path, its best possible error equals the Bayes-optimal error obtained from h(X_s) alone. The posterior does not become exponent-faithful through temporal observation.

The same concrete pair proof gives for **every finite T and s**:
\[
\boxed{
\Pr[d(h(X_0),\ldots,h(X_T))\ne c(X_s)]
\ge \frac{\delta_N}{256}\ge\frac1{512}
\quad(N\ge9216).
}
\]

**Alternative finite proof avoiding conditional independence:** define an involution σ of the full finite scope that swaps each selected pair 2m↔4m (m∈G_k), fixing all other states. It preserves w_N, \(\rho_N\), K_N under simultaneous state relabeling and every coarse radical label. Each pair of fine paths related by σ has equal stationary path probability and identical radical-observation history, but has opposite fine Boolean type at time s whenever X_s is a selected pair state. Thus the decoder necessarily errs on at least the stationary mass of one side of all selected pairs. This argument makes the information-loss obstruction independent of any asymptotic mixing-rate calculation.

**Scope:** A full trajectory of MORE informative observables or a separately type-faithful sensor could separate these states. This is a theorem about the specified radical-only observations and any K0-shaped data factoring through them, not a universal impossibility of physical/arithmetic type identification.

### Executed exact arithmetic preflight and evidence boundary

In-session Python 3 standard-library Fraction and integer sieve checks, exit **0**:
- N=9216,12288,18432, with k=N//48=192,256,384; squarefree witness counts 172,232,351, confirming each count≥k/2. Exact full-scope normalizers Z were 21,783,040; 38,666,044; 87,101,022 respectively.
- The selected-pair reference masses were exactly 29557/1089152, 267320/9666511 and 403615/14516837, respectively; all exceed the analytical floor 1/256. The full optimal snapshot Boolean decoder using the radical feature had errors approximately 0.07672437, 0.07747082 and 0.07745291 under π_N and 0.07671461, 0.07746347 and 0.07744802 under stationary rho_N; these values are finite evidence ONLY.
- Verified strong lumpability **exactly** by rational summation of EVERY coarse destination fiber from EVERY fine source for N=12,24,48; and verified stationarity/detailed balance of rho.
- For stationary N=12, enumerated all 12^(T+1) fine paths for T=0,1,2 using exact Fractions. The Bayes-optimal Boolean error given the entire radical observation sequence was exactly 7/159, equal to the error given only the radical observed at the classified time s (checked for s=0 and s=T). This is a finite control for Theorem I, not a Lean proof.
- Verified the inequalities between actual Bayes errors, positive pair masses and the uniform lower bound, all by exact integers/Fractions.

No Lean compilation, kernel checking, or axiom audit was run; tests do not substitute for source formalization. The squarefree counting proof itself remains a new paper-and-pencil result pending formalization.

### Next exact Lean chain after the validation gate clears

1. In the EXISTING arithmetic source taxonomy, prove the independently counted squarefree progression pair supplier and injective disjoint pair map m→(2m,4m) at cutoff N≥9216.
2. Reuse the source's existing multiplicityOneType and radical-factored K0 port; prove the generic finite **pair-collision misclassification lower bound** with an explicit probability weight and *all* deterministic decoders. This requires no Markov machinery.
3. Establish the **exact coarse radical lumpability of the existing diagonalKernel**, using the above row-fiber formula and actual finite scope (including zero-weight excluded multiples of 3). No arbitrary generic K0 observation is presumed lumpable without a feature-preserving hypothesis.
4. Then combine the already-pending diagonal Doeblin inequality with the pair lower bound to certify 1/512 error for all positive finite times. Prove reversibility/stationary history symmetry separately, and audit any conditional probability API before attempting Theorem I.
5. For any new mathematical Lean source, pin its OWN immutable commit/blob, imports, exact hypotheses and new declarations; compile leaf and root only as authorized, fresh kernel replay and transitive #print axioms; store genuine execution receipts outside math in grwtsk/noeaaeue. Do not transfer static source or old TOML verification to a new blob.

**Unresolved larger bridges:** This does not prove type completeness for all arithmetic types, prime-counting conjectures, classical 3D Navier–Stokes global regularity, physical 4D Yang–Mills mass-gap existence, or an analytic K0/KK interpretation of the K0-shaped group completion. The mathematics establishes that even actual positive fine type mass and rapid reversible diffusion can coexist with a strictly positive, cutoff-uniform radical-observation error.
