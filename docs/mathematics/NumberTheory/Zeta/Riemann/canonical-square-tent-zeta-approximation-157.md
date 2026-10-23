# RH / #157: canonical square-tent zeta approximation from the complete finite-head residual

**Evidence:** `SOURCE_DRAFT` only. This increment has not been elaborated, kernel checked, trust audited, or independently replayed. It does not instantiate a classical Weil criterion and does not prove RH.

## 1. Repository audit and exact consumer

Repository: `grwtsk/math`.

Pinned public base:

```text
commit: c59bffa1b34996d87cd1efb13ad1c90ae3861082
tree:   93371d63dee2ef63e5cb34af29ecc62779cfb6c6
branch: research/rh-square-tent-zeta-approx-157-20261023
```

Toolchain and dependency lock:

```text
Lean:    leanprover/lean4:v4.33.0
Mathlib: db584cd6d46c92f209a44c0f1c829460d327499d
```

Selected existing issue: **#157**, the owner of complete source/residual accounting for the zeta positive-limit route.

The immediate existing consumer is the merged record

```lean
GRWTSK.RiemannHypothesis.ApproximatePositiveApproximation T W
```

from `GRWTSK/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean`. It requires one stage family `q_N`, a nonnegative lower defect `eta_N`, the pointwise lower bound

```text
-eta_N(f) <= q_N(f,f),
```

pointwise vanishing of `eta_N(f)`, and pointwise pairwise vanishing of

```text
W(f,g) - q_N(f,g).
```

The downstream conditional wrapper is

```lean
riemannHypothesis_of_approximatePositiveLimit
  (approximation : ApproximatePositiveApproximation T W)
  (criterion : WeilCriterionForZeta T W) :
  RiemannHypothesis.
```

This increment constructs the first argument only on a deliberately restricted, precisely declared zeta test family. It does not construct the second argument.

Relevant public sources at the pinned base are:

```text
CanonicalTentLedger.lean
  blob d5f4cdab9316269cc8ab1383f3810d057a95453b

CanonicalTentAtomStage.lean
  blob 88ac98a84b68999824b68e9015bee8ca5627359d

CanonicalSpectralPort.lean
  blob 858fb52930dd89de451224aeaf81dcea37d362af

WeilApproximatePositiveLimit.lean
  merged before this branch
```

Active draft PR #1079 proves a related finite-head/Gram comparison for the quartic route. It is not imported and is not a parent. This branch reconstructs only the minimal equality required by the present consumer from declarations already on `main`.

## 2. Precisely declared test family and normalization

The test type is

```lean
structure CanonicalSquareTentTest where
  index : Nat
```

A label `m` represents the real square tent

```text
x |-> tent(squareCenter(m+2), squareRadius(m+2), x).
```

The source stage is therefore always at least two. The arithmetic source is the exact finite prime-power sum on

```text
(m+2)^2 < p^k <= (m+3)^2
```

with coefficient `log p` and the repository square-tent weight.

The selected complete zeta normalization is the repository's absolutely summed square-tent explicit formula:

```text
squareTentMangoldt(m+2)
 =
 squareRadius(m+2)
 - sum over all nontrivial zeta zeros rho,
     multiplicity(rho) * tentKernel(center,radius,rho)
 + rationalTentCorrection(center,radius).
```

The rational correction is the already proved complete negative-even/trivial-zero series. There is no second archimedean integral in this normalization. The tent endpoint channel is zero. Nontrivial-zero multiplicities are retained.

The finite height cutoff at approximation stage `N` is

```text
H_N = N + 2.
```

The finite spectral value is

```text
S_N(m)
 =
 squareRadius(m+2)
 - sum_{|Im rho| <= H_N}
     multiplicity(rho) * tentKernel(center,radius,rho)
 + rationalTentCorrection(center,radius).
```

This is a symbolic finite zero head, not a numerical zero certificate.

## 3. The target and approximants

The real target is the discrete diagonal zeta observable

```text
W_zeta(m,k) =
  canonicalCorrection(m)  if m = k,
  0                       otherwise.
```

The approximation is

```text
q_N(m,k) =
  Re(S_N(m))  if m = k,
  0           otherwise.
```

