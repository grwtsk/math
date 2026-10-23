# Strict zero-free half-plane criterion for canonical RH

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`

Issue: #187  
Program: #15  
Base revision: `5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c`  
Base tree: `8aa3904165d91f97952789fa6c0042636a40cc10`

## Bounded objective

This increment formalizes one exact RH-facing comparison:

\[
\operatorname{ZF}_{>1/2}
\quad\Longleftrightarrow\quad
\mathrm{RH},
\]

where `ZF` excludes nontrivial zeta zeros only and the half-plane boundary is
strict.

It does not prove either side.  Its purpose is to give #187 a precise local
ordering theorem for regional zero-free results and to prevent a theorem with
threshold `7/8`, `11/12`, or another value to the right of `1/2` from being
reported as RH.

## Repository audit

The exact terminal target is:

```lean
GRWTSK.RiemannHypothesis.Target.Statement
```

in

```text
GRWTSK/NumberTheory/Zeta/Riemann/Hypothesis.lean
```

The existing theorem

```lean
GRWTSK.RiemannHypothesis.Target.statement_eq_mathlib
```

identifies that proposition definitionally with Mathlib's canonical
`RiemannHypothesis`.

The source predicate

```lean
GRWTSK.RiemannHypothesis.NontrivialZetaZero
```

retains exactly:

- `riemannZeta s = 0`;
- exclusion of negative even trivial zeros;
- exclusion of `s = 1` in the totalized zeta interface.

The existing source theorem

```lean
GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect
```

transports a nontrivial zero at `s` to one at `1-s` without assuming RH.  Its
critical-strip consequence is already available as

```lean
GRWTSK.RiemannHypothesis.NontrivialZetaZero.mem_critical_strip.
```

No declaration named `NontrivialZeroFreeRightHalfPlane` was found on current
`main`, and no branch matching issue #187 was active when this branch was
created.

## Candidate comparison

The execution considered exactly three candidates.

| Candidate | Exact consumer | Missing premise or theorem layer | Existing support | Strength | Formal risk | Speculative distance | Failure value |
|---|---|---|---|---|---|---|---|
| #215 positive-Gram limit | `riemannHypothesis_of_positiveGramLimit` | source-faithful comparison family and accepted Weil criterion | main already contains the criterion/limit interfaces; PRs #224 and #247 own active implementations | conditional RH endpoint | high overlap and analytic supplier risk | high | residual obstruction already documented |
| #135 bounded completeness | finite-height RH/count consumers | source-correct rectangle-edge bounds and isolated exact count | PR #345 already owns a large active stack | finite-height | high branch conflict and numerical-analysis dependencies | medium | count-enclosure obstruction already explicit |
| #187 half-plane lattice | canonical `RiemannHypothesis` | exact threshold ordering and the `1/2` equivalence | `Hypothesis`, `ZeroDefinitions`, and `ZeroSymmetry` on current main | exact criterion/comparison | low | minimal | proves why weaker thresholds do not imply RH |

The #187 candidate was selected because its conclusion terminates directly in
the canonical target, its only substantive imported ingredient is an existing
source-bound reflection theorem, and it does not duplicate an active branch.

## Canonical regional observable

The increment uses one proposition only:

```lean
def NontrivialZeroFreeRightHalfPlane (σ : ℝ) : Prop :=
  ∀ s : ℂ, σ < s.re → ¬ NontrivialZetaZero s
