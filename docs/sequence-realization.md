# Sequence realization and the arithmetic return boundary

This cohort preserves 81 proved theorems and 108 public declarations
from the sequence continuation, under the `GRWTSK` namespace. Independent
destination compilation and the full 189-declaration stored-family audit pass.
Exact comparison with freshly compiled original types and proof bodies also
passes for all 189 stored declarations, with no type, body, universe or axiom
drift under root renaming. Hash bindings and the scope of that check are recorded
in [the verification receipt](../evidence/sequence-realization-checks.json).

The modules retain three separate roles:

- [Scheduling and arithmetic](../GRWTSK/RiemannHypothesis/Conversation/BranchSequenceRealization.lean)
  turns arbitrary signed integer drivers into positive, budgeted batch increments.
  The strictly increasing clock covers every obligation index exactly once.
  Repeated epochs require a nonempty finite universe. Positive partial quotients
  generate genuine native numerator and denominator continuants, with the
  predecessor retained. All-ones digits give Fibonacci denominators and exponent
  zero. Powers of two fail the exact denominator recurrence. Exponential spikes
  retain their ceiling error and predecessor contribution; their extended
  arithmetic exponent equals the limsup of effective spike strengths.
- [Real-frequency existence](../GRWTSK/RiemannHypothesis/Conversation/BranchFrequencyExistence.lean)
  constructs every infinite positive partial-quotient stream's unique irrational
  real frequency in `(0,1)`. Compactness supplies complete quotients; their exact
  floors and fractional parts identify every native continued-fraction digit.
  The selected frequency is noncomputable. Native convergent convergence proves
  uniqueness. Exact native denominator readback transfers the arithmetic exponent
  to the actual real frequency. Every nonnegative finite exponent and the infinite
  exponent occur, with the same effective-strength accounting for sparse spikes.
- [Polynomial return](../GRWTSK/RiemannHypothesis/Conversation/BranchSequenceReturn.lean)
  requires an all-real target/readout identification, a polynomial readout budget,
  and a polynomial complete correction budget. Constants add and exponents take
  their maximum. Frequency displacement remains separate from the positive `4/L`
  counting loss. Spectral comparison and counting inequalities remain explicit
  hypotheses.

The target in the return interface is a parameter. The complete ordered signed
Möbius CCC pickup has not been identified with a spectral observable, and the
exact P04 polynomial cross-energy bound remains open. The almost Mathieu route
is a sufficient interface, not a necessary condition for every possible P04
proof. Scheduling execution, source provenance, competent review, permissions
and authenticated signoff require their own witnesses.

The complete 34-module continuation and its 139-module project dependency closure
are retained in the local transfer checkpoint. This three-module cohort does not
assert completion of that larger migration or of the branch formalization.

Run the independent public replay with:

```sh
python3 scripts/check_sequence_realization.py
```

The checker uses pinned Lean 4.33.0 and Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`, freshly compiles the selected source at
trust zero, and audits every stored declaration, including generated families.
Only `propext`, `Classical.choice` and `Quot.sound` are allowed. The complete
original/destination comparison separately checks universes, elaborated types,
proof bodies, resolution and transitive axiom equality under exact root renaming.
Raw operational evidence and original private context remain outside public source.

Mathematical direction: grwtsk contributors. Formalization and checking: OpenAI
Codex. Local sources are MIT; pinned Lean and Mathlib retain upstream identities,
authorship and licenses. Source module and hash bindings are preserved in the
transfer record. [Avila, Last, Shamis and Zhou, arXiv:2110.07974v2](https://arxiv.org/abs/2110.07974v2)
supplies arithmetic and spectral context; no operator theorem or administrative
conclusion is imported automatically.
