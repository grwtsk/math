# Prime-Knot Jacobi Arithmetic: an Independent Symmetric Operator and the Carleman Route

**Maintained mathematical source:** [PrimeKnotJacobiArithmetic.lean](PrimeKnotJacobiArithmetic.lean).  
**Research issue:** [math #1849](https://github.com/grwtsk/math/issues/1849).

## Source identities, arithmetic construction and provenance

Use Mathlib's **actual** natural-prime predicate and the zero-indexed nth-prime sequence \(p_n=\operatorname{Nat.nth}(\operatorname{Nat.Prime},n)\) (so \(p_0=2,p_1=3,\ldots\)). No source value in the operator is a Riemann-zeta zero, a precomputed zero ordinate, a learned graph weight or an externally imported RH proof.

The operator is the prime-weighted Jacobi **adjacency** on the algebraic core of finitely supported sequences \(c_{00}(\mathbb N;\mathbb C)\):

\[
(J_0 u)_0=p_0u_1,\qquad
(J_0u)_n=p_{n-1}u_{n-1}+p_nu_{n+1}\quad(n\ge1).
\]

It has diagonal \(b_n=0\) and positive offdiagonals \(a_n=p_n\). Its \(N\times N\) principal section \(J_N\) has entries \(p_{\min(i,j)}\) when \(|i-j|=1\) and zero otherwise. These are explicitly represented by the independent Lean definitions `primeAt`, `bond`, `knotWeight`, `jacobiMatrix` and `applyJacobi`. The source proves, as source-level Lean candidates, symmetry under transpose, positivity of each graph bond, and nonnegative Dirichlet energy for the **different** weighted Laplacian.

This is not a new global theorem about the Riemann zeta function. Weighted Jacobi matrices, Euler/Erdős prime-reciprocal divergence and Carleman's essential-self-adjointness criterion are established mathematics. The source-specific choice \(a_n=p_n\) creates a concrete *independent arithmetic operator candidate* for our graph research, without supplying a zeta spectral determinant.

## Direct analytical proof of essential self-adjointness

Mathlib at the project's exact pin `d13f23b723b8a846827a245b89c10fc7d3f11612` includes Michael Stoll's `Mathlib/NumberTheory/SumPrimeReciprocals.lean` (Git blob `057a61481806b7caa57124114f46acd2cc5c1c71`, Apache-2.0), whose theorem `Nat.Primes.not_summable_one_div` follows Erdős's proof. The local `primeIndexEquiv : ℕ ≃ Nat.Primes` uses actual nth prime and prime counting to reindex the already formalized divergence:

\[
\sum_{n=0}^{\infty}\frac{1}{p_n}=\infty.
\]

**A direct deficiency-vector argument:** The minimal \(J_0\) defined on \(c_{00}\) is densely defined and symmetric on \(\ell^2(\mathbb N)\), since the two nearest-neighbor sums cancel under inner-product conjugation. Let \(z\in\mathbb C\setminus\mathbb R\) and suppose \(0\neq u\in\ker(J_0^*-z)\). Then the formal adjoint recurrence is \(p_nu_{n+1}+p_{n-1}u_{n-1}=zu_n\), with \(p_{-1}u_{-1}=0\). Multiplying by \(\bar u_n\), subtracting the conjugate recurrence and telescoping gives the discrete Green–Wronskian identity

\[
2|\Im z|\sum_{k=0}^{N}|u_k|^2
\le 2p_N|u_Nu_{N+1}|.
\]

Since \(u\neq0\) is square-summable, the partial sum on the left is eventually bounded below by some \(c>0\). Hence

\[
\frac{1}{p_N}\le
\frac{|u_Nu_{N+1}|}{|\Im z|\,c}\qquad(N\text{ sufficiently large}).
\]

But \(\sum_N|u_Nu_{N+1}|\le\|u\|_2^2<\infty\) by Cauchy–Schwarz. This contradicts the reciprocal-prime divergence. Therefore both nonreal deficiency spaces are zero. By the standard von Neumann deficiency criterion, \(J_0\) has a **unique self-adjoint closure**. This is an independent mathematical proof using actual primes, with no RH assumption.

The deficiency-space argument is the prime-specialized form of the classical Carleman criterion. Standard published reference: Janas and Szwarc, *Inhomogeneous Jacobi Matrices on Trees*, Constructive Approximation **48** (2018), Theorem 16, https://link.springer.com/article/10.1007/s00365-018-9430-x . Related contemporary reference: *About essential spectra of unbounded Jacobi matrices*, Journal of Mathematical Analysis and Applications (2022), https://www.sciencedirect.com/science/article/abs/pii/S002190452200034X .

**Formalization boundary:** the local Lean source has a proof *candidate* of the prime-indexed divergence and finite symmetric sections, but the dense \(c_{00}\) domain, identification of its adjoint, deficiency-vector argument and self-adjoint closure on the actual \(\ell^2\) Hilbert space have NOT been implemented as Lean proofs in this revision. This Markdown argument is classical, independent mathematical analysis—not a disguised Lean certificate.

## Spectral continuant and a genuine obstacle

The exact finite-section continuant for \(J_N\) is the monic polynomial recurrence

\[
P_0(x)=1,\quad P_1(x)=x,\qquad
P_{n+2}(x)=xP_{n+1}(x)-p_n^2P_n(x).
\]

Expansion of \(\det(xI-J_N)\) along the last row/column proves this recurrence. The Lean source formalizes the scalar recurrence and source-level consequences:

- \(P_{2k+1}(0)=0\) for every \(k\ge0\);
- \(P_{2k}(0)\neq0\), since every prime bond is positive.

The **Lean theorem equating** this recurrence with \(\det(xI-J_N)\) still needs to be supplied; the finite oracle independently checks the determinant recurrence. For example,

\[
P_1(x)=x,\quad P_2(x)=x^2-4,\quad
P_3(x)=x(x^2-13).
\]

Thus odd principal sections have **a zero eigenvalue**, an immediate obstruction to claiming that each finite principal spectrum consists exclusively of zeta-zero ordinates: the source zeta function satisfies \(\zeta(1/2)\neq0\) (numerically \(\zeta(1/2)\approx-1.4603545088\)). A direct analytic nonvanishing proof at \(1/2\) follows from the alternating Dirichlet eta series; it is not yet a Lean theorem here.

This does not automatically disqualify the *infinite* self-adjoint closure, because finite-section spectral points can move or disappear in a strong-resolvent limit. But it **forbids a naive finite-rank determinant equality** without explicit renormalization, boundary correction and spectral exclusion. No spectral coincidence has been proved.

## What the construction proves and what it does not

Mathematically established analytically: the arithmetic-only Jacobi expression is symmetric and, by Carleman/Erdős or the explicit deficiency proof above, has a unique self-adjoint closure on \(\ell^2\). Each finite principal section is real symmetric and its associated graph Dirichlet form is nonnegative.

**Not established:** compact resolvent; discrete vs continuous spectral type; the zeta Riemann–von Mangoldt counting law; multiplicity preservation; source-complete zeta divisor/spectral determinant identity; any unbounded spectral convergence estimate for actual nontrivial zeros; or RH *derived* from this operator. A positive Laplacian quadratic form does not repair these missing claims. Self-adjointness of \(J\) alone does not make it a Hilbert–Pólya realization.

The computation does not copy, import, or use Levent Alpöge's checked RH theorem. The independent direct mathematical problem is now to determine the actual spectral measure and a trace/explicit-formula identity with the **complete original zeta arithmetic terms**, or rigorously falsify the candidate.

## Software and verification obligations

Current-source imports are pinned Mathlib only. The first stage is a source-only mathematical object; it does not add graph-runtime code or numerical observables to any other repository. Use the exact `verification/prime-jacobi-independent.toml` manifest and run `scripts/verify_prime_jacobi_finite.py` as an independent **finite** control. Both the root Lean compilation and infinite \(\ell^2\) proof formalization remain distinct gates. Root version: Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Deep prior-art check also includes Griffin–Ono–Rolen–Thorner–Tripp–Wagner, *Jensen polynomials for the Riemann xi-function*, Adv Math 397 (2022), https://www.sciencedirect.com/science/article/abs/pii/S0001870822000020 . The Pólya–Jensen criterion is an independent coefficient-side path but does **not** follow from this prime Jacobi symmetry. A future second operator must explicitly source its Taylor coefficients from the actual completed \(\xi\) function rather than from zeros.