```

Domain:

- complex inputs `s`;
- actual nontrivial zeta-zero predicate;
- strict real-part threshold.

Codomain: `Prop`.

Normalization and sign convention:

- the critical line is `re(s) = 1/2`;
- the region is the strict right half-plane `σ < re(s)`;
- a smaller threshold is a stronger zero-free assertion.

There is no truncation, finite zero list, numerical enclosure, positivity
observable, or asymptotic limit in this theorem layer.

## Main statements

### Threshold ordering

For `a ≤ b`,

\[
\operatorname{ZF}_{>a}\Longrightarrow\operatorname{ZF}_{>b}.
\]

The converse is false for general zero predicates.  The control module places a
toy zero on the vertical line halfway between two thresholds.

### Unconditional weak region

Existing critical-strip membership proves

\[
\operatorname{ZF}_{>1}.
\]

Every threshold `σ ≥ 1` follows by ordering.  This is an exclusion only for the
nontrivial-zero predicate and is deliberately not phrased as raw nonvanishing
at every totalized zeta input.

### RH to a zero-free region

If `1/2 ≤ σ`, canonical RH gives

\[
\operatorname{ZF}_{>σ}.
\]

Every nontrivial zero has real part exactly `1/2`, so none lies strictly to the
right of such a threshold.

### Zero-free region to RH

If `σ ≤ 1/2` and `ZF_{>σ}` holds, then RH follows.

For a nontrivial zero `ρ`:

- if `re(ρ) > 1/2`, the assumed zero-free region excludes it;
- if `re(ρ) < 1/2`, the functional-equation reflection `1-ρ` is also a
  nontrivial zero and has real part strictly greater than `1/2`, so it is
  excluded;
- therefore `re(ρ)=1/2`.

At the exact threshold,

\[
\boxed{
\operatorname{ZF}_{>1/2}
\iff
\mathrm{RiemannHypothesis}.
}
\]

The repository target comparator is then used to state the same equivalence
with `Target.Statement`.

## Dependency path

```text
NontrivialZetaZero.reflect
        +
Target.statement_eq_mathlib
        ↓
NontrivialZeroFreeRightHalfPlane (1/2)
        ↔
canonical RiemannHypothesis
```

This is an exact logical and symmetry comparison.  It supplies no analytic
proof of the zero-free premise.

## Proof classification

- imported repository result: nontrivial-zero reflection;
- repository-specific formal implementation: strict threshold predicate and
  target adapter;
- exact algebra/order proof: threshold monotonicity and reflection dichotomy;
- diagnostic contribution: regional theorems with threshold greater than
  `1/2` are classified as weaker than RH;
- no claim of new theorem-level mathematics in the classical literature.

## Positivity classification

No positivity is proved or assumed in this increment.  In particular, the
result does not use:

- positive kernels;
- Gram forms;
- positive measures;
- traces or states;
- finite-height positivity;
- asymptotic positivity.

The theorem is a zero-location criterion.  It can coexist with the independent
Weil-positive-limit route, but it neither supplies nor consumes its positivity
premise.

## Finite witness and diagnostics

No finite witness can establish the global half-plane premise.

Independent finite rational sanity checks covered:

- threshold monotonicity over finite model zero sets;
- reflection-stable finite sets around `1/2`;
- strict-boundary fixtures;
- failure of the reverse threshold implication.

They completed 1,332,883 elementary assertions across the selected finite
models.  These checks are not Lean parsing, kernel checking, a zeta-zero
certificate, or evidence for the global premise.

## Failure controls

The controls retain the following boundaries.

1. A strict half-plane assertion does not exclude a zero on its boundary.
2. Zero-free to the right of a larger threshold does not imply zero-free to the
   right of a smaller threshold.
3. The unconditional `re(s)>1` exclusion is weaker than the `re(s)>1/2`
   criterion.
4. The equivalence cannot manufacture either RH or the half-plane premise.
5. Trivial-zero and pole exclusions remain in `NontrivialZetaZero`; raw zeta
   nonvanishing is not silently substituted.

## Evidence states

Established by this packet:

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

Repository source inspection is recorded in the PR packet, but no independent
literature review or Lean/Lake execution was performed.

## RH consequence

This increment provides an exact RH-equivalent criterion and a partial order on
right-half-plane results.  It proves no zero-free estimate.

A theorem at threshold `7/8` or `11/12` inhabits
`NontrivialZeroFreeRightHalfPlane σ` for a value `σ>1/2`.  Threshold
monotonicity propagates it only farther right.  It cannot reach the `1/2`
consumer without a separate theorem that improves the threshold.

## Next obstruction

The single next obstruction is:

```text
supply an accepted theorem of
NontrivialZeroFreeRightHalfPlane σ
for some σ ≤ 1/2.
```

At `σ=1/2`, this is exactly RH by the theorem in this packet.  Existing or
reported right-half-plane bounds with `σ>1/2` remain strictly weaker regional
results and must not be promoted.

## Provenance

```text
Mathlib RiemannHypothesis
  ← definitionally compared by Target.statement_eq_mathlib

Mathlib completed-zeta functional equation and nonvanishing
  ← used by the existing NontrivialZetaZero.reflect proof

ZeroFreeHalfPlaneCriterion
  ← formalizes threshold ordering and the exact RH comparison

ZeroFreeHalfPlaneControls
  ← records strict-boundary and converse-order failures
```

No numerical contributor allocation is assigned.
