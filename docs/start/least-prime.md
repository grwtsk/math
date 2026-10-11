# From an observation to a checked result

We want a precise answer to “What is the least natural prime?” The answer is two. The architecture must preserve why that answer is justified and what each artifact contributes.

1. **Observe:** inspect the pinned Mathlib declarations `Nat.prime_two` and `Nat.Prime.two_le`. Inspection identifies useful facts; it does not create a new proof or give permission to act.
2. **Record a receipt:** bind the inspected source and actual checker run to source digests, dependency revisions, compiler, command, outcome and axioms. A receipt reports an observation and makes it inspectable. It is not a mathematical premise.
3. **Formalize the exact target:** `Nat.Prime 2 ∧ ∀ p : ℕ, Nat.Prime p → 2 ≤ p`. The domain is natural numbers; the second conjunct quantifies over every prime.
4. **Construct the proof:** the existing GRWTSK conjunction imports the two Mathlib facts. It does not infer primality from a receipt or numerical sample.
5. **Check and reuse:** Lean checks the proof under the pinned environment. A downstream consumer proves that any natural prime with the stated leastness property equals two, using antisymmetry of `≤`.
6. **Leave evidence:** retain source, exact types, consumers, axiom audit, negative controls, attribution and failures. Changed inputs require the affected checks to be repeated.

```lean
import GRWTSK.NumberTheory.Prime.LeastPrime

example (q : ℕ) (hq : Nat.Prime q)
    (hmin : ∀ p : ℕ, Nat.Prime p → q ≤ p) : q = 2 :=
  GRWTSK.NumberTheory.Prime.least_prime_eq_two hq hmin
```

Both `hq` and `hmin` are needed. “Every prime is at least three” is false, witnessed by two. “One is prime” is false. The checking fixtures retain these rejections; a failed checker assumption about an empty axiom list is also retained separately.

A scoped certificate identifies the checked proposition and assumptions. It is neither operational authorization nor a publication decision. Here the proof term and checked exact type supply mathematical evidence; the run receipt records the check. General automated certificate issuance and orchestration are separate integration work.

See the [exact result](../mathematics/NumberTheory/Prime/least-prime.md), [verification instructions](../how-to/verify.md) and [evidence roles](../explanation/evidence.md).
