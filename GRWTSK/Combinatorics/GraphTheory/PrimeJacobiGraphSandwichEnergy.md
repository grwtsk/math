# Prime-Jacobi Graph Sandwich: Exact Energy Monotonicity Without Spectral Tuning

**Maintained source:** [PrimeJacobiGraphSandwichEnergy.lean](PrimeJacobiGraphSandwichEnergy.lean).  
**Mathematical consumer:** [math #1849](https://github.com/grwtsk/math/issues/1849), the source-preserving graph-sandwich program, and the proposed independent Hilbert–Pólya research route.  
**Previous source identities:** [PrimeKnotJacobiArithmetic.lean](PrimeKnotJacobiArithmetic.lean) and [RelationSandwich.lean](../../MathematicalLogicAndFoundations/GeneralLogic/RelationSandwich.lean).

## Mathematical result and its exact scope

Let \(V=\mathrm{Fin}(N)\) be a finite graph carrier, \(w_{ij}\ge0\) the genuine *prime-only* symmetric path weight

\[
w_{ij}=\begin{cases}
p_{\min(i,j)},& |i-j|=1,\\0,&\text{otherwise},
\end{cases}
\]

and \(R\subseteq V\times V\) any directed edge relation. Define the unnormalized energy

\[
\mathcal E_R(f)=\sum_{i,j\in V}
\mathbf 1_{R(i,j)}\,w_{ij}\,(f_i-f_j)^2.
\]

For any edge inclusion \(R\subseteq S\),

\[
\boxed{\mathcal E_R(f)\le\mathcal E_S(f)\quad
\text{for every real signal }f.}
\]

**Proof:** each difference in the two sums is either zero (an edge already present) or the nonnegative quantity \(w_{ij}(f_i-f_j)^2\). Summing finitely many nonnegative terms yields the inequality. This is a concrete, *source-preserving and proof-checkable* positive graph-form comparison.

For the **existing exact GRWTSK** relation-sandwich fields
\(L\subseteq M\subseteq U\), corresponding to certified, candidate and admissible relations, the result gives

\[
0\le \mathcal E_L(f)\le
\mathcal E_M(f)\le
\mathcal E_U(f)\le
\mathcal E_{\mathrm{full}}(f).
\]

The last energy is precisely the original prime-knot Dirichlet energy, without additional edges being silently given arbitrary weights. An exact constant signal has zero energy in every layer.

This finite graph theorem is **independent** of Levent Alpöge's RH proof, exact zeta-zero ordinates, numerical prime-arc optimization and the source-zero-indexed diagonal from [math #1848](https://github.com/grwtsk/math/issues/1848).

## Why this does not yet give spectral eigenvalue inequalities

Ordering of nonnegative quadratic forms can imply ordered eigenvalues via min-max when the associated *self-adjoint operators have matching domains and forms*. The present source proves only **finite quadratic-form monotonicity**, with no eigenvalue list, domain compatibility, analytic source-to-zeta determinant or multiplicity supplier. It must not be reported as an automatic eigenvalue sandwich for an arbitrary directed graph, particularly when a directed relation has no symmetric operator realization.

A candidate/upper graph may add edges to discover possible routes; its energy may increase, but this has no implication that those edges are **formally certified mathematical steps**. The trusted lower relation retains its proof-bearing interpretation. The graph energy itself is **nonnegative** but is not the original signed Weil form.

## Application and hostile checks

Theorems can check invariant preservation during source-driven graph-layer evolution. Given a fixed finite prime-bond source and a fixed signal, any allowed enlargement of a graph edge set must leave the resulting energy in the declared bounds. The implementation's numeric graph energy should be compared to an independent exact rational/integer control for small \(N\), including negative signals, asymmetric directed edges, duplicate edges, zero bonds and incorrect rank endpoints.

Changing the graph weight source is a *different* problem and is not covered by the fixed-weight monotonicity theorem. A migration that changes the primes, normalization or vertex identity requires new source correspondence and full dependency requalification.

Source-provenance constraints: root Lean v4.34.1, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The previously maintained `RelationSandwich` declaration's local Git blob was `9761b5dd5d6ada7344031c07386586c72c1d970a` at the inspected source. New file's Lean elaboration, kernel replay, transitive axiom audit, and external review **NOT_RUN** at source publication. The finite integer controls are separate from formal verification.

## Next proof obligations

Formalize the **matrix-to-form identity** (the factor of two between full ordered-pair energy and the ordinary \(\langle f,Lf\rangle\)), the min-max eigenvalue ordering for symmetric finite graph Laplacians, and a compatible limit in the unbounded prime Jacobi core. These are valuable independent spectral results but do not establish Riemann-zeta zero correspondence. The actual hardest number-theoretic bridge remains a faithful trace/spectral determinant relation with the original \(\zeta\), multiplicities, and all Euler/archimedean contributions.
