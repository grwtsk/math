# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Apply.Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e4977e3c94688ae798172bd31419464d7a324d9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e4977e3c94688ae798172bd31419464d7a324d9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.CollectFVars` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Iterators` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BackwardRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/declarations/backwardrule--19bf0b429181d9540bf91c0c.md) | 28 | `declaration-track:19bf0b429181d9540bf91c0ced315d82cdbfa8e2d78d08bb78b779075e14e417` |
| 2 | `def` | [mkResultPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/declarations/mkresultpos--be525a47f165eb5696ba9d20.md) | 53 | `declaration-track:be525a47f165eb5696ba9d20fcd49f0a8e0245575d38d4c777953de3bbd81c42` |
| 3 | `def` | [mkBackwardRuleFromDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/declarations/mkbackwardrulefromdecl--c2e562df4f56b452557b606a.md) | 94 | `declaration-track:c2e562df4f56b452557b606a07e344cab7a6842361f9b0125357582790bb474a` |
| 4 | `def` | [mkBackwardRuleFromExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/declarations/mkbackwardrulefromexpr--9fe6bcdebb400e0dabc37bd9.md) | 108 | `declaration-track:9fe6bcdebb400e0dabc37bd924b9446859167ada17e9ccbb1c1fc7c67a2b52e6` |
| 5 | `def` | [mkValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/declarations/mkvalue--a038bd3c8f8c89cc9418d141.md) | 120 | `declaration-track:a038bd3c8f8c89cc9418d141afe19d1b37a71b4bcdca0b8cff7e4397b49c8123` |
| 6 | `inductive` | [ApplyResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/declarations/applyresult--2a53fc7d16a777b629e3dce3.md) | 126 | `declaration-track:2a53fc7d16a777b629e3dce375621ae69c1b96bd8878c0eaa24e8695e31cd1cf` |
| 7 | `def` | [BackwardRule.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/declarations/backwardrule-apply--aea688986f0f7ef656dc85c6.md) | 139 | `declaration-track:aea688986f0f7ef656dc85c629ded4043c0d7690a95f48c5032c7bd187ffc076` |
| 8 | `def` | [BackwardRule.apply'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/declarations/backwardrule-apply--8e6225741e11449e2ba1279a.md) | 156 | `declaration-track:8e6225741e11449e2ba1279af426d4514be49408c6b40bc408f56c0b5f656174` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