Off-diagonal values are zero by declaration. This avoids inventing a polarization theorem that the source does not provide.

This object is a source-bound zeta explicit-formula test packet. It is **not**:

- the complete classical Weil test-function space;
- a complex vector-space completion;
- a Hermitian or sesquilinear form on arbitrary test functions;
- a positive-semidefinite kernel;
- an accepted `WeilCriterionForZeta`.

Accordingly, positivity of this restricted diagonal packet has no current RH consequence.

## 4. Complete arithmetic residual identity

The principal exact theorem is

```lean
finiteSpectralValue N m - canonicalCorrection(m)
  = finiteHeadBalance(m+2, H_N).
```

Expanding the right side gives every active signed finite-height channel exactly once:

```text
-squareTentMangoldt(m+2)
+ squareRadius(m+2)
- finite nontrivial-zero head with multiplicities
+ rational trivial-zero correction.
```

The corresponding omitted complete-zero tail is the difference between the complete divisor and the finite head. The existing theorem supplies

```text
norm(finiteHeadBalance(m+2,H_N))
  <= canonicalTailBudget(center,radius,H_N).
```

No prime term, zero multiplicity, pole term, trivial-zero correction, endpoint convention, or omitted tail is dropped.

The new source defines

```text
eta_N(m) = canonicalTailBudget(center(m), radius(m), N+2).
```

## 5. Arithmetic positivity reconstruction

The target diagonal is not assumed positive. Existing source theorems give the exact chain

```text
W_zeta(m,m)
 = canonicalCorrection(m)
 = stageEnergy(canonicalStage(m), canonicalAmplitude(m))
 >= 0.
```

The stage is built from the genuine finite prime-power inventory. The amplitude is the square root of the independently nonnegative square-tent test. Thus this is arithmetic Gram reconstruction, not a square root of the unknown target form.

From the complete residual estimate:

```text
|W_zeta(m,m) - q_N(m,m)| <= eta_N(m).
```

Since `W_zeta(m,m) >= 0`, ordered-real algebra gives

```text
q_N(m,m) >= -eta_N(m).
```

This is ordinary scalar diagonal control. The finite zero-head approximation itself is not asserted nonnegative.

## 6. Vanishing

For each fixed test label `m`, the existing analytic source theorem states

```text
canonicalTailBudget(center(m),radius(m),H) -> 0
```

as real `H -> +infinity`.

The natural cutoff sequence `N |-> N+2` tends to `+infinity`. Composition gives

```text
eta_N(m) -> 0.
```

A small bridge converts Mathlib `Tendsto` into the repository epsilon predicate `VanishesAtInfinity`.

The complete error bound and `eta_N(m) -> 0` yield

```text
W_zeta(m,m) - q_N(m,m) -> 0.
```

For distinct labels, target and approximation are both exactly zero, so pairwise convergence is immediate.

These results construct

```lean
approximatePositiveApproximation :
  ApproximatePositiveApproximation
    CanonicalSquareTentTest zetaTarget
```

and the source-bound wrapper

```lean
sourceBoundZetaApproximation :
  SourceBoundZetaApproximation.
```

## 7. Candidate supplier comparison

| Candidate | Exact consumer | Missing premise | Candidate conclusion | Support and witness | Strength | Formal tractability | Speculative distance | Failure value |
|---|---|---|---|---|---|---|---|---|
| Full classical Weil test space | `riemannHypothesis_of_approximatePositiveLimit` | Independently defined classical form, all cross terms, exact criterion | Concrete criterion-ready zeta approximation | Issue #189/#219 designs; no accepted complete source implementation | RH-implying only with criterion | High analytic and formal risk | Several open normalization and comparison bridges | Exposes test-class or criterion mismatch |
| **Selected canonical square-tent packet** | `ApproximatePositiveApproximation` | Exact finite-head residual, arithmetic Gram, tail decay | Actual inhabitant on discrete canonical tests | Public canonical ledger, atom stage, spectral port, exact finite head and tail theorem | Exact source-bound conditional interface | Low; finite algebra plus existing limit | No conjectural bridge to the constructed packet | Detects omitted tail/sign/multiplicity errors |
| Stack on draft #1079 | Same finite-head source, quartic route | Depend on an unmerged source comparison | Reuse its finite-head theorem | Active draft branch | Similar finite-height strength | Moderate operational risk | Unnecessary non-main dependency | Base rejection would invalidate this branch |

