# Verification target: GRWTSK.Algebra.LinearAlgebra.Kernels.Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0104f495e11dc3be9904c1880de18fa23b3c0c09",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0104f495e11dc3be9904c1880de18fa23b3c0c09`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean.json)

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
| 1 | `def` | [kernelCone](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/kernelcone--3cada172657d7c16dab858c1.md) | 33 | `declaration-track:3cada172657d7c16dab858c1d1e3fc2cb7a40cb654295d28ea03c4b0eb5d90b8` |
| 2 | `def` | [kernelIsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/kernelislimit--f39cda2334e5d187c7d2b164.md) | 37 | `declaration-track:f39cda2334e5d187c7d2b164df9feef2165efdeca79f356df23f49d081f914cf` |
| 3 | `def` | [isLimitKernelFork](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/islimitkernelfork--9bfba185316dfbddad87c486.md) | 49 | `declaration-track:9bfba185316dfbddad87c486979a181189bc8cbb280ea298fe018783924bdcc9` |
| 4 | `def` | [cokernelCocone](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/cokernelcocone--46e727be30679e9f86ba1c9f.md) | 58 | `declaration-track:46e727be30679e9f86ba1c9f2a8929bbf1ddadc700aad128fa3b117d6b759b68` |
| 5 | `def` | [cokernelIsColimit](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/cokerneliscolimit--5d6e8603da84f3b55481c381.md) | 62 | `declaration-track:5d6e8603da84f3b55481c38131fb2261d9280897ff8d26ce6ff4609c058352ba` |
| 6 | `def` | [isColimitCokernelCofork](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/iscolimitcokernelcofork--9ed300a4afceb30abfc279ba.md) | 74 | `declaration-track:9ed300a4afceb30abfc279baa7a4b9d8a74ec6cd2d701d1991a8a84581d3dfd5` |
| 7 | `theorem` | [hasKernels_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/haskernels-modulecat--5df11a1ce5604a22c82459ea.md) | 87 | `result-track:5df11a1ce5604a22c82459eaabad81f098ac424f0cc5c3a9e3c1c67e04e389a4` |
| 8 | `theorem` | [hasCokernels_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/hascokernels-modulecat--fe23876c5020cbef0a2c5e7a.md) | 91 | `result-track:fe23876c5020cbef0a2c5e7a2c77953ebd59ab9c5d71c925b9291cab16abe3aa` |
| 9 | `def` | [kernelIsoKer](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/kernelisoker--e500a06274200b36972a5a93.md) | 105 | `declaration-track:e500a06274200b36972a5a9314014271066a2a696c0600c686d691380496d5f7` |
| 10 | `theorem` | [kernelIsoKer_inv_kernel_ι](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/kernelisoker-inv-kernel--fd1225d34e7c9845c16cfae5.md) | 111 | `result-track:fd1225d34e7c9845c16cfae55cc2cc8cc44a6f3e85ae0602f786fd0e6196c359` |
| 11 | `theorem` | [kernelIsoKer_hom_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/kernelisoker-hom-ker-subtype--80fa710b8423639f488627e4.md) | 115 | `result-track:80fa710b8423639f488627e46b7ca24fe1082516d3200a16926176b23fe3e85a` |
| 12 | `def` | [cokernelIsoRangeQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/cokernelisorangequotient--3ed50891429abc64dc349b72.md) | 122 | `declaration-track:3ed50891429abc64dc349b721402afcbc894dff4bf16557b78060beea88a2826` |
| 13 | `theorem` | [cokernel_π_cokernelIsoRangeQuotient_hom](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/cokernel-cokernelisorangequotient-hom--bbd5262febcc61224b2c36a1.md) | 128 | `result-track:bbd5262febcc61224b2c36a1a4701cd752833f22ff016d96b5b575227c028a2d` |
| 14 | `theorem` | [range_mkQ_cokernelIsoRangeQuotient_inv](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/range-mkq-cokernelisorangequotient-inv--af0cc491577c5c85e3ee29ba.md) | 133 | `result-track:af0cc491577c5c85e3ee29ba68c3892768a6a5739072c76486507a57b88abc1a` |
| 15 | `theorem` | [cokernel_π_ext](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variantd3c2bdc945eae36c04a4ca02a89dea5e2041fbdb3e5718c49689888e7af73f6a.lean/declarations/cokernel-ext--db33729299f9bcb08a931713.md) | 137 | `result-track:db33729299f9bcb08a931713ce2da1088d66f29cf77ebaa6e039f5c1b30f920f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
