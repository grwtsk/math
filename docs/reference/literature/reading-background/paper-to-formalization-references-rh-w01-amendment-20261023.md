# RH-W01 Bombieri–Weil paper/formalization amendment — 2026-10-23

This file is an **append-only staging amendment** for
`paper-to-formalization-references.md`. It supplements, and does not replace, the
existing cases `BOMBIERI-MOMENTS-WEIL-20261023` and
`RH-W01-WEIL-IMAGE-20261023`.

It is kept separate on the unmerged documentation branch
`docs/rh-w01-paper-reference-refresh-20261023` because the canonical ledger is a
large concurrently maintained file and the connected repository writer exposes
only whole-file replacement, not a patch/append operation. No existing ledger
entry is deleted, rewritten, or downgraded by this staging record. A reviewer may
fold this block into the canonical ledger only with an additions-only diff.

This amendment records the current source identity and the actual verification
gate for the bounded RH-W01 increment concerning the statement that Bombieri's
two moments cannot determine a separating Weil diagonal.

## Repository snapshot and stopping conditions

- Current documentation base inspected: `grwtsk/math@89d641ec26ff1b918e397e64e5fa1f7dde90fd13`.
- Original information-loss source commit:
  `12d66674a317f5503bce3a424a0246c880b7671c`.
