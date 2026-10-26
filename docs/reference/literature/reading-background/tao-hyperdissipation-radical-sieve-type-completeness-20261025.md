# Tao hyperdissipation, radical collisions, and asymptotic weighted-sieve type coverage

Local mathematical attribution: **grwtsk contributors**.
Research case: \`TAO-HYPERDISSIPATIVE-SIEVE-TYPE-COVERAGE-20261025\`.
**Status:** paper-derived source interpretation and independently derived finite mathematics; new Lean declarations **NOT_WRITTEN**; Lean compilation, fresh kernel checking and transitive axiom audit **NOT_RUN**. The open no-new-dependent-source validation gate is [#1267](https://github.com/grwtsk/math/issues/1267). Mathematical frontier [#1329](https://github.com/grwtsk/math/issues/1329).

## Primary and adversarial literature

**Imported external mathematics — do not reattribute to local work.**

1. Terence Tao, *Global regularity for a logarithmically supercritical hyperdissipative Navier–Stokes equation*, *Analysis & PDE* 2(3), 361–366 (2009), DOI [10.2140/apde.2009.2.361](https://doi.org/10.2140/apde.2009.2.361), [arXiv:0906.3070](https://arxiv.org/abs/0906.3070), **Theorem 1.1**. For $d\ge 3$, smooth compactly supported divergence-free data and the paper's generalized equation $\partial_t u+(u\cdot\nabla)u=-D^2u-\nabla p$, Tao proves global smoothness when the nonnegative Fourier-multiplier symbol obeys $m(\xi)\ge |\xi|^{(d+2)/4}/g(|\xi|)$ for sufficiently large $|\xi|$, where $g>0$ is nondecreasing and $\int_1^\infty ds/(s g(s)^4)=\infty$. The original 3D classical Laplacian-viscosity problem is **not** solved by this theorem.
2. Terence Tao, *Quantitative bounds for critically bounded solutions to the Navier–Stokes equations* (2019), [arXiv:1908.04958](https://arxiv.org/abs/1908.04958): conditional quantitative regularity for classical three-dimensional NS solutions with uniformly bounded critical $L_x^3$ norm. Neither the $L_x^3$ bound nor an all-data global regularity result follows from finite sieve diffusion.
3. Terence Tao, *Finite time blowup for an averaged three-dimensional Navier–Stokes equation*, *J. Amer. Math. Soc.* 29 (2016), 601–674, DOI [10.1090/jams/838](https://doi.org/10.1090/jams/838), [arXiv:1402.0290](https://arxiv.org/abs/1402.0290): a **modified averaged** nonlinearity retains the energy cancellation yet has finite-time blowup. Do not infer classical NS regularity from energy conservation or a finite spectral gap.
4. Charles Weibel, *The K-book: An Introduction to Algebraic K-Theory*, Chapter II, [K₀ of a ring](https://people.math.rochester.edu/faculty/doug/otherpapers/Kbook.pdf): for local rings $K_0(R)\cong\mathbb Z$. In particular $K_0(k[\epsilon]/(\epsilon^2))\cong K_0(k)\cong\mathbb Z$, so the $K_0$ class by itself **does not detect the nilpotent collision length**. This is a mathematical obstruction, not a newly imported Lean K-theory theorem.

The following constructions intentionally **borrow only the shape of Tao's divergent integral** as a designed time-dependent sieve diffusion schedule. They are **not consequences of Tao's PDE theorem**, and no frequency-to-sieve-operator identification is asserted.

## Source-pinned GRWTSK declarations and exact trust boundary

Existing \`grwtsk/math\` main inspected at **\`df0f6673d08f5f398122e9906620225adfa306c1\`**. Full source/Mathlib compilation has **not** been rerun here.

- \`GRWTSK/Algebra/KTheory/GrothendieckPort.lean\`, blob \`d7a5a42313aec365d7f6bd15d51d74a5a4fb4d8f\`: \`GRWTSK.Algebra.KTheory.GrothendieckKZero\`, \`JointCollision.feature\`, \`JointCollision.type_eq_of_joint_feature_collision\`, \`JointCollision.no_exact_type_decoder_of_collision\`. These are universal commutative-monoid group completions and a conditional **joint-feature decoder obstruction**, not an analytic $K_0(C^*)$ construction or a radical collision certificate automatically instantiated.
- \`GRWTSK/Algebra/RingTheory/QuadraticCollisionOrder.lean\`, blob \`b16f7b18c9bcf064072bb3e5422d2b6786f1f6b3\`: nonreduced quadratic collision fiber and point-evaluation limitation; unverified source proof candidate.
- \`GRWTSK/Analysis/OperatorTheory/SpectralTheory/HeightIndexedGraphDiffusion.lean\`, blob \`3b88b21b60df16f0e22d73f57eac69b8f8fe8a7c\`: finite matrix-exponential diffusion; entrywise nonnegativity, row sums and full eigenspace action require separately certified premises. Filtration graph height is not a Riemann zero coordinate.
- \`GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/AlgebraicGraphTheory/FiniteWeightedLaplacian.lean\`, blob \`7f414d21cb768cc938f1ef2e4a3077b41c62bb45\`: symmetric weighted graph, mass-free Laplacian and explicit Dirichlet energy. A probability mass $\mu$ must be added explicitly to obtain the reversible Markov generator.
- \`GRWTSK/Analysis/Resolvent/SieveScreenBudget.lean\`, blob \`3976ee96bf5977399dd6607e28888714fd35dad2\`: scalar sieve budgets; it does **not** prove arithmetic equidistribution or complete radical types.
- Toolchain: \`leanprover/lean4:v4.33.0\`, \`lean-toolchain\` blob \`025e59548e48cf71f2744154e2890beefe30a258\`; Mathlib \`db584cd6d46c92f209a44c0f1c829460d327499d\`, manifest blob \`1f2e3e2d66253933a410e981eb359a9b454aae0b\`.

## Theorem A — exact radical-collision detector in a finite arithmetic universe

Let $S$ be a finite set of positive integers and $P$ the finite set of primes dividing some element of $S$. Define the *coarse* classifier $r(n)=\operatorname{rad}(n)$ and the *fine* fingerprint
\[
F(n)=\bigl(\operatorname{rad}(n),\,(\nu_p(n))_{p\in P}\bigr).
\]
By unique prime factorization, $F$ is injective on $S$, whereas $r$ need not be. An explicit hostile witness:
\[
12=2^2\cdot3,\quad 18=2\cdot3^2,\quad
\operatorname{rad}(12)=\operatorname{rad}(18)=6,\quad
(\nu_2,\nu_3)(12)=(2,1)\ne(1,2)=(\nu_2,\nu_3)(18).
\]
Also $\Lambda(12)=\Lambda(18)=0$. Hence a classifier or detector using only $(\operatorname{rad}(n),\Lambda(n))$ cannot distinguish this pair; a valuation/jet or another separating witness is necessary. Distinguish this **integer squarefree radical** from radical ideals and from root collisions in nonreduced fibers.

## Theorem B — explicit finite weighted-sieve diffusion and eventual type visibility

Let $S$ be a finite **nonempty** state set, $T$ a finite set of required type labels and $c:S\to T$ a total classifier. Choose a strictly positive probability mass $\mu:S\to(0,1]$ with $\sum_{x\in S}\mu_x=1$. For example, on finite positive integer samples take $b(n)=1+\Lambda(n)+\log(\operatorname{rad}(n))>0$ and $\mu(n)=b(n)/\sum_{x\in S}b(x)$; this is a finite *definition*, not a prime-density theorem.

Let $g:[1,\infty)\to(0,\infty)$ be nondecreasing and satisfy Tao's **divergent integral condition** $\int_1^\infty du/(u g(u)^4)=\infty$. Define
\[
a(t)=\frac1{(1+t)g(1+t)^4},\qquad
A(t)=\int_0^t a(s)\,ds,\qquad
q(t)=e^{-A(t)}.
\]
For an initial probability $P_0$ on $S$, put
\[
P_t(x)=q(t)P_0(x)+(1-q(t))\mu_x.
\]
This is a **mass-preserving, positivity-preserving continuous-time diffusion**. If $f_t(x)=P_t(x)/\mu_x$, its generator is the complete weighted graph Laplacian
\[
(L_\mu f)(x)=\frac1{\mu_x}\sum_{y\ne x}\mu_x\mu_y(f_x-f_y)
=f_x-\sum_y\mu_yf_y;
\quad \dot f_t=-a(t)L_\mu f_t
\]
almost everywhere (classically if $g$ is continuous).

For each type $\theta$, write $S_\theta=\{x:c(x)=\theta\}$, $\mu_\theta=\sum_{x\in S_\theta}\mu_x$, and $p_\theta(t)=\sum_{x\in S_\theta}P_t(x)$. The **exact theorem** is
\[
p_\theta(t)=q(t)p_\theta(0)+(1-q(t))\mu_\theta.
\]
Since $a(t)>0$ on nonempty time intervals and $A(t)\to\infty$ by the specified integral condition:
- if $S_\theta\ne\varnothing$, then $p_\theta(t)>0$ for **every $t>0$**, with $p_\theta(t)\to\mu_\theta>0$;
- if $S_\theta=\varnothing$, then $p_\theta(t)=0$ for **every $t$**, regardless of diffusion;
- consequently **all** requested types receive positive mass eventually (indeed at every positive time) **if and only if** $c$ is surjective onto $T$.

The last equivalence is the correct **finite type-completeness theorem**. It does **not** derive surjectivity from diffusion: proving a missing arithmetic type has a representative in $S$ is an independent existence obligation. A finite sample $S_H$ does not establish uniform-in-$H$ type density or universal arithmetic completeness merely because its normalized diffusion mixes.

## Theorem C — general weighted-graph/coercivity steering extension

Let $w^0_{xy}=\mu_x\mu_y+b_{xy}$ for $x\ne y$, with $b_{xy}=b_{yx}\ge0$ and $w^0_{xx}=0$; take time-dependent weights $w_{xy}(t)=a(t)w^0_{xy}$. The normalized reversible operator $L_0$ on $\ell^2(S,\mu)$ satisfies
\[
\mathcal E_0(f):=\frac12\sum_{x,y}w^0_{xy}|f_x-f_y|^2
\ \ge\ \operatorname{Var}_\mu(f)
=\sum_x\mu_x|f_x-\bar f_\mu|^2.
\]
Indeed the baseline complete-graph term is **exactly** $\operatorname{Var}_\mu(f)$, and the $b$ contribution is nonnegative.

For a nonnegative normalized solution to $\dot f_t=-a(t)L_0f_t$, the $\mu$-mean is preserved and the full mean-zero sector obeys the exact differential inequality
\[
\frac{d}{dt}\|f_t-1\|_\mu^2
=-2a(t)\mathcal E_0(f_t-1)\le-2a(t)\|f_t-1\|_\mu^2.
\]
Therefore
\[
\|f_t-1\|_\mu\le e^{-A(t)}\|f_0-1\|_\mu.
\]
For $0<\mu_\theta<1$ the *quantitative type* inequality is
\[
|p_\theta(t)-\mu_\theta|
\le\sqrt{\mu_\theta(1-\mu_\theta)}
\,e^{-A(t)}\|f_0-1\|_\mu.
\]
If the classifier is surjective and $\mu_{\min}=\min_{\theta\in T}\mu_\theta>0$, then once
$e^{-A(t)}\|f_0-1\|_\mu\le\tfrac12\sqrt{\mu_{\min}}$, every type mass is at least $\mu_\theta/2$.
In particular $A(\infty)=\infty$ provides **asymptotic type steering even if the instantaneous spectral gap $a(t)$ tends to zero**. This theorem concerns a designed finite reversible sieve diffusion, not Tao's original Navier–Stokes operator.

**Concrete exact fixture:** $S=\{12,18\}$, $\mu=(1/2,1/2)$, $b=0$, $g\equiv1$ and $P_0=(1,0)$. Then the eigenvalues of $L_\mu$ are $0,1$, $A(t)=\log(1+t)$ and
\[
P_t(18)=\frac{t}{2(1+t)}>0\ (t>0),\qquad P_t(18)\to\tfrac12.
\]
The coarse radical label $6$ has mass $1$ for all times and conceals this change.

## K-theoretic collision limits and exact missing bridges

For the finite commutative $C^*$-algebras $A=C(S)$, $B=C(r(S))$, ordinary topological $K_0(A)\cong\mathbb Z^S$, $K_0(B)\cong\mathbb Z^{r(S)}$. Pullback along the radical classifier $r:S\to r(S)$ gives a *-homomorphism $r^*:B\to A$ and corresponding $K_0$ map $\mathbb Z^{r(S)}\to\mathbb Z^S$. Its image is **constant on radical fibers**. For $S=\{12,18\}$ this is $\mathbb Z\ni n\mapsto(n,n)\in\mathbb Z^2$, so the fine difference $(1,-1)$ is not expressible through the coarse radical $K_0$ observable. This is the appropriate **direction** of the $K_0$ map (coarse algebra into fine algebra); do not silently reverse it or substitute the existing generic \`GrothendieckKZero\` for analytic $K_0$.

For the distinct *nonreduced* collision $k[\epsilon]/(\epsilon^2)\to k$, both local rings have $K_0\cong\mathbb Z$. Nilpotent collision multiplicity is consequently **not recovered by $K_0$ alone**. Exact type detection therefore requires a richer paired certificate: radical/valuation information for arithmetic collisions, and nilpotent/jet data for scheme-theoretic collisions. No K-theoretic spectral index or Baum–Connes assembly theorem is inferred.

## Formalization and validation order

1. **First bounded mathematical source, only after gate #1267 clears:** finite radical collision witness and a type classifier with genuine coverage semantics (every *required type* has a representative, rather than the tautology that every source point has some classifier output). Reuse the current K-theory \`JointCollision\` namespace and radical subject modules; check exact current declarations and avoid parallel hierarchies.
2. Finite complete-graph weighted Laplacian identity, mass conservation and **explicit** $P_t$ convex-mixture formula; then the type-mass identity and necessary/sufficient finite type-completeness criterion. This can be done before more general PDE/functional calculus.
3. Conditional general reversible weighted-graph spectral comparison and long-time $g$-steering inequality. Reuse \`FiniteWeightedLaplacian\` and \`HeightIndexedGraphDiffusion\`, preserving their pending Markov/eigenvalue certificates.
4. Only then connect true analytic finite $K_0$ for a specified $C^*$-algebra with group completion and collision-type projections; separately retain nilpotent jets. Do not infer a full $C^*$-K-theory construction from \`GrothendieckKZero\`.
5. Any arithmetic $H\to\infty$ density theorem requires genuine nonempty type fibers, explicit lower-mass bounds and sieve/equidistribution inputs. A finite engineered baseline does not prove these analytic estimates.
6. For any *paper-derived Lean formalization*, add the source title, byline/year/DOI, exact theorem/hypotheses, fully qualified declarations and exact new commit/blob, commands/exits or \`NOT_RUN\`, classification and missing bridges to the canonical \`paper-to-formalization-references.md\` ledger. This standalone source note is not a substitute for a verified declaration entry.
7. On a separately authorized pinned clean checkout, compile affected leaf and root imports, fresh-check the kernel and \`#print axioms\` of the new declarations. Store actual runner commands/receipts in \`grwtsk/noeaaeue\`, not in math; do not infer acceptance from GitHub issues or source scans.

**Source/verification classifications:** Tao theorem = imported external mathematics; generic existing GRWTSK declarations = source proof candidates until current verification; Theorems A–C = new analytic mathematics, Lean \`NOT_WRITTEN\`; two-state checks = finite evidence; classical 3D NS nonblowup, actual arithmetic infinite-density steering, analytic K-theory realization and nilpotent reconstruction = unresolved separate bridges. No merge, no force push, no unauthorized remote execution.
