# Pivot-sixteen canonical-tent validation gates

**Evidence status (2026-10-23): SOURCE_ONLY.** This is a verification specification, not a kernel acceptance receipt. No Lean/Lake executable was available in the current authoring runtime. Do not promote any new theorem to `GRWTSK.lean` until compiled, trust-zero and independently replayed, with complete transitive axiom/declaration audit and literal receipts in `grwtsk/noeaaeue`.

## Exact proof-dependency frontier

Run in dependency order on one fixed Git checkout. These names are module names relative to `GRWTSK/NumberTheory/Zeta/Riemann/`:

| Gate | Module suffix | Mathematical obligation | Acceptance |
|---|---|---|---|
| A | `CanonicalSquareTentBombieriMomentRankObstruction` | Actual tents, reciprocal moments and two-tent determinant | existing dependency must compile |
| B | `CanonicalSquareTentSixteenPivot` | Pointwise strict interior gaps on (9,16) and (16,25) | `--wfail`, theorem #checks, axioms |
| C | `CanonicalSquareTentSixteenGapIntegrability` | Positive-half-line gap nonnegativity and integrability | replay **latest blob**, not stale issue #1156 blob |
| D | `CanonicalSquareTentSixteenGapIntegralPositive` | Strict positive *Lebesgue integrals* by positive-measure support | both integral theorems accepted |
| E | `CanonicalSquareTentSixteenMomentGaps` | Rewrite integral positivity as strict reciprocal/ordinary moment inequalities | both strict moment theorems accepted |
| F | `CanonicalSquareTentCofactorZeroSign`, `CanonicalSquareTentStrictRatioBridge` | Real positive determinant and source cofactor nonvanishing | hypotheses and dependency types exact |
| G | `CanonicalSquareTentMixedWeightClassification`, `CanonicalSquareTentActualExceptionalWeight` | Unique exceptional mixed weight | noninjectivity iff checked |
| H | `CanonicalSquareTentExceptionalWeightSign`, `CanonicalSquareTentExceptionalWeightCast`, `CanonicalSquareTentExceptionalWeightRealAxis`, `CanonicalSquareTentNonnegativeWeightRecovery` | Negative real ratio, exact complex cast and right-half-plane recovery | each checked, all axioms and fresh replay |

The mathematical bottleneck is **gate C through D**. An accepted source-level `cofactorZero ≠ 0` claim is invalid if its imported strict-positive integral proof does not elaborate. Conversely a proved positive integral does not by itself give an accepted cofactor theorem without E and F.

## Required exact run protocol

1. Freeze a **single** actual commit on `main` after all source repairs. Record `git rev-parse HEAD`, `git ls-files`, `git hash-object` for each leaf, `lean-toolchain`, `lake env lean --version`, and the Mathlib entry in `lake-manifest.json`. Intended toolchain: Lean `v4.33.0`, Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`. Do not assume the running toolchain matches those pins.
2. Run `lake build --wfail GRWTSK.NumberTheory.Zeta.Riemann.<Module>` for **each** gate in order. Capture full stdout/stderr and actual exit codes. Stop advancing when any import, theorem, linter or type error occurs; fix only source with new commit and restart a fresh pinned run.
3. Re-run `lake env lean <relative/path.lean>` and audit direct theorem names via separate `#check` and `#print axioms` commands. Recursively enumerate *all* transitive GRWTSK and Mathlib declarations/axioms; check for `sorryAx`, `unsafe`, `opaque`, `axiom`, generated declarations and nonstandard assumptions. `#print axioms` alone is not a complete generated-declaration audit.
4. On the same immutable source/object tree run independently supported fresh-kernel checking with trust zero, and capture the actual invocation and status. An informational issue, `git` blob, or queued job is not a compiler/kernal receipt.
5. Store the exact evidence and runner process **outside the math repo** in `grwtsk/noeaaeue`. No Railway, no force push, no unauthorized remote dispatch, no root import before warning-clean acceptance.

## Mathematical scope boundary

Everything here concerns the finite three-tent coefficient model and two ordinary/reciprocal moment rows. Injectivity after a third arithmetic coordinate, exceptional weights, and cofactor signs do **not** establish a classical Guinand–Weil/Weil form, test-function admissibility, positivity, density, the Riemann hypothesis or any global analytic continuation theorem. The order/phase-retrieval analogy is explanatory rather than an imported paper theorem.
