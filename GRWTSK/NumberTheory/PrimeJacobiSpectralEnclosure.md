# Prime-Jacobi Spectral Enclosure: Exact Critical-Line Obstructions and Conditional RH Criterion

**Maintained Lean source:** [PrimeJacobiSpectralEnclosure.lean](PrimeJacobiSpectralEnclosure.lean).  
**Original-source research issue:** [math #1849](https://github.com/grwtsk/math/issues/1849).

## The independent operator and actual zero predicate

Import ONLY `PrimeKnotJacobiArithmetic` and pinned Mathlib, not Alpöge's theorem, his archive, a source-complete zero-indexed diagonal, or a claimed external spectral determinant.

Let \(J_N\) denote the \(N\times N\) *prime-only* real symmetric Jacobi matrix whose bonds are the true arithmetic primes \(p_0,\ldots,p_{N-2}\). An eigenvalue \(\lambda\in\mathbb R\) means an actual **nonzero real eigenfunction** of this matrix. No self-attested eigenvalue list or numerical zeta-zero table constitutes a proof of that predicate.

For \(s\in\mathbb C\), define the critical embedding \(c(\lambda)=\tfrac12+i\lambda\). Mathlib's norm property gives

\[
\boxed{\,|\Re(s)-\tfrac12|\le\|s-c(\lambda)\|.\,}
\]

Likewise \(|\Im(s)-\lambda|\le\|s-c(\lambda)\|\). Both inequalities are unconditional and independent of RH, primes, graph edges, matrix construction or a Hilbert-space completion.

The exact actual nontrivial-zero predicate is the original Mathlib \(\zeta(s)=0\) with the same exclusions of the trivial zeros \(-2,-4,\ldots\) and \(s=1\) as `Mathlib.RiemannHypothesis`. **No assumption that such an \(s\) is on the critical line** enters these definitions.

## New proof targets and complete elementary argument

A proposed `PrimeSpectralRecovery` means:

\[
\begin{aligned}
\forall s\in\mathbb C,\quad
&\mathrm{NontrivialZero}(s)\Longrightarrow\\[-1mm]
&\forall\epsilon>0,\;
\exists N\in\mathbb N,\ \exists\lambda\in\operatorname{Eig}_{\mathbb R}(J_N):
\|s-c(\lambda)\|<\epsilon.
\end{aligned}
\]

Then

\[
\boxed{\mathrm{PrimeSpectralRecovery}
\Longrightarrow \mathrm{RiemannHypothesis}.}
\]

**Proof:** Assume the recovery statement and take an actual nontrivial zero \(s\). If \(\Re(s)\ne 1/2\), choose the positive number \(\epsilon=|\Re(s)-1/2|\). Recovery supplies \(N,\lambda\) with \(\|s-c(\lambda)\|<\epsilon\), contradicting the unconditional horizontal-gap inequality. Therefore \(\Re(s)=1/2\) for the original exact zero, which is precisely Mathlib's RH target.

There is no use of Alpöge's checked theorem or any RH axiom in this implication. The *unproved premise* is spectral recovery from the **specific independent prime matrices**. It is not established by self-adjointness, prime-reciprocal divergence, a finite numerical comparison, zeta zero count alone, or the fact that the union of matrix sizes grows.

A stronger falsifier is \(\epsilon\le|\Re(s)-1/2|\): no real spectral point of any \(J_N\) can then lie inside the proposed complex disk about \(s\). Similarly if a family of real spectra is uniformly bounded by \(B\), no complex point with \(|\Im(s)|>B\) can be approximated arbitrarily well. These are explicit nontrivial *no-go bounds* for proposed operators, stated as source-level Lean theorems.

## Important underdetermination and strengthening obligation

A union of real eigenvalues that is merely dense in \(\mathbb R\) would approximate every point **already on** the critical line. Therefore the one-sided recovery condition is not sufficient to demonstrate an *arithmetic* relationship to zeta: in a dense-spectrum scenario it can reduce essentially to restating RH. **This must not be advertised as a Hilbert–Pólya construction.**

The next genuine mathematical task is a TWO-SIDED source-to-spectral identity tied to a well-defined limit/operator, with exact zero multiplicities and a trace/regularized determinant or explicit-formula equality. The source correspondence must show that all and only appropriate eigenvalues (with multiplicities) match zeta zeros—without using the latter to define the operator. Riemann–von Mangoldt counting, gamma factors, poles, conductor/normalization and signed prime-power terms cannot be silently omitted.

The odd-dimensional prime matrix's exact zero eigenmode, visible already at \(N=1\), is a hostile counterexample to the naive assertion “every finite prime eigenvalue is a zeta-zero ordinate.” In particular, \(\zeta(1/2)\ne0\). The infinite operator may still have different spectral properties; the first finite mismatch must be retained and explained, not tuned away post hoc.

## Comparison with the previously established source-zero graph

The existing `ActualRiemannZeroSpectralGraph.lean` defines a diagonal operator with \(\gamma_v=\Im(\rho_v)\) where \(\rho_v\) is a supplied actual zeta zero. Its point-spectrum characterization is exact, but by construction it cannot independently prove a zeta-spectrum theorem. The present `J_N\) is genuinely different: its entries are actual primes only and no zeta-zero data is permitted in the operator definition.

Independent novelty claim is limited to the **GRWTSK-specific theorem chain** (actual prime arithmetic, graph path operator, gap inequalities and explicitly stated source-recovery bridge), not priority over existing Hilbert–Pólya, Jacobi, Carleman or Jensen/Pólya literature.

## Evidence and next research gates

The finite numerical source control checks 64 Jacobi sections, symmetry, positivity of graph Laplacian energy, continuant polynomial parity and the first three exact polynomials. A separate optional floating-point comparison samples first zeta heights **after** the prime matrices are formed; it is a falsifier, not analytic proof.

At source publication, this new Lean module's compilation, kernel replay, transitive axiom report and external mathematical review are **NOT_RUN**. The Carleman argument for the infinite \(\ell^2\) operator is written in the adjacent arithmetic provenance record but the Hilbert operator closure theorem is **not formalized** in this Lean file. The current deliverable is an independent proof candidate and precise obstruction, not an independent RH proof.

Continue with (i) formalizing the c00-to-\(\ell^2\) adjoint and Carleman criterion in Lean, (ii) proving the finite continuant/determinant identification, (iii) determining the Jacobi operator's true spectral type, (iv) a source-faithful zeta explicit-formula identity with multiplicities and analytic normalization, and (v) a genuinely noncircular limiting spectral theorem or a precise counterexample.
