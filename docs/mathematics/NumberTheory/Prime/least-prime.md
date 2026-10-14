# Least natural prime

**Statement.** Two is prime and every natural prime is at least two. Any natural prime `q` satisfying `∀ p, Nat.Prime p → q ≤ p` is therefore equal to two.

**Proof.** Mathlib supplies `Nat.prime_two` and `Nat.Prime.two_le`. The GRWTSK conjunction combines them. The new consumer compares `q ≤ 2` with `2 ≤ q` and applies antisymmetry.

**Use.** [The audit](../../../../checks/NumberTheory/Prime/LeastPrime/Architecture.lean) checks the full type and an actual consumer at two. [The walkthrough](../../../start/least-prime.md) demonstrates the evidence lifecycle. This elementary result is not an operational credential or a universal codec-refinement test.

**Sources and evidence.** [Original conjunction](../../../../GRWTSK/NumberTheory/FirstPrime.lean), [uniqueness consumer](../../../../GRWTSK/NumberTheory/Prime/LeastPrime.lean), [current selected receipt](../../../../evidence/prime-architecture-checks.json), [retained citation](../../../../evidence/citation-prime.json). Standard axioms are recorded; no `sorryAx` is accepted. Earlier checker failures remain historical.

**Credit.** Mathlib source authors Leonardo de Moura, Jeremy Avigad and Mario Carneiro; Mathlib community, Apache-2.0. Local composition and consumer: grwtsk contributors, with OpenAI Codex assistance, MIT. No mathematical originality or priority claim; earlier elementary historical lineage is not researched here.
