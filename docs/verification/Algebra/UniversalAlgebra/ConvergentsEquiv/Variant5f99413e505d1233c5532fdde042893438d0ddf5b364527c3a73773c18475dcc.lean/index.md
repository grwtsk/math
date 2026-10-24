# Verification target: GRWTSK.Algebra.UniversalAlgebra.ConvergentsEquiv.Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5ed4fb7e01203f3b2da61b269065c8972755a0b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5ed4fb7e01203f3b2da61b269065c8972755a0b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squashSeq](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/squashseq--ec7c5c176f13ff91d3e6c113.md) | 101 | `declaration-track:ec7c5c176f13ff91d3e6c11385f314899bc145e9c2faf61275d4c058e71e8354` |
| 2 | `theorem` | [squashSeq_eq_self_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/squashseq-eq-self-of-terminated--4ab7b4c707a6d280ac3b26a8.md) | 114 | `result-track:4ab7b4c707a6d280ac3b26a83478718e8ea1ba3a2597199fc44d05c15b057bea` |
| 3 | `theorem` | [squashSeq_nth_of_not_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/squashseq-nth-of-not-terminated--56ae708c64553544712f8f4e.md) | 122 | `result-track:56ae708c64553544712f8f4ee6c6d64ac525211cbd323c16b9f83b842a4d996e` |
| 4 | `theorem` | [squashSeq_nth_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/squashseq-nth-of-lt--93463183a5314107d04f5770.md) | 129 | `result-track:93463183a5314107d04f5770e361a75d22aeed7749671c2eb96ac42808d1ad18` |
| 5 | `theorem` | [squashSeq_succ_n_tail_eq_squashSeq_tail_n](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/squashseq-succ-n-tail-eq-squashseq-tail-n--c6ae4d64fc5646aea9fc9b3e.md) | 142 | `result-track:c6ae4d64fc5646aea9fc9b3ea3a461a05390c2679bc8fb881e78a6f6409b22fd` |
| 6 | `theorem` | [succ_succ_nth_convergent'_aux_eq_succ_nth_convergent'_aux_squashSeq](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/succ-succ-nth-convergent-aux-eq-succ-nth-convergent-aux-squashseq--55b18316e365e6b6581649ca.md) | 165 | `result-track:55b18316e365e6b6581649ca791d6da07748400489b25283a31c33b4aca82143` |
| 7 | `def` | [squashGCF](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/squashgcf--08f8525a836aa1c24e3ddd33.md) | 201 | `declaration-track:08f8525a836aa1c24e3ddd331972f695c86e85aefe4c5c65341f94c69a3de8d2` |
| 8 | `theorem` | [squashGCF_eq_self_of_terminated](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/squashgcf-eq-self-of-terminated--9aef43e5685d4dd8fe0d2778.md) | 214 | `result-track:9aef43e5685d4dd8fe0d2778c58ad2bb1edb24033f9eab61223a90eb1d4957cc` |
| 9 | `theorem` | [squashGCF_nth_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/squashgcf-nth-of-lt--1caefc45985c77e1e9bc4fbc.md) | 227 | `result-track:1caefc45985c77e1e9bc4fbcc7c7e7cce6e8dead4dd235bd6d94f64da24f99a9` |
| 10 | `theorem` | [succ_nth_convergent'_eq_squashGCF_nth_convergent'](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/succ-nth-convergent-eq-squashgcf-nth-convergent--2d4f0116827a3d9df1b977c0.md) | 234 | `result-track:2d4f0116827a3d9df1b977c0285895ea0195563078d4aa8b061a6f0b686382a6` |
| 11 | `theorem` | [continuantsAux_eq_continuantsAux_squashGCF_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/continuantsaux-eq-continuantsaux-squashgcf-of-le--69315b9142020ca82c886721.md) | 246 | `result-track:69315b9142020ca82c88672189da6009fc43f55776a7a31ea34c7f3d98836d33` |
| 12 | `theorem` | [succ_nth_convergent_eq_squashGCF_nth_convergent](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/succ-nth-convergent-eq-squashgcf-nth-convergent--5c72daeeaaa06ce15b94420f.md) | 273 | `result-track:5c72daeeaaa06ce15b94420fc5fd02a717db1eb55798a85e96b3fdd3001d80be` |
| 13 | `theorem` | [convergents_eq_convergents'](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/convergents-eq-convergents--55b937187b7951d2a76b3b33.md) | 351 | `result-track:55b937187b7951d2a76b3b3350cf6c3632923043cc9fde68bbd8affd9d4e4581` |
| 14 | `theorem` | [convergents_eq_convergents'](../../../../../mathematics/Algebra/UniversalAlgebra/ConvergentsEquiv/Variant5f99413e505d1233c5532fdde042893438d0ddf5b364527c3a73773c18475dcc.lean/declarations/convergents-eq-convergents--ea7dddc584d4bfbd4b27e045.md) | 411 | `result-track:ea7dddc584d4bfbd4b27e0456aa74c330a415d42d3c778551774224afd86cce6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
