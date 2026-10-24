# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LowerCase.Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5080adde12351296846a4c25933386ca58d2a701",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5080adde12351296846a4c25933386ca58d2a701`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Int.OfNat` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Modify` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLowerCase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean/declarations/islowercase--5d51de9aa6678dc8012b26b3.md) | 41 | `declaration-track:5d51de9aa6678dc8012b26b3599d3dabe847926f56fc66f66819bbca33970011` |
| 2 | `theorem` | [Char.toLower_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean/declarations/char-tolower-eq-self-iff--fa45404a168b8cfcf1b6c0bb.md) | 44 | `result-track:fa45404a168b8cfcf1b6c0bbee2f6df6f95999a2c026dc5743445cbab31df233` |
| 3 | `theorem` | [String.toLower_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean/declarations/string-tolower-eq-self-iff--cf6873dc8a458f074e62bfe5.md) | 48 | `result-track:cf6873dc8a458f074e62bfe51389105d1aa813b8eb974cd09c29b2d67ca109c4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean/declarations/instance--6e7f691b29e95d17b6581ef1.md) | 54 | `declaration-track:6e7f691b29e95d17b6581ef18e84945fff89f9f782adf11c2ae9efd6d7dfa59c` |
| 5 | `theorem` | [Char.toLower_idempotent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean/declarations/char-tolower-idempotent--a6afd3c57a9db2a0d3ba70aa.md) | 60 | `result-track:a6afd3c57a9db2a0d3ba70aa8ccc1f806939e4097761b53a1e1a692eadce64a5` |
| 6 | `theorem` | [isLowerCase_toLower](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean/declarations/islowercase-tolower--50571da6ed741be3269e47a0.md) | 74 | `result-track:50571da6ed741be3269e47a04c027fe7c3d4133993beb40f41717e5542ad5987` |
| 7 | `theorem` | [isLowerCase_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LowerCase/Variant83c851101f171040ff0857520850a42396cf842b708bbd8e37aa02419e88d0e8.lean/declarations/islowercase-empty--dbe7cb54683fb6bffc7ed3eb.md) | 79 | `result-track:dbe7cb54683fb6bffc7ed3eba49b8b59e10d2f7b36b257f6ab3bb213d80ca2e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
