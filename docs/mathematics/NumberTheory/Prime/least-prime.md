# Least natural prime

**Statement.** Two is prime and every natural prime is at least two. Any natural prime `q` satisfying `∀ p, Nat.Prime p → q ≤ p` is therefore equal to two.

**Proof.** Mathlib supplies `Nat.prime_two` and `Nat.Prime.two_le`. The GRWTSK conjunction combines them. The new consumer compares `q ≤ 2` with `2 ≤ q` and applies antisymmetry.

**Use.** [The audit](../../../../GRWTSK/NumberTheory/Prime/Checks/ArchitectureAudit.lean) checks the full type and an actual consumer at two. [The walkthrough](../../../start/least-prime.md) derives the uniqueness statement and shows its Lean consumer.

**Sources and evidence.** [Original conjunction](../../../../GRWTSK/NumberTheory/FirstPrime.lean), [uniqueness consumer](../../../../GRWTSK/NumberTheory/Prime/LeastPrime.lean), current selected receipt (artifact:gitblob:4f3b77b45e32c93c9f9b514c776c1d2df5174a9c), retained citation (artifact:gitblob:86ad55c71a905d8dc2b950f7730a7c3a43e5c685). Standard axioms are recorded; no `sorryAx` is accepted. Earlier checker failures remain historical.

**Credit.** Mathlib source authors Leonardo de Moura, Jeremy Avigad and Mario Carneiro; Mathlib community, Apache-2.0. Local composition and consumer: grwtsk contributors, with OpenAI Codex assistance, MIT. No mathematical originality or priority claim; earlier elementary historical lineage is not researched here.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/NumberTheory/Prime/LeastPrime.lean`](../../../../GRWTSK/NumberTheory/Prime/LeastPrime.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 1 |
| Theorem/lemma commands | 1 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../../reference/library-pages.md#count-definitions) · [Structured inventory](../../../reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->