The selected candidate has the strongest combination of immediate consumer relevance, premise availability, reusability, and formal tractability.

## 8. Positivity classification

Established in source, subject to elaboration:

- nonnegativity of the complete target diagonal through a finite prime-power Gram;
- lower boundedness of each finite zero-head diagonal by `-eta_N(m)`;
- nonnegativity and pointwise decay of `eta_N(m)`.

Not established:

- strict positivity;
- positive semidefiniteness of a polarized form;
- positivity of a kernel, measure, trace, state, or spectral measure;
- positivity of each finite zero head;
- global Weil positivity;
- positivity on a vector-space closure of the tents;
- finite-height RH;
- any zero-free region or density theorem.

No positivity is transported through a category-changing map.

## 9. Failure cases and information boundaries

1. **Omitted tail.** Replacing the complete divisor by the finite head without `finiteHeadBalance` and `canonicalTailBudget` gives no convergence theorem.
2. **Wrong prime sign.** The inherited hostile theorem shows that reversing the arithmetic sign creates a defect of exactly twice the prime-power source.
3. **Dropped multiplicity.** The finite head and complete divisor both retain actual zero multiplicities.
4. **Duplicated gamma term.** The selected normalization already absorbs the negative-even contribution into the rational correction.
5. **Invented off-diagonal form.** Distinct labels are assigned zero; no cross-term identity is inferred.
6. **Changing both height and square stage.** Decay is pointwise in a fixed test label. No uniform-in-`m` convergence is claimed.
7. **Finite-head positivity.** The theorem supplies only a lower bound by a vanishing defect.
8. **Criterion promotion.** This restricted diagonal family has no accepted classical Weil criterion.
9. **Numerical promotion.** No finite list of zeros, floating-point value, interval enclosure, or external certificate is used.
10. **Source drift.** The binding records the exact base and blobs used by the construction.

## 10. Finite witness

The first exact symbolic test is `m = 0`, hence source stage `2`. The first cutoff is `N = 0`, hence height `2`. All sums are the repository's exact finite `heightHead 2`, with actual multiplicities.

This is an independently inspectable symbolic witness to the indexing and support conventions. It is not a numerical evaluation of zeta zeros or a rational interval certificate.

## 11. Evidence states

Established:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

The inherited source files themselves carry source-only status. Their theorem terms are used as repository inputs, but this increment does not upgrade their evidence state.

Lean and Lake were unavailable in the authoring environment. Static source review and absence of explicit `sorry`, `admit`, new `axiom`, or `native_decide` are not kernel evidence.

## 12. RH consequence

The result supplies a **concrete zeta explicit-formula instance** of the approximate-positive interface on one restricted diagonal test family.

It does not directly advance an RH-equivalent criterion because no theorem identifies positivity on this discrete family with RH. It does not prove RH, its negation, a finite-height result, or a zero-free region.

The value is narrower and auditable: it proves that the repository's arithmetic prime-power Gram, complete zero divisor, finite zero heads, and tail theorem genuinely inhabit the newly merged approximate-positive abstraction without assuming target positivity.

## 13. Provenance DAG

```text
canonical square-tent explicit formula
  -> complete signed ledger and finiteHeadBalance
actual prime-power pair inventory
  -> source-faithful atom stage
nonnegative tent
  -> square-root amplitude
  -> positive finite Gram
complete zero divisor + finite heads
  -> canonicalTailBudget and pointwise decay
all of the above
  -> new CanonicalSquareTentZetaApproximation
  -> ApproximatePositiveApproximation instance
```

Classical explicit-formula mathematics, repository-specific implementation, formalization assistance, and future replay are separate provenance nodes. No numerical contributor weights are assigned.

## 14. Exactly one next obstruction

Extend the present diagonal canonical square-tent packet to a **source-proved polarized form on finite complex linear combinations of these tents**, with exact cross-term arithmetic coefficients, complete cross residuals, and a positivity-preserving comparison. Do not identify that extension with the classical Weil criterion until its test-class and normalization transport are separately proved.
