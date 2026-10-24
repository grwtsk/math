# Verification target: GRWTSK.Algebra.Defs.Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1839bf429774f632807aaf5c200cbd89309ea78e",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1839bf429774f632807aaf5c200cbd89309ea78e`.

Source path: `GRWTSK/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOrderedRing](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/isorderedring--73ef4aa9a89e464831a99664.md) | 77 | `declaration-track:73ef4aa9a89e464831a9966497e1e55484d8fa6fa7c50adb0337c69799b81863` |
| 2 | `class` | [IsStrictOrderedRing](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/isstrictorderedring--24eed296e63f9b82a2d81b6d.md) | 87 | `declaration-track:24eed296e63f9b82a2d81b6d42c1da9d848ece481c694df3bd198e0223729e43` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/instance--75e47e155a710d92872e78aa.md) | 97 | `declaration-track:75e47e155a710d92872e78aa7d59dfbba7035ef451c97d33117442581a24ae24` |
| 4 | `lemma` | [IsOrderedRing.of_mul_nonneg](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/isorderedring-of-mul-nonneg--92d63939f097099a3d896750.md) | 102 | `result-track:92d63939f097099a3d896750876f9f09b76b3570d818da6d41a43b76c806a9ca` |
| 5 | `lemma` | [IsStrictOrderedRing.of_mul_pos](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/isstrictorderedring-of-mul-pos--74b15155213ff998ba4e0431.md) | 110 | `result-track:74b15155213ff998ba4e04314d855527a70ab22143373e00d297653eb0f15413` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/instance--3a25b3ca3a7d8257abec681e.md) | 120 | `declaration-track:3a25b3ca3a7d8257abec681e5df45d20fd97cd3801b091c708b57c3ee4880772` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/instance--67f8460545ce8c494ecf61e5.md) | 129 | `declaration-track:67f8460545ce8c494ecf61e58a3d2675cb71624bdb9549a80127e162e501e1f0` |
| 8 | `theorem` | [AddMonoidWithOne.toCharZero](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/addmonoidwithone-tocharzero--d8f94f6404f06869bfabd206.md) | 133 | `result-track:d8f94f6404f06869bfabd206f855757f8fde9804315fb079347d2c4f294e54c9` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/instance--846690962e0dbe966039e56a.md) | 140 | `declaration-track:846690962e0dbe966039e56a421beada546f79de0d05c89d0ad21774dc9c3c79` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/instance--813f81bbfeeda81a2bd9108d.md) | 144 | `declaration-track:813f81bbfeeda81a2bd9108daa2550cade2fc7024bd260d4061a23787096d6ea` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/instance--7ea22e20e75f0ea88f9f4dea.md) | 154 | `declaration-track:7ea22e20e75f0ea88f9f4dea5289813bd84fcd48ab51f041975a080a8ce74787` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/instance--fd0025a86438ae83e476d4d9.md) | 163 | `declaration-track:fd0025a86438ae83e476d4d99a8bc41bcbfbbe370cfcecda06f180fe48041be8` |
| 13 | `lemma` | [one_add_le_one_sub_mul_one_add](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/one-add-le-one-sub-mul-one-add--45e7bf371144c7d3d2335a12.md) | 180 | `result-track:45e7bf371144c7d3d2335a12021ad72dc5e881ca00d963aacfe6841fb18b83cb` |
| 14 | `lemma` | [one_add_le_one_add_mul_one_sub](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/one-add-le-one-add-mul-one-sub--fdeb80b3c047058c7186b8f8.md) | 184 | `result-track:fdeb80b3c047058c7186b8f8237e1ad7689fcb2393ce5d226fe6e48f69826498` |
| 15 | `lemma` | [one_sub_le_one_sub_mul_one_add](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/one-sub-le-one-sub-mul-one-add--f58bf468b8ef2374a70e4435.md) | 188 | `result-track:f58bf468b8ef2374a70e4435987ea25b66823cf3babcec2cbcad8fd88b8c56aa` |
| 16 | `lemma` | [one_sub_le_one_add_mul_one_sub](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/one-sub-le-one-add-mul-one-sub--aeec557eea6237511e4d2af1.md) | 192 | `result-track:aeec557eea6237511e4d2af1fb65b3b30485dc093db021612df644f672255969` |
| 17 | `theorem` | [IsOrderedRing.toCharZero](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/isorderedring-tocharzero--03288cfe98b224dc481ca595.md) | 198 | `result-track:03288cfe98b224dc481ca595586f17d4411b5ce86d899062c4f656cc5a700759` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/instance--cacdb10bba36f0f0175b5667.md) | 200 | `declaration-track:cacdb10bba36f0f0175b56678a8a305352f0f84808d2c7d508bacd9a64ba2736` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant24e4d410819cfa5f3ba90a6c072d0c5f601b6d80b2e93797e732f861c07948ed.lean/declarations/instance--05a3df198b4c447dda6b924b.md) | 202 | `declaration-track:05a3df198b4c447dda6b924b098b58309c15bdb934b7b5c43ef61a9753f13584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
