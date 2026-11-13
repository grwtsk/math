# Exact gamma–pole diagonal and signed cell-graph positivity through length 2/3

By grwtsk contributors. Version 1, 2026-11-12 (America/Los_Angeles).  
MSC2020: 11M26 (primary), 11M41, 42A38, 47A63.

## Source identity, exact target, and evidence

This note supplies an unconditional **WRITTEN** original-source local Weil inequality, plus two independently runnable source-level finite certificate programs. The Python input generator and the C++17 integer verifier were actually executed successfully. The complete functional-analytic derivation and return to the analytically continued zeta source have **not** been Lean-elaborated, kernel-replayed, axiom-audited, or independently reviewed. These checks are **NOT_RUN**; originality is **UNASSESSED**. It is **not** RH, primitive GRH, or a universal certificate-existence result. The mathematical consumer is the zeta part of `WeilNegativeWitness.criticalStripStatement_of_detection_and_nonnegativity`, restricted to actual tests with support length at most `2/3`, and the previous source-bound interval in [WeilZetaSignedCellGraph060.md](WeilZetaSignedCellGraph060.md) (WZCG060-v1-1–4).

For real `L>0`, a complex `f∈L²((0,L);C)` is extended by zero to the whole real line. The **original** logarithmic form domain is

    V_L = {f : Γ_(1/2)(f)<∞},
    Γ_(1/2)(f) = ∫_(0,∞) k(s) ||f(·+s)-f||²_(L²(R)) ds,
    k(s) = e^(-s/2)/(1-e^(-2s)) = e^(s/2)/(2 sinh s).

Use the unchanged **pole-inclusive** zeta Weil form

    Q_(ζ,L)(f) = c_ζ ||f||² + Γ_(1/2)(f)
                         - <f,P_(ζ,L)f> + <f,R_L f>,
    c_ζ = -log π - γ_E - π/2 - 3 log 2,
    P_(ζ,L) = Σ_(n≥2, log n<L) Λ(n)/sqrt(n)
                            (T_(log n)+T_(log n)^*),
    R_L(x,y) = e^((x-y)/2)+e^(-(x-y)/2) = 2 cosh((x-y)/2).

All prime powers, multiplicities implicit in the native explicit formula, both genuine pole orientations, signs, and the complete archimedean gamma term are retained. Since `L₀=2/3<log 2` (also certified rationally), the **actual** prime inventory is empty for the bounded support in this theorem only. No zero locations, ordinates, eigenvalues of an unrelated model, zero-free strip, or RH hypothesis enter.

**WZED23-v1-1 (full-original-form-domain theorem).** For **every** `0<L≤2/3` and **every** complex `f∈V_L`, unconditionally,

    Q_(ζ,L)(f) ≥ (1/6000)||f||²_(L²(0,L)).                    (1)

This is an infinite-dimensional all-test statement on the explicit **finite** support range. It advances WZCG060-v1-1 from `L≤3/5` (margin `1/1000`) to `L≤2/3` with a smaller positive margin. It supplies no claim for `L>2/3`, including `L≥log2` where the first prime becomes active.

## WZED23-v1-2: exact signed physical kernel and stronger diagonal

Retain the literal source-return identity of WZCG060, derived by Tonelli for the finite gamma energy and exact complex polarization of **both** zeta pole orientations. For every `L<log2`, every `f∈V_L`,

    Q_(ζ,L)(f) = ∫_(0,L) V_L(x)|f(x)|² dx
         + ∫_(0<x<y<L) w(y-x)|f(y)-f(x)|² dxdy,             (2)
    w(s) = k(s)-2 cosh(s/2),
    V_L(x) = c_ζ + K(x)+K(L-x)
                     + 4(sinh(x/2)+sinh((L-x)/2)),
    K(t) = ∫_t^∞ k(s) ds
         = atanh(e^(-t/2)) + atan(e^(-t/2)).

The kernel `w` is **strictly decreasing** (`k'/k=1/2-coth(s)<0` and `r'(s)>0`) and is genuinely **negative** at long separations; it must not be dropped. The gamma integral is finite by the domain assumption, and the pole contribution is bounded on the compact support, so (2) subtracts no uncontrolled divergent integrals. The source `R_L` is indefinite: for a centered odd test its negative sinh moment survives. It is never declared positive.

