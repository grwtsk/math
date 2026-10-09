# Least natural prime

`GRWTSK.NumberTheory.two_is_first_prime` combines Mathlib's `Nat.prime_two` and `Nat.Prime.two_le`: two is prime, and every natural prime is at least two. This is a mathematical witness only.

Mathlib is pinned to `db584cd6d46c92f209a44c0f1c829460d327499d` under Lean 4.33.0. The theorem's observed axioms are `propext`, `Classical.choice` and `Quot.sound`; `Nat.Prime.two_le` uses only `propext`. No `sorryAx` is accepted.

```sh
lake update
lake exe cache get Mathlib/Data/Nat/Prime/Basic.lean
lake build
python3 scripts/check.py
```

The checker compiles the selected source again with trust zero, checks its exact target type and two conjunct consumers, and rejects prime one and the false lower bound three. The audit also proves a concrete refutation of that lower bound using prime two. See `evidence/check-results.json` and `evidence/source-manifest.json`.

A first checker incorrectly demanded an empty axiom list. Compilation passed, but that assertion failed. The retained failure record distinguishes the checker error from the mathematical result. The corrected check records the actual standard Lean axioms and rejects `sorryAx`; it does not derive a new theorem from the checker output.

Mathlib: Apache-2.0, upstream copyright and authorship preserved in `LICENSES`. Local conjunction and checking: R.A. Jacob Martone, with OpenAI Codex assistance, MIT. No mathematical originality claim. Owner: [math#70](https://github.com/grwtsk/math/issues/70).


Source attribution: [claim-bound citation](evidence/citation-prime.json), including Leonardo de Moura, Jeremy Avigad and Mario Carneiro. No priority or originality claim.

The Hadwiger–Nelson modules preserve 34 declarations, including exact reader coordinates. Citation: [Moser source](evidence/citation-moser.json). Check with `lake build`, `python3 scripts/check_moser.py` and `python3 scripts/check_finite.py`.
