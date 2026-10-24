# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fe2c4fcb9e08ac4ca832ea7b6ce3bcd5d580d97",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fe2c4fcb9e08ac4ca832ea7b6ce3bcd5d580d97`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.WithTop` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [coe_sum](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/coe-sum--67cac59f6026c266f23c1b30.md) | 23 | `result-track:67cac59f6026c266f23c1b30b69447be06e15e11e8d19f314ebfbe5703d4d391` |
| 2 | `lemma` | [sum_eq_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/sum-eq-top--332372a39c8f9b227869a51f.md) | 27 | `result-track:332372a39c8f9b227869a51f1c494b075c880db627ab6fcc2d894d528c7c896a` |
| 3 | `lemma` | [sum_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/sum-ne-top--ce3d05844e2cdc11dcb4d4aa.md) | 31 | `result-track:ce3d05844e2cdc11dcb4d4aa15424e40add4a57a3e32b823f32e1545b12cfc03` |
| 4 | `lemma` | [sum_lt_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/sum-lt-top--e9001d455255b98521abba11.md) | 36 | `result-track:e9001d455255b98521abba113cc76b81e3626f50268120a2f7f4c19efb97441d` |
| 5 | `lemma` | [prod_ne_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/prod-ne-top--c042e463f1ae70926ed35183.md) | 46 | `result-track:c042e463f1ae70926ed351830cb14c723a310bb0e9f588e07962c530c6473321` |
| 6 | `lemma` | [prod_lt_top](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/prod-lt-top--7cfe30c8d54648e33065cc14.md) | 50 | `result-track:7cfe30c8d54648e33065cc145b3546afc17cea1ba2e37842ed915b398c03b377` |
| 7 | `lemma` | [coe_sum](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/coe-sum--06607df60cb8686eda0fa523.md) | 60 | `result-track:06607df60cb8686eda0fa523586e11fc18f0384534ac16b19a783f3acd5bc891` |
| 8 | `lemma` | [sum_eq_bot_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/sum-eq-bot-iff--7d1cba74439433ddf5f8929a.md) | 64 | `result-track:7d1cba74439433ddf5f8929acf524027c16f6dc85e184eacf79a61fd90863fac` |
| 9 | `lemma` | [bot_lt_sum_iff](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/bot-lt-sum-iff--a81018130bc1389196354dd2.md) | 70 | `result-track:a81018130bc1389196354dd2b3ee38a2dc310cd675d3bbd428ac1d1d244e77a8` |
| 10 | `lemma` | [sum_lt_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/sum-lt-bot--b8b8128aea3a0901dfd3386f.md) | 74 | `result-track:b8b8128aea3a0901dfd3386f55ef7140dcb4757cb1c1585cc5d4a4f39ea4ba96` |
| 11 | `lemma` | [prod_ne_bot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/prod-ne-bot--02179197d2b5514431e0bc99.md) | 84 | `result-track:02179197d2b5514431e0bc998a519df959fb95ec39c2e76e0b88ef6ac0b3a4e4` |
| 12 | `lemma` | [bot_lt_prod](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant63b4ae25b7263ddc5cceeaa56e0cadbcf380e3932cd381a94cfee2224865e642.lean/declarations/bot-lt-prod--11f08a6e638f82927bee7d6b.md) | 88 | `result-track:11f08a6e638f82927bee7d6bee7e33cc73f17f643441884d0a043076f06dd580` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
