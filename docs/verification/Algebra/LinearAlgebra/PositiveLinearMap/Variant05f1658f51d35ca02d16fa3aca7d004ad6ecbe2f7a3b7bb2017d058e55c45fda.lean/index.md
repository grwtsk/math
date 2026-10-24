# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveLinearMap.Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17ef8eab453a87e29c7128f3349ad9668ab640cd",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17ef8eab453a87e29c7128f3349ad9668ab640cd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Monoid` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ContinuousFunctionalCalculus` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/positivelinearmap--0ec50421693bc76062858ab6.md) | 28 | `declaration-track:0ec50421693bc76062858ab632751b4b2151769273cb855bf16788d6467e97cc` |
| 2 | `def` | [toPositiveLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/topositivelinearmap--55bb542007378fc27e302980.md) | 46 | `declaration-track:55bb542007378fc27e30298013393eea34ff818a35c2f6c9eda986a90b876ee9` |
| 3 | `instance` | [instCoeToLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/instcoetolinearmap--f20fb378e78c78cacc6c83e4.md) | 50 | `declaration-track:f20fb378e78c78cacc6c83e4ba5e6c1a01784abfc86a96df48516b579dbc8a7c` |
| 4 | `lemma` | [_root_.OrderHomClass.ofLinear](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/root-orderhomclass-oflinear--3c1dcc9ab8fa19887eb121ce.md) | 55 | `result-track:3c1dcc9ab8fa19887eb121ce57dc53b2436ed37ce671d5ffa1af11ab848bb9b7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/instance--f74727b75a6a8d26f7b9d78f.md) | 75 | `declaration-track:f74727b75a6a8d26f7b9d78fe4b95ffba7b7ee1e5df2ae08b99dedd4683361e6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/instance--3f63d1965dc25aee10b0ce9b.md) | 84 | `declaration-track:3f63d1965dc25aee10b0ce9bde0787e6caf5f78f648e5c51b1f9f09b754e0dea` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/instance--3f70503a0201e46342d8c9b1.md) | 88 | `declaration-track:3f70503a0201e46342d8c9b1c5672699ee6ff42e26a0aeb3b159513d9bfc032d` |
| 8 | `lemma` | [map_smul_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/map-smul-of-tower--36abede5394a1f42f371ebe7.md) | 92 | `result-track:36abede5394a1f42f371ebe7e1482682dd24bb5c77da2cda5d230f0f2718d3f9` |
| 9 | `lemma` | [map_nonneg](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/map-nonneg--351ddc36dae1dd10f49f1c99.md) | 98 | `result-track:351ddc36dae1dd10f49f1c99af6a4ae2c93dafd5873584b41c9aacd32aac32c6` |
| 10 | `def` | [mk₀](../../../../../mathematics/Algebra/LinearAlgebra/PositiveLinearMap/Variant05f1658f51d35ca02d16fa3aca7d004ad6ecbe2f7a3b7bb2017d058e55c45fda.lean/declarations/mk--a7062febc459ef19fe5f9850.md) | 112 | `declaration-track:a7062febc459ef19fe5f98508c05f51a55c8634970cd3c247842412630121770` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
