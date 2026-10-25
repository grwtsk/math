# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bitblast.Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0b162611fdfa3cdd2bdd4641e6c0c5b403e5c62",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0b162611fdfa3cdd2bdd4641e6c0c5b403e5c62`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.BitVec.Folds` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [testBit_limit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/testbit-limit--c0828a7d0c696cbbc5de3e53.md) | 42 | `result-track:c0828a7d0c696cbbc5de3e537838d4e39ed4212adcdff0d14ccea87b963dc7d9` |
| 2 | `theorem` | [mod_two_pow_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/mod-two-pow-succ--70b8c432ace18cc484d4aff1.md) | 64 | `result-track:70b8c432ace18cc484d4aff16391acd9f1644a38bf064dc392a5142ff90e5f99` |
| 3 | `theorem` | [mod_two_pow_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/mod-two-pow-lt--24fed63b4753dc8764ec846e.md) | 84 | `result-track:24fed63b4753dc8764ec846ea8fe9c6381812021a12a32c4540c662a2a0401d1` |
| 4 | `def` | [carry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/carry--db8ac459fcfbfa00953ff33a.md) | 89 | `declaration-track:db8ac459fcfbfa00953ff33ad3f6ab1d7a7c2335c645f932e4b9e450c39d7493` |
| 5 | `theorem` | [carry_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/carry-zero--34137792ed8361b8f25b8e05.md) | 91 | `result-track:34137792ed8361b8f25b8e05b269fb27ddd4aed17a43675b154ae8df64358dd4` |
| 6 | `def` | [adcb](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/adcb--8451e7cc5a1b5450964f7ac1.md) | 95 | `declaration-track:8451e7cc5a1b5450964f7ac1e10453bec2b1516862e706f2ca76e4249c61eb0f` |
| 7 | `def` | [adc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/adc--0839a90cad3e1a64f0b13536.md) | 98 | `declaration-track:0839a90cad3e1a64f0b13536f65cb600d9a22991141e4ffefb9431a00a90923f` |
| 8 | `theorem` | [adc_overflow_limit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/adc-overflow-limit--2f9572f6efdb4e16aa0134c2.md) | 101 | `result-track:2f9572f6efdb4e16aa0134c2957452ff15804e123f314010b549f9e637748f77` |
| 9 | `theorem` | [carry_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/carry-succ--dadc3621564f66eadadd9be3.md) | 109 | `result-track:dadc3621564f66eadadd9be3f8d4bda65cf8ce4f8519a21eab1c1f287ac7c102` |
| 10 | `theorem` | [adc_value_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/adc-value-step--746ffac3b3b2db77a0362cd5.md) | 123 | `result-track:746ffac3b3b2db77a0362cd50139a6d12dc1ad29472f6d1b8b3c733a6a8af697` |
| 11 | `theorem` | [adc_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/adc-correct--bfbd3f3ceb47ed22a5bf0140.md) | 144 | `result-track:bfbd3f3ceb47ed22a5bf0140214ab1817773c3f3185eeeccc179e05a6a48f522` |
| 12 | `theorem` | [add_as_adc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variant0e735a6825b8ad8ac0b9b21503badd5ff71bd4e4eb2ade8956a50a39ea9578a4.lean/declarations/add-as-adc--189b7a4f7c51a046ad9d2d1d.md) | 166 | `result-track:189b7a4f7c51a046ad9d2d1d01386f6b4016d1b7c0736d9440bcb804ab6926a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
