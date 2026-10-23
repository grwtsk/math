# RH / #215: vanishing lower-defect adapter for the Weil positive-limit endpoint

**Evidence:** `SOURCE_DRAFT` only. No Lean/Lake execution, elaboration, kernel acceptance, transitive axiom audit, independent replay, or discharged zeta analytic premise is asserted for this increment.

## 1. Repository audit and exact terminal consumer

Repository: `grwtsk/math`. The branch is pinned directly to public `main` at commit `65ae24cbb832d1f5b31186ded3d2d852c9223d19`, tree `e71b94a582876ba47b3b3f3c346ad377cf7ff541`, on `research/rh-approx-positive-limit-215-20261023`. During the audit, `main` moved once from `fcf80a85e518b2a9c60f830f14d83d0d57927878` to this revision. The one intervening commit changed only four polar-topology modules. The selected RH consumer retained blob `c7f56149ec8d1dd8abed6c7fe9dc6d0f9f0b6006`; no RH source was silently rebound.

Toolchain: `leanprover/lean4:v4.33.0`. Mathlib lock revision: `db584cd6d46c92f209a44c0f1c829460d327499d`.

Selected existing issue: #215, `[RH-WEIL-POSITIVE-LIMIT.01] Formalize polarized positive-Gram convergence and the exact RH endpoint`.

Relevant source tree only:

- `GRWTSK/NumberTheory/Zeta/Riemann/WeilPositiveLimitCore.lean`, blob `c7f56149ec8d1dd8abed6c7fe9dc6d0f9f0b6006`;
- `GRWTSK/Analysis/ErrorBounds/FiniteResidualTelescope.lean`, blob `dd122f399d065fea679ead86adb760d177b91026`;
- new `GRWTSK/NumberTheory/Zeta/Riemann/WeilApproximatePositiveLimit.lean`, blob `d0353549f353fbbad96cbf07f4b8274bd7542644`.

The exact terminal consumer already on `main` is

```lean
GRWTSK.RiemannHypothesis.riemannHypothesis_of_positiveGramLimit
  {T : Type*} {W : T → T → ℝ}
  (approximation : PolarizedPositiveApproximation T W)
  (criterion : WeilCriterionForZeta T W) :
  _root_.RiemannHypothesis
```

Its source file is `WeilPositiveLimitCore.lean`, in namespace `GRWTSK.RiemannHypothesis`. Its hypotheses are:

1. one real two-variable stage family with nonnegative diagonal at every stage;
2. pointwise vanishing of `W f g - q_n(f,g)` for every pair;
3. an exact source-bound `WeilCriterionForZeta T W` whose proof field identifies global diagonal nonnegativity with the repository's canonical `RiemannHypothesis` proposition.

Its conclusion is canonical RH. Its mathematical status is **conditional RH-implying**, not an inhabited zeta theorem and not an RH proof. The source explicitly leaves the arithmetic stage construction and the classical zeta Weil criterion open.

The next premise selected here is narrower than constructing either missing analytic supplier: adapt stages satisfying `q_n(f,f) ≥ -η_n(f)` with `η_n(f) → 0` into the existing exact-nonnegative interface. This variant is explicitly requested in issue #215.

Active related work was inspected. Draft PR #1074 gives a nine-channel negative-witness budget; draft PR #1075 gives a one-stage defect-versus-residual obstruction. They do not provide this global vanishing-defect adapter. Historical PR #247 contained a scalar approximate-limit lemma, but it is closed, unmerged, based on an old stack, and is not imported. No active branch or declaration named for this selected adapter was found. No non-`main` dependency is used. All dependencies are public; no private or unavailable theorem is treated as supplied.

No repository theorem connects quintic witnesses, interpolation, topology, Hodge theory, spectral constructions, or K-theory to this exact consumer. Those mechanisms are therefore not introduced.

## 2. Candidate-supplier comparison

| Candidate | Exact consumer and missing premise | Candidate conclusion and witness | Expected strength, tractability, speculative distance, failure value |
|---|---|---|---|
| Concrete arithmetic zeta stage family | `riemannHypothesis_of_positiveGramLimit`; missing actual source-faithful `q_n`, complete comparison and exact criterion | Construct a genuine arithmetic/Hilbert stage family and prove every residual vanishes | Terminally strongest, but many unresolved analytic and normalization bridges; not bounded to one auditable theorem layer |
| **Selected: vanishing lower-defect adapter** | `PolarizedPositiveApproximation`; exact stage nonnegativity is stronger than available approximate lower bounds | From `η_n≥0`, `q_n(f,f)≥-η_n(f)`, `η_n(f)→0`, and `W-q_n→0`, construct a nonnegative corrected family with the same limit | Exact conditional algebra; directly requested by #215; low speculative distance; reusable without fabricating arithmetic positivity |
| One-stage negative-witness obstruction | #158 audit interface; a supplied negative target and local lower bound force residual size | `μ≤η+|R_n|` at one stage, as in draft #1075 | Useful diagnostic but does not supply the terminal positive-limit premise or prove a global limit |

The selected candidate maximizes direct interface relevance and formal tractability while preserving every analytic obligation.

## 3. Mathematical statement and canonical observable

For an arbitrary type `T` and real target form `W : T → T → ℝ`, the new record

```lean
ApproximatePositiveApproximation T W
```

contains exactly:

```text
q_n(f,g)                 : real stage value
η_n(f)                   : real lower defect
0 ≤ η_n(f)
-η_n(f) ≤ q_n(f,f)
η_n(f) → 0               pointwise in f
W(f,g) - q_n(f,g) → 0    pointwise in f,g
```

The convergence notion is the repository's explicit epsilon definition `VanishesAtInfinity`; it is not operator-norm, weak-operator, trace-norm, determinant, Mosco, compact-open, local, or sofic convergence.