Unlike WZCG060, **do not replace** the exact `K` by `K(t)≥(1/2)log(4/t)+π/4-t/4`; that coarse scalar bound loses enough energy to make the 512-cell comparison indefinite for larger support. Instead calculate exact rational **lower enclosures** of the native potential. For `E_t=e^(t/2)>1`, set

    R_t = (E_t+1)/(E_t-1),          u_t=(E_t-1)/(E_t+1).

The exact, real elementary identity is

    K(t) = (1/2)log R_t + π/4 - atan u_t.                      (3)

The `π/2` terms in `c_ζ+K(x)+K(L-x)` cancel **exactly**, giving

    V_L(x) = -log π - γ_E -3log2
             + Σ_(t∈{x,L-x})[(1/2)log R_t-atan u_t
                                  +2(E_t-E_t^(-1))].         (4)

This is the original gamma-plus-two-pole diagonal, not a substitute or a fitted approximation. Its second derivative is strictly positive because `K''=-k'>0` and both `sinh` terms are convex. It is symmetric under `x↦L-x`, hence decreases on `(0,L/2]` and increases on `[L/2,L)`. Therefore its **minimum on any cell** occurs at the endpoint closest to the support midpoint. This monotonicity is the analytic return licensing the finite rational interval evaluations at a single appropriate endpoint of each cell, **without sampling the unknown test**.

All scalar enclosures are rational with signed remainders: `π=16 atan(1/5)-4 atan(1/239)` with alternating-series remainder; `γ_E` between `H₁₀₀-log100-1/200` and that quantity plus `1/80000`; positive `exp` Taylor partial sums with the complete geometric upper remainder; `atan` alternating series; and `log` via positive atanh power series and exact repeated halving. The interval operations retain both endpoints and their monotonicity. In particular the rational generator explicitly proves `log2>2/3`.

## WZED23-v1-3: sufficient signed cell certificate for **every** complex test

Fix `L₀=2/3`, `N=1024`, `h=L₀/N=1/1536`. Split `(0,L₀)` into cells `I_i=(ih,(i+1)h)` (`0≤i<N`). For **arbitrary** complex `f∈V_(L₀)`, write

    μ_i = h^(-1)∫_(I_i) f,   σ_i=∫_(I_i)|f-μ_i|²,   z_i=sqrt(h) μ_i,
    ||f||² = Σ_i(|z_i|²+σ_i).                               (5)

For each cell choose a **rational** lower bound `v_i≤V_(L₀)(x)` on its whole interior, obtained from (4) and the proven convex symmetry. Choose **signed** rational `m_d≤w((d+1)h)` for each `d=0,…,N-1`; since `w` decreases, `w(|x-y|)≥m_|i-j|` on any pair of cells, including `i=j`. The finite certificate explicitly verifies `m_(N-1)<0`; negative far-range interactions remain. All these lower bounds are genuine intervals with complete rational remainders.

The following **identities for complex functions** are exact, not quadrature approximations:

    ∫_(I_i×I_j)|f(x)-f(y)|² dxdy
         = h²|μ_i-μ_j|²+h(σ_i+σ_j)       (i≠j),
    ∫_(x<y in I_i)|f(x)-f(y)|² dxdy = hσ_i.

Therefore the full infinite-dimensional **original** quadratic form obeys

    Q_(ζ,L₀)(f) ≥ z* M z + Σ_i ν_i σ_i,                      (6)
    M_ii = v_i + h Σ_(j≠i)m_|i-j|,
    M_ij = -h m_|i-j|           (i≠j),
    ν_i = v_i + h(m_0+Σ_(j≠i)m_|i-j|).

No finiteness of the admissible test space or H¹ boundary assumption is used. Consequently it suffices to prove `M≽δ I_N` **and** `ν_i≥δ` for all indices. The finite certificate carries the latter coefficients separately; checking only the 1024-dimensional mean matrix would **not** prove the theorem.

## WZED23-v1-4: exact rational input and independent integer Cholesky residual

