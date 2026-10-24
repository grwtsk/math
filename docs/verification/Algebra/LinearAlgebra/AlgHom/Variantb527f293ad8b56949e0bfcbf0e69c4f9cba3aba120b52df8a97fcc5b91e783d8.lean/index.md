# Verification target: GRWTSK.Algebra.LinearAlgebra.AlgHom.Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "679a75e41ade039ce62d7ab5cab354223dc11fc0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `679a75e41ade039ce62d7ab5cab354223dc11fc0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean.json)

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
| 1 | `theorem` | [smul_omega_sub_eq](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/smul-omega-sub-eq--b5e63c6d5a22e094aa58a5b2.md) | 38 | `result-track:b5e63c6d5a22e094aa58a5b2c4c45b174f7ed7c340a5a6d2442985f4ebb00471` |
| 2 | `theorem` | [toMatrix_algHom](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/tomatrix-alghom--022c5f98dada81f5ddbe7466.md) | 46 | `result-track:022c5f98dada81f5ddbe746633c696b0fdc76979c28919a138496b75132f663b` |
| 3 | `theorem` | [det_toMatrix_algHom](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/det-tomatrix-alghom--c26427e35afaa450ff12b3ce.md) | 53 | `result-track:c26427e35afaa450ff12b3cea5a7368ba607be90ace5c77738f3b47934366e99` |
| 4 | `theorem` | [mulVec_toMatrix_comp_eq](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/mulvec-tomatrix-comp-eq--d123bf896b2b5a31220d614c.md) | 57 | `result-track:d123bf896b2b5a31220d614cb9cc75085da46a2024920dfa6962ea7033eab2e0` |
| 5 | `theorem` | [isRegular_im_omega_iff_injective](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/isregular-im-omega-iff-injective--e9392830e77567db9882bb27.md) | 64 | `result-track:e9392830e77567db9882bb273270495fc48a96487eb0688276378f2eec6b8693` |
| 6 | `theorem` | [isUnit_im_omega_iff_bijective](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/isunit-im-omega-iff-bijective--20a87476a43be73240554e91.md) | 74 | `result-track:20a87476a43be73240554e91eec4d96facc20fc5bcd6147054980f32f2d4a156` |
| 7 | `theorem` | [isUnit_im_omega_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/isunit-im-omega-of-algequiv--832d12b7610ee06cb6b90ec2.md) | 85 | `result-track:832d12b7610ee06cb6b90ec2b133c280a79b4c8ec3e0401e7dae8bb5a3940c1c` |
| 8 | `theorem` | [trace_algHom_omega](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/trace-alghom-omega--042cd80d14ff13b563dfb511.md) | 90 | `result-track:042cd80d14ff13b563dfb511fc462271d7cec64e0e9a98b00733d8996da1f921` |
| 9 | `theorem` | [norm_algHom_omega](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/norm-alghom-omega--af051734ea10512dea1e816b.md) | 96 | `result-track:af051734ea10512dea1e816b6182382f44bf6c23342c05bd11e747e43086b524` |
| 10 | `theorem` | [trace_algHom](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/trace-alghom--85d557058496ee20867c4a3e.md) | 102 | `result-track:85d557058496ee20867c4a3e6d821236add595149b6193d2fac2f0d124cbb5a8` |
| 11 | `theorem` | [algHom_star](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/alghom-star--1b1a0209c1250589b33cf8a6.md) | 108 | `result-track:1b1a0209c1250589b33cf8a6a3952482050f989c6c95de8b68da05c765713ccd` |
| 12 | `theorem` | [norm_algHom](../../../../../mathematics/Algebra/LinearAlgebra/AlgHom/Variantb527f293ad8b56949e0bfcbf0e69c4f9cba3aba120b52df8a97fcc5b91e783d8.lean/declarations/norm-alghom--d84a7f14d945ad176ad0888f.md) | 113 | `result-track:d84a7f14d945ad176ad0888ff2a28081abd93472b0991cba2eb176117b34c45d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