The one canonical corrected observable is

```text
q̃_n(f,g) = q_n(f,g) + η_n(f) + η_n(g).
```

Its domain is `ℕ × T × T`; its codomain is `ℝ`. The sign convention is a lower bound `q_n(f,f) ≥ -η_n(f)`, with `η_n(f) ≥ 0`. There are no arithmetic coefficients, prime sums, truncation parameters, tail estimates, interval certificates, differentiation hypotheses, or external zero data in this abstract layer.

The source proves:

```lean
0 ≤ q̃_n(f,f)
W(f,g) - q̃_n(f,g) → 0
```

and therefore constructs

```lean
ApproximatePositiveApproximation.toPositiveApproximation :
  PolarizedPositiveApproximation T W.
```

The principal terminal theorem is

```lean
theorem riemannHypothesis_of_approximatePositiveLimit
    (approximation : ApproximatePositiveApproximation T W)
    (criterion : WeilCriterionForZeta T W) :
    RiemannHypothesis
```

by exact composition with the existing `riemannHypothesis_of_positiveGramLimit`.

The new correction proves only **scalar nonnegativity on the diagonal** of the corrected interface. It does not prove strict positivity, positive semidefiniteness, a positive kernel, a positive measure, positivity of a trace/state, averaged positivity, finite-height positivity, truncation positivity, or global zeta Weil positivity from arithmetic data. In particular, `q̃_n` is not claimed to be Gram, bilinear, sesquilinear, Hermitian, unitary, or source-faithful.

## 4. Dependency path and proof classification

```text
explicit lower defect η_n(f) ≥ 0
  + q_n(f,f) ≥ -η_n(f)
  + η_n(f) → 0
  + W(f,g)-q_n(f,g) → 0
      → corrected q̃_n(f,g)=q_n(f,g)+η_n(f)+η_n(g)
      → PolarizedPositiveApproximation T W
      → existing riemannHypothesis_of_positiveGramLimit
      + exact matching WeilCriterionForZeta T W
      → canonical RiemannHypothesis
```

Proof classification: exact ordered-real algebra plus closure of pointwise vanishing under finite sums and differences. The transport is conditional on all four record fields. It imports no analytic theorem and performs no finite numerical zero verification.

The correction preserves the property consumed by the next declaration: nonnegative diagonal plus pointwise pairwise comparison. It does **not** preserve or claim a stronger structure that the next consumer does not require.

## 5. Finite witness and failure cases

A source-level finite fixture uses `T = Unit`, target `W=0`,

```text
η_0 = 1,  q_0 = -1,
η_n = 0,  q_n = 0  for n≥1.
```

It satisfies every new record field and proves that the interface genuinely permits a finite negative stage rather than silently restoring exact stagewise positivity.

A separate hostile theorem proves that the constant defect `η_n=1` does not vanish. This blocks the false model `W=q_n=-1`, `η_n=1`: its lower bound and comparison are exact, but the target remains negative because the defect never disappears.

Other information-loss and failure boundaries:

- Without `η_n(f)→0`, approximate lower bounds do not imply target nonnegativity.
- Without the full pairwise comparison `W-q_n→0`, the adapter cannot inhabit the existing polarized interface.
- Adding one-variable defects can destroy bilinearity, sesquilinearity, Hermitian symmetry, and Gram realizability; none is inferred.
- The adapter reconstructs no positivity from primes or prime powers. A concrete zeta use must derive both the lower defect and comparison from an independent arithmetic source.
- A source drift in `T`, `W`, normalization, or criterion invalidates the terminal composition.
- The theorem cannot identify which residual channel fails at a negative witness; #1074/#1075 remain separate diagnostics.
- No finite list of tests is promoted to `∀ f,g`.
- No non-unitary transport, interpolation, quintic witness, spectral model, topological construction, Hodge object, or K-theoretic group completion is used.

## 6. Evidence state and RH consequence

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

The authoring environment has no Lean or Lake executable. No successful elaboration, exact declaration print, axiom closure, warning-clean build, fresh-kernel replay, or independent receipt is claimed. Absence of explicit `sorry`, `admit`, or a newly authored `axiom` in the source is not a substitute for these checks.

RH consequence: **conditional reduction and reusable analytic interface only**. This layer reaches the existing RH-implying declaration if both a concrete approximate-positive zeta family and the exact matching `WeilCriterionForZeta` are supplied. Neither is constructed here. No finite-height, zero-free-region, density, RH, or non-RH theorem is claimed.

## 7. Provenance and attribution

Provenance DAG:

```text
FiniteResidualTelescope.VanishesAtInfinity closure lemmas
    → new corrected-comparison theorem
WeilPositiveLimitCore.PolarizedPositiveApproximation
    → new adapter
WeilPositiveLimitCore.riemannHypothesis_of_positiveGramLimit
    → new conditional terminal wrapper
issue #215 requested approximate-positive variant
    → this repository-specific formal source
future Lean/kernel/replay work
    → possible evidence promotion, not current proof authorship
```

Inherited repository mathematics, this interface implementation, and future verification are separate nodes. No Sarnak theorem or OpenAI mathematics paper is attributed because no external theorem is used. No contributor weights are assigned.

## 8. Exactly one next obstruction

Construct one source-bound zeta instance of `ApproximatePositiveApproximation T Wζ` on a precisely declared admissible Weil test space and normalization, deriving both

```text
q_n(f,f) ≥ -η_n(f)
η_n(f) → 0 and Wζ(f,g)-q_n(f,g) → 0
```

from a complete arithmetic residual identity without assuming RH, Weil positivity, or the positivity of the desired limit. The independent exact `WeilCriterionForZeta` remains an explicit terminal premise. Stop before any second bridge.