The two adjacent maintained programs are:

- `WeilZetaExactDiagonalTwoThirdsInputs.py` (Python 3, `fractions.Fraction`, outward interval enclosures) constructs dyadic rational `v_i` and the **signed** `m_d`, certifies `ν_i>4` for **every** cell, then emits a deterministic `1024×1024` integer matrix file.
- `WeilZetaExactDiagonalTwoThirdsIntegerVerify.cpp` (GCC/Clang C++17 with `__int128`) independently reads those integers, checks symmetry and parameters, constructs a fixed-point lower-triangular integer Cholesky witness and independently checks its **entire** integer residual and absolute row sums. It rejects compilation with `NDEBUG` and refuses invalid/partial inputs.

Let `S=2³⁰`, `Bscale=2²⁵`, and `OFFSET=240000`. The generator forms the exact rational matrix `M` in (6) from its dyadic lower coefficients and emits a symmetric integer matrix `D` with

    |M_ij - (D_ij/S + (OFFSET/S) δ_ij)| < 1/S.               (7)

This is **entrywise closeness, not an invalid entrywise PSD ordering**. The resulting real symmetric rounding error has operator norm at most `N/S <1/1000000`, by the absolute row-sum bound.

The C++ verifier constructs an **integer** lower-triangular matrix `B` by exact integer square roots and correctly rounded signed integer division; its square-root and division inequalities are verified with integer arithmetic. It calculates the full symmetric residual

    E = D/S - B Bᵀ/Bscale²

through exact `__int128` multiply-accumulate operations, including **every entry**, without an external floating-point eigensolver. The finite executed result is

    max_i Σ_j |E_ij| < 1/25000.                              (8)

`B Bᵀ` is nonnegative for **every complex vector**, and the residual is real symmetric. By the spectral absolute-row-sum inequality, (7)–(8) imply

    M ≽ [240000/2³⁰ - 1/25000 - 1/1000000] I_N
      ≻ (1/6000) I_N.                                      (9)

The generator proves all `ν_i>4`; (6) and (9) prove the full-complex-test inequality at `L₀`. For every `0<L≤L₀`, zero-extend `f` to `(0,L₀)`. The **whole-line** gamma, scalar, both signed zeta pole correlations and norm are unchanged, while both genuine prime inventories are empty since `L₀<log2`. Hence its actual `Q_(ζ,L)` equals the already bounded `Q_(ζ,L₀)` on the zero extension, proving (1) for the **entire** indicated support interval.

### Reproducible commands, actual evidence and falsification

In the same directory (Python 3 and a C++17 compiler supporting `__int128`):

```sh
python3 -m py_compile WeilZetaExactDiagonalTwoThirdsInputs.py
python3 WeilZetaExactDiagonalTwoThirdsInputs.py two_thirds.matrix
g++ -std=c++17 -O3 -Wall -Wextra -Werror \
  WeilZetaExactDiagonalTwoThirdsIntegerVerify.cpp -o verify_two_thirds
./verify_two_thirds two_thirds.matrix
sha256sum two_thirds.matrix
```

Executed in the present source session (Debian/Linux, Python 3.13.5, GCC C++17) with **exit 0** for the unoptimized generator and verifier; generation took 8.24 s with approximately 104,580 KB peak, and complete integer Cholesky/residual replay took 0.32 s with approximately 18,048 KB peak. The generated **derived input**, not checked into mathematical source, is 8,482,004 bytes and SHA-256

    f0da67f5488960434260333249dc5df3ac9ff36e13f5788e0cac3e39e8274ca5

The exact checks include `N=1024`, dyadic parameters, `m_last<0`, all `ν_i>4`, every positive integer pivot, **every** symmetric matrix residual entry, the row bound `<1/25000`, the rounding row bound `<1/1000000`, and the final strict margin `>1/6000`. Informational decimal prints (not sign premises): minimum variance ≈`5.000810928868911`; residual row ≈`0.0000336825`; certified mean margin ≈`0.000188881`. The source is verified with exact integer/Fraction assertions; printed decimals are expressly **not** mathematical inputs.

