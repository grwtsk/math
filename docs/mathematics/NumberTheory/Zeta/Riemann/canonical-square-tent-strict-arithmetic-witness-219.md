# RH / #219: explicit prime-17 supplier for strict corrected arithmetic positivity

**Research disposition, 2026-10-23:** `MATHEMATICAL_PROOF_PLAN / EXACT_FINITE_PREFLIGHT`. **Not** `LEAN_ELABORATED`, `KERNEL_CHECKED`, `TRUST_AUDITED`, or a proved comparison with the *classical* Weil form. No new Lean theorem or source import is being claimed by this note.

## 1. Exact consumer and why this matters

The existing repository declaration

`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.no_classicalDiagonalFactorization_of_exactTransport`

requires (alongside an actual `ExactSourceBoundTransport model`) the independent arithmetic premise

```lean
hsource : 0 < correctedSourceDiagonal
```

Its conclusion is **only** that the resulting *classical diagonal* cannot be reconstructed from the two Bombieri moment measurements. The model and exact positive-scale all-pairs transport are proof-record arguments: neither is constructed by the consumer.

The preceding arithmetic source proves `correctedSourceDiagonal_nonnegative` but had not supplied the strict inequality. This note identifies a bounded **prime-17 strictness supplier**, using the actual stage-four canonical arithmetic test. It is not an all-test positivity theorem, nor is it an RH proof.

## 2. Paper attribution — clauses actually used

**Enrico Bombieri**, *Problems of the Millennium: the Riemann Hypothesis*, Clay Mathematics Institute, **2000** (collected edition 2006), **Section V, printed pp. 8–9**. Stable [primary document](https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf).

The only externally sourced conditions consumed here are that a *single* complex test function `g` obeys **both** ordinary and reciprocal moments

\[
\int_0^\infty g(x)\,dx=0,\qquad
\int_0^\infty g(x)\,\frac{dx}{x}=0.
\]

The local `correctedCoordinates` vector is the cofactor combination of the stage-two, stage-three and stage-four canonical square tents for these exact positive-half-line Lebesgue integrals. The strict arithmetic lower bound below **does not occur as a theorem in Bombieri's paper**: it is a new elementary repository-derived supplier, with `vonMangoldt`/tent support definitions as additional local mathematical hypotheses.

No full Bombieri admissible class `W`, Mellin/Weil transform, signed correlation, explicit formula, spectral measure, or criterion-to-RH theorem is imported.

## 3. Actual algebraic and arithmetic source identities

Fix the **three-coefficient** space `Combination 2 = Fin 3 → ℂ` and let `u = correctedCoordinates`. Let `Δ = twoTentMomentDeterminant`, a real number. The existing source declarations assert:

- `twoTentMomentDeterminant_pos : 0 < Δ`, obtained from the two genuine positive and separated ordinary/reciprocal tent moments;
- `cofactorTwo_eq_twoTentMomentDeterminant : cofactorTwo = (Δ : ℂ)`;
- `u (2 : Fin 3) = cofactorTwo` by `correctedCoordinates`;
- `correctedSourceDiagonal_eq_weighted_sum`, which gives the **actual corrected arithmetic** Hermitian diagonal

\[
G=\sum_{i=0}^{2}|u_i|^2\,E_{i+2},\qquad
E_n:=\operatorname{squareTentMangoldt}(n)
=\sum_{n^2<m\le(n+1)^2}\Lambda(m)\,w_n(m),
\]

where `w_n(m)=tent(squareCenter n,squareRadius n,m)` is nonnegative and every `Λ(m) = ArithmeticFunction.vonMangoldt m` is nonnegative.

The source index **2 corresponds to square stage 4**, not stage 2. Its window is `(16,25]`, center `41/2`, radius `9/2`.

## 4. Exact finite witness and strict bound

The prime **17** lies in the stage-four window, and `17.Prime` is decidable. Its exact normalized tent weight is

\[
w_4(17)=\max\left(0,1-\frac{|17-41/2|}{9/2}\right)
=\frac29.
\]

The pinned Mathlib `vonMangoldt` prime identity specializes to `Λ(17)=log 17>0`. All other summands are nonnegative. Hence

\[
E_4\geq\Lambda(17)w_4(17)
=\frac29\log17>0.
\]

The independent exhaustive rational-weight/prime-power preflight verifies the stronger exact finite expression

\[
E_4=\frac29\log17+\frac23\log19+\frac49\log23.
\]

Here 25 is a prime square **at the excluded tent endpoint**, so its weighted contribution is zero. No other integer in `(16,25]` is a non-endpoint prime power. This finite identity is optional for the Lean proof; the single prime 17 is enough.

The previously sourced `Δ>0` implies `|u_2|^2 = Δ^2>0`. For `i=0,1`, each `|u_i|² E_{i+2}≥0`. Thus

\[
\boxed{\quad
G\geq \Delta^2 E_4
\geq \frac29\Delta^2\log17>0.\quad}
\]

**No unproved zero tail, infinite zeta sum, uniformity assumption, or classical Weil form is used in this strict arithmetic inequality.**

## 5. Exactly bounded future Lean suppliers — NOT YET DECLARED

Suggested *new* declarations, to be written **only when the pinned toolchain can compile and check the source** (names are proposals, not extant theorems):

```lean
theorem squareTentMangoldt_four_ge_prime17 :
    (2 / 9 : ℝ) * Real.log 17 ≤ squareTentMangoldt 4

theorem correctedSourceDiagonal_ge_prime17 :
    twoTentMomentDeterminant ^ 2 *
        ((2 / 9 : ℝ) * Real.log 17) ≤ correctedSourceDiagonal

theorem correctedSourceDiagonal_pos :
    0 < correctedSourceDiagonal
```

