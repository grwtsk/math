# Raw zeta nonvanishing and the nontrivial-zero half-plane criterion

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_SUPPLIERS_UNREVIEWED`

Issue: #434  
Parent: #187  
Stacked base: draft PR #431 at `200c07bd4409e2cb025ff4efb09ca5125b0d5855`

## 1. Terminal consumer

The parent source draft defines

```lean
GRWTSK.RiemannHypothesis.NontrivialZeroFreeRightHalfPlane
```

and states

```lean
NontrivialZeroFreeRightHalfPlane (1 / 2 : ℝ)
  ↔ _root_.RiemannHypothesis.
```

The canonical repository endpoint remains

```lean
GRWTSK.RiemannHypothesis.Target.Statement
```

with the inherited definitional comparison

```lean
Target.statement_eq_mathlib :
  Target.Statement = _root_.RiemannHypothesis.
```

This increment does not restate or strengthen the target. It supplies the
comparison required before an ordinary zeta-nonvanishing theorem can inhabit
the parent's regional predicate.

## 2. Bounded repository audit

The stacked parent already supplies:

- the exact nontrivial-zero predicate, including negative-even trivial-zero and
  pole exclusions;
- functional-equation reflection of nontrivial zeros;
- strict-threshold monotonicity for the nontrivial-zero region;
- the equivalence at threshold `1/2`;
- an isolated source-only root and passive replay target.

The current public aggregate does not import the parent increment. This child
does not alter `GRWTSK.lean` or `GRWTSK.NumberTheory.Zeta.Riemann`.

No declaration named `RiemannZetaZeroFreeRightHalfPlane` was found in current
`main` before branch creation. No active issue-specific implementation for the
raw/nontrivial comparison was found.

## 3. Candidate comparison

Exactly three candidates were considered.

| Candidate | Exact consumer | Candidate conclusion | Existing support | Formal risk | Speculative distance | Disposition |
|---|---|---|---|---|---|---|
| Review and admit the reported OpenAI `7/8` declaration | issue #187 external-result record | one concrete raw zeta theorem at `7/8` | source identity is named in #187 | exact source, type, dependency, axiom, and replay review required | medium | deferred |
| Raw zeta/nontrivial-zero adapter | parent `NontrivialZeroFreeRightHalfPlane` | equivalence at every nonnegative threshold | parent criterion, `riemannZeta_one_ne_zero`, trivial-zero formulae | low, finite order and exclusion algebra | minimal | selected |
| Proportion-to-region comparison | issue #187 result lattice | an incomparability or conditional implication theorem | counting interfaces exist elsewhere | different quantifiers and substantial normalization work | high | not selected |

The selected result is directly consumed by the parent criterion and introduces
no new analytic premise.

## 4. Canonical regional predicates

The parent predicate is

```lean
NontrivialZeroFreeRightHalfPlane σ :=
  ∀ s : ℂ, σ < s.re → ¬ NontrivialZetaZero s.
```

This increment defines the raw statement

```lean
RiemannZetaZeroFreeRightHalfPlane σ :=
  ∀ s : ℂ, σ < s.re → riemannZeta s ≠ 0.
```

Both use a strict boundary.

Raw nonvanishing implies the nontrivial-zero statement at every threshold,
because a nontrivial zero contains an actual equation `riemannZeta s = 0`.

The converse needs a location hypothesis. If `0 ≤ σ` and `σ < re(s)`, then
`s` cannot equal a negative-even trivial-zero representative. Mathlib also
proves that its totalized value `riemannZeta 1` is nonzero. Therefore every
zeta zero in the region would be a `NontrivialZetaZero`, contradicting the
parent predicate.

The exact comparison is

```lean
0 ≤ σ →
  (RiemannZetaZeroFreeRightHalfPlane σ
    ↔ NontrivialZeroFreeRightHalfPlane σ).
```

No analytic continuation or zero-count estimate is introduced by this proof;
those facts are already contained in the imported zeta definitions and
special-value theorems.

## 5. RH-facing consequence

At the critical threshold,

```lean
RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ)
  ↔ _root_.RiemannHypothesis.
```

The dependency path is

```text
ordinary raw zeta nonvanishing theorem
  ↓ exact nonnegative-threshold adapter
NontrivialZeroFreeRightHalfPlane σ
  ↓ parent threshold comparison
