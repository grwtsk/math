# Verification target: GRWTSK.Algebra.LinearAlgebra.ZeroMultiplicity.Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71c4ac37d0781ccaaa08877557eb3b0d8c40324a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71c4ac37d0781ccaaa08877557eb3b0d8c40324a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Rank` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_count_eq_dim_sub_rank](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/declarations/zero-count-eq-dim-sub-rank--260524b1628ec6f01259fbee.md) | 23 | `result-track:260524b1628ec6f01259fbee06d9398ad23c23e0d31f5277bdc023612eb9e182` |
| 2 | `theorem` | [rank_congruence](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/declarations/rank-congruence--2c290c5109bc7430e3d1d495.md) | 29 | `result-track:2c290c5109bc7430e3d1d49583b915ff2c60ad9cbdbbc14480161b7bce99ca41` |
| 3 | `theorem` | [zero_count_congruence](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/declarations/zero-count-congruence--1807301d2e03d7e634359bea.md) | 35 | `result-track:1807301d2e03d7e634359bea0a29a0b274e2aa172246f79faa275a33975da612` |
| 4 | `theorem` | [zero_count_constructed_congruence](../../../../../mathematics/Algebra/LinearAlgebra/ZeroMultiplicity/Variant492a332a79e797e2da16e949c353389f1a53ee279d8d9baa182ca92eb2f6c069.lean/declarations/zero-count-constructed-congruence--62ce6d3b59904ae60181fc08.md) | 42 | `result-track:62ce6d3b59904ae60181fc08c8f6a3568b83e36a2ffda895c319f18cf3bc3ed3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
