# Farey residue channels: exact unit Fourier component and nonunit residual

**Status: SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** This is a bounded finite-algebra candidate, not a zero-free-region theorem or an accepted Lean proof. It is deliberately excluded from `GRWTSK.lean`.

## Source identity and imports

- **Integrated source commit on `main`:** [`bbdf91cc945cdbaa24ef72ccc2eb3599b4a732a5`](https://github.com/grwtsk/math/commit/bbdf91cc945cdbaa24ef72ccc2eb3599b4a732a5).
- **Source module:** [`GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean`](https://github.com/grwtsk/math/blob/bbdf91cc945cdbaa24ef72ccc2eb3599b4a732a5/GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean). Blob SHA: `a44f3cf92d0d3c05ff09ac66b43b3d078918982b`.
- **Direct local import:** `GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge` (source blob `017c769ff3cdcc3e4ab1f231c371f59e2d707506` at source commit), itself importing `ResolvableQuintic`, `QuadraticGaussianLine`, `FiniteAdditiveProjector`, `DirichletNonunitResidueObstruction` and their transitive dependencies.
- **Toolchain lock:** `leanprover/lean4:v4.33.0`; Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. The complete transitive import closure must be checked, not merely these direct imports.
- **Library mathematics actually imported:** Michael Stoll, *Orthogonality relations for Dirichlet characters* (Mathlib source, copyright **2024**, **not a separately identified research paper**), [`Mathlib/NumberTheory/DirichletCharacter/Orthogonality.lean` pinned at the Mathlib revision](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/DirichletCharacter/Orthogonality.lean), Apache-2.0. Exact imported declaration: `DirichletCharacter.sum_char_inv_mul_char_eq`. Its hypothesis is `IsUnit b`, with `[NeZero q]`, `CommRing ℂ`, `IsDomain ℂ`, and the appropriate `HasEnoughRootsOfUnity` instance. For `a,b : ZMod q` it states that `∑ χ, χ b⁻¹ * χ a = if b = a then (q.totient : ℂ) else 0`. The imported result is **not** asserted for nonunit `b`.
- **Second actual imported identity:** `GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterAverage_eq_indicator`, expressing full-frequency additive orthogonality at every `ZMod q` residue with `[NeZero q]`. Existing `MulChar.map_nonunit` supplies the nonunit vanishing theorem.

This entry documents an imported Mathlib **library theorem and repository identities**. No specific published paper method, DOI, arXiv paper theorem, or historical influence is claimed or fabricated. If a paper-specific interpolation construction is later imported, it needs a separate paper-to-formalization reference record meeting `AGENTS.md`.

## Exact theorem and scope

For `q : ℕ`, `[NeZero q]`, and `a,b : ZMod q`, let `A_q(a,b)` be the full additive character average at `a-b`, and set

```text
U_q(a,b) = if IsUnit b then (sum over all Dirichlet χ mod q of χ(b⁻¹) χ(a)) else 0
R_q(a,b) = if IsUnit b then 0 else A_q(a,b).
```

The local source proposes, without analytic assumptions,

```text
A_q(a,b) = 1_{a=b}
φ(q) A_q(a,b) = U_q(a,b) + φ(q) R_q(a,b).
```

This scaling is explicit: the source does **not** erase `φ(q)` or silently divide by it. The exact character sum equals `φ(q) A_q(a,b)` **only if** `IsUnit b`.

For a nonunit `b`, `R_q(b,b)=1` while every ordinary Dirichlet character `χ(b)=0`. Therefore, for any coefficients `c(χ) : ℂ`, the sum `∑χ c(χ)χ(b)=0`. No such fixed coefficient expansion in ordinary Dirichlet characters can represent the full point mass `a ↦ A_q(a,b)` at that nonunit target.

**Precise local Lean declarations**, all in `GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition`:

- `additiveResidueSelector`, `additiveResidueSelector_eq_indicator`.
- `unitCharacterSum`, `unitCharacterSum_eq_totient_mul_selector`.
- `unitCharacterCarrier`, `nonunitAdditiveResidual`, `scaled_selector_channels`.
- `nonunit_residual_on_diagonal`, `dirichlet_sum_zero_of_nonunit`, `no_pure_dirichlet_expansion_of_nonunit`.
- `farey_right_coordinate_channels`, `nonunitFareyRightResidue`, `nonunitFareyRightResidue_nonunit`, `farey_nonunit_channel_certificate`.

The last certificate takes the existing cell `1/2 < 2/3`. Its modular determinant is one; its right numerator is two, a nonunit in `ZMod 4`. Thus the additive residual is one on its diagonal, the defined unit character carrier is zero, and no pure ordinary Dirichlet-character expansion exists for this exact point mass. This is a **representation obstruction only**, not an obstruction to using Dirichlet L-functions once a gcd stratification or additive layer is retained.

## Ramanujan, interpolation and zero-free-gap boundaries

The complete additive-frequency projector is **not** the primitive-frequency Ramanujan sum. At modulus `q`, the former sums over *all* `k : ZMod q`, whereas the latter `c_q(n)` sums only over `k` coprime to `q`. The classical divisor reconstruction `∑_{d|q} c_d(n) = q·1_{q|n}` is a possible future supplier connecting the Ramanujan-sum source to this projector. It is **not** proved or consumed by this new module; the specific identity shown in the cited Michael Penn video at timestamp 4:39 remains **unverified**.

For neighboring Farey fractions `a/b < c/d` with `bc-ad=1`, the two-node Vandermonde determinant is `c/d-a/b=1/(bd)`. After clearing those two endpoint denominators, its integral determinant is exactly one, hence is divisible by no prime. Bare adjacent Farey nodes therefore **cannot alone** provide a positive prime-adic valuation of the determinant needed by an interpolation-divisibility contradiction. A separate arithmetic interpolation construction would need to produce those divisibility factors. This elementary inference is recorded here as a mathematical comparison, **not** a new Lean declaration or a proof about OpenAI's interpolation determinant.

OpenAI's proposed uniform exclusion of Landau–Siegel zeros, and later explicit estimates, concern real zeros `β` of primitive nonprincipal real Dirichlet L-functions and a **conductor-uniform analytic** gap `(1-β)log q ≥ c`. None of the local theorems requires or proves primitive characters, zeros, L-function continuation, a positive constant `c`, or signed Möbius cancellation. In particular an additive-vs-multiplicative finite decomposition cannot be promoted into the missing signed dispersion supplier in `ParityResidueVarianceObstructionConnections.lean` without an explicitly proved, scale-correct analytic bridge.

**Logical ledger:** Mathlib orthogonality is `IMPORTED_EXACT_THEOREM` at its stated unit hypothesis. New declarations are `LOCAL_IDENTITY_SOURCE_CANDIDATE`, the general nonunit obstruction is `OBSTRUCTION_AT_SCOPE` **conditional on successful kernel audit**, Ramanujan projector reconstruction is `UNRESOLVED_PREMISE` in the repository, and the Farey/interpolation and Siegel-zero relationships are `ANALOGY_ONLY` / missing quantitative bridge. None is marked `PAPER_TO_LEAN_BRIDGE_PROVED`.

## Verification and acceptance gate

The module was freshly read back from GitHub at the source SHA. Static inspection found nine `theorem` declarations, five `def` declarations, and no declarations using `sorry`, `admit`, or `axiom`. **This establishes only text presence**, not Lean elaboration, kernel acceptance, or transitive axiom cleanliness. Local `lean` and `lake` executables are unavailable. No compiler, fresh kernel, `--trust=0`, or axiom-audit command has been executed for this module; there are no exit-code-zero receipts.

Required on an authorized non-Railway executor, **detached at the actual source-integrating commit**:

```bash
git fetch origin
git checkout --detach bbdf91cc945cdbaa24ef72ccc2eb3599b4a732a5
test "$(git rev-parse HEAD)" = bbdf91cc945cdbaa24ef72ccc2eb3599b4a732a5
cat lean-toolchain
lake env lean --version
grep -nF db584cd6d46c92f209a44c0f1c829460d327499d lake-manifest.json
lake build --wfail GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge
lake build --wfail GRWTSK.NumberTheory.Farey.FareyResidueChannelDecomposition
lake env lean GRWTSK/NumberTheory/Farey/FareyResidueChannelDecomposition.lean
```

Follow with a new detached audit import, `#check` and `#print axioms` for **every public theorem listed above**, `lake env lean --trust=0` on that audit file, a fresh checker replay of this module and its dependencies using the exact installed checker interface, a complete generated/unsafe/sorryAx inspection, and command-specific exit statuses/stdout/stderr. A failed Lake target, missing checker, or older commit's successful check must remain separately recorded. Do not promote this module into `GRWTSK.lean` until all required evidence exists. Existing Farey parent #1093 remains an independent dependency gate.
