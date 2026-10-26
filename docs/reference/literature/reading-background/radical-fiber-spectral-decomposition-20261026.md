# Exact radical-fiber spectral decomposition of the finite arithmetic sieve

Local attribution: **grwtsk contributors**. Date: 2026-10-26.

**Classifications:** New self-contained finite linear-algebra and finite probability proofs below; existing GRWTSK declarations remain **source proof candidates** until compiled and independently checked. No new Lean source was written in this increment. Compilation, fresh kernel acceptance, and transitive axiom auditing: **NOT_RUN**. Existing no-new-unverified-dependent-source gate [#1267](https://github.com/grwtsk/math/issues/1267) is OPEN. Main mathematical tracking issue [#1329](https://github.com/grwtsk/math/issues/1329).

**Central outcome:** The existing, genuinely source-defined radical-weighted diagonal sieve is exactly decomposable into a coarse radical Markov quotient plus explicit, nonzero **invisible fine-fiber spectral modes**. This is stronger than a binary no-decoder witness: it gives their complete linear-algebraic dimension, eigenvalues, and rate of fine-state contraction while proving that entire radical-observation histories cannot reveal them.

## Exact pinned source provenance

Inspected immutable GRWTSK main at **d591c8867490d3901f3352d76d05bb53ea821b90**.

- \`GRWTSK/GraphSandwichDiffusion.lean\` — blob **7d861591c9721a85819f291aac5178fffd29101a**. Existing namespace \`GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel\` and declarations \`radicalCoprimeWeight\`, \`totalWeight_pos\`, \`diagonalEdgeWeight\`, \`diagonalKernel\`, \`diagonalKernel_edge_iff_certified\`, \`certifiedArithmeticInventory\`. These are actual finite arithmetic kernel definitions, not an analytic Navier–Stokes operator.
- \`GRWTSK/Algebra/KTheory/RadicalCollisionBoundary.lean\` — blob **265a9a4d8e237b07d86fcef520a681d61e08e8c8** at the **same** source commit. Includes exponent-sensitive type data (\`twoAdicMultiplicityType\`, \`multiplicityOneType\`) and K₀-shaped radical no-decoder source theorems, as well as concurrent extensions to other prime-valuation types. Preserve all concurrent additions. This module contains **no exact radical-fiber spectral decomposition theorem** at this pin.
- \`GRWTSK/Algebra/KTheory/GrothendieckPort.lean\` — blob **d7a5a42313aec365d7f6bd15d51d74a5a4fb4d8f**. Its group completion is algebraic and **K₀-shaped**, not a constructed analytic topological K-theory functor.
- \`GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/AlgebraicGraphTheory/FiniteWeightedLaplacian.lean\` — blob **7f414d21cb768cc938f1ef2e4a3077b41c62bb45**; previously inspected generic finite weighted-graph energy.
- Lean v4.33.0 (lean-toolchain blob **025e59548e48cf71f2744154e2890beefe30a258**) and Mathlib **db584cd6d46c92f209a44c0f1c829460d327499d** (manifest blob **1f2e3e2d66253933a410e981eb359a9b454aae0b**).

These findings are direct source inspection, **not** kernel checking, runtime elaboration, a source-compile receipt, or axiom-closure verification. No paper is needed to derive the algebraic theorems below; the finite C*-algebra K₀ fact is standard imported mathematical context, not an existing GRWTSK K₀(C*) declaration.

## Finite setup and exact source-defined operator

Fix modulus q=3 and integer cutoff N≥1. Let
\[
S=\{n:1\le n\le N,\ \gcd(n,3)=1\},
\qquad w_x=\operatorname{rad}(x)>0,\qquad Z=\sum_{x\in S}w_x.
\]
All operators, eigenvalues and stationary inner products in this note are **restricted to the positive-weight survivor space S**. The full source \`diagonalKernel\` is also defined on excluded multiples of 3, but those states have ZERO stationary weight and cannot be inserted into a strictly positive weighted Hilbert-space representation unchanged.

For x,y in S, the actual source-first row-stochastic operator is
\[
K(x,y)=\frac{w_y(1+\mathbf 1_{x=y})}{Z+w_x}.
\]
On observable functions f:S→ℝ,
\[
\boxed{(Kf)(x)=\frac{\sum_{y\in S}w_yf(y)+w_xf(x)}{Z+w_x}.}
\]
On row probability measures p, evolution is p↦pK. The two operator orientations are distinct but dual.

Let h(x)=rad(x), F=h(S), fibers F_a={x∈S:h(x)=a}, m_a=|F_a|≥1. Every state in F_a has weight a. Put
\[
W_a=\sum_{x\in F_a}w_x=m_a a,\quad
C=Z^2+\sum_{x\in S}w_x^2,\quad
\rho(x)=\frac{w_x(Z+w_x)}{C}.
\]
The measure rho is the **actual** stationary law of the diagonal kernel (not the source-independent reset kernel's reference \(\pi=w/Z\)): the weighted detailed-balance identity holds,
\[
\rho(x)K(x,y)=\frac{w_xw_y(1+\mathbf 1_{x=y})}{C}
=\rho(y)K(y,x).
\]

## Theorem A — exact radical quotient and fiber-contrast eigenmodes

Define a coarse radical Markov matrix on F by
\[
\boxed{
Q(a,b)=\frac{W_b+a\mathbf1_{a=b}}{Z+a}
=\frac{m_b b+a\mathbf1_{a=b}}{Z+a}.
}
\]
For x∈F_a, \(\sum_{y\in F_b}K(x,y)=Q(a,b)\): the fine chain is **strongly lumpable**, with Q row-stochastic and coarse stationary law
\[
\bar\rho(a)=\sum_{x\in F_a}\rho(x)=\frac{m_a a(Z+a)}{C}.
\]

Let H=ℝ^S with stationary weighted inner product \(\langle f,g\rangle_\rho=\sum_x\rho(x)f_xg_x\). Define
\[
H_{\rm coarse}=\{f\in H:f_x=u(h(x))\ \text{for some }u:F\to\mathbb R\},
\]
and for each a∈F,
\[
H_a^0=\left\{f\in H:\operatorname{supp}(f)\subseteq F_a,\
\sum_{x\in F_a}f_x=0\right\}.
\]

**Exact orthogonal invariant decomposition**
\[
\boxed{
H=H_{\rm coarse}\ \oplus^\perp\
\bigoplus_{a\in F}H_a^0,\quad
\dim H_a^0=m_a-1.
}
\]

**Proof of orthogonality and dimensions.** Within each radical fiber, rho(x)=a(Z+a)/C is constant, hence a zero-coordinate-sum contrast is orthogonal to every fiber-constant function. Contrasts on different fibers have disjoint support. Each fiber's m_a-dimensional real function space is constants plus its (m_a−1)-dimensional sum-zero complement. Sum over the fibers.

**Proof of invariance and eigenvalue.** If f is constant on fibers, the source update formula depends on x only through a=h(x), and its induced operator is exactly Q. If f∈H_a^0 then
\[
\sum_yw_yf_y=a\sum_{y\in F_a}f_y=0
\]
and therefore
\[
\boxed{
Kf=\theta_a f,\qquad
\theta_a=\frac{a}{Z+a}\in(0,1).
}
\]
Every H_a^0 is a true eigen-subspace, not a mere candidate subspace. Its corresponding eigenvalue of the diffusion Laplacian I−K is
\[
\boxed{\lambda_a=1-\theta_a=\frac{Z}{Z+a}>0.}
\]

No condition about cycloids, geometric braid classes, Yang–Mills, physical mass, Tao hyperdissipation or a prime-distribution limit is imported.

## Theorem B — exact characteristic-polynomial and spectral-height factorization

As a direct sum of invariant operators over ℝ (and thus ℂ),
\[
K\cong Q\ \oplus\ \bigoplus_{a\in F}\theta_a I_{m_a-1}.
\]
Therefore **as an equality of polynomials**,
\[
\boxed{
\det(tI_{|S|}-K)=
\det(tI_{|F|}-Q)
\prod_{a\in F}\left(t-\frac{a}{Z+a}\right)^{m_a-1}.
}
\]
This accounts for every eigenvalue **with algebraic multiplicity**. When an eigenvalue happens to occur in both the quotient spectrum and a contrast block, the displayed product correctly accumulates its multiplicity; do not assert it has only m_a−1 multiplicity without checking such coincidences.

The diffusion spectral heights of L=I−K accordingly form the multiset
\[
\operatorname{spec}(L)=\operatorname{spec}(I-Q)
\ \uplus\ \biguplus_{a\in F}
\left\{\frac{Z}{Z+a}\right\}^{m_a-1}.
\]
This is an exact **operator-to-observation spectrum loss/reconstruction boundary** for the finite arithmetic sieve.

## Theorem C — fine-state contraction with totally invisible radical histories

If x≠y and h(x)=h(y)=a, their transition rows differ by
\[
\boxed{
K(x,z)-K(y,z)=\theta_a(\mathbf1_{z=x}-\mathbf1_{z=y}).
}
\]
**Proof:** w_x=w_y=a, so the common weighted target term w_z/(Z+a) cancels; only the diagonal boost terms remain. Thus, writing δ_x for the point-mass row measure,
\[
\boxed{
(\delta_x-\delta_y)K^n=\theta_a^n(\delta_x-\delta_y),
\quad
\operatorname{TV}(\delta_xK^n,\delta_yK^n)=\theta_a^n.
}
\]

On the other hand, every future *coarse radical-observation history* beginning at x has exactly the same probability law as the corresponding history beginning at y: Q satisfies the strong lumpability identity for **every** fine initial distribution, so the observed sequence h(X_0),…,h(X_T) depends on the starting fine state only through its radical. This gives an exact conditional-information statement, for an arbitrary initial distribution on S:
\[
\boxed{
I\bigl(X_0;\,h(X_1),\ldots,h(X_T)\mid h(X_0)\bigr)=0.
}
\]
Future radical records do not improve inference of the INITIAL hidden fine state beyond its initial radical. For classifying an INTERIOR time X_s with both past and future observed, the analogous conclusion follows under the separately proven **stationary reversible initial law rho**; it is not claimed for arbitrary nonstationary priors.

No arbitrary more informative observation channel, type-sensitive sensor or nonlinear feedback controller is ruled out. The state information is lost under the **specified radical-only observation**.

## Theorem D — finite K₀ rank defect matches, but does not canonically identify, hidden spectral dimension

For finite discrete spaces S and F, the standard finite-dimensional C*-algebra K-theory gives
\[
K_0(C(S))\cong\mathbb Z^{S},\qquad
K_0(C(F))\cong\mathbb Z^{F}.
\]
Pullback along h:S→F induces an injective homomorphism
\[
h^*:K_0(C(F))\longrightarrow K_0(C(S))
\]
whose components repeat each coarse integer coordinate on every member of its fiber. Its cokernel is torsion-free with **rank**
\[
\boxed{
\operatorname{rank}\operatorname{coker}(h^*)
=|S|-|F|=\sum_{a\in F}(m_a-1)
=\dim_{\mathbb R}\bigoplus_aH_a^0.
}
\]

Proof: on each fiber, ℤ^{m_a} modulo the primitive diagonal rank-one vector is a free abelian group of rank m_a−1; sum over disjoint fibers. The equality with the real hidden spectral dimension is a **rank comparison**, NOT a canonical integral isomorphism of the cokernel and the eigenmode lattice (for a two-state fiber, the contrast vector (1,−1) maps to twice a primitive cokernel generator). Do not claim a constructed analytic K₀ functor or a Baum–Connes/KK assembly bridge in GRWTSK from this finite comparison.

## Fully exact q=3, N=12 arithmetic fixture

Actual finite coprimality survivors and weights:
\[
S=\{1,2,4,5,7,8,10,11\},\quad
w=(1,2,2,5,7,2,10,11),\quad
Z=40,\quad \sum w^2=308,\quad C=1908.
\]
The radical fibers are
\[
F_1=\{1\},\quad F_2=\{2,4,8\},\quad
F_5=\{5\},\quad F_7=\{7\},\quad
F_{10}=\{10\},\quad F_{11}=\{11\}.
\]
Thus |S|=8, |F|=6, and exactly two contrast dimensions are supplied by F₂. Their common transition eigenvalue is θ₂=2/42=1/21, with diffusion spectral height 20/21. A concrete eigenfunction is f(2)=1, f(4)=−1 and zero elsewhere; a second independent one is f(2)=1,f(8)=−1.

The normalized stationary probabilities of the three fine states 2,4,8 are EACH 84/1908=7/159. Their Boolean multiplicityOneType labels are respectively true,false,false. Therefore the optimal radical-only Boolean Bayes misclassification probability is **exactly 7/159**, coming only from that radical-2 class. The conditional Boolean entropy, in bits, for any finite stationary coarse radical-observation history equals
\[
H(c(X_s)\mid h(X_0),\ldots,h(X_T))
=\frac7{53}\left[-\frac13\log_2\frac13-\frac23\log_2\frac23\right]
\approx0.12128435544\ {\rm bits}
\]
for any chosen s∈[0,T]; this exact stationary-history identity requires detailed balance and both-direction lumpability.

Fine-state TV between starts 2 and 4 is exactly 1,1/21,1/441,1/9261 at steps 0,1,2,3, respectively, even though all radical observation histories have identical laws.

## Actual limited independent preflight (finite evidence only)

The in-session exact-rational check used finite matrices built from the **source formula** and verified for N∈{4,6,9,12,18}:
- strict positivity and row sums on positive survivors, exact stationary rho and detailed balance;
- Q's row sums and **all** aggregated fine→coarse row identities;
- every hidden contrast vector's left and right eigenvalue identity, with θ_a=a/(Z+a);
- the complete characteristic-polynomial factorization over exact rationals (SymPy symbolic charpolys).
- For N=12, exact left-difference TV 1,1/21,1/441,1/9261, each rho(2)=rho(4)=rho(8)=7/159, exact stationary Boolean Bayes error 7/159.
- Exhaustive exact-fraction enumeration of all 6^1, 6^2, 6^3 and 6^4 coarse-observation future sequences showed identical path-law probabilities under fine initial states 2,4,8; exact stationary conditional Boolean entropy was approximately 0.12128435544 bits.

All these checks **passed**. They are finite mathematical verification aids, **NOT Lean elaboration, kernel replay, or axiom audits**, and cannot replace the general algebraic proofs above. There is no claim that a symbolic finite computation verifies Mathlib theorem signatures.

## Smallest future Lean proof dependency and trust boundaries

Once existing #1267 source-validation gate is actually cleared:

1. In existing \`GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel\`, first prove a **one-line exact transition-row difference** when two positive sieve states have equal radical weight; this requires only the existing diagonalKernel definition and finite rational/real simplification, not a new matrix spectral hierarchy. Keep x,y in the finite scope and coprime to q.
2. Prove the finite source-independent algebraic fiber-constant and fiber-zero-sum decomposition, with *separate* real count/cardinality and weighted Hilbert orthogonality declarations. Specialize to the Nat.radical map and the actual q=3 survivors.
3. Prove exact coarse quotient and its row-stochasticity, then the finite characteristic-polynomial/direct-sum factorization. Keep zero-weight excluded integers out of the stationary Hilbert space.
4. Prove the fine signed-measure contrast eigenidentity and coarse-history equality. Only then add optional finite Shannon conditional-information corollaries, with explicit stationary versus arbitrary-prior scopes and supported entropy/probability APIs.
5. Do **NOT** pretend that equality of finite C*-K₀ rank defect and hidden spectral dimension gives a natural integral K₀/eigenspace isomorphism, that the existing generic \`GrothendieckKZero\` is analytic K₀(C*), or that this finite operator establishes classical 3D Navier–Stokes non-blowup or a physical Yang–Mills mass gap.
6. Any future new Lean source must receive its OWN immutable commit/blob, direct and transitive import pins, source/kernel/axiom acceptance commands with executed exits and diagnostics. Actual effectful verification and receipts belong in \`grwtsk/noeaaeue\` outside math. No remote execution, force push, merge, root promotion or relaxation of #1267 in this increment.

**Verification classification:** imported standard finite C*-algebra K₀ background; algebraic theorem proofs = analytic finite research candidate; current repository declarations = source candidates; executable rational checks = finite evidence; all new Lean proof/kernel/axiom statuses = NOT_RUN; arbitrary arithmetic/physics extrapolations = unresolved.
