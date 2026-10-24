# Verification target: GRWTSK.Algebra.LinearAlgebra.Kernels.Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce37e4e27ae0c0ec7a1cf0b87c093ca1e18fc232",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce37e4e27ae0c0ec7a1cf0b87c093ca1e18fc232`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean.json)

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
| 1 | `def` | [kernelCone](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/kernelcone--76491a21bacdd407222b8acc.md) | 35 | `declaration-track:76491a21bacdd407222b8acc6b5dbe954177af93b821351a4ab98cab897f01db` |
| 2 | `def` | [kernelIsLimit](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/kernelislimit--9ebc4a391479685134cd0f0d.md) | 39 | `declaration-track:9ebc4a391479685134cd0f0df08dbbc6e2bb7e8a16c2b54f19a0d08d88e78976` |
| 3 | `def` | [cokernelCocone](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/cokernelcocone--e9008c371cf0a6c8ff9c9e7f.md) | 53 | `declaration-track:e9008c371cf0a6c8ff9c9e7f05c71f17f82345659b165345e9b1a2f306bc4a80` |
| 4 | `def` | [cokernelIsColimit](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/cokerneliscolimit--14f755c9f77ece9519c309bb.md) | 57 | `declaration-track:14f755c9f77ece9519c309bba446ec200b4e6c4878de5e5312495d21d2d31125` |
| 5 | `theorem` | [hasKernels_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/haskernels-modulecat--ebc0e6f6365945ef22ce1cee.md) | 72 | `result-track:ebc0e6f6365945ef22ce1ceeb83005abd31895850449d6eb5400409a55a475c7` |
| 6 | `theorem` | [hasCokernels_moduleCat](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/hascokernels-modulecat--2b7cb48d0d896723dae5f1c0.md) | 76 | `result-track:2b7cb48d0d896723dae5f1c01d15e0eeb8a6126b9d7d6bd52094917f700fe4c3` |
| 7 | `def` | [kernelIsoKer](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/kernelisoker--613c16be6eca25fc4e3fb359.md) | 90 | `declaration-track:613c16be6eca25fc4e3fb3594b5a84aed1e3af4d6258b9650e7f42853544e4ef` |
| 8 | `theorem` | [kernelIsoKer_inv_kernel_ι](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/kernelisoker-inv-kernel--ffc9457458c52c072b22d8bd.md) | 98 | `result-track:ffc9457458c52c072b22d8bd0d740bba83b733713f8e02d2d318d3aa1788c8b8` |
| 9 | `theorem` | [kernelIsoKer_hom_ker_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/kernelisoker-hom-ker-subtype--c91c5a768b199e14d035d7a9.md) | 103 | `result-track:c91c5a768b199e14d035d7a96003563a881edf5ba2198959afca87199c9c5f7b` |
| 10 | `def` | [cokernelIsoRangeQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/cokernelisorangequotient--25fd304c4a293a07b83372c5.md) | 111 | `declaration-track:25fd304c4a293a07b83372c5af006c101218570a5a822616e69bb7488d539c02` |
| 11 | `theorem` | [cokernel_π_cokernelIsoRangeQuotient_hom](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/cokernel-cokernelisorangequotient-hom--46f3e1ffc551b867f946da1a.md) | 118 | `result-track:46f3e1ffc551b867f946da1aead11d383809ee859572a0032818a5c785043759` |
| 12 | `theorem` | [range_mkQ_cokernelIsoRangeQuotient_inv](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/range-mkq-cokernelisorangequotient-inv--1586aeccc306b87e96d87eff.md) | 123 | `result-track:1586aeccc306b87e96d87eff2df7d9152e15ce72e3a285d06f2b91b280790bcc` |
| 13 | `theorem` | [cokernel_π_ext](../../../../../mathematics/Algebra/LinearAlgebra/Kernels/Variant3b62ddfcad813f98769c3aabdd55468cb58fd14535ea80f042ecf78cebab9c66.lean/declarations/cokernel-ext--d9cf51048d4d13518c03da22.md) | 127 | `result-track:d9cf51048d4d13518c03da2256ff2c71d4dbedabb3beba2b39c79b8994a2206a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
