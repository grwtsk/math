# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307.CheckedAndTotalInterpretation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f90cb7dff366d4e8871eb820fff3e0adc4bfc71",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/index.md) · [Full source](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f90cb7dff366d4e8871eb820fff3e0adc4bfc71`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PureDecodedStackSemantics.Variant2a841839c5ea8307.SafetyCertifiedPrograms`](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/SafetyCertifiedPrograms.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CheckedDecoder](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/declarations/checkeddecoder--72da5ba7f6683f60784e4832.md) | 48 | `declaration-track:72da5ba7f6683f60784e48326b90e71487491c5cf1fb806e09b18445c300d5db` |
| 2 | `def` | [interpretChecked](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/declarations/interpretchecked--428d274513910adb36a28c80.md) | 52 | `declaration-track:428d274513910adb36a28c8099fc36ea8c9cdaba62dbbc90a757309c00bbd937` |
| 3 | `def` | [interpretTotal](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/declarations/interprettotal--52d9e5b3cdacf18e1a2abb89.md) | 62 | `declaration-track:52d9e5b3cdacf18e1a2abb89427dd2acc4ff2e1564095bdd09dae723112514ad` |
| 4 | `theorem` | [interpretTotal_eq_checked_getD](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/declarations/interprettotal-eq-checked-getd--5a64443405a60486a2aa3155.md) | 68 | `result-track:5a64443405a60486a2aa315535faa1505591762cb70ff9ab0c9227893f9c6797` |
| 5 | `theorem` | [interpretTotal_of_decode_some](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/declarations/interprettotal-of-decode-some--e0ff21f5b3f923a7b31e45c1.md) | 76 | `result-track:e0ff21f5b3f923a7b31e45c1ed5eed82434adb9aac71ec2efb9e47e41c99bb7e` |
| 6 | `theorem` | [interpretChecked_of_decode_none](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/declarations/interpretchecked-of-decode-none--810a053b1eb2d5570be35294.md) | 85 | `result-track:810a053b1eb2d5570be3529499a3e1834abcc8950944ab846761d3ab4dfeae48` |
| 7 | `theorem` | [interpretTotal_of_decode_none](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/declarations/interprettotal-of-decode-none--c04eeac61bb82331003badec.md) | 93 | `result-track:c04eeac61bb82331003badece685120dca1feb1328a1300942056e9367ad6450` |
| 8 | `theorem` | [interpretTotal_apply_of_decode_none](../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PureDecodedStackSemantics/Variant2a841839c5ea8307/CheckedAndTotalInterpretation.lean/declarations/interprettotal-apply-of-decode-none--beb109e5e8d2ad5acfa2a220.md) | 101 | `result-track:beb109e5e8d2ad5acfa2a22097af17b1e3946f3f22d435037230752459f87726` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