The positive summand proof should use only `Finset.Ioc` membership of 17, `ArithmeticFunction.vonMangoldt_apply_prime`, `Real.log_pos`, `squareWeight_pos_iff` or the direct rational tent value, and the **nonnegative full sum**. The corrected Gram proof should use `sourcePolarizedForm_self_re`, `arithmeticCrossCoefficient_diag_eq_mangoldt`, `Complex.normSq_pos` for nonzero `u₂`, and nonnegativity of the two remaining diagonal entries.

The *existing* conditional consumer would then admit the **source-supplied** `hsource` rather than accepting an arbitrary strictness premise. Its classical model and transport remain explicit independent hypotheses:

```lean
-- schematic application only; no such new bridge is currently established
no_classicalDiagonalFactorization_of_exactTransport
  (transport := actualExactTransport) correctedSourceDiagonal_pos
```

Crucially, replacing a conditional strictness assumption with a source-proved strictness theorem **does not construct** `actualExactTransport`. The existing `GRWTSK.RiemannHypothesis.ExactSourceBoundTransport` record requires the exact classical target, its signed all-pairs form identity, positive scale and normalization; none follows from moments or the arithmetic diagonal.

## 6. Source and verification bindings

**Source-inspection revision:** `grwtsk/math@556862fc7c9cee3a075230cc08610ab4f76cca4c`, tree `bd418926712ff815a5de1288febbf554011be446`. This is **not** a kernel-checked revision.

| Exact source declaration(s) | File, Git blob, introduction/custody |
| --- | --- |
| `GRWTSK.NumberTheory.Chebyshev.TentSource.squareWeight_pos_iff`, `squareTentMangoldt`, `squareTentMangoldt_nonneg` | [TentSource.lean](https://github.com/grwtsk/math/blob/556862fc7c9cee3a075230cc08610ab4f76cca4c/GRWTSK/NumberTheory/Chebyshev/TentSource.lean), blob `0af34334ffd769414bf0c95563676350c5db916d` |
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentPolarization.arithmeticCrossCoefficient_diag_eq_mangoldt`, `sourcePolarizedForm_self_re` | [CanonicalSquareTentPolarization.lean](https://github.com/grwtsk/math/blob/556862fc7c9cee3a075230cc08610ab4f76cca4c/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentPolarization.lean), blob `f33d5f402160bc141115c450f1488c103e9cf131` |
| `CanonicalSquareTentBombieriMomentRankObstruction.twoTentMomentDeterminant_pos` | [RankObstruction.lean](https://github.com/grwtsk/math/blob/556862fc7c9cee3a075230cc08610ab4f76cca4c/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean), blob `e522772381075f125453ef2ba6b30e63d2873910` |
| `CanonicalSquareTentThreeTentMomentCorrection.cofactorTwo_ne_zero` | [ThreeTentMomentCorrection.lean](https://github.com/grwtsk/math/blob/556862fc7c9cee3a075230cc08610ab4f76cca4c/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentThreeTentMomentCorrection.lean), repaired blob `644be0606ac195f35c8409f8877a707edb2aa457` at source repair `e5de97a20b9c7d40c215fd72240aa3289629f76a` |
| `CanonicalSquareTentCorrectedArithmeticGram.correctedSourceDiagonal_eq_weighted_sum`, `correctedSourceDiagonal_nonnegative` | [CorrectedArithmeticGram.lean](https://github.com/grwtsk/math/blob/556862fc7c9cee3a075230cc08610ab4f76cca4c/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentCorrectedArithmeticGram.lean), repaired blob `4ce2dc2dc3bcf1c651d88a315a3b0cbb9d589` |
| `CanonicalSquareTentBombieriMomentInformationLoss.no_classicalDiagonalFactorization_of_exactTransport` | [BombieriMomentInformationLoss.lean](https://github.com/grwtsk/math/blob/556862fc7c9cee3a075230cc08610ab4f76cca4c/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean), blob `9a2435d9c74b89ce1434c45bade1aa9beaa6cead`, introduced at `12d66674a317f5503bce3a424a0246c880b7671c` |

**Actually executed independent preflight:** Python 3/Sympy `Fraction`/rational classification (exit code **0**) enumerated the exact support, weights, and prime-power factors for canonical stages **2, 3 and 4** and checked the stage-four identity above. This is an elementary finite arithmetic test, **not** proof by the Lean kernel or certified evaluation of the full classical Weil form.

**Lean toolchain lock:** `leanprover/lean4:v4.33.0` (toolchain blob `025e59548e48cf71f2744154e2890beefe30a258`); Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d` (manifest blob `1f2e3e2d66253933a410e981eb359a9b454aae0b`).

**Execution status:** `LEAN_ELABORATION_NOT_RUN`, `FRESH_KERNEL_NOT_RUN`, `TRANSITIVE_AXIOMS_NOT_AUDITED`, `EXTERNAL_REPLAY_NOT_RUN`. In the available authoring container, `lean --version`, `lake --version`, `elan --version` each exit **127**; GitHub DNS exit **2** and `git ls-remote` exit **128**. Prior issue comments and JSON requests are **inert**, and earlier accepted revisions cannot qualify this source. Do not use Railway or force push.

**Relationship to the paper and current conjectures:** `DIRECT_HYPOTHESIS_ENCODING` for Bombieri's two moments; `REPOSITORY_DERIVED_MATHEMATICAL_SUPPLIER_UNFORMALIZED` for prime-17 strictness; `CONDITIONAL_INTERFACE_ONLY` for exact classical transport; `UNRESOLVED_PREMISE` for full Weil test-class admissibility, signed form identification, density, all-zero spectral tail and the RH criterion. The direct arithmetic witness is **not** an unconditional statement about classical Weil positivity or RH.
