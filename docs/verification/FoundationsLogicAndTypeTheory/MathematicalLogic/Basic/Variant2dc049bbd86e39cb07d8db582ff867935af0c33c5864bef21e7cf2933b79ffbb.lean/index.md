# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "438496da1ff8fc7d3305e5bda6622e8509ff40ce",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `438496da1ff8fc7d3305e5bda6622e8509ff40ce`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormCast` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FunLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/funlike--fca8b1011858dc304b5a23b7.md) | 129 | `declaration-track:fca8b1011858dc304b5a23b7483ef3d8540ac0c8d6bdcf859677ad7ac4195be7` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/instance--0e3140890c9959a1a993357b.md) | 149 | `declaration-track:0e3140890c9959a1a993357bbda1d6eaf9b4338509f6c5660391297868644c2b` |
| 3 | `theorem` | [coe_eq_coe_fn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/coe-eq-coe-fn--63b9d4eda4093b5361ed5131.md) | 156 | `result-track:63b9d4eda4093b5361ed5131c0290447a57b3167bb3795461c887d2be21cc92f` |
| 4 | `theorem` | [coe_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/coe-injective--7e7b8a9d6213c4f2c40e0e2a.md) | 159 | `result-track:7e7b8a9d6213c4f2c40e0e2af0bbd790882585f54c8ca5a75e385de0acc02038` |
| 5 | `theorem` | [coe_fn_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/coe-fn-eq--9068d7947abca60c8b83eddf.md) | 164 | `result-track:9068d7947abca60c8b83eddf42cedef3740cfcdaaa7c2239c2ea3f7c219ffa67` |
| 6 | `theorem` | [ext'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/ext--79e8f40151320925622db5f1.md) | 168 | `result-track:79e8f40151320925622db5f15d303d742cc50944a5fe37fe1eb701ed9e075f65` |
| 7 | `theorem` | [ext'_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/ext-iff--0c46449138abdc7b5d8e6a5b.md) | 172 | `result-track:0c46449138abdc7b5d8e6a5b63349fffdde86a9b7d4276ebcf64b11934421738` |
| 8 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/ext--81bb32360b390b4d81c1585d.md) | 176 | `result-track:81bb32360b390b4d81c1585deaa5d761e9a1b76efcd174943dcdbe7300360560` |
| 9 | `theorem` | [ext_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/ext-iff--baf4665c316640d4a8c16d1f.md) | 180 | `result-track:baf4665c316640d4a8c16d1ffc2390bf90f46ac97540f2bc75daea3df3aa5f78` |
| 10 | `theorem` | [congr_fun](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/congr-fun--db47443682e4ee3b43f50306.md) | 184 | `result-track:db47443682e4ee3b43f503068a659cae008db57e73198d3b9f448fde6343e881` |
| 11 | `theorem` | [ne_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/ne-iff--28bb9081a8a97d93aa89eb50.md) | 188 | `result-track:28bb9081a8a97d93aa89eb504e97424d616824e7b2ff0a3f4723880bdf6666d9` |
| 12 | `theorem` | [exists_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/exists-ne--ac3b53425a3cc75323d46e0c.md) | 192 | `result-track:ac3b53425a3cc75323d46e0c14da6e5343ce5541577c8e968e6deda4e837bc96` |
| 13 | `lemma` | [subsingleton_cod](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/subsingleton-cod--dd93776d5d9086c7b20b476e.md) | 197 | `result-track:dd93776d5d9086c7b20b476e3df65f4ac5b9410edd929206e94dd215e0d99488` |
| 14 | `theorem` | [congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/congr--5c04dfc8789a09d29d3eca76.md) | 213 | `result-track:5c04dfc8789a09d29d3eca7670aa95a8657d956a554e4f70ab4a5bae3a92f56c` |
| 15 | `theorem` | [congr_arg](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2dc049bbd86e39cb07d8db582ff867935af0c33c5864bef21e7cf2933b79ffbb.lean/declarations/congr-arg--5617454aa67a1a62318d2dd3.md) | 217 | `result-track:5617454aa67a1a62318d2dd39239c24094ea345e0f2c378b3e62f7e82be44ac2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
