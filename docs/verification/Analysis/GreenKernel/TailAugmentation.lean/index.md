# Verification target: GRWTSK.Analysis.GreenKernel.TailAugmentation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3633cf17818fe9473fb46a05249b8e479cc01894",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GreenKernel/TailAugmentation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/index.md) · [Full source](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3633cf17818fe9473fb46a05249b8e479cc01894`.

Source path: `GRWTSK/Analysis/GreenKernel/TailAugmentation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GreenKernel/TailAugmentation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.GreenKernel.UnitInterval`](../../../../mathematics/Analysis/GreenKernel/UnitInterval.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailFeature](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/tailfeature--025be938f20dd1bc4b53dcc2.md) | 20 | `declaration-track:025be938f20dd1bc4b53dcc2ffa33ca6b2e52b4d98704f088f980207c73c194a` |
| 2 | `def` | [completeKernel](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/completekernel--c6052bfa33f84256115e897e.md) | 22 | `declaration-track:c6052bfa33f84256115e897e30a02da2a0ab3de5cc27d1362911d0961661a1c3` |
| 3 | `def` | [atomicTail](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/atomictail--e787ec8f92af54accc7c6e84.md) | 24 | `declaration-track:e787ec8f92af54accc7c6e84049ca949b1001af0000b56317979206a798f9f37` |
| 4 | `def` | [atomicEnergy](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/atomicenergy--9becbd1e2793876cbbc2fabc.md) | 27 | `declaration-track:9becbd1e2793876cbbc2fabc587281e5936fadea22a3f1779e04d547b18faa53` |
| 5 | `theorem` | [completeKernel_eq_augmented](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/completekernel-eq-augmented--e62fac4e4d0bdb74278f628f.md) | 30 | `result-track:e62fac4e4d0bdb74278f628f2602f401cc11b47d018d7ed9ca4258afea04c0c0` |
| 6 | `theorem` | [completeKernel_symm](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/completekernel-symm--f01fb98206922f08d26f710a.md) | 35 | `result-track:f01fb98206922f08d26f710a1c665fbaf9a79bb6ed16442a5766d97f85650d49` |
| 7 | `theorem` | [completeKernel_endpoint](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/completekernel-endpoint--e2368e738d6006d36aa35942.md) | 38 | `result-track:e2368e738d6006d36aa359426a07590af30d9f6644c25ffbd35759cc1e1f3459` |
| 8 | `theorem` | [tailFeature_nonneg](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/tailfeature-nonneg--0b21214dcbf96d616a6478a4.md) | 41 | `result-track:0b21214dcbf96d616a6478a4c9bc42201bf795f2780144aa2ffe1a1942062993` |
| 9 | `theorem` | [tailFeature_le_one](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/tailfeature-le-one--0ecab77c36527e16c82a29b8.md) | 44 | `result-track:0ecab77c36527e16c82a29b8eee2586f8094e682190a2c09d0e9e69f1ec49744` |
| 10 | `theorem` | [tailFeature_mul](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/tailfeature-mul--4af8edef576af5d2629c93bc.md) | 47 | `result-track:4af8edef576af5d2629c93bc45044f981b0eba23188910467483624c196146b4` |
| 11 | `theorem` | [tailFeature_integrable](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/tailfeature-integrable--c4b3bf8de7f911d70a2a8fec.md) | 52 | `result-track:c4b3bf8de7f911d70a2a8fec4ba484030941a1cc638a00b9288e7ea45bbd8032` |
| 12 | `theorem` | [integral_tailFeature](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/integral-tailfeature--c5269401b1fbf1589bcefc6e.md) | 55 | `result-track:c5269401b1fbf1589bcefc6e5b3ebb9b280a3254b8354b3321e4c675d8d89bf1` |
| 13 | `theorem` | [tailFeature_product_integrable](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/tailfeature-product-integrable--49b7abe1a2eaf1f973c10dc0.md) | 61 | `result-track:49b7abe1a2eaf1f973c10dc0992118991ebea0e7a4f14543810d62b338fd2a77` |
| 14 | `theorem` | [integral_tailFeature_product](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/integral-tailfeature-product--dd8c8cb1c2a408556a26a85b.md) | 66 | `result-track:dd8c8cb1c2a408556a26a85ba7951d19209789c674414bc2bd8e2652f4f88384` |
| 15 | `theorem` | [atomicTail_integrable](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/atomictail-integrable--8c3fb49dd667771c17c796a6.md) | 72 | `result-track:8c3fb49dd667771c17c796a65913a2dac5fbb67f72f7ed6dc24b64646e0de4c9` |
| 16 | `theorem` | [atomic_square_expansion](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/atomic-square-expansion--ec03d3ea3479d3020687adc9.md) | 76 | `result-track:ec03d3ea3479d3020687adc9234877e978cc2b1918049eb7ac0d645a4cd8323d` |
| 17 | `theorem` | [atomicTail_square_integrable](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/atomictail-square-integrable--60a66b71f7824e35076627d7.md) | 89 | `result-track:60a66b71f7824e35076627d7a04e879a215940b11a8fbd28ac9f066d482a38a8` |
| 18 | `theorem` | [integral_atomicTail_sq](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/integral-atomictail-sq--11fce02be0b3cd29a42cbaa5.md) | 95 | `result-track:11fce02be0b3cd29a42cbaa5a52acb1907a6a799a9a1d8b1b07d3c95daecdba4` |
| 19 | `theorem` | [atomicEnergy_eq_gram](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/atomicenergy-eq-gram--7e5a488e16ea14f10739281b.md) | 114 | `result-track:7e5a488e16ea14f10739281ba5b37b081d4c6480a6066fc4b5dceca723c3e767` |
| 20 | `theorem` | [atomicEnergy_nonneg](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/atomicenergy-nonneg--4d6235eacc1eef5bcdb49b73.md) | 124 | `result-track:4d6235eacc1eef5bcdb49b73a056844c1343d2f6b54b2eb375e6b542663eeac9` |
| 21 | `theorem` | [positive_atomicEnergy_le](../../../../mathematics/Analysis/GreenKernel/TailAugmentation.lean/declarations/positive-atomicenergy-le--e006aed9f5c693735bb78fec.md) | 129 | `result-track:e006aed9f5c693735bb78fecaa6786582e140e2c709f9e4c2da878ada3b6338d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
