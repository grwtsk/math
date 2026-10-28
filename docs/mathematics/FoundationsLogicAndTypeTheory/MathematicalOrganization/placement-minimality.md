# Placement feasibility and minimum cost

Status: **source proof candidate; compilation, fresh kernel checking and transitive axiom audit NOT_RUN**.

The companion [Lean source](../../../../GRWTSK/FoundationsLogicAndTypeTheory/MathematicalOrganization/PlacementMinimality.lean) lives under the same mathematical subject as this page. Its namespace is `GRWTSK.FoundationsLogicAndTypeTheory.MathematicalOrganization.PlacementMinimality`.

## Explicit mathematical meaning

Given a placement domain X, a feasibility predicate F : X → Prop and a cost c : X → ℕ, define

- `IsMinimum p x` := F(x) ∧ ∀ y, F(y) → c(x) ≤ c(y).
- `CheaperExists p x` := ∃ y, F(y) ∧ c(y) < c(x).

The source candidate `minimum_of_no_cheaper` derives minimality from feasibility and exclusion of every cheaper feasible point. `minimum_cost_eq` derives equal cost for any two minima; it does not derive equal placements.

These are generic definitions, not a claim that this repository has a certified minimum. “SAT minimum” is not determined by satisfiability alone. A concrete SAT-based optimization claim needs a pinned placement domain, exact constraints and objective, a Boolean encoding with soundness and completeness, a feasible decoded witness, and a checked exclusion of every lower-cost feasible witness. Excluding only one arbitrary lower cost is insufficient.

The existing [subject placement contract](../../../reference/lean-subject-placement.md) governs admissibility, source preservation, conservative relation kinds and validation. It does not select this objective or provide an optimality certificate. Neither classifier scores nor directory-name agreement establish semantic correctness. Cross-subject relevance can coexist with one physical source home.

## Index fidelity

A retrieval index should preserve source revision, subject identity, declaration identity, hypotheses, cross-subject relevance and evidence status. The [mathematical index](../../index.md) and [complete historical catalogue](../../complete-source-index.md) remain entry points; historical observation counts are not live verified-theorem counts.

The connector reported code-search indexing unavailable on 2026-10-28. That observation does not imply missing mathematics, an invalid theorem, or a nonminimal taxonomy. OpenAI should expose index coverage and preserve the mathematical distinctions above. Internal reindexing and its completeness cannot be certified by repository edits.

No source moves, import changes, SAT execution, whole-corpus semantic review or global optimality certificate are supplied here. See [issue #1417](https://github.com/grwtsk/math/issues/1417) for the scoped trace.
