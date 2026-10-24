# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shift.Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0fc16f55264135dcf14fbe17976188eba54ddae",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0fc16f55264135dcf14fbe17976188eba54ddae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean.json)

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
| 1 | `def` | [shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shift--3b8ab0e07e76cc85ed33c6ec.md) | 36 | `declaration-track:3b8ab0e07e76cc85ed33c6ec8955c0ea11b2e8c94245405c194802592d7d178c` |
| 2 | `lemma` | [prop_shift_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/prop-shift-iff--7c3a3bc46071e9a36a59824d.md) | 38 | `result-track:7c3a3bc46071e9a36a59824d2a1f7ab4e3261e71db05858e8b189579d52f9dce` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--f2c73b9f23201fbb55211517.md) | 40 | `declaration-track:f2c73b9f23201fbb5521151773967e801143d5f8ebcaace9394e5f67c6bf8872` |
| 4 | `lemma` | [shift_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shift-zero--8d54fd38683995c767301621.md) | 47 | `result-track:8d54fd38683995c767301621ad2cb80206f8f218508ebd47602e947ae4700295` |
| 5 | `lemma` | [shift_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shift-shift--fc665051da72a597317ebc34.md) | 53 | `result-track:fc665051da72a597317ebc34faadcd0bfbefef41e50d225b9f5c972a9ef2a49d` |
| 6 | `lemma` | [shift_sup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shift-sup--85a28c99693fc1f6cf59b477.md) | 58 | `result-track:85a28c99693fc1f6cf59b4779149885a983d968c283267165f8a3eee18653786` |
| 7 | `lemma` | [shift_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shift-isup--1068538ce96e7196ac4f5d91.md) | 62 | `result-track:1068538ce96e7196ac4f5d91cf9773c8f6912aaf457f02f92d5296e9475e30f5` |
| 8 | `class` | [IsStableUnderShiftBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/isstableundershiftby--439e835116991f581e7d1526.md) | 69 | `declaration-track:439e835116991f581e7d152602473da829d8162bd93628adbf906bf7be60717e` |
| 9 | `lemma` | [le_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/le-shift--8525fae755405d8ba4c57458.md) | 72 | `result-track:8525fae755405d8ba4c57458358a528e60b3b3fc50522c8b2d7fef557bfc6bc3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--a4a4248f9646eeda6ffb4e4c.md) | 75 | `declaration-track:a4a4248f9646eeda6ffb4e4c86e4b26bfbb905c0c73f8c4e599ad436460fa121` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--15dc887715d7c8da4a0bf2cd.md) | 78 | `declaration-track:15dc887715d7c8da4a0bf2cd48ff61aa20c812d331a927e0829545676a8c8e5c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--26de9b7e4b8ee74d3afa5ee9.md) | 81 | `declaration-track:26de9b7e4b8ee74d3afa5ee9fd75d3ac148c967c9ceadf557a716c1a9d71fb13` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--47d68a9edd8c3f841c209d66.md) | 84 | `declaration-track:47d68a9edd8c3f841c209d6676f10bd4bd06771e8d5e3ee3aeb5d03088021107` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--e50c6ec870f65c42bf2b2546.md) | 90 | `declaration-track:e50c6ec870f65c42bf2b2546a3788f92895a835938e27903289a99cf55542640` |
| 15 | `class` | [IsStableUnderShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/isstableundershift--19e3f1873ae3591b093928ae.md) | 98 | `declaration-track:19e3f1873ae3591b093928ae35632f71df601cd2d983b7f436c515ac4c4361ea` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--1a21c67b0e48f3606a67b392.md) | 103 | `declaration-track:1a21c67b0e48f3606a67b392aaa80452c316c779959d2f8b8e039b2d25a1463e` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--4fb93404840570dcd70eccb0.md) | 106 | `declaration-track:4fb93404840570dcd70eccb07acd37040ef49a8291969719ed397e4326a17398` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--f370f57a27a44c5c918b2e7d.md) | 109 | `declaration-track:f370f57a27a44c5c918b2e7d6624631baa957433ac92397acb5330df70ca65e2` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--c7b4b3887f7bd8f919489099.md) | 111 | `declaration-track:c7b4b3887f7bd8f91948909918da7c2756851687c4c15f85396074fbb69579b6` |
| 20 | `lemma` | [prop_shift_iff_of_isStableUnderShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/prop-shift-iff-of-isstableundershift--4e944166e3a8736503a511a0.md) | 113 | `result-track:4e944166e3a8736503a511a0884bd5359dcb159ba685d53c298a604d8089e482` |
| 21 | `def` | [shiftClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shiftclosure--e680e95f3eb226abc476a222.md) | 122 | `declaration-track:e680e95f3eb226abc476a2223499db0717f54f79d843b47f242131f90e9e1913` |
| 22 | `lemma` | [prop_shiftClosure_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/prop-shiftclosure-iff--9d4c6bf77fab8b348c0cb2f1.md) | 124 | `result-track:9d4c6bf77fab8b348c0cb2f1565308e5b899fb8086a87541c1fbf018e18f6a65` |
| 23 | `lemma` | [le_shiftClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/le-shiftclosure--67512a7a64e68a45bad1976b.md) | 127 | `result-track:67512a7a64e68a45bad1976b1b867e7bf234064a96f8b0ceb93bd7854b920c53` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--abf585dcd2e9b202fff382b5.md) | 131 | `declaration-track:abf585dcd2e9b202fff382b5f33217d16b831ceef0e0b6394470b41041a4337f` |
| 25 | `lemma` | [monotone_shiftClosure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/monotone-shiftclosure--d4ed5dcaf4f02e07783c366d.md) | 135 | `result-track:d4ed5dcaf4f02e07783c366d6153187c2b6de395b1888406b78f6b579d8daba8` |
| 26 | `lemma` | [shiftClosure_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shiftclosure-eq-self--6a65d1378d67e346a45bb70b.md) | 139 | `result-track:6a65d1378d67e346a45bb70b32b505bd3256a514a7328d2739cb984ddc83ab66` |
| 27 | `lemma` | [shiftClosure_bot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shiftclosure-bot--878e2c79330c10abb2167362.md) | 146 | `result-track:878e2c79330c10abb21673622721e47d5451ddd985b56bad15f5b29f2f071713` |
| 28 | `lemma` | [shiftClosure_top](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shiftclosure-top--78dc965ab337eaefabb3178a.md) | 149 | `result-track:78dc965ab337eaefabb3178a54394ffc936db9b3d089e9f5655e7aa4a463a92a` |
| 29 | `lemma` | [shiftClosure_le_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shiftclosure-le-iff--5e2474089123cbb22c05edec.md) | 151 | `result-track:5e2474089123cbb22c05edec68a6834b063db149d5ee5aa0749525c5af2984ca` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--3f92c606f9cac728290d868c.md) | 156 | `declaration-track:3f92c606f9cac728290d868cc2a7cf5791448b20a0bdfd623bc4e7a62a42da59` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--4bad0f7643bc5db55933931b.md) | 161 | `declaration-track:4bad0f7643bc5db55933931b0f0634f139442e72c65d1fa6b9c8a6042ed2dbc1` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--cfb3aa267088ef93dc21b405.md) | 167 | `declaration-track:cfb3aa267088ef93dc21b4056177837cd6f43f02b75eb85de16ce24f512501d9` |
| 33 | `lemma` | [isStableUnderShift_iff_shiftClosure_eq_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/isstableundershift-iff-shiftclosure-eq-self--87866075d841a393b4f505b7.md) | 169 | `result-track:87866075d841a393b4f505b7cb6368828cc13670d41d7d29d03e174fa0973214` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--526e40716cad7e5b425714da.md) | 173 | `declaration-track:526e40716cad7e5b425714dac54255e357a0a306857cb9efcd1c302d7bc49f6f` |
| 35 | `lemma` | [shiftClosure_eq_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/shiftclosure-eq-isup--3c738fc29023266148c75175.md) | 182 | `result-track:3c738fc29023266148c751759c5bce0fc8e943157fa69c73577e3d07d52c2679` |
| 36 | `instance` | [hasShift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/hasshift--ea4e8ec11887b89a675eaad2.md) | 194 | `declaration-track:ea4e8ec11887b89a675eaad27af6c2bb2f0a544d007d93c9d19e287e5737d740` |
| 37 | `instance` | [commShiftι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/commshift--65c68d88cfd5a442dd2ee788.md) | 199 | `declaration-track:65c68d88cfd5a442dd2ee78887700f77848ac330e79d620774ac4ce3704bc825` |
| 38 | `instance` | [commShiftLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/commshiftlift--c1de62b0f5cb62152ecea415.md) | 209 | `declaration-track:c1de62b0f5cb62152ecea415a7f334ac067138a5dd6d819a77b2cae1e320a14d` |
| 39 | `instance` | [commShift_liftCompιIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/commshift-liftcomp-iso-hom--e63406ead5c9c976aec506a1.md) | 213 | `declaration-track:e63406ead5c9c976aec506a11c9437ca609f2a2fc6e1e0a3f961de3da5460145` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variantf7fa97c7798a89431f55b3352d5c7be1092ec7983cc5188f951260efb29e59e5.lean/declarations/instance--b5b498652607907e56eaf00a.md) | 219 | `declaration-track:b5b498652607907e56eaf00aa97a4530326118e8f891900e1ffc023b76135676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
