# Verification target: GRWTSK.Algebra.LinearAlgebra.Kernels.Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed8af0b2ae101e84121bc9171e2673e7ad55e650",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed8af0b2ae101e84121bc9171e2673e7ad55e650`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelCone](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/kernelcone--eee4c7a19e46c15cb92eb334.md) | 38 | `declaration-track:eee4c7a19e46c15cb92eb334dc53df0c222df3459a6f366f826b638b43700f1d` |
| 2 | `def` | [kernelIsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/kernelislimit--c64c2ae61b4a958e0bf93357.md) | 44 | `declaration-track:c64c2ae61b4a958e0bf933571b1330e655470e8972ae2c9d076c48c23f26e3a9` |
| 3 | `def` | [cokernelCocone](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/cokernelcocone--63148ba0992c9cb09662e64b.md) | 58 | `declaration-track:63148ba0992c9cb09662e64beb4153f43aee0e9b33417de9a323e9ecd6b93a41` |
| 4 | `def` | [cokernelIsColimit](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/cokerneliscolimit--3c3aa76134341b397ca35a30.md) | 63 | `declaration-track:3c3aa76134341b397ca35a3071613bafc20999d2673261c05d3d791e67c42a80` |
| 5 | `theorem` | [hasKernels_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/haskernels-modulecat--0e21e9ef0ff55628e88ad11f.md) | 81 | `result-track:0e21e9ef0ff55628e88ad11fe0a7bc9e2b27ef16d990ba33b8ae9011d63ede3c` |
| 6 | `theorem` | [hasCokernels_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/hascokernels-modulecat--b413e2b2b2d7d2495e4bbe8a.md) | 86 | `result-track:b413e2b2b2d7d2495e4bbe8a354d8e6a2e4969d18afad4ce89fbda0827d3dc86` |
| 7 | `def` | [kernelIsoKer](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/kernelisoker--8773ff9faf062fdb260defc8.md) | 101 | `declaration-track:8773ff9faf062fdb260defc8447d2e6f6719408cb242d4fa6eb9bbe1d2eee545` |
| 8 | `theorem` | [kernelIsoKer_inv_kernel_ι](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/kernelisoker-inv-kernel--34d7181ec08e369e4edc203b.md) | 110 | `result-track:34d7181ec08e369e4edc203bd1974b65459558e18b65910f8e57890b554962d3` |
| 9 | `theorem` | [kernelIsoKer_hom_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/kernelisoker-hom-ker-subtype--4fc4155f52db2bfd8a6dfe57.md) | 116 | `result-track:4fc4155f52db2bfd8a6dfe57d13ce565d85f28b05e9aaeec0b36d377a07188cc` |
| 10 | `def` | [cokernelIsoRangeQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/cokernelisorangequotient--4a8f8c93f33fb15b114ccb1b.md) | 125 | `declaration-track:4a8f8c93f33fb15b114ccb1b782a104c50c9300a92a838c12f9cbe3a07c0f36c` |
| 11 | `theorem` | [cokernel_π_cokernelIsoRangeQuotient_hom](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/cokernel-cokernelisorangequotient-hom--f5d16c28db57da316604c4aa.md) | 133 | `result-track:f5d16c28db57da316604c4aa49e04673ffb2e0a9a37ed69323f1adbd1eb1c8af` |
| 12 | `theorem` | [range_mkQ_cokernelIsoRangeQuotient_inv](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/range-mkq-cokernelisorangequotient-inv--f9110487cdd635f509ff308a.md) | 140 | `result-track:f9110487cdd635f509ff308ae05b832e31e223294ada2fe804eb29f8bf166c4e` |
| 13 | `theorem` | [cokernel_π_ext](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant45ca92384d3704e0e222453334e8204b4e322ec2d77e98bd5b15f8f6cfddd5e5.lean/declarations/cokernel-ext--02a27690abeec74923fccf50.md) | 145 | `result-track:02a27690abeec74923fccf50b129956279ce6cb82ff139097e3d35c4bd3fd475` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
