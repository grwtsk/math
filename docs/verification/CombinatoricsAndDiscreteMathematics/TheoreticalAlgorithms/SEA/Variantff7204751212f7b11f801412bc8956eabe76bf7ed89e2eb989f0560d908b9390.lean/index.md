# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SEA.Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c601a44da48823825029215fa7a6dc0c171c794",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c601a44da48823825029215fa7a6dc0c171c794`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.Boundary` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Cost` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.AbelReynolds.Template` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SEAInstance](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seainstance--7bd6252eeb3af0a4db5d397f.md) | 14 | `declaration-track:7bd6252eeb3af0a4db5d397f43d5a880ddcbd3b11d7c7bbabd00675bfa25f0bb` |
| 2 | `structure` | [Congruence](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/congruence--e774201ea5768302f42d9e8c.md) | 22 | `declaration-track:e774201ea5768302f42d9e8c4496711646f109ec8229846260fdf6c07b61f14f` |
| 3 | `inductive` | [SEAArithmeticStep](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seaarithmeticstep--d2703deaa7df87cee4b1123e.md) | 27 | `declaration-track:d2703deaa7df87cee4b1123ea035f44b9a027d54eb2babfb0697bfd1c0625c48` |
| 4 | `inductive` | [SEAValueSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seavaluesort--3907f8059f8f87ef2a2a2445.md) | 43 | `declaration-track:3907f8059f8f87ef2a2a24452d7574f11a899c4581623444630e982940e2089c` |
| 5 | `def` | [SEAArithmeticStep.outputSort](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seaarithmeticstep-outputsort--380dada0d52f02a3424aedb0.md) | 50 | `declaration-track:380dada0d52f02a3424aedb0f9c9f1c76a4b6666978225a759434e19bb00a163` |
| 6 | `def` | [SEAArithmeticStep.Valid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seaarithmeticstep-valid--5eaafb9bc58295d48e808ace.md) | 56 | `declaration-track:5eaafb9bc58295d48e808acef26d1355eb172a5cacbcd14355950c214ca1822c` |
| 7 | `structure` | [SEAOperation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seaoperation--402be57433dddb04f2ac6ea2.md) | 90 | `declaration-track:402be57433dddb04f2ac6ea215cd8d3769c5c640eb05104ba7165324633ff35c` |
| 8 | `def` | [SEAOperation.MetadataValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seaoperation-metadatavalid--b69ea0ef8194fa6f8c0f0ad2.md) | 105 | `declaration-track:b69ea0ef8194fa6f8c0f0ad283a4c1f5596b375385882d4c51258cf408518569` |
| 9 | `structure` | [SEATranscript](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seatranscript--79b59869993a3d53883a3cb5.md) | 112 | `declaration-track:79b59869993a3d53883a3cb5cceb5b0c266a23e4d5889ef1454647136189781c` |
| 10 | `def` | [transcriptCost](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/transcriptcost--42adab6e0f3b5e775d640c82.md) | 120 | `declaration-track:42adab6e0f3b5e775d640c82f8bb37dce3fa549924a0aa5180d667c0998a78cc` |
| 11 | `def` | [SEAOperationChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seaoperationchain--1ae8675b3b83432c10247e87.md) | 126 | `declaration-track:1ae8675b3b83432c10247e87dba6cdd5caa36472230c824387b83910337318a1` |
| 12 | `structure` | [SEATranscript.ArithmeticValid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seatranscript-arithmeticvalid--755e6d9170edbf6e83a72d7f.md) | 133 | `declaration-track:755e6d9170edbf6e83a72d7f76b5a8daaec84e8645ca121fb63258512d03a596` |
| 13 | `structure` | [SEAVerifier](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/seaverifier--2eae691d05a6d4abf3ab5d9c.md) | 156 | `declaration-track:2eae691d05a6d4abf3ab5d9c1ee067168b00283aab99023cc9157ec692fb240c` |
| 14 | `structure` | [VerifiedSEATranscript](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/verifiedseatranscript--301b0bb4d5ddcc969c7358a6.md) | 163 | `declaration-track:301b0bb4d5ddcc969c7358a6990117d05a98a5f6c6f8e3ec4683217a05307b7d` |
| 15 | `theorem` | [verifiedTranscript_pointCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SEA/Variantff7204751212f7b11f801412bc8956eabe76bf7ed89e2eb989f0560d908b9390.lean/declarations/verifiedtranscript-pointcount--0119bb40cbc9367a09c99bdc.md) | 169 | `result-track:0119bb40cbc9367a09c99bdcdebcda5aaf78bcd31b52980e79da1f7e861505cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
