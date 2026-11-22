# Prime-Jacobi symbol perturbations and Alpöge arithmetic transport

**Authors:** grwtsk contributors.  
**Source inspected:** `grwtsk/math@e6f117c157771ebe0b9126d91c1b20d94de27936`; Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.  
**Consumer:** [grwtsk/math #1849](https://github.com/grwtsk/math/issues/1849), with signed Weil interface [#1819](https://github.com/grwtsk/math/issues/1819).  
**Alpöge comparison:** mirror `tamnd/riemann-lean` files under `lean/src/`:
- `Formalism/StatementOC.lean`, blob `12ab19c0176bd4135c2b23a7ee3ac22888df0122` (`Sz`, `Gz`, `Schi`, `Gchi`);
- `Formalism/StatementFL.lean`, blob `dc044005eb5db4e1c2a600cc70c8d8974c1aa8c9` (full complex `SchiC`, `GchiC`);
- `Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/Analytic.lean`, blob `599699b5b35f6fb7bf2ab94f5f0c577b14f35ea1` (`An.G`, `An.sumLamChi`, `An.gChi`);
- `Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean`, blob `ed60b4b997cd4703713660b185b9e43fd95559a1` (`Level.Gm`, `Level.wt`);
- `Development/AutomorphicArithmetic/PrimitiveCosets/CoreGm.lean`, blob `3ba7a590e84c5993882ea6c5dcf9fdbed5f07d4d` (`core_gm`);
- `Development/AutomorphicArithmetic/CharacterBoxes/MainConclusion.lean`, blob `ee340012ab19713a8acfecf8adc6a331cbc2f1a4` (`everyCharacter`);
- `Formalism/GammaFactorNonvanishing/CritLine.lean`, blob `95fa4da5c50119db164aa93944d106f22fdb576d` (`rh_of_every`).

The mirror is a read-only source-inspection aid, not the authoritative release or an imported dependency. Its Lean 4.33.1/Mathlib pin is incompatible with the repository's current root build. The Lean/Mathlib communities certified the original RH theorem on 21 November 2026: <https://leanprover-community.github.io/blog/posts/riemann-hypothesis/>. We do **not** claim that any Alpöge theorem has been ported or replayed in `grwtsk/math`.

## 1. An exact first-appearance and perturbation theorem

Let `a_0,...,a_{N-2}` be **positive real bonds**, with zero diagonal. The path Jacobi matrix is `J(i,i+1)=J(i+1,i)=a_i`. Write `x_i=a_i²` and `m_k=(J^k)_{0,0}`. For every `1 ≤ n < N`:

\[
\boxed{m_{2n}(x)=x_0x_1\cdots x_{n-1}+R_n(x_0,\ldots,x_{n-2})}
\]

where `R_n` has nonnegative integer coefficients and does **not** depend on `x_{n-1}`. Every odd root moment vanishes. Here `R_1=0`.

**Proof.** Expand `(J^{2n})_{0,0}` over closed length-`2n` walks of the half-line path. Every such walk is a Dyck excursion from 0. Every crossing of bond `j` outward must be matched by an inward crossing, so its weight is a monomial in the squared bonds `x_j` with a nonnegative integer coefficient. The maximum height is at most `n`. Exactly one walk reaches height `n`: the sequence of `n` outward steps followed by `n` inward steps. Its contribution is precisely `x_0...x_{n-1}`. Every other walk stays at height at most `n−1` and uses only lower-index bonds. An odd closed walk is impossible by parity. This proves the identities. □

If the symbol `x_k` is replaced by `x_k+t` while all other symbols are fixed, then

\[
\boxed{\Delta_k m_{2n}=0\quad(n\le k),\qquad
\Delta_k m_{2(k+1)}=t\prod_{j<k}x_j.}
\]

The exact first-variation formula holds algebraically for every real `t`, although keeping all bonds positive requires `x_k+t>0`. In particular, the Jacobian of the map

\[
(x_0,\ldots,x_{K-1})\mapsto (m_2,m_4,\ldots,m_{2K})
\]

is lower triangular with diagonal `∂m_{2n}/∂x_{n-1}=∏_{j<n-1}x_j`. Therefore

\[
\boxed{\det Dm=\prod_{j=0}^{K-2} x_j^{K-1-j}>0.}
\]

This gives an **exact, globally recursive inverse for positive bonds** and a local nonsingular perturbation response, independently of the previous Hankel determinant argument. Its general Jacobi setting is classical; no general novelty is claimed. For actual primes, set `a_j=p_j`, where `p_j = Nat.nth Nat.Prime j`.

Example:

\[
m_2=x_0,\quad m_4=x_0^2+x_0x_1,\quad
m_6=x_0^3+2x_0^2x_1+x_0x_1^2+x_0x_1x_2.
\]

## 2. Keep arithmetic prime identity separate from character symbols

Fix `X≥2` and enough recovered prime bonds `p_j` to include **every** prime ≤ `X`. For complex symbols `u_p`, define the finite source polynomial

\[
\mathcal S_X(u)=\sum_{p\le X}(\log p)
\sum_{h\ge1,\,p^h\le X} u_p^h\left(\frac X{p^h}-1\right).
\]

**Arithmetic return theorem.** If `u_p=χ(p)` for an actual Dirichlet character, then

\[
\boxed{\mathcal S_X(χ)=\sum_{n\le X}\Lambda(n)\chi(n)\left(\frac Xn-1\right)}.
\]

**Proof.** Each nonzero von Mangoldt term has a unique representation `n=p^h`; complete recovery ensures its prime `p` is included. Multiplicativity of a genuine character gives `χ(p^h)=χ(p)^h`; this includes the value zero when `p` divides the modulus. The sum is finite, so rearrangement is exact. □

Consequently `Re S_X(χ)` is exactly the `Formalism.Schi` sum in Alpöge's `StatementOC.lean`, and `S_X(1)=Formalism.Sz X` with real `X` and the original cutoff convention. The source definition `Formalism.Gchi` adds the further correction `X·Re(L'(1,χ)/L(1,χ))`. This analytic correction **is not** just another finite prime-power term. **Exact source comparison, following fresh inspection of `Analytic.lean` and `StatementFL.lean`:** the former defines
`An.G y = Σ_{1≤n≤⌊y⌋} Λ(n) max(y/n−1,0) − y(log y−1−γ)`,
`An.sumLamChi χ y = Σ_{1≤n≤⌊y⌋} Λ(n) χ(n) max(y/n−1,0)` (complex), and
`An.gChi χ y = if χ=1 then (An.G y:ℂ) else An.sumLamChi χ y + y·(L'/L)(1,χ)`.
For every `y≥1`, any `n≥1` within the sum satisfies `n≤y`; hence the `max` is redundant and **`An.G y = Formalism.Gz y`, `An.sumLamChi χ y = Formalism.SchiC χ y`** as mathematical equalities. For **nontrivial** `χ`, `An.gChi χ y = Formalism.GchiC χ y`, so its real part is `Formalism.Gchi χ y`. For the trivial character, `An.gChi` deliberately selects `An.G`; do not replace it by a problematic `GchiC` whose logarithmic derivative at the zeta pole is not the intended value.

In `Level.Gm`, the sum ranges over `Λ.Nt = Λ.KEPT.erase PChar.one`, so the nontrivial branch applies. Therefore **for y≥1**, the exact finite prime-bond reconstruction gives the full signed character sum in `Level.Gm`, with each `Level.wt` and the independently defined logarithmic-derivative correction retained. The comparison uses only integer range arithmetic, multiplicativity, and these source definitions; an *actual checked Lean cross-edition compatibility theorem* is still NOT_RUN. This is an exact change of source coordinates, **not** a new bound for `Level.Gm`.

## 3. An exact symbol perturbation budget

If `|u_p|≤1` and `|v_p|≤1` for every `p≤X`, the factorization

\[
u_p^h-v_p^h=(u_p-v_p)\sum_{r=0}^{h-1}u_p^{h-1-r}v_p^r
\]

and the triangle inequality imply

\[
\boxed{|
\mathcal S_X(u)-\mathcal S_X(v)|
\le\sum_{p\le X}(\log p)|u_p-v_p|
\sum_{h\ge1,\,p^h\le X}h\left(\frac X{p^h}-1\right).}
\]

The error remains valid for complex roots of unity and zeros of Dirichlet characters. Taking real parts cannot increase it. After preserving the `L'/L` corrections, the `Level.wt` coefficients, and the exact normalization of `An.gChi`, this estimate gives a **signed readout error ledger**. It does not itself give Alpöge's required one-sided estimate on `Level.Gm`.

**Quantitative all-scale obstruction to unrestricted symbol perturbation:** Fix one prime p and change its neutral symbol from `u_p=1` to `v_p=1−t` for fixed `0<t<1`, keeping all other symbols unchanged. Every prime-power contribution to `S_X(u)-S_X(v)` is nonnegative, and the h=1 term alone gives
\[
\mathcal S_X(u)-\mathcal S_X(v)\ge t(\log p)(X/p-1)\qquad(X\ge p).
\]
Thus a fixed nonzero symbol perturbation typically produces an error of **order X**, not `O(X^{1/2+ε})`. At a growing cutoff, merely bounding `|u_p-v_p|\le δ` with fixed δ does not preserve an Alpöge-strength remainder. Even the h=1 term requires δ to decay at least at the relevant power of X, with cancellation and the remaining terms separately controlled. This is a concrete obstruction, not just an engineering precision concern.

A generic perturbation of a bond `p_j` does not preserve primality. A generic perturbation of a character value does not preserve character multiplicativity, conductor, integrality, or its automorphic/theta-lift origin. The existing proof's `DIV`, `SlopeIneq`, and `VWin` interfaces cannot be invoked for arbitrary perturbed symbols. This is the substantive obstruction to treating a differential perturbation as a replacement for Alpöge's arithmetic bound.

## 4. Exact formal integration points and outstanding theorem

- `GRWTSK/Combinatorics/GraphTheory/PrimeJacobiKrylovFrontier.lean` (blob `05aafe27b87dae744c49533a8906b6ab6b08cecb`): existing first-moment inverse, pending Lean source replay. Add the polynomial first-appearance/perturbation theorem in an independent source-preserving module **only after** matching its formal finite-walk definitions.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilFinitePrimeObservations.lean` (blob `a1d3a6350d9bf3a66bdebee6977962c2545e2d9b`): genuine von Mangoldt weights and rational logarithm enclosures; use the existing exact arithmetic rather than arbitrary fitted data.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaPhysicalReturn.lean` (blob `70afaf727ccaed77f170b6cdc48a62ea521e648d`): independently signed explicit-formula source with conductor/gamma/pole and inverse-character orientation; this is not `Formalism.Gz` and needs a separate normalization/transform bridge.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilWindowFilterLedger.lean` (blob `502eaa8234b532d2f599c7bfe27ad873f1a91e6b`): signed error and mixed-term accounting. Issue #1819 demonstrates why lossy finite observations can fail to recover an arbitrary Weil readout.
- Alpöge `UpperTheory.Comparison₂.core_gm`: requires `EAtH` and `CoreAtH`, including tied chains and arithmetic slope/divisibility bounds; reconstruction alone does not produce these data.

**Most valuable next obligation:** prove, for actual recovered prime symbols and all required conductor/character families, a **uniform error-controlled inequality** at arbitrarily large windows that is strong enough to invoke Alpöge's checked Landau criterion. The needed inequality is not a consequence of the nonsingular moment Jacobian. An independent Hilbert–Pólya route additionally needs a source-specific spectral determinant or exact zero-divisor equivalence between the self-adjoint prime Jacobi closure and the completed xi-function.

**Evidence:** The analytical walk and finite prime-power proofs above are complete elementary arguments. A Python standard-library checker verified the Dyck polynomial first-appearance through semilength 8, bond perturbations, and exact Gaussian-rational character twists for characters modulo 4 and 5 through prime cutoff 113; **PASS**. New Lean source compilation/kernel replay and the missing all-window analytic theorem remain **NOT_RUN / OPEN**.