# Reversible radical-weighted sieve diffusion: Metropolis supplier and spectral-height bounds

Local mathematical attribution: **grwtsk contributors**.
Case: RADICAL-METROPOLIS-CERTIFIED-PATH-20261026.

**Status:** Paper-derived finite transition *method* and new exact finite mathematical deductions. Lean declarations for this new construction: **NOT_WRITTEN**. Lean compilation, fresh kernel checking and transitive axiom audit: **NOT_RUN**. The no-new-dependent-source gate [#1267](https://github.com/grwtsk/math/issues/1267) remains open. Current connected research issue [#1329](https://github.com/grwtsk/math/issues/1329).

This source note deliberately separates **an explicitly proven finite arithmetic edge**, **the repo's internally certified arithmetic transition relation**, **the independent empty-certified seed search graph**, and **the external conjectural/analytic targets**. It does not claim that source inspection is fresh Lean kernel acceptance or that any of the finite operators solve three-dimensional classical Navier–Stokes regularity.

## Original mathematical method, attribution and scope

1. Nicholas Metropolis, Arianna W. Rosenbluth, Marshall N. Rosenbluth, Augusta H. Teller, Edward Teller (1953), *Equation of State Calculations by Fast Computing Machines*, Journal of Chemical Physics **21**, 1087–1092, DOI [10.1063/1.1699114](https://doi.org/10.1063/1.1699114). Established early Markov Monte Carlo acceptance sampling. We do **not** infer a historical influence on the GRWTSK radical or K-theory modules.
2. W. K. Hastings (1970), *Monte Carlo sampling methods using Markov chains and their applications*, Biometrika **57**(1), 97–109, DOI [10.1093/biomet/57.1.97](https://doi.org/10.1093/biomet/57.1.97). The generalized acceptance/rejection framework supplies the standard **Metropolis–Hastings detailed-balance method**.

The precise rational finite-path formulas, arithmetic radical observation counterexamples, and Poincaré estimates below are **our separate mathematical deductions**, not quoted theorems from those papers. Tao's 2009 hyperdissipative Navier–Stokes result discussed in the accompanying reference has entirely different PDE hypotheses; no equivalence is inferred.

## Existing GRWTSK source pin and trust classification

At inspected immutable math commit **93a6068b628fd829a01de008519ced0a6706e8bc**:

- **GRWTSK/GraphSandwichDiffusion.lean**, blob **9a22565da0918bf69511c02a8b871847154b4aab**. Existing fully qualified declarations **GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel.radicalCoprimeWeight**, **.scope**, **.totalWeight_pos**, **.resetKernel_transition_pos_iff_coprime**, **.positiveSieveEdge**, **.certifiedArithmeticInventory**, **.certifiedArithmeticInventory_edge_iff_positive**, **.certifiedArithmeticInventory_search_one_eq_survivors**, **.certifiedArithmeticInventory_oneStep_hit_iff** and **.certifiedArithmeticInventory_positivePath**. All are source proof candidates until fresh accepted Lean receipts. The last inventory is a *new arithmetic inventory*, separate from **seedInventory** where **seedCertified** is False.
- **GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/AlgebraicGraphTheory/FiniteWeightedLaplacian.lean**, blob **7f414d21cb768cc938f1ef2e4a3077b41c62bb45**, existing finite weighted graph energy and Laplacian definitions.
- **GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RootHeatState.lean**, blob **b58e2e0e16b134f110015059b0d3d5dd7d2aca47**. **HeatKernel** uses a **target-first, source-second column-stochastic** transition. GraphSandwichDiffusion.FiniteSieveMarkovKernel uses a **source-first, target-second ROW-stochastic** transition; do not silently confuse them.
- **GRWTSK/Algebra/KTheory/RadicalCollisionBoundary.lean**, blob **ddf55d9090d09b785c0c8d2b03148c6a74e72a4c**, arithmetic radical exponent-information loss in an explicitly supplied K0-*shaped* group completion, **not** constructed analytic C*-K0.
- **lean-toolchain** blob **025e59548e48cf71f2744154e2890beefe30a258**, Lean v4.33.0; **lake-manifest.json** blob **1f2e3e2d66253933a410e981eb359a9b454aae0b**, Mathlib revision **db584cd6d46c92f209a44c0f1c829460d327499d**.

The existing [certified lazy Markov path note](tao-hyperdissipation-radical-sieve-type-completeness-20261025.md) proves general positive-edge/holding support and a finite strong-connectivity lower bound on paper. The missing bridge supplied here is **a local graph Markov kernel with exact stationary arithmetic weights and a weighted spectral energy**, rather than another full-support reset.

## Theorem A — finite reversible proposal/acceptance supplier

Let \(S\) be a finite **nonempty** state set. Let \(w:S\to\mathbb Q_{>0}\) be **strictly positive** weights and \(Z=\sum_{x\in S}w(x)>0\); set \(\pi(x)=w(x)/Z\).

Let \(E\subseteq S\times S\) be a **symmetric off-diagonal** relation whose directed edges have explicit mathematical certificates; arbitrary candidate graph edges are not automatically certified. Let \(a_{xy}=a_{yx}\in\mathbb Q_{\ge0}\) for \(x\ne y\), with \(a_{xy}>0\) iff \(E(x,y)\), and

\[
\sum_{y\ne x}a_{xy}\le\frac12\qquad(\forall x\in S).
\]

Define the source-first Markov transition by

\[
K(x,y)=a_{xy}\min\!\left(1,\frac{w(y)}{w(x)}\right),\quad x\ne y,
\qquad
K(x,x)=1-\sum_{y\ne x}K(x,y).
\]

**Claims, each with direct proofs:** every \(K(x,y)\ge0\); each row sums to \(1\); every holding probability \(K(x,x)\ge1/2\); off the diagonal \(K(x,y)>0\) iff \(E(x,y)\); and

\[
\boxed{\pi(x)K(x,y)=\pi(y)K(y,x)
=\frac{a_{xy}}{Z}\min(w(x),w(y)).}
\]

For \(x=y\), detailed balance is tautological. For \(x\ne y\), multiply the acceptance by \(w(x)\) and simplify \(w(x)\min(1,w(y)/w(x))=\min(w(x),w(y))\); symmetry of \(a\) completes the proof. Thus the **weighted sieve probability is stationary** and K is self-adjoint on \(\ell^2(S,\pi)\). Row stochasticity alone would not establish this stationary distribution without detailed balance.

An explicit general proposal with the stated holding bound is \(a_{xy}=1/[2\max(1,\Delta)]\) on E and zero off E, where \(\Delta\) is the **maximum off-diagonal degree** in the finite undirected graph. All entries are rational. An edge is proposed **only** when it was supplied as a member of E; connectedness is not assumed in Theorem A.

## Theorem B — actual reversible Dirichlet energy and conditional spectral-height floor

For x≠y define the symmetric edge conductance
\[
c_{xy}=\pi(x)K(x,y)=\frac{a_{xy}}{Z}\min(w(x),w(y)).
\]

Let \(L=I-K\) act on real functions with weighted inner product \(\langle f,g\rangle_\pi=\sum_x\pi(x)f(x)g(x)\). Then

\[
\boxed{\langle f,Lf\rangle_\pi
=\frac12\sum_{x,y\in S}c_{xy}(f(x)-f(y))^2
=\sum_{\{x,y\}\in E}c_{xy}(f(x)-f(y))^2.}
\]

Proof: expand the square; stationarity gives equality of the two pure-square sums, and detailed balance gives the cross terms. The kernel contains holding self-loops, but loops make no contribution to this energy. Because \(K(x,x)\ge1/2\), \(P=2K-I\) is itself a nonnegative row-stochastic reversible kernel; hence the eigenvalues of K lie in \([0,1]\).

If E is connected, the only energy-zero functions are constants. Finite-dimensional spectral theory then yields a **strictly positive** first nonzero eigenvalue \(\lambda_1(L)>0\). For any chosen positive-edge spanning tree \(T\subseteq E\), deleting edge e partitions S into \(A_e,B_e\). Define

\[
R_T=\sum_{e\in T}\frac{\pi(A_e)\pi(B_e)}{c_e}>0.
\]

The finite weighted-variance path inequality proves

\[
\boxed{\lambda_1(L)\ge R_T^{-1}>0.}
\]

Proof: \(\mathrm{Var}_\pi(f)=\sum_{x<y}\pi_x\pi_y(f_x-f_y)^2\). On the unique tree path joining x,y, apply weighted Cauchy–Schwarz with coefficients \(c_e\), then sum over pairs. The coefficient of \(1/c_e\) is exactly the product \(\pi(A_e)\pi(B_e)\). Hence \(\mathrm{Var}_\pi(f)\le R_T\,\langle f,Lf\rangle_\pi\), and the variational characterization gives the bound. If E is disconnected, this positive full-space spectral gap **does not follow**, even though detailed balance still holds.

Consequently \(\|K^nf-\pi(f)\|_{\ell^2(\pi)}\le(1-\lambda_1(L))^n\|f-\pi(f)\|_{\ell^2(\pi)}\) for n≥0 under connectedness and laziness. This is finite-time **sieve heat convergence**, not Tao PDE regularity.

## Theorem C — directly adapted to the actual radical/coprimality source at modulus 2

For integer cutoff \(N\ge1\), let

\[
S_N=\{n\in\mathbb N:1\le n\le N,\ \operatorname{Coprime}(n,2)\}
=\{1,3,\ldots,2m-1\},\quad m=\lceil N/2\rceil .
\]

Assign \(w(n)=\operatorname{rad}(n)>0\) and \(Z_N=\sum_{n\in S_N}\operatorname{rad}(n)\). On these **surviving** integer states, let E connect precisely **consecutive odds**, \(|x-y|=2\); require both endpoints to belong to \(S_N\). This is symmetric. Each E edge \(x\leftrightarrow y\) is a subrelation of the source-defined **certifiedArithmeticInventory 2 N** relation **in both directions**, because the source's \(\mathrm{positiveSieveEdge}(2,N,x,y)\) requires only x in scope, y in scope and y coprime to 2. The existing original **seedInventory** nevertheless has no certified mathematical edges. These two inventory categories must remain separate.

For m≥2 the E-graph is the connected odd-integer path; its maximum off-diagonal degree is 1 if m=2 and 2 if m≥3. Let

\[
a_N=\frac1{2\max(1,\Delta_N)},\qquad
K_N(x,y)=
\begin{cases}
a_N\min(1,w(y)/w(x)), & |x-y|=2,\\
0, & x\ne y,\ |x-y|\ne2,\\
1-\sum_{z\ne x}K_N(x,z), & y=x.
\end{cases}
\]

Theorem A constructs a **reversible, positive-holding, row-stochastic** kernel with the **actual finite radical-coprimality survivor distribution** \(\pi_N(n)=w(n)/Z_N\). Off-diagonal positive paths remain within E, hence inside the source's internally certified arithmetic support. The construction is **NOT** definitionally the existing source-independent resetKernel, and its spectrum cannot be inferred from that reset without a separate operator comparison.

Writing \(w_j=\operatorname{rad}(2j-1)\), \(W_j=\sum_{i\le j}w_i\), \(Z=\sum_{i=1}^m w_i\), the path conductances are \(c_j=a_N\min(w_j,w_{j+1})/Z\), so the **exact arithmetic Poincaré resistance** is

\[
\boxed{R_N=\frac{1}{a_N Z}
\sum_{j=1}^{m-1}\frac{W_j(Z-W_j)}{\min(w_j,w_{j+1})}.}
\]

When m≥2, \(0<R_N<\infty\) and \(\lambda_1(I-K_N)\ge1/R_N>0\). Every required type represented by a surviving odd n has positive probability after sufficiently many steps. A type supported only on even integers is absent from S_N and cannot be created by this transition. **No cutoff-uniform lower bound for the actual radical chain is proved by this finite statement.**

### Exact q=2, N=4 spectral fixture: equality of graph and operator gaps

The full arithmetic source scope {1,2,3,4} has radical-coprime weight vector (1,0,3,0). The positive survivor scope is **S={1,3}**, with w=(1,3), Z=4, proposal a=1/2 (maximum degree 1), and

\[
K=\begin{pmatrix}1/2&1/2\\1/6&5/6\end{pmatrix},
\quad\pi=(1/4,3/4),\quad
\mathrm{spec}(K)=\{1,1/3\}.
\]

Thus **the exact gap is \(\lambda_1(I-K)=2/3\)**. The only conductance is \(c_{1,3}=1/8\); the resistance is \(R_T=(1/4)(3/4)/(1/8)=3/2\), giving the SHARP lower bound \(R_T^{-1}=2/3\). Starting at state 1, the state-3 probability after n steps is \((3/4)(1-3^{-n})\). The odd type has positive mass at every positive time; the even type is absent/zero.

### Exact q=2, N=9 radical-collision / coarse Markov obstruction

Survivors S={1,3,5,7,9}, weights w=(1,3,5,7,3), total Z=19 and a=1/4 (maximum degree 2). The path resistance evaluates **exactly to \(R_9=288/19\)**, hence the derived gap lower bound \(\lambda_1(I-K_9)\ge19/288\).

The states **3 and 9 have the same squarefree radical 3**. However, one-step probability of next observing radical 1 is

\[
\Pr[\operatorname{rad}(X_1)=1\mid X_0=3]=K_9(3,1)=1/12,
\qquad
\Pr[\operatorname{rad}(X_1)=1\mid X_0=9]=0 .
\]

Therefore **strong lumpability onto radical labels fails for this ACTUAL arithmetic-weighted local path**, even though detailed balance and complete finite positive type coverage on the fine survivor space both hold. It is not enough that every transition is individually arithmetic; the **aggregated transition probabilities over collided radical fibers** must agree. This gives a genuine collision-aware operator counterexample linked to the repo's existing radical/K0-shaped no-decoder boundary. No analytic C*-K0 map or exact fine-type recovery is inferred.

## Adversarial uniformity obstruction — positive finite gap does not imply a uniform cutoff gap

To show **the abstract finite hypotheses are insufficient** for any n-uniform gap, use a different, explicitly auxiliary family with n≥3, **uniform** weights on an n-vertex undirected path, proposal a=1/4 on adjacent edges, and positive holding. This does **not** assert the actual radical weights become uniform.

The stationary distribution is \(\pi_i=1/n\); conductance per tree edge is \(1/(4n)\). The exact spanning-tree resistance and lower bound are

\[
R_n=\frac{2(n^2-1)}3,
\qquad \lambda_1(I-K_n)\ge\frac{3}{2(n^2-1)}.
\]

Test with \(f(i)=i-(n-1)/2\). Its variance and energy are

\[
\operatorname{Var}_\pi(f)=\frac{n^2-1}{12},
\quad
\mathcal E(f)=\frac{n-1}{4n}.
\]

By the Rayleigh principle,

\[
\boxed{\frac{3}{2(n^2-1)}
\le \lambda_1(I-K_n)\le\frac{3}{n(n+1)}\longrightarrow0.}
\]

So each finite connected lazy path is spectrally gapped, yet the best full-space gap tends to zero as its length grows. Proving an H-uniform arithmetic spectral height floor or diffusion rate requires real new expansion, conductance and sieve-weight estimates; mere finite connectedness and an available K-theory radical port do not supply them.

## Executed finite preflight, negative controls, and upcoming Lean implementation

**Actual in-session execution:** Python 3 standard-library fractions.Fraction program, exit **0** after correcting an earlier proposal-degree mismatch. It inspected four radical-coprimality cutoffs N=4,5,9,19; verified exact rational normalization, nonnegative rows, positive holding, detailed balance and each path-resistance identity. For N=4, exactly recovered K, \(\pi\), \(R=3/2\) and gap 2/3. For N=9, exact \(w=(1,3,5,7,3)\), R=288/19, and coarse radical transition 1/12 vs 0. For the auxiliary uniform-path family n=3,…,59, 57 distinct sizes, exactly checked R_n and both Rayleigh bounds. The full scope modulus-2 weights (1,0,3,0) were separately confirmed. These are **finite mathematical tests only**, NOT a Lean elaboration, kernel result, or axiom audit; no remote runner was used.

**Next Lean source (not yet written; only after #1267 clears):** On the **existing** GRWTSK.GraphSandwichDiffusion finite Markov taxonomy, first construct a symmetric-neighbor Metropolis kernel in the existing row-first FiniteSieveMarkovKernel structure with EXACT proofs of row stochasticity, detailed balance and support, preserving positive holds. Next instantiate odd-integer survivor scope from ArithmeticSieveKernel (the arithmetic source module remains unchanged until independently accepted), prove that every chosen E edge is mutually contained in certifiedArithmeticInventory 2 N, and prove the finite weighted graph Dirichlet identity using the EXISTING FiniteWeightedLaplacian APIs. Only then prove the conditional tree Poincaré gap, 2-state equality and 3-versus-9 nonlumpability witness. Do not invent Mathlib matrix spectral API signatures without first inspecting the pinned version; use concrete finite sums when possible. Source authoring commit, exact new Lean path/blob, exact Lean/Lake commands/exits, fresh kernel checking and transitive #print axioms are **NOT_YET_AVAILABLE / NOT_RUN**. The current validation gate #1267 remains open and all no-merge/no-force-push/remote authorization boundaries remain unchanged. Actual operational runners/receipts belong in grwtsk/noeaaeue, outside math.

**Classification:** Hastings/Metropolis method = genuine imported literature with original authors; GRWTSK existing source = unverified source proof candidates; these finite MH/sieve calculations = new analytic proofs and exact-rational finite evidence; full analytic K-theory realization, asymptotic arithmetic type-density uniformity, physical Yang–Mills mass gap and classical 3D Navier–Stokes nonblowup = unsupplied independent premises.
