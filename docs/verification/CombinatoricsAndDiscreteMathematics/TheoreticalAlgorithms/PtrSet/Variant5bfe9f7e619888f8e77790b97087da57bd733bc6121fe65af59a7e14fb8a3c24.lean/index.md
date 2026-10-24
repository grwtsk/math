# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PtrSet.Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb30d1eedfe734c35ecfab00971efe470ef0fd59",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb30d1eedfe734c35ecfab00971efe470ef0fd59`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Ptr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/ptr--7ff3f86a75e13fa4cd9fa1cd.md) | 24 | `declaration-track:7ff3f86a75e13fa4cd9fa1cdffb6ddc8c4541af3f93b81ad46f423dcfa7bdf13` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/instance--b53e9eec4e78eb8774e55747.md) | 27 | `declaration-track:b53e9eec4e78eb8774e557470758c3601d4351ff58f1108786122248b154f739` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/instance--12b015db039ccb7a34b56bbd.md) | 30 | `declaration-track:12b015db039ccb7a34b56bbd06a434a39865d026531c5f2efb460d5b62adc0ef` |
| 4 | `def` | [PtrSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/ptrset--02ffc7eb61e364f87ceac181.md) | 36 | `declaration-track:02ffc7eb61e364f87ceac181fbd424e86ed9282bca6fd85289566452d6225d93` |
| 5 | `def` | [mkPtrSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/mkptrset--138e91ad03679fbc09470304.md) | 39 | `declaration-track:138e91ad03679fbc09470304ed156c1bbfc413736bd0f5af979f4da40c2d47b9` |
| 6 | `abbrev` | [PtrSet.insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/ptrset-insert--05e1da6246f973d248e473e1.md) | 42 | `declaration-track:05e1da6246f973d248e473e19496f4009c8fb4a8ae53415daca37d22e6fac7c2` |
| 7 | `abbrev` | [PtrSet.contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/ptrset-contains--ed54d4a6f820c6a87db86267.md) | 45 | `declaration-track:ed54d4a6f820c6a87db86267cf0fd58a3314609ca900c1f6456c957c7fe978e6` |
| 8 | `def` | [PtrMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/ptrmap--c6d47922d48bbab209860b24.md) | 51 | `declaration-track:c6d47922d48bbab209860b24de79baa16a4fd938eccf27ba3b4cf8a1786ee143` |
| 9 | `def` | [mkPtrMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/mkptrmap--7d001a25208317810bff4d22.md) | 54 | `declaration-track:7d001a25208317810bff4d227b52094f12b19128549ee191e1ac07c02d974948` |
| 10 | `abbrev` | [PtrMap.insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/ptrmap-insert--553104271638ce670acaf4af.md) | 57 | `declaration-track:553104271638ce670acaf4af6a5b7293a6e007d9a9aba8d164f9adf36fc52800` |
| 11 | `abbrev` | [PtrMap.contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/ptrmap-contains--a664013c41a804493aa7b2a4.md) | 60 | `declaration-track:a664013c41a804493aa7b2a40fcc6d94f3f8fbe033164a367dbf98a42ea80405` |
| 12 | `abbrev` | [PtrMap.find?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PtrSet/Variant5bfe9f7e619888f8e77790b97087da57bd733bc6121fe65af59a7e14fb8a3c24.lean/declarations/ptrmap-find--045de6fe3e06cae57e7dd4a8.md) | 63 | `declaration-track:045de6fe3e06cae57e7dd4a80d597d53ac5b116a3d4577a128f5521343951023` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