**Failures retained:** an initial attempt to demand residual `<1/50000` failed on this 1024-cell witness; the final correct `<1/25000` test passed and still proves (9). During development a stale generator assertion for the weaker earlier `1/10000` claim failed and was corrected before the final rerun. A hostile matrix with its first diagonal entry decreased by `10¹⁰` was rejected by the C++ verifier at pivot 0 (exit 8). `python3 -O` exited nonzero (assertions disabled), and `g++ -DNDEBUG` was deliberately rejected by a compile-time error. These tests do not substitute for independent mathematical review.

The **nonnumeric proof** of (2)–(6), the source-to-continued-zeta return, and correspondence of all objects to the canonical Lean target are **WRITTEN**, not kernel-verified. In particular the generated finite matrix is a sufficient **fixed-window** certificate; it is not claimed that analogous certificates exist for all windows, which would beg the RH question.

## WZED23-v1-5: literature comparison and open arithmetic obligations

Source identity and finite-cell procedure directly reuse WZCG060-v1-2–4, but the new proof strengthens their coarse logarithmic `V` bound to the **literal exact gamma-plus-two-pole potential** (4). The previous 512-cell comparison at `L=2/3` is indefinite even when its diagonal is refined; increasing to 1024 cells and paying all rounding/residual errors yields this new bounded-support certificate. A negative eigenvalue of that *coarse comparison matrix* is **not** a negative direction of `Q`, and is not an RH counterexample. No new substitute positivity operator is asserted: the proof returns through (2) and (6) to the unchanged arithmetic source.

As explicitly reported by Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, *Rendiconti Lincei* **11** (2000), 183–233, introduction and §12, Yoshida had earlier shown localized Weil positivity in a wider support range. The result here is a source-normalized constructive **rational certificate** and is **not** a claim of novelty or priority. The original Yoshida proof was not independently audited in this continuation; originality remains **UNASSESSED**. The full original pole-inclusive Weil criterion and its actual test domain, not a positive model of zeros, remain the consumer.

No all-window zeta positivity, no primitive Dirichlet family all-window sign, no imprimitive transfer, no infinite tail/source equivalence of a novel spectral model, no universal certificate-existence theorem, and **no proof of RH or primitive Dirichlet GRH** follow. The zeta `n=2` prime activates only above `L=log2`; this theorem stops strictly below it. Long-window bounded-modulation head sign, prime-power phase cancellation, and the infinite-dimensional complement/coupling remain the first unsupplied premises.

### Repository and verification provenance

Initial live `grwtsk/math/main` inspection: commit `59d79f153acb5d6474957016c80ff83dee4493d3`, complete root tree `70f5ccbdf9bf3db62227f5bce122137f281bbe1e`. Root `AGENTS.md` and `CONTRIBUTING.md` read; relevant parent source blobs: `WeilZetaSignedCellGraph060.md` `2699297a0d7b2d2a7914b31f7853cf30ff50002e` and the executable certificate `33734ef9783f74cb1bb96d116174511cf6a91286`. Lean pin `leanprover/lean4:v4.34.1`, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Coordination `grwtsk/math#1801`.

The canonical `noe-proof-automation` and `noe-math-chat-bridge` skill files at `grwtsk/noeaaeue/main` revision `b5087d9b542eb00635b4227dbd4b9d763f44b81f` returned HTTP 404; no verified local skill checkout or Lean/Lake executable is available. **Dependent Noe proof automation is stopped.** The ordinary local mathematical proof calculation is not represented as Noe execution or Lean. Source publication, if recorded, is through authenticated GitHub directly on `main` with an expected-head nonforce update; until its exact readback it must not be claimed as delivered. No existing Lean declarations, imports, conjecture targets, policies, pins or workflows are changed by these source-only additions.

Evidence categories: analytical argument **WRITTEN**, deterministic rational input generation and independent exact integer matrix verification **RUN**, Lean elaboration/full build/fresh kernel replay/transitive axiom audit/certified independent source-to-zeta correspondence/independent analytical review/repository-wide validation **NOT_RUN**, originality **UNASSESSED**. A Git commit or source hash establishes only publication, not mathematical acceptance.
