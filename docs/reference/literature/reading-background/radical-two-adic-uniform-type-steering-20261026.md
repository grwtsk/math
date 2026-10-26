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
