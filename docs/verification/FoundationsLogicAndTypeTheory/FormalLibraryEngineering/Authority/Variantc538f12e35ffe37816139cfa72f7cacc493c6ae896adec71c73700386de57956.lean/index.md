# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Authority.Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7aae1d9e9939755aeb7a5e85c25cf2136c7a6ac6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7aae1d9e9939755aeb7a5e85c25cf2136c7a6ac6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean.json)

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
| 1 | `inductive` | [RefactorAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/refactorauthority--d4818e188da8a81c6b59be3b.md) | 29 | `declaration-track:d4818e188da8a81c6b59be3be60738dcf8516f616f300da1934cfea3849a6955` |
| 2 | `abbrev` | [ContentHash256](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/contenthash256--1fb241184ba57bd559a5854f.md) | 42 | `declaration-track:1fb241184ba57bd559a5854f96fc56fbacea142238597a718a8ce686c99c7827` |
| 3 | `abbrev` | [ContentHash256.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/contenthash256-valid--2d22acfc9ab7a63b78081196.md) | 44 | `declaration-track:2d22acfc9ab7a63b78081196c62ae84f45ff7cd78ccd774717749450feb0d63c` |
| 4 | `abbrev` | [verifyContentHash256](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/verifycontenthash256--94878ccc63b977082d24fbfe.md) | 47 | `declaration-track:94878ccc63b977082d24fbfe57843022f42fdfa81a7924f93de591e999b3e51f` |
| 5 | `theorem` | [verifyContentHash256_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/verifycontenthash256-sound--e5659c748abc4f39c7b95609.md) | 50 | `result-track:e5659c748abc4f39c7b95609b6f973815558c828e3807ac2e629f7f0abf02dc8` |
| 6 | `inductive` | [AuthorityPromotion](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/authoritypromotion--a0d11c697b1ca11e1ded4c60.md) | 57 | `declaration-track:a0d11c697b1ca11e1ded4c60dfa37f1681af8e2f5dd87b9d5ef447b22d8bff9d` |
| 7 | `theorem` | [authority_promotion_is_explicit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/authority-promotion-is-explicit--c820decbcc37da7058cb0995.md) | 61 | `result-track:c820decbcc37da7058cb0995088a9343d2e28e26adc2121251482265f13379ad` |
| 8 | `theorem` | [model_proposal_not_kernel_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/model-proposal-not-kernel-authority--84890cc12513991774137f00.md) | 67 | `result-track:84890cc12513991774137f00744b385e6f93cb94fe0b531eddef99f0c686870e` |
| 9 | `theorem` | [finite_evidence_not_kernel_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/finite-evidence-not-kernel-authority--6fe2a542db5674cf6185da74.md) | 72 | `result-track:6fe2a542db5674cf6185da7490d01e4e21b3d6a7f44336dd57e4e44209d6bba2` |
| 10 | `theorem` | [spectral_witness_not_kernel_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/spectral-witness-not-kernel-authority--12ed983f6cc8812b20a81cec.md) | 77 | `result-track:12ed983f6cc8812b20a81cec938b35076306301295bd42a7c04a085faadfae8d` |
| 11 | `structure` | [Authorized](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/authorized--182ed20908e979dd9cdb1bc0.md) | 83 | `declaration-track:182ed20908e979dd9cdb1bc09cbb0b5516a4769cb652218411c527bd4948743f` |
| 12 | `def` | [classifyModelProposal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/classifymodelproposal--9f9df1352b073ea17439ecf9.md) | 88 | `declaration-track:9f9df1352b073ea17439ecf918ab379cd16626815db30078a788f74802948d7b` |
| 13 | `def` | [Authorized.authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/authorized-authority--135b05ec611431603b4579a0.md) | 93 | `declaration-track:135b05ec611431603b4579a034f8d6e7dd4b2983eabefc9bf4745bef4509bce5` |
| 14 | `theorem` | [classifier_does_not_promote_model_authority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/classifier-does-not-promote-model-authority--b47a422acf936e76f416a2bb.md) | 99 | `result-track:b47a422acf936e76f416a2bbcb68c33c49b313b3f08e31bdfa37740ea5398c56` |
| 15 | `def` | [receiptAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/receiptauthority--619dea2681d5c3cf0ede523d.md) | 106 | `declaration-track:619dea2681d5c3cf0ede523dc1daccb5775c444055cb75fb57a140900fcc3b47` |
| 16 | `theorem` | [receipt_alone_does_not_expose_task_proposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/receipt-alone-does-not-expose-task-proposition--dce69d572f3e48ded6b7d91e.md) | 110 | `result-track:dce69d572f3e48ded6b7d91e01ce7748b724c3a613a031b12f2da5fa09210a3f` |
| 17 | `theorem` | [checked_trial_exposes_task_proposition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Authority/Variantc538f12e35ffe37816139cfa72f7cacc493c6ae896adec71c73700386de57956.lean/declarations/checked-trial-exposes-task-proposition--0f85a875926b767acc28394a.md) | 117 | `result-track:0f85a875926b767acc28394a400982538e2e0997e528291e90358a6f13536cfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