canonical RH, only when σ ≤ 1/2
```

At `σ = 1/2` the premise is exactly RH-equivalent. This increment proves no
such premise.

## 6. Threshold ordering

For the two thresholds named in issue #187,

```text
7/8 < 11/12.
```

Therefore a theorem at `7/8` implies the weaker theorem at `11/12`. The
converse does not follow from threshold monotonicity.

Both satisfy

```text
1/2 < 7/8,
1/2 < 11/12.
```

Consequently neither threshold can instantiate the parent's
`σ ≤ 1/2` region-to-RH theorem. This is a theorem-profile mismatch, not a
claim that the external results are false or mathematically unimportant.

## 7. Proof classification

Imported repository and Mathlib results:

- `NontrivialZetaZero` and its exact exclusions;
- the parent strict half-plane criterion;
- `riemannZeta_one_ne_zero`;
- the negative-even trivial-zero formula.

New repository-specific source drafts:

- the raw strict-half-plane predicate;
- threshold monotonicity;
- raw-to-nontrivial transport;
- nontrivial-to-raw transport for nonnegative thresholds;
- the exact nonnegative-threshold equivalence;
- the raw `1/2` RH equivalence;
- the exact `7/8` versus `11/12` ordering.

No new theorem-level mathematics in the classical literature is claimed.

## 8. Positivity classification

No positivity property is assumed, reconstructed, transported, or concluded.
The increment concerns zero location only. It does not use:

- strict positivity or nonnegativity;
- a positive semidefinite form;
- a positive kernel or measure;
- a trace, state, or ordered `K`-group;
- averaged, asymptotic, truncated, finite-height, or global positivity.

It is independent of the positive-Gram limit route.

## 9. Failure cases

### Strict boundary

A strict statement for `σ < re(s)` says nothing about a zero with
`re(s) = σ`.

### Leftward thresholds and trivial zeros

The actual trivial zero at `s = -2` lies in the strict half-plane
`-3 < re(s)`. Hence raw zeta nonvanishing at threshold `-3` is false. The
nonnegative-threshold hypothesis in the converse adapter cannot be erased.

### Reflection-stable regional control

The toy zero set `{2/5, 3/5}` is stable under `s ↦ 1-s`, is zero-free to the
right of `7/8`, and is not concentrated on the critical line. This is a finite
logical control, not a model of the actual zeta divisor.

### External evidence boundary

A source file, manuscript statement, declaration name, successful build, or
repository owner does not by itself establish the local raw predicate. Exact
type alignment and trust/replay review remain separate obligations.

## 10. Finite diagnostics

Independent exact-rational diagnostics checked:

- raw-to-nontrivial implication at every sampled threshold;
- equivalence at nonnegative thresholds after deleting negative-even trivial
  zeros and retaining a nonzero totalized value at one;
- threshold monotonicity over finite zero sets;
- the `7/8` to `11/12` implication;
- the reflection-stable toy obstruction;
- the actual negative-two boundary control at the logical level.

The diagnostics completed:

```text
8,192 finite models
516,103 assertions
```

They do not parse or elaborate Lean, evaluate the Riemann zeta function, review
an external source, establish a zero-free region, or constitute a replay
receipt.

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

The imported parent source is itself source-draft and unqualified.

## 12. Provenance

```text
Mathlib Riemann zeta definitions and special values
  ↓ imported by
GRWTSK NontrivialZetaZero
  ↓ compared by
ZetaZeroFreeHalfPlaneAdapter
  ↓ consumed by
ZeroFreeHalfPlaneCriterion from PR #431
  ↓ compared with
GRWTSK Target.Statement / canonical RiemannHypothesis

ZetaZeroFreeHalfPlaneAdapterControls
  ← records trivial-zero, threshold, and generic reflection failures
```

No scalar contributor allocation is assigned.

## 13. Exact next obstruction

The next bounded obligation is source and trust alignment for one concrete raw
theorem. The nearest named candidate is the pinned external declaration from
issue #187:

```text
OAI.riemannZeta_ne_zero_of_seven_eighths_lt_re
```

A future increment must inspect its exact revision, type, definition of zeta,
dependencies, axioms, and replay status, then prove a local adapter if the
statement aligns. Even a fully accepted `7/8` theorem would produce only the
regional conclusion at `7/8`; it would not discharge the `1/2` RH premise.
