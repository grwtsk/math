# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Diff.Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dc9585794b26242251ac692596b6a6e6f5e96fe",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dc9585794b26242251ac692596b6a6e6f5e96fe`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean.json)

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
| 1 | `inductive` | [ExprDiffTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdifftag--3ea193926e0bc9134231b00c.md) | 25 | `declaration-track:3ea193926e0bc9134231b00cae1b8f10f4951e1447f6cba8d16428d387f131cd` |
| 2 | `def` | [ExprDiffTag.toDiffTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdifftag-todifftag--a23d4ba1ae7b22e1a057beee.md) | 30 | `declaration-track:a23d4ba1ae7b22e1a057beee924ac513b45c0240283b4048b804da253dcb4ff1` |
| 3 | `def` | [ExprDiffTag.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdifftag-tostring--1c1aed30124829492fbc7238.md) | 38 | `declaration-track:1c1aed30124829492fbc7238206f87a292cfa44fd42f493880362d189e3692dc` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/instance--be7fda75d658629e2e17bf10.md) | 43 | `declaration-track:be7fda75d658629e2e17bf108d01f46b3f4db6b67b875c73ab9d0d88fc64a8b2` |
| 5 | `structure` | [ExprDiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdiff--a7a0a23dffc4b7dff55cc67a.md) | 49 | `declaration-track:a7a0a23dffc4b7dff55cc67a8a6565dac1acc3cf61e66e056c2251fe5deee1f0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/instance--26140636b50285d3c6c7b546.md) | 56 | `declaration-track:26140636b50285d3c6c7b546c9b9fb88834f336aadfe75aaa706bbdb49f4df0f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/instance--bebd07cbebc1048724ab267c.md) | 57 | `declaration-track:bebd07cbebc1048724ab267c8e0282247667db875286c6b4adaf36a22c7aabf4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/instance--f25bdc9de6ab3edd1fc09f3b.md) | 62 | `declaration-track:f25bdc9de6ab3edd1fc09f3bad84c98f1e04c7233068ce1f145ea31769062d5b` |
| 9 | `def` | [ExprDiff.insertBeforeChange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdiff-insertbeforechange--06f5ee540f83312300c68f80.md) | 69 | `declaration-track:06f5ee540f83312300c68f807b3c2954a695e0d9013939b79fb9d6cbbf99cc1b` |
| 10 | `def` | [ExprDiff.insertAfterChange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdiff-insertafterchange--f1769dacfa737602b61a2008.md) | 73 | `declaration-track:f1769dacfa737602b61a200831e191ccf3765278a40cf0eb51ea44982e90b335` |
| 11 | `def` | [ExprDiff.withChangePos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdiff-withchangepos--695e07017b74c56ea131e289.md) | 76 | `declaration-track:695e07017b74c56ea131e2892dd67f47e6565b91423433704fbcb7fa362fa4f0` |
| 12 | `def` | [ExprDiff.withChange](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdiff-withchange--38ea98bce3593e7e41704b31.md) | 82 | `declaration-track:38ea98bce3593e7e41704b31803f8b694e80685b20d8352ea3f70f462a638d98` |
| 13 | `def` | [ExprDiff.isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdiff-isempty--1aa10d6f2aa440dc5e2338a4.md) | 86 | `declaration-track:1aa10d6f2aa440dc5e2338a4dff4777b14012fb2641cd54f5a10c4e98c2106f0` |
| 14 | `def` | [exprDiffCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdiffcore--25ad361c8b3d2f721158b97b.md) | 105 | `declaration-track:25ad361c8b3d2f721158b97b0ffaea8a62fd402c5f98db3d29026cadfa974de1` |
| 15 | `def` | [exprDiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/exprdiff--0781290ce40b67565404819a.md) | 179 | `declaration-track:0781290ce40b67565404819a21d2969c0740376faf61f148943fe8ef1b05f578` |
| 16 | `def` | [addDiffTags](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/adddifftags--d11fb7e41980131bc9801baf.md) | 191 | `declaration-track:d11fb7e41980131bc9801bafa2bbd2f31f32247c6b4d663651d1dd58fd1139b3` |
| 17 | `def` | [diffHypothesesBundle](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/diffhypothesesbundle--ac7ff0c151fe5db2b559cda5.md) | 202 | `declaration-track:ac7ff0c151fe5db2b559cda5619bc2a4ec1d427f35dd5332c9f80503f21908f8` |
| 18 | `def` | [diffHypotheses](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/diffhypotheses--26f2d3faab9fc4258aa2f50c.md) | 227 | `declaration-track:26f2d3faab9fc4258aa2f50c253b12643b6a95995635a2b7329be62f206b8e23` |
| 19 | `def` | [diffInteractiveGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/diffinteractivegoal--75c64df7d1c45053568bb1fe.md) | 233 | `declaration-track:75c64df7d1c45053568bb1fe01035f0d518833a48a577dc89513f0db6f074478` |
| 20 | `def` | [diffInteractiveGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantba1845edf9f3d37a7e0d9b2eaf3c0490f329a08a6b4d662f53e09fc2d6f4d7e3.lean/declarations/diffinteractivegoals--053b295d42a9d12346549a41.md) | 253 | `declaration-track:053b295d42a9d12346549a41eade5ea9604790c2f0cd7bc7f1f4e4bfd168d67c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