- Exact verification request: [math #1099](https://github.com/grwtsk/math/issues/1099),
  pinned to math commit `2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63`,
  tree `5dd9ba1505cbe46e4759fed10468724a661268b6`.
- Pinned Lean toolchain: `leanprover/lean4:v4.33.0`.
- Pinned Mathlib revision: `db584cd6d46c92f209a44c0f1c829460d327499d`.
- The #1099 pin is not rebound by this documentation update.
- No mathematical source, `GRWTSK.lean`, runner, workflow, or operational receipt
  is changed here.
- No merge, force push, Railway execution, or remote workflow dispatch is
  authorized or performed.

## Identifiable papers and exact relationship to the formal source

### P1. Bombieri's Clay problem account

- **Title:** *Problems of the Millennium: the Riemann Hypothesis*.
- **Author/byline:** Enrico Bombieri.
- **Year/version:** official Clay problem account, 2000; collected in
  *The Millennium Prize Problems*, 2006.
- **Stable source:**
  <https://www.claymath.org/wp-content/uploads/2022/05/riemann.pdf>.
- **Exact locator used:** section V, pp. 8–9, on the explicit formula and Weil's
  criterion.
- **Method/hypotheses extracted:** the source test class `W` is a specified class
  of complex-valued functions on the positive half-line with piecewise
  continuously differentiable regularity, finitely many first-kind
  discontinuities, averaged endpoint conventions, and two-sided growth/decay
  conditions. The Mellin measure is `dx/x`. The autocorrelation construction
  requires two separate moment conditions

  ```text
  integral g(x) dx/x = 0,
  integral g(x) dx   = 0.
  ```

  The criterion-facing formula additionally retains its convolution/involution,
  prime-power, archimedean, pole, trivial-zero, nontrivial-zero, multiplicity,
  symmetric summation, and printed sign/normalization conventions.
- **What is actually formalized:** only the two typed moment functionals, exact
  finite canonical-tent moment identities, their finite-dimensional kernel, and
  algebraic consequences. The complete class `W`, its topology, the full signed
  explicit formula, and the analytic criterion are not constructed.
- **Relationship classification:** partial direct hypothesis encoding; source
  proof candidates; unresolved paper bridge. No complete paper theorem is imported.

### P2. Bombieri's quadratic-functional article

- **Title:** *Remarks on Weil's quadratic functional in the theory of prime
  numbers, I*.
- **Author/byline:** Enrico Bombieri.
- **Year/version:** *Rendiconti Lincei. Matematica e Applicazioni*, series 9,
  volume 11 (2000), issue 3, pp. 183–233.
- **Stable archival URL:**
  <https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0>.
- **Stable identifier:** MR1841692. No DOI was independently established for this
  record; none is invented here.
- **Exact method/hypotheses used in comparison:** positive semidefiniteness of
  the article's particular Weil quadratic functional is RH-facing only at the
  article's exact function space, support, normalization, and zero convention.
  Its finite-inertia discussion is conditional on the stated failure-of-RH
  regime and sufficiently large finite truncations. Neither an abstract positive
  form nor positivity on a proper finite image may be substituted for that
  functional.
- **What is actually formalized:** typed criterion records whose proof fields
  must be supplied for one exact `WeilTestSpace` and `WeilHermitianForm`, plus
  algebraic transport/obstruction interfaces. The article does not supply an
  automatically inhabited Lean record.
- **Relationship classification:** conditional interface and methodological
  comparison. No numbered article theorem is claimed as a kernel-verified import.

### P3. Weil's explicit-formula source

- **Title:** *Sur les “formules explicites” de la théorie des nombres premiers*.
- **Author/byline:** André Weil.
- **Year/version:** 1952 paper; stable collected reprint in Weil's collected works.
- **Stable DOI:** <https://doi.org/10.1007/978-1-4757-1705-1_60>.
- **Method/hypotheses used in comparison:** explicit-formula test functions,
  transform conventions, prime and zero distributions, and the sign-sensitive
  quadratic-functional mechanism. Any Lean transport must preserve the exact
  admissible domain, normalization, involution, multiplicities, and all-pairs
  polarized form.
- **What is actually formalized:** no direct theorem translation from this paper.
  The local source contains only abstract criterion and transport interfaces plus
  finite arithmetic forms and obstructions.
- **Relationship classification:** historical/analytic background and analogy;
  no direct import and no historical influence inferred from resemblance.

### P4. Alpöge–Furman's finite signed compression

- **Title:** *More than two thirds of the zeta zeros are simple and on the
  critical line*.
- **Authors/byline:** Levent Alpöge and Ralph Furman.
- **Year/version:** 2026 preprint, first submitted 2026-08-13.
- **Stable arXiv:** <https://arxiv.org/abs/2608.13637>.
- **Stable DOI form:** <https://doi.org/10.48550/arXiv.2608.13637>.
- **Exact method used in comparison:** an actual finite compression of a signed
  Weil Hermitian form, Sylvester inertia/rank–trace control, explicit-formula and
  second-moment inputs, and zero-counting estimates. The precise zero proportions
  depend on the paper's full analytic normalization and estimates.
- **What is actually formalized:** no theorem from the preprint. The local
  information-loss statement is an algebraic obstruction to reconstruction from
  two moments; it supplies no signed compression, zero-counting theorem, or
  proportion of zeros.
- **Relationship classification:** methodological analogy only. No intellectual
  derivation or historical influence is inferred from the common use of finite
  Hermitian data.

## Exact formal declarations and immutable source identities

### Imported/local arithmetic source candidates

The following are repository source declarations, not imports of a paper proof:

- `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction.BombieriZeroMomentConditions`.
- `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection.correctedThreeTent_zeroMoments`.
- `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection.exists_nonzero_threeTent_zeroMoments`.
- `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram.correctedCoordinates_ordinary_balance`.
- `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram.correctedCoordinates_multiplicative_balance`.
- `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram.correctedCoordinates_ne_zero`.
- `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram.correctedSourceDiagonal_nonnegative`.

Current source blobs at the inspected snapshot:

| Module | Git blob |
|---|---|
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection` | `644be0606ac195f35c8409f8877a707edb2aa457` |
| `GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCorrectedArithmeticGram` | `4ce2dc2dc3bcf1c651d88a315a3b0cbb9d09d589` |

Their exact conclusion is finite/source-side: a nonzero stage-2/3/4 coefficient
vector has both declared Bombieri moments zero, while its repository arithmetic
Hermitian diagonal is nonnegative. This is not strict positivity, not a classical
Weil-form identity, and not global positivity on an admissible analytic test class.

### Bounded information-loss theorem layer

Source file:
`GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean`.

- Introduction commit: `12d66674a317f5503bce3a424a0246c880b7671c`.
- Current blob at the inspected snapshot:
  `9a2435d9c74b89ce1434c45bade1aa9beaa6cead`.

Fully qualified declarations:

```lean
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.bombieriMomentProfile
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.bombieriMomentProfile_correctedCoordinates
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.bombieriMomentProfile_not_injective
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.FactorsThroughBombieriMoments
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.readout_eq_zero_on_corrected_of_factorsThroughBombieriMoments
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.not_factorsThroughBombieriMoments_of_separates_corrected
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.classicalDiagonalReadout
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.ClassicalDiagonalFactorsThroughBombieriMoments
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.no_classicalDiagonalFactorization_of_separates
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.no_classicalDiagonalFactorization_of_positive
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.no_classicalDiagonalFactorization_of_exactTransport
```

Exact hypotheses and conclusions:

1. `bombieriMomentProfile : Combination 2 → ℂ × ℂ` records the ordinary and
   reciprocal/multiplicative moments of the actual three-coordinate canonical
   square-tent coefficient space.
2. `bombieriMomentProfile_correctedCoordinates` proves the exact pair is `(0,0)`.
3. `bombieriMomentProfile_not_injective` uses the separately proved
   `correctedCoordinates ≠ 0`; this is exact algebra, not bounded numerical evidence.
4. `FactorsThroughBombieriMoments readout` requires an actual typed decoder
   `decode : ℂ × ℂ → α` and exact equality
   `readout = decode ∘ bombieriMomentProfile`.
5. Every such factorization identifies `correctedCoordinates` with the zero vector.
6. A supplied classical diagonal that separates those inputs cannot factor through
   the two moments. Strict positivity at the witness is only one explicit
   sufficient separation hypothesis.
7. The exact-transport specialization additionally assumes an actual
   `ExactSourceBoundTransport` and **strict** source diagonal
   `0 < correctedSourceDiagonal`. The repository's existing nonnegativity theorem
   does not discharge this premise.

### Criterion-facing conditional interfaces

Source file `GRWTSK/NumberTheory/Zeta/Riemann/WeilCriterion.lean`, current blob
`29d8c4f1c741ab25f6abd136a3c3c2eb900da69a`:

```lean
GRWTSK.RiemannHypothesis.WeilHermitianForm.PositiveDiagonal
GRWTSK.RiemannHypothesis.WeilPositivityImpliesRH.proof
GRWTSK.RiemannHypothesis.WeilPositivityIffRH.proof
GRWTSK.RiemannHypothesis.PositiveNormalizationTransport.sourcePositive_of_repoPositive
```

`WeilPositivityImpliesRH.proof` consumes global nonnegativity on every vector in
one exact source-bound test space and returns canonical `_root_.RiemannHypothesis`.
It is an interface with an actual proof field; no citation string inhabits it.

Source file
`GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentWeilTransportObstruction.lean`,
current blob `2c25cac04fe5575ac0242349a2dcc5592d19f0bb`:

```lean
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.ExactSourceBoundTransport
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.ExactSourceBoundTransport.image_diagonal_eq
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.ExactSourceBoundTransport.positiveCone_preserved_on_image
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentWeilTransportObstruction.no_exactSourceBoundTransport_of_nonzeroCross
```

The transport requires an exact all-pairs polarized identity, a real strictly
positive scale, matching source bindings, and an actual classical target model.
Its positivity theorem applies only to the realized finite image, not to the full
classical test space.

## Separated evidence classification

### Imported mathematics

- Pinned Mathlib algebra, finite sums, integration, topology, complex arithmetic,
  and source files imported by the named GRWTSK modules.
- No complete Bombieri, Weil, or Alpöge–Furman theorem is imported as a Lean proof.
- Repository source visibility is not kernel acceptance.

### Kernel-verified bridges

- **None established for the complete P1/P2/P3/P4-to-classical-Weil chain at the
  #1099 source pin.**
- Earlier separately scoped kernel receipts elsewhere in the ledger remain limited
  to their exact commits, modules, and import closures. They do not automatically
  transfer to the #1099 chain or its later consumers.

### Source proof candidates

- The moment obstruction/rank/correction declarations.
- The corrected arithmetic Gram declarations.
- The bounded information-loss declarations listed above.
- These are source terms until exact source-bound elaboration/kernel receipts are
  recorded for their full dependency closure.

### Conditional interfaces

- `WeilPositivityImpliesRH.proof` and `WeilPositivityIffRH.proof`.
- `PositiveNormalizationTransport`.
- `ExactSourceBoundTransport`.
- The separation/nonzero/strict-positive classical-diagonal premises in the
  information-loss specialization.

### Finite evidence only

The following off-kernel checks are retained as finite evidence, never as Lean or
analytic proof:

1. Four-tent moment preflight:

   ```sh
   python3 /tmp/grwtsk_four_tent_moment_preflight_20261023.py
   ```

   Reported exit `0`; script SHA-256
   `6c68d1e7504bdaf70318a7c58af734cec52d4dac8c62f1ae396aa9353b0ba226`.
   It checked exact determinant/independence identities, the `x=20`/`x=30`
   selectors, and high-precision integral comparisons.

2. Four-tent Bombieri preflight:

   ```sh
   python /tmp/four_tent_bombieri_preflight.py
   ```

   Reported exit `0`; script SHA-256
   `1a12d7b273781fa103b1af23969f954864a05a47a1746a2fd0d80012d90cf2af`.

3. Three-moment rank guard:

   ```sh
   python3 /tmp/bombieri_three_moment_rank_guard_preflight.py \
     > /tmp/bombieri_three_moment_rank_guard_preflight.log 2>&1
   ```

   Reported exit `0`; script SHA-256
   `e669b817d4720aab7f005e02685aeefadf179af8c5734284f0cc1cdab748a4cf`.

These scripts/logs are operational or finite-computation artifacts and remain
outside `grwtsk/math`. Their reported execution does not establish project
elaboration, kernel acceptance, an axiom audit, a classical explicit formula, or
an RH consequence.

### Analogies and comparisons

- Weil 1952 and Bombieri 2000 provide the analytic/function-space context that
  identifies which sign, domain, and normalization must eventually be matched.
- Alpöge–Furman 2026 demonstrates a genuine signed finite-compression method in a
  different theorem chain.
- Similarity does not prove historical influence, source dependence, or theorem
  transfer into the local formalization.

### Unresolved premises

1. A concrete source-bound realization of the full admissible Bombieri/Weil test
   class, including regularity, decay, endpoint conventions, topology, transform,
   involution, and both moments.
2. The complete signed zeta explicit formula with prime-power, gamma,
   pole/trivial-zero, nontrivial-zero, multiplicity, and summation conventions.
3. A concrete classical Hermitian form and an exact all-pairs comparison to the
   repository arithmetic form, with a proved positive normalization scalar.
4. A proof or refutation that the normalized classical diagonal at the corrected
   witness is nonzero.
5. Density/surjectivity and continuity sufficient to pass from a finite realized
   image to every vector in the criterion test space.
6. Tail, truncation, and limiting estimates at the same normalization.
7. An actual accepted `WeilPositivityImpliesRH` proof field for that exact form and
   test space.

## Actual verification state and requested commands

Verification request [#1099](https://github.com/grwtsk/math/issues/1099) is an
open, passive, commit-pinned specification. At the recorded pin, actual status is:

```text
SOURCE_PRESENT
COMPILATION_NOT_RUN
DIRECT_ELABORATION_NOT_RUN
FRESH_KERNEL_NOT_RUN
TRANSITIVE_AXIOM_AUDIT_NOT_RUN
EXTERNAL_REPLAY_NOT_RUN
ANALYTIC_PREMISES_NOT_DISCHARGED
```

No source scan, merge, issue body, or queued request is a kernel receipt. No
successful stdout/stderr, exit status, fresh checker transcript, or complete axiom
closure has been accepted for this exact chain.

Required source-bound commands include, but are not limited to:

```sh
git fetch origin
git checkout --detach 2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63
test "$(git rev-parse HEAD)" = 2f02b4fe86d2255c5d76b03daf4fa9b03a60fb63
cat lean-toolchain
lake env lean --version
grep -n 'db584cd6d46c92f209a44c0f1c829460d327499d' lake-manifest.json

lake build --wfail \
  GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentInformationLoss.lean
```

The imported source chain must be built at the same pin. A temporary audit must
print axioms for at least:

```lean
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.bombieriMomentProfile_not_injective
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.readout_eq_zero_on_corrected_of_factorsThroughBombieriMoments
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.no_classicalDiagonalFactorization_of_separates
GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss.no_classicalDiagonalFactorization_of_exactTransport
```

Any `sorryAx` is failure. All other axioms, generated/private declarations,
unsafe/native dependencies, source hashes, and actual exit statuses must be
recorded. A version-compatible fresh kernel checker must be run rather than
inferred from a source readback.

Operational runners, mutable logs, execution state, and eventual receipts belong
outside canonical mathematics in `grwtsk/noeaaeue`, keyed by the exact math commit.
This amendment itself contains no operational receipt.

## Precise RH consequence and next bridge

The bounded information-loss theorem is an **obstruction only**. It proves that
Bombieri's two moments cannot determine every target diagonal that separates the
exact nonzero kernel witness from zero. It does not prove that the actual classical
Weil diagonal separates that witness, does not prove global positivity, does not
inhabit the criterion, and does not prove RH.

The exact next mathematical bridge is to construct one concrete source-bound
classical zeta Weil model and prove or refute

```lean
WeilHermitianForm.diagonal form
  (realization correctedCoordinates) ≠ 0
```

with the admissible test class, source binding, completed-zeta normalization,
Mellin/Fourier convention, involution, full explicit-formula theorem, and sign
conversion all explicit. Only after that theorem is source-bound can the present
information-loss result constrain an actual criterion-facing reconstruction.
