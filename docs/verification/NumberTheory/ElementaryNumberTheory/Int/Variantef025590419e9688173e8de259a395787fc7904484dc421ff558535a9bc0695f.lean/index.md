# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Int.Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48470f41860e65d9c25bede1ae13d545d6132c50",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48470f41860e65d9c25bede1ae13d545d6132c50`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_iff_prime_int](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean/declarations/prime-iff-prime-int--822b7ef838e0f788d6c4850e.md) | 20 | `result-track:822b7ef838e0f788d6c4850ebb0dbd2f760cfc94d273c742e7f388971a31a6f5` |
| 2 | `lemma` | [Prime.pow_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean/declarations/prime-pow-inj--8900c073e4b5e97a379aeb21.md) | 33 | `result-track:8900c073e4b5e97a379aeb21b12d9519110a1be1b0e612ca85a1799a98e3b8ed` |
| 3 | `theorem` | [prime_ofNat_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean/declarations/prime-ofnat-iff--ecca60f676ab834884de24e7.md) | 44 | `result-track:ecca60f676ab834884de24e743d80c2631b16f8f588ac94b27fbdb93bc8013ce` |
| 4 | `theorem` | [prime_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean/declarations/prime-two--53dc07c21003b723773e0216.md) | 48 | `result-track:53dc07c21003b723773e02169a9f91950d23dbe22dda30813243f7103530e36d` |
| 5 | `theorem` | [prime_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Int/Variantef025590419e9688173e8de259a395787fc7904484dc421ff558535a9bc0695f.lean/declarations/prime-three--9278335a87ee7a128cec6d3e.md) | 51 | `result-track:9278335a87ee7a128cec6d3e7a5cb1902f42db20dd4a655e03d0fa26f5c354ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
