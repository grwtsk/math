# Finite Euler products with a closed cutoff

Let $R$ be a commutative ring, $f : \operatorname{ArithmeticFunction}(R)$ a multiplicative arithmetic function, and $N\in\mathbb N$. Write
\[
P_N=\{p\le N:p\text{ prime}\},\qquad q(S)=\prod_{p\in S}p.
\]
The Möbius coefficients below are integers cast into $R$. The exact identity is
\[
\prod_{p\in P_N}(1-f(p))
=\sum_{n=1}^{N}\mu(n)f(n)
+\sum_{\substack{S\subseteq P_N\\N<q(S)}}\mu(q(S))f(q(S)).
\]
`finite_euler_product_cutoff` retains every signed subset term. The finite prefix is closed: a product equal to $N$ belongs to the prefix. The remainder uses the strict inequality $N<q(S)$, so it does not count the touching product again. No order on $R$, nonzero-weight assumption, or growth estimate is required.

The identity includes $N=0$. Then $P_0$ is empty, the product is $1_R$, and the finite prefix is zero. The empty subset has product $q(\varnothing)=1$, which is above zero, and contributes $\mu(1)f(1)=1_R$. `finite_euler_product_cutoff_zero` states that the complete zero-cutoff remainder equals $1_R$.

## Proof

`prime_subset_weight` identifies $\prod_{p\in S}(-f(p))$ with $\mu(q(S))f(q(S))$: distinct primes are pairwise coprime, both arithmetic functions are multiplicative, and $\mu(p)=-1$ for a prime. Mathlib's finite product expansion then supplies one term for every subset of $P_N$.

`born_prime_subset_sum` reindexes precisely those subsets with $q(S)\le N$. The inverse map sends a squarefree integer to its finite set of prime factors. These primes are at most the integer and hence at most $N$. Nonsquarefree integers contribute zero. This reindexing theorem needs no multiplicativity hypothesis on $f$. Splitting the complete subset sum into $q(S)\le N$ and $N<q(S)$ gives the displayed identity.

The remainder may vanish, and an individual weighted term may be zero. These algebraic identities supply no asymptotic cancellation estimate. The existing [complex product and Laplace correction](Laplace/finite-product-debt.md) has its own source and verification scope; this generic module imports only Mathlib.

## Sources and verification

[Source](../../../../GRWTSK/NumberTheory/Moebius/FiniteEulerProduct.lean), [consumer contracts and owned-declaration audit](../../../../checks/NumberTheory/Moebius/FiniteEulerProduct.lean), and [selected receipt](../../../../evidence/NumberTheory/Moebius/finite-euler-product-checks.json) bind the exact source revision. The selected replay elaborated one immutable source module using Lean 4.33.0, Mathlib revision `db584cd6d46c92f209a44c0f1c829460d327499d`, trust zero, and fatal warnings. Its complete census covers four public theorems and two generated declarations; their transitive axioms are limited to `propext`, `Classical.choice`, and `Quot.sound`.

Two deliberately changed consumer statements were rejected when reusing the theorem: one omits the remainder, and one includes products equal to the cutoff in that remainder. These are statement-reuse checks. Pinned dependency objects were used; Mathlib source was not rebuilt. This selected receipt does not establish whole-library acceptance or independent human review, and the identity supplies no P04, `RecordingScaleBound`, or Riemann-hypothesis witness.

## Credit

The proof uses classical finite product expansion and unique prime factorization; no mathematical originality or priority claim is made. Human mathematical direction: R.A. Jacob Martone. Local generalization and Lean formalization assistance: OpenAI Codex. Local source is MIT; Mathlib retains its upstream authorship and Apache-2.0 license.
