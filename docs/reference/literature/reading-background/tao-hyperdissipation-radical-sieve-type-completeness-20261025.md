# Tao hyperdissipation, radical collisions, and asymptotic weighted-sieve type coverage

Local mathematical attribution: **grwtsk contributors**.
Research case: `TAO-HYPERDISSIPATIVE-SIEVE-TYPE-COVERAGE-20261025`.
**Status:** paper-derived source interpretation and independently derived finite mathematics; new Lean declarations **NOT_WRITTEN**; Lean compilation, fresh kernel checking and transitive axiom audit **NOT_RUN**. The open no-new-dependent-source validation gate is [#1267](https://github.com/grwtsk/math/issues/1267). Mathematical frontier [#1329](https://github.com/grwtsk/math/issues/1329).

## Primary and adversarial literature

**Imported external mathematics — do not reattribute to local work.**

1. Terence Tao, *Global regularity for a logarithmically supercritical hyperdissipative Navier–Stokes equation*, *Analysis & PDE* 2(3), 361–366 (2009), DOI [10.2140/apde.2009.2.361](https://doi.org/10.2140/apde.2009.2.361), [arXiv:0906.3070](https://arxiv.org/abs/0906.3070), **Theorem 1.1**. For $d\ge 3$, smooth compactly supported divergence-free data and the paper's generalized equation $\partial_t u+(u\cdot\nabla)u=-D^2u-\nabla p$, Tao proves global smoothness when the nonnegative Fourier-multiplier symbol obeys $m(\xi)\ge |\xi|^{(d+2)/4}/g(|\xi|)$ for sufficiently large $|\xi|$, where $g>0$ is nondecreasing and $\int_1^\infty ds/(s g(s)^4)=\infty$. The original 3D classical Laplacian-viscosity problem is **not** solved by this theorem.
2. Terence Tao, *Quantitative bounds for critically bounded solutions to the Navier–Stokes equations* (2019), [arXiv:1908.04958](https://arxiv.org/abs/1908.04958): conditional quantitative regularity for classical three-dimensional NS solutions with uniformly bounded critical $L_x^3$ norm. Neither the $L_x^3$ bound nor an all-data global regularity result follows from finite sieve diffusion.
3. Terence Tao, *Finite time blowup for an averaged three-dimensional Navier–Stokes equation*, *J. Amer. Math. Soc.* 29 (2016), 601–674, DOI [10.1090/jams/838](https://doi.org/10.1090/jams/838), [arXiv:1402.0290](https://arxiv.org/abs/1402.0290): a **modified averaged** nonlinearity retains the energy cancellation yet has finite-time blowup. Do not infer classical NS regularity from energy conservation or a finite spectral gap.
4. Charles Weibel, *The K-book: An Introduction to Algebraic K-Theory*, Chapter II, [K₀ of a ring](https://people.math.rochester.edu/faculty/doug/otherpapers/Kbook.pdf): for local rings $K_0(R)\cong\mathbb Z$. In particular $K_0(k[\epsilon]/(\epsilon^2))\cong K_0(k)\cong\mathbb Z$, so the $K_0$ class by itself **does not detect the nilpotent collision length**. This is a mathematical obstruction, not a newly imported Lean K-theory theorem.

The following constructions intentionally **borrow only the shape of Tao's divergent integral** as a designed time-dependent sieve diffusion schedule. They are **not consequences of Tao's PDE theorem**, and no frequency-to-sieve-operator identification is asserted.

## Source-pinned GRWTSK declarations and exact trust boundary

Existing `grwtsk/math` main inspected at **`df0f6673d08f5f398122e9906620225adfa306c1`**. Full source/Mathlib compilation has **not** been rerun here.

- `GRWTSK/Algebra/KTheory/GrothendieckPort.lean`, blob `d7a5a42313aec365d7f6bd15d51d74a5a4fb4d8f`: `GRWTSK.Algebra.KTheory.GrothendieckKZero`, `JointCollision.feature`, `JointCollision.type_eq_of_joint_feature_collision`, `JointCollision.no_exact_type_decoder_of_collision`. These are universal commutative-monoid group completions and a conditional **joint-feature decoder obstruction**, not an analytic $K_0(C^*)$ construction or a radical collision certificate automatically instantiated.
- `GRWTSK/Algebra/RingTheory/QuadraticCollisionOrder.lean`, blob `b16f7b18c9bcf064072bb3e5422d2b6786f1f6b3`: nonreduced quadratic collision fiber and point-evaluation limitation; unverified source proof candidate.
- `GRWTSK/Analysis/OperatorTheory/SpectralTheory/HeightIndexedGraphDiffusion.lean`, blob `3b88b21b60df16f0e22d73f57eac69b8f8fe8a7c`: finite matrix-exponential diffusion; entrywise nonnegativity, row sums and full eigenspace action require separately certified premises. Filtration graph height is not a Riemann zero coordinate.
- `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/AlgebraicGraphTheory/FiniteWeightedLaplacian.lean`, blob `7f414d21cb768cc938f1ef2e4a3077b41c62bb45`: symmetric weighted graph, mass-free Laplacian and explicit Dirichlet energy. A probability mass $\mu$ must be added explicitly to obtain the reversible Markov generator.
- `GRWTSK/Analysis/Resolvent/SieveScreenBudget.lean`, blob `3976ee96bf5977399dd6607e28888714fd35dad2`: scalar sieve budgets; it does **not** prove arithmetic equidistribution or complete radical types.
- Toolchain: `leanprover/lean4:v4.33.0`, `lean-toolchain` blob `025e59548e48cf71f2744154e2890beefe30a258`; Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`, manifest blob `1f2e3e2d66253933a410e981eb359a9b454aae0b`.

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

For the finite commutative $C^*$-algebras $A=C(S)$, $B=C(r(S))$, ordinary topological $K_0(A)\cong\mathbb Z^S$, $K_0(B)\cong\mathbb Z^{r(S)}$. Pullback along the radical classifier $r:S\to r(S)$ gives a *-homomorphism $r^*:B\to A$ and corresponding $K_0$ map $\mathbb Z^{r(S)}\to\mathbb Z^S$. Its image is **constant on radical fibers**. For $S=\{12,18\}$ this is $\mathbb Z\ni n\mapsto(n,n)\in\mathbb Z^2$, so the fine difference $(1,-1)$ is not expressible through the coarse radical $K_0$ observable. This is the appropriate **direction** of the $K_0$ map (coarse algebra into fine algebra); do not silently reverse it or substitute the existing generic `GrothendieckKZero` for analytic $K_0$.

For the distinct *nonreduced* collision $k[\epsilon]/(\epsilon^2)\to k$, both local rings have $K_0\cong\mathbb Z$. Nilpotent collision multiplicity is consequently **not recovered by $K_0$ alone**. Exact type detection therefore requires a richer paired certificate: radical/valuation information for arithmetic collisions, and nilpotent/jet data for scheme-theoretic collisions. No K-theoretic spectral index or Baum–Connes assembly theorem is inferred.

## Formalization and validation order

1. **First bounded mathematical source, only after gate #1267 clears:** finite radical collision witness and a type classifier with genuine coverage semantics (every *required type* has a representative, rather than the tautology that every source point has some classifier output). Reuse the current K-theory `JointCollision` namespace and radical subject modules; check exact current declarations and avoid parallel hierarchies.
2. Finite complete-graph weighted Laplacian identity, mass conservation and **explicit** $P_t$ convex-mixture formula; then the type-mass identity and necessary/sufficient finite type-completeness criterion. This can be done before more general PDE/functional calculus.
3. Conditional general reversible weighted-graph spectral comparison and long-time $g$-steering inequality. Reuse `FiniteWeightedLaplacian` and `HeightIndexedGraphDiffusion`, preserving their pending Markov/eigenvalue certificates.
4. Only then connect true analytic finite $K_0$ for a specified $C^*$-algebra with group completion and collision-type projections; separately retain nilpotent jets. Do not infer a full $C^*$-K-theory construction from `GrothendieckKZero`.
5. Any arithmetic $H\to\infty$ density theorem requires genuine nonempty type fibers, explicit lower-mass bounds and sieve/equidistribution inputs. A finite engineered baseline does not prove these analytic estimates.
6. For any *paper-derived Lean formalization*, add the source title, byline/year/DOI, exact theorem/hypotheses, fully qualified declarations and exact new commit/blob, commands/exits or `NOT_RUN`, classification and missing bridges to the canonical `paper-to-formalization-references.md` ledger. This standalone source note is not a substitute for a verified declaration entry.
7. On a separately authorized pinned clean checkout, compile affected leaf and root imports, fresh-check the kernel and `#print axioms` of the new declarations. Store actual runner commands/receipts in `grwtsk/noeaaeue`, not in math; do not infer acceptance from GitHub issues or source scans.

**Source/verification classifications:** Tao theorem = imported external mathematics; generic existing GRWTSK declarations = source proof candidates until current verification; Theorems A–C = new analytic mathematics, Lean `NOT_WRITTEN`; two-state checks = finite evidence; classical 3D NS nonblowup, actual arithmetic infinite-density steering, analytic K-theory realization and nilpotent reconstruction = unresolved separate bridges. No merge, no force push, no unauthorized remote execution.


---

## Bounded successor: perturbative discrete steering and collision-observation error budget (2026-10-25)

**Status and provenance:** New elementary finite Markov/linear-algebra proof, **NOT** a result asserted in Tao (2009) or its subsequent Navier–Stokes papers. Formal Lean declaration **NOT_WRITTEN**; compilation, fresh kernel and transitive axiom audit **NOT_RUN**. Existing gate [#1267](https://github.com/grwtsk/math/issues/1267) remains open. Source-only GRWTSK pins inspected at main commit **43f232096f93f9baf693dc67b1dbab54107c5056**:

- K-theory joint decoder: **GRWTSK/Algebra/KTheory/GrothendieckPort.lean**, Git blob **d7a5a42313aec365d7f6bd15d51d74a5a4fb4d8f**. Exact declarations **GRWTSK.Algebra.KTheory.JointCollision.type_eq_of_joint_feature_collision** and **...no_exact_type_decoder_of_collision**.
- Independent radical-factored collision source **GRWTSK/Algebra/KTheory/RadicalCollisionBoundary.lean**, Git blob **6754d346dc7ad4b5e02eb3e97bc475bda1ef847e**, already defines **kZeroRadical**, **kZeroRadical_not_injective**, **no_exact_nat_type_decoder**. The source has a static verification manifest at **docs/verification/Algebra/KTheory/radical-collision-type-boundary-20261025.toml** pinned to its *historical* commit f3fb87b6daeaea08dc133350ddd3f39bd5d84d45; do not overwrite or transfer that historical pin. Those Lean declarations are source candidates, not fresh kernel receipts.
- Finite heat / graph interfaces: **GRWTSK/Analysis/OperatorTheory/SpectralTheory/HeightIndexedGraphDiffusion.lean** blob **3b88b21b60df16f0e22d73f57eac69b8f8fe8a7c**; **GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/AlgebraicGraphTheory/FiniteWeightedLaplacian.lean** blob **7f414d21cb768cc938f1ef2e4a3077b41c62bb45**. The former keeps Markov row sums/positivity as explicit certificates; the latter does not automatically construct a probability-mass operator.

### Theorem D — exact finite-error Duhamel identity for type masses

Let a finite nonempty source set \(S\) have a finite **required** type label set \(T\), a classifier \(c:S\to T\), and a strictly positive stationary probability \(\mu\) on \(S\). Let each \(P_j\) be an actual probability on \(S\), let \(0<\alpha_j\le1\), and let \(r_j:S\to\mathbb R\) have total sum zero. Assume the *actual* update is

\[
P_{j+1}=(1-\alpha_j)P_j+\alpha_j\mu+r_j,
\]

and nonnegativity is retained (an arbitrary signed residual does not guarantee this).
For \(0\le a\le b\), define \(Q_{a,b}=\prod_{\ell=a}^{b-1}(1-\alpha_\ell)\), with empty product \(1\). For each label \(\theta\), define
\[
p_j(\theta)=\sum_{c(x)=\theta}P_j(x),\quad
\mu_\theta=\sum_{c(x)=\theta}\mu(x),\quad
\rho_j(\theta)=\sum_{c(x)=\theta}r_j(x).
\]
Then **exactly**, for every \(N\ge0\),

\[
p_N(\theta)-\mu_\theta =
Q_{0,N}(p_0(\theta)-\mu_\theta)
+\sum_{j=0}^{N-1}Q_{j+1,N}\rho_j(\theta).
\]

**Proof:** sum the actual state update over the classifier fiber, subtract \(\mu_\theta\), and induct on \(N\). The scalar error recurrence is \(d_{j+1}=(1-\alpha_j)d_j+\rho_j\). A separate finite telescoping identity gives
\[
\sum_{j=0}^{N-1}\alpha_j Q_{j+1,N}=1-Q_{0,N}.
\]
No division, Markov convergence theorem, or Navier–Stokes result is required for this finite identity.

### Theorem E — quantitative positivity and asymptotic steering under defective transitions

Suppose the *type-level* defects satisfy \(|\rho_j(\theta)|\le \alpha_j\eta\) for every \(j,\theta\), with fixed \(\eta\ge0\). Taking absolute values in the exact formula and using the telescope yields

\[
|p_N(\theta)-\mu_\theta|
\le Q_{0,N}|p_0(\theta)-\mu_\theta|+\eta(1-Q_{0,N}),
\]
and the stronger signed lower bound
\[
p_N(\theta)\ge Q_{0,N}p_0(\theta)
+(1-Q_{0,N})(\mu_\theta-\eta).
\]

If the classifier is **surjective onto the required \(T\)** and \(T\) is nonempty, every stationary type mass \(\mu_\theta\) is positive. When \(\eta<\min_{\theta\in T}\mu_\theta\), all types have strictly positive actual mass after any update with \(Q_{0,N}<1\), even if some type initially had zero mass. This is not an arithmetic witness-construction theorem: the positive stationary masses presuppose actual type representatives.

For *varying* nonnegative error allowances \(\eta_j\to0\) satisfying \(|\rho_j(\theta)|\le\alpha_j\eta_j\), if \(\sum_{j\ge0}\alpha_j=\infty\), then \(Q_{0,N}\to0\) and **\(p_N(\theta)\to\mu_\theta\)**. Proof: for each fixed \(j\), \(Q_{j+1,N}\to0\); split the error sum into finitely many early \(j<J\) (vanishing one by one) and a late tail \(j\ge J\), bounded by \(\sup_{j\ge J}\eta_j\) using the finite telescope. Sending \(J\to\infty\) proves the limit. A bounded but nonvanishing relative defect gives only a persistent error floor, not exact stationary convergence.

### Operator-level supplier, not a merely assumed scalar residual

The ideal stochastic matrix has rows
\[
K_j^0(x,y)=(1-\alpha_j)\mathbf1_{x=y}+\alpha_j\mu(y).
\]
Let \(K_j\) instead be an **actual row-stochastic** finite matrix, and set \(P_{j+1}=P_jK_j\).
If for every row \(x\) its total-variation distance satisfies
\[
\operatorname{TV}(K_j(x,\cdot),K_j^0(x,\cdot))
\le\alpha_j\eta_j,
\]
then the signed residual \(r_j=P_j(K_j-K_j^0)\) has zero total mass and satisfies
\[
\left|\sum_{c(y)=\theta}r_j(y)\right|
\le\operatorname{TV}(r_j)\le\alpha_j\eta_j.
\]
**Proof:** convexity/triangle inequality for row total variation under the probability weights \(P_j(x)\). This is the exact missing **operator-to-type-error bridge**. Stochasticity ensures \(P_{j+1}\ge0\); it may not be inferred from a generic finite matrix exponential without a nonnegative-row/mass certificate.

### Exact rational two-state preflight and hostile control

Take \(S=\{12,18\}\), types distinguished by valuation vectors, \(\mu=(1/2,1/2)\), \(P_0=(1,0)\), \(\alpha_j=1/(j+2)\). This schedule is the exact integer-time sampling of the **chosen finite steering model** \(g\equiv1\), \(A(t)=\log(1+t)\), \(q(t)=1/(1+t)\). Take \(\varepsilon=1/10\) and true row-stochastic perturbations corresponding to \(r_j=(-\varepsilon\alpha_j^2,+\varepsilon\alpha_j^2)\). Each row of the perturbed kernel has total-variation error \(\varepsilon\alpha_j^2=\alpha_j\eta_j\), \(\eta_j=\varepsilon/(j+2)\to0\). By the exact finite recurrence,
\[
P_N(18)=\frac{N}{2(N+1)}
 +\frac{\varepsilon}{N+1}\sum_{k=2}^{N+1}\frac1k,
\]
so \(P_N(18)\to1/2\). This convergence is visible only under a fine type classifier; the coarse radical label remains \(6\) for both states and has total mass \(1\) at every step.

**Executed finite preflight:** Python 3.13 standard-library `fractions.Fraction`, here under a one-off `python3 - <<'PY'` shell invocation, exit **0**. Checked 100 consecutive exact-rational updates, probability conservation, nonnegativity, the harmonic-number closed form, the finite error bound, and the negative-control regime. For \(N=1,5,100\), the calculated \(P_N(18)\) is respectively \(11/40\), \(529/1200\), and approximately \(0.499205226\). **Hostile control:** with persistent \(r_j=(-\varepsilon\alpha_j,+\varepsilon\alpha_j)\), the actual type-18 mass tends \(1/2+\varepsilon=3/5\), not \(1/2\) (at \(N=100\), exactly \(60/101\)). Thus \(\eta_j\to0\) or another vanishing error-control premise cannot be dropped when asserting exact asymptotic steering. This is limited finite arithmetic evidence, not a Lean/compiler/kernel result.

### Required-type and observability boundary

A missing fiber \(c^{-1}(\theta)=\varnothing\) has \(\mu_\theta=p_j(\theta)=0\) for every probability on \(S\). No refinement of the Markov transition law, including Tao-shaped integrated diffusion, creates missing states or a missing arithmetic type. Also \(S=\{12\}\) and \(S'=\{12,18\}\) can have the same **coarse radical observation** supported at \(6\), yet differ on required fine type \(18\). The existing radical-factored K₀-shaped source obstruction correctly rules out reconstruction from the joint coarse feature. A valuation/jet-enriched classifier must be proved type-separating before using a coarse observation to certify completeness.

For a family of arithmetic cutoffs \(S_H\), the finite theorem only supplies **cutoff-specific** visibility. Uniform \(H\to\infty\) density or type completeness requires actual witnesses at every sufficiently large cutoff, positive type masses with quantitative \(H\)-uniform (or type-specific) lower bounds, controlled transition residuals, and true sieve/equidistribution suppliers. Neither Tao's hyperdissipative PDE proof nor a formal Grothendieck group completion discharges these obligations.

### Proposed first new Lean theorem, only after gate clearance

Place the elementary finite-step type-mass telescope in an existing **finite spectral diffusion or weighted-graph subject leaf**, not the K₀ mathematical core and not a new parallel hierarchy. Prefer an independent simple finite-sum module that can later be imported by **HeightIndexedGraphDiffusion** after its current dependency acceptance. Prove in order: type-fiber finite sum of a convex mixture; telescoping product; finite error inequality; strictly positive mass after mixing; kernel-total-variation supplier; only then analytic/infinite-time steering. Reuse **JointCollision** and **RadicalCollisionBoundary** as separately pinned source candidates without re-creating them. Native Lean definitions, theorem names and exact build commands for the **new** result are **NOT_YET_DEFINED**. When written, re-pin the exact new source commit/blob and register the paper-derived connections in the canonical literature ledger with execution receipts or explicit NOT_RUN.

Gate #1267 and all no-merge/no-force-push/no-unapproved-dispatch constraints remain. The new source has **not** been compiled or kernel-checked: `NOT_RUN`. Runners, checks and actual receipts belong in **grwtsk/noeaaeue**, not math.


---

## Bounded successor — radical observation lumpability and type-decoding error (2026-10-26)

**Attribution:** grwtsk contributors for these elementary finite mathematical deductions. **Existing source:** at observed math main commit `eee1e17460fdf207bd5dfd639c7e91a96df32594`, `GRWTSK/Algebra/KTheory/RadicalCollisionBoundary.lean` blob `ddf55d9090d09b785c0c8d2b03148c6a74e72a4c` already has `steered_observation_eq_of_radical_eq` and `no_type_complete_feature_only_steering_of_collision`; `GRWTSK/Algebra/KTheory/GrothendieckPort.lean` blob `d7a5a42313aec365d7f6bd15d51d74a5a4fb4d8f` has the generic `JointCollision.no_exact_type_decoder_of_collision`. Do **not** reauthor either obstruction. The missing, different supplier is **Markov descent of a state transition**, not just information loss under one observable.

**Source status:** Self-contained finite proofs below are analytic research arguments, not newly written Lean declarations, kernel admissions or independently verified K-theory results. Verification gate [#1267](https://github.com/grwtsk/math/issues/1267) remains open; no mathematical Lean source is added in this successor.

### Theorem F — necessary and sufficient exact strong lumpability

Let \(S\) be a finite nonempty fine state set, \(F=h(S)\) the finite image of a map \(h:S\to F\) (therefore \(h\) is surjective), and \(K:S\times S\to[0,1]\) an actual row-stochastic matrix. Define the observation/aggregation matrix \(J:S\times F\to\{0,1\}\) by \(J_{xb}=\mathbf1_{h(x)=b}\), and its aggregated row probabilities
\[
(KJ)_{xb}=\sum_{y:h(y)=b}K_{xy}.
\]
Then the following three statements are equivalent:

1. For every \(x,x'\in S\) with \(h(x)=h(x')\), and every \(b\in F\), the aggregated transition probabilities \((KJ)_{xb}\) and \((KJ)_{x'b}\) are equal.
2. There exists a row-stochastic \(Q:F\times F\to[0,1]\) with the **exact intertwining identity** \(KJ=JQ\).
3. For **every initial fine probability** \(P\), the one-step coarse probability \((PK)J\) is determined by the current coarse probability \(PJ\) via one common row-stochastic operator \(Q\), independently of the representative state.

**Proof.** For (1)→(2), fix one representative \(s_b\in h^{-1}(b)\) for each observed state and set \(Q_{bc}=(KJ)_{s_b c}\). Condition (1) makes this independent of representative; sums of entries are one because the observation fibers partition \(S\). The definition gives \(KJ=JQ\). The implication (2)→(3) is associativity. For (3)→(1), compare the fine point-mass probabilities \(\delta_x,\delta_{x'}\); they have the same coarse observation if \(h(x)=h(x')\), so their one-step coarse observations must agree. This is the **strong lumpability** criterion. It implies \((PK^N)J=(PJ)Q^N\) for all \(N\in\mathbb N\), and generalizes to time-dependent kernels if each step has its own exact quotient \(Q_j\).

### Theorem G — exact type recovery is a *separate* factorization

Let \(c:S\to T\) be the required **fine** arithmetic type classifier, with \(T\) finite. There exists a decoder \(d:F\to T\) with \(c=d\circ h\) **if and only if**
\[
\forall x,x'\in S,\quad h(x)=h(x')\Longrightarrow c(x)=c(x').
\]
The forward direction follows by substitution. For the converse choose, for each \(b\in F\), a representative \(s_b\), and let \(d(b)=c(s_b)\), which is independent of the choice under fiberwise constancy.

**Crucial separation:** (F) can hold even when (G) fails. A coarse Markov process may be predicted perfectly from its own past, while all methods depending solely on it still fail to reconstruct the true fine type. The older source-level K₀-radical collision lemmas express the **obstruction direction** of (G), not the new Markov lumpability equivalence (F).

### Theorem H — quantitative failure of quotient intertwining

Let \(K_j\) be actual fine row-stochastic kernels, \(Q_j\) proposed coarse row-stochastic kernels and \(J\) the fixed observation map. Define the **matrix intertwining defect**
\[
D_j=K_jJ-JQ_j,\qquad
\delta_j=\max_{x\in S}\operatorname{TV}\bigl((K_jJ)(x,\cdot),(JQ_j)(x,\cdot)\bigr).
\]
For \(P_{j+1}=P_jK_j\), let the ideal coarse process begin with \(\nu_0=P_0J\) and evolve \(\nu_{j+1}=\nu_jQ_j\). The signed coarse error is exactly
\[
P_NJ-\nu_N
=\sum_{j=0}^{N-1}P_jD_jQ_{j+1}\cdots Q_{N-1}.
\]
Induction on \(N\) proves the identity: multiply the previous error by \(Q_N\) and add the new \(P_ND_N\). Define the Dobrushin coefficient
\[
\tau(Q)=\max_{b,b'\in F}\operatorname{TV}(Q(b,\cdot),Q(b',\cdot))\in[0,1].
\]
Each \(P_jD_j\) has total mass zero and TV norm at most \(\delta_j\). Contracting the zero-mass errors by the following kernels yields
\[
\operatorname{TV}(P_NJ,\nu_N)
\le\sum_{j=0}^{N-1}\delta_j
\prod_{\ell=j+1}^{N-1}\tau(Q_\ell).
\]
For the coarse complete-mixing kernel \(Q_\ell=(1-\alpha_\ell)I+\alpha_\ell\mathbf1\pi_\ell\), \(\tau(Q_\ell)\le1-\alpha_\ell\). Thus if \(\delta_j\le\alpha_j\eta_j\), \(\sum_j\alpha_j=\infty\), and \(\eta_j\to0\), the coarse error tends to zero by the finite-head/vanishing-tail proof already established in the preceding section. Exact fine-type mass recovery STILL requires (G): asymptotically accurate coarse mass does not create missing type labels.

### Theorem I — unavoidable fine-type Bayes error after collision

Fix a strictly positive probability \(\mu\) on \(S\). Any decoder \(d:F\to T\), receiving only \(h(X)\) for \(X\sim\mu\), has success probability
\[
\Pr[d(h(X))=c(X)]
=\sum_{b\in F}\ \sum_{x:h(x)=b,\ c(x)=d(b)}\mu_x.
\]
Optimizing each \(b\) independently gives the **exact minimum achievable misclassification probability**
\[
\boxed{
\mathrm{Err}_*(\mu;h,c)=
1-\sum_{b\in F}\max_{\theta\in T}
\mu\bigl(\{x:h(x)=b,\ c(x)=\theta\}\bigr).
}
\]
It is zero iff \(c\) factors through \(h\), since \(\mu_x>0\) for every \(x\). A randomized decoder cannot improve the optimum because its success probability is a convex combination of deterministic decoding outcomes. This quantitative **irreducible information-loss floor** survives even when the observed diffusion is perfectly lumpable and reaches its stationary distribution.

### Exact arithmetic fixtures and hostile controls

Set \(S=\{12,18,25\}\), coarse radical \(h(12)=h(18)=6,\ h(25)=5\), and fine valuation types \(c(12)\ne c(18)\ne c(25)\). Let \(\mu=(1/3,1/3,1/3)\).

**Fully lumpable ideal diffusion:** with \(\alpha=1/2\), \(K^0=\frac12I_3+\frac12\mathbf1\mu\), ordered coarse states \((6,5)\), the exact quotient is
\[
Q^0=\begin{pmatrix}5/6&1/6\\1/3&2/3\end{pmatrix},\qquad
K^0J=JQ^0.
\]
Every coarse distribution is transported exactly, yet the stationary *fine type* Bayes error is \(1/3\) because the coarse radical-6 fiber contains two distinct positive-weight types. On the two-state set \(\{12,18\}\) with equal masses and a constant radical observation, the error is \(1/2\).

**Nonlumpable collision:** instead let
\[
K=\begin{pmatrix}
1/2&1/4&1/4\\
1/8&1/8&3/4\\
0&0&1
\end{pmatrix}.
\]
The two fine states 12 and 18 both currently have coarse observation 6, but their one-step probabilities of moving to coarse radical 5 are respectively \(1/4\) and \(3/4\). Thus no universal coarse \(Q\) exists. Taking \(Q\) with radical-6 row \((3/4,1/4)\) and radical-5 row \((0,1)\), the row defect is exactly \(\delta=1/2\); its Dobrushin coefficient is \(\tau=3/4\), and the one-step coarse prediction error starting from 18 attains \(\operatorname{TV}=1/2\).

**Actually executed finite preflight:** a standalone Python 3 exact-`fractions.Fraction` script in a temporary path, exit **0**. It checked \(K^0J=JQ^0\), all power identities through \(N=12\), both nonlumpable rows, the one-step sharp TV defect, the general finite Duhamel identity and its TV bound for \(N=1,\ldots,13\), and exhaustive deterministic Bayes decoders (\(3^2=9\) choices) obtaining optimal success \(2/3\). These are finite tests, **not** Lean/kernel verification, not evidence of analytic K₀ realization or asymptotic arithmetic equidistribution.

### Exact source and next Lean dependencies

The existing source `RadicalCollisionBoundary.lean` is now at blob `ddf55d9090d09b785c0c8d2b03148c6a74e72a4c`; the older static verification manifest `docs/verification/Algebra/KTheory/radical-collision-type-boundary-20261025.toml`, blob `c1817d95f960167a8e5485432f0241a40d14f0f7`, pins the **earlier** `6754d346dc7ad4b5e02eb3e97bc475bda1ef847e` source. Do not transfer any old verification status to the new blob. `GrothendieckPort.lean` remains blob `d7a5a42313aec365d7f6bd15d51d74a5a4fb4d8f`. The finite-diffusion and weighted-graph source blobs are respectively `3b88b21b60df16f0e22d73f57eac69b8f8fe8a7c` and `7f414d21cb768cc938f1ef2e4a3077b41c62bb45`. Lean v4.33.0; Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**After #1267 acceptance**, implement exactly one finite independent **lumpability ↔ quotient kernel** theorem in the existing spectral/finite-operator subject taxonomy, with the exact finite index and stochastic hypotheses (not a source-unsound `K₀` coercion). Then implement the finite Duhamel defect identity, type-factorization criterion, and the finite Bayes-error formula. Import existing K-theoretic radical objects **only after** those source candidates compile; preserve its upstream metadata and local attribution `grwtsk contributors`. Source theorem names, new module/commit/blob and exact Lean command receipts remain **NOT_YET_CREATED / NOT_RUN**. Execute new leaf and root compilation, fresh kernel checking and transitive `#print axioms` in a separately authorized pinned checkout, with all runners/receipts outside math in `grwtsk/noeaaeue`.

**Nonclaims:** no classical three-dimensional Navier–Stokes nonblowup, no Tao PDE-to-sieve equivalence, no analytic Baum–Connes statement, no universal arithmetic type density or guaranteed representation of omitted types. Theorems F–I are exact **finite-state operator and information theory**, not global PDE or K-theory classification theorems.
