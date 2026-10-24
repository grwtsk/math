# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.TimeKernelTruncationFragment.Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "991f0d3f52271b645c5287fc7c11fd0b40550dd4",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `991f0d3f52271b645c5287fc7c11fd0b40550dd4`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncatedKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/truncatedkernel--6843ff1ba62598308ba46179.md) | 10 | `declaration-track:6843ff1ba62598308ba4617952a4f19b5f8158a9958bcb9ee31c3491872411e5` |
| 2 | `theorem` | [truncatedKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/truncatedkernel-integrable--57b18e70cf65561a3134ccf4.md) | 12 | `result-track:57b18e70cf65561a3134ccf44719b7bb16254f4ceaca0fc7c087b5fa6cd558d7` |
| 3 | `theorem` | [truncatedKernel_memLp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/truncatedkernel-memlp--e0cc0103409225dbbc6a4c4d.md) | 15 | `result-track:e0cc0103409225dbbc6a4c4d4cc47008f91aa8e08746a464e19a7040b104c63e` |
| 4 | `theorem` | [kernel_sub_truncated](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/kernel-sub-truncated--80b0ae83ade178b325785986.md) | 18 | `result-track:80b0ae83ade178b325785986fbdd27c79f403b53c8c7152bee7c9f06a082931e` |
| 5 | `theorem` | [norm_kernel_sub_truncated_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/norm-kernel-sub-truncated-integral--d29ccd129dc03bc8a3da9d69.md) | 29 | `result-track:d29ccd129dc03bc8a3da9d69db8fb05eef4b578e7c003d6b4e6e98694344c6e5` |
| 6 | `theorem` | [tail_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/tail-majorant-integrable--0809d6e49be4927668b89804.md) | 37 | `result-track:0809d6e49be4927668b898042331d7a18fde62b7cbf32ae4fd107452c876ffd5` |
| 7 | `theorem` | [tail_majorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/tail-majorant-integral--2bc1904656ec15081c15fd9d.md) | 48 | `result-track:2bc1904656ec15081c15fd9d1b7a92843bc63458f3c43755b3e50a5af1fe003c` |
| 8 | `theorem` | [kernel_tail_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/kernel-tail-integral-le--c8d0080d6cabc47ccb804ca7.md) | 60 | `result-track:c8d0080d6cabc47ccb804ca7a0df125235bd4901a534f7a01b121cf650289abf` |
| 9 | `theorem` | [norm_kernel_sub_truncated_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/norm-kernel-sub-truncated-integral-le--9f2a57c422246e7bc4a253db.md) | 68 | `result-track:9f2a57c422246e7bc4a253db153ead4c6b280a0ccad1f47cce179564d07b0b1e` |
| 10 | `def` | [kernelMass](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/kernelmass--a47f6a0d47a267e22579734e.md) | 74 | `declaration-track:a47f6a0d47a267e22579734e61f8e755e6269c7a6e973e494a16b1c44af9dee0` |
| 11 | `theorem` | [kernelMass_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/kernelmass-nonneg--5acd95d80a35d347c8141596.md) | 76 | `result-track:5acd95d80a35d347c8141596d410b7f8f5e83a48842e97425587ffe246a76478` |
| 12 | `theorem` | [truncated_norm_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/truncated-norm-integral-le--e3b456e204415d21ac55ceef.md) | 78 | `result-track:e3b456e204415d21ac55ceef4acfaaa79335ff09847a7d7dc60ade80b28d8ecb` |
| 13 | `def` | [truncatedOperator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/truncatedoperator--e695fe5943b8386ee1e3474b.md) | 83 | `declaration-track:e695fe5943b8386ee1e3474bc0e6fde96b2ebad483926bd5468d67b0400887cf` |
| 14 | `theorem` | [truncatedOperator_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/truncatedoperator-norm-le--c5b3a06a1688bf65db716b46.md) | 86 | `result-track:c5b3a06a1688bf65db716b46a83804f7ffcbe98cda44c250c4c8458d1dbc595f` |
| 15 | `theorem` | [operator_norm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/operator-norm-sub-le--67321cf80502b2b91ab0e42a.md) | 89 | `result-track:67321cf80502b2b91ab0e42a72ee03ea74ccd3bde7d2779a4b95d77f0aa0e1b9` |
| 16 | `def` | [truncatedEnergy](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/truncatedenergy--d459ddf3a0c841b459785faa.md) | 95 | `declaration-track:d459ddf3a0c841b459785faa5b07c5865c7062e5494cc1552d5f5cc4ac10cbcf` |
| 17 | `theorem` | [truncatedEnergy_isPositive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/truncatedenergy-ispositive--341fa68b70298467ee1b6fd2.md) | 98 | `result-track:341fa68b70298467ee1b6fd21953049183633bd775d36a7daefbca31bd788806` |
| 18 | `theorem` | [norm_energy_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/norm-energy-difference--1b364ceac23b1f3ab386f5c2.md) | 101 | `result-track:1b364ceac23b1f3ab386f5c20d3e293df01fbf32e9ec07366adda8cd69e79339` |
| 19 | `theorem` | [energy_norm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/energy-norm-sub-le--f8af03e4ef72b182768bf464.md) | 118 | `result-track:f8af03e4ef72b182768bf464357f6ca32e5d9ca4974434f1aa54e5f1aef22bf4` |
| 20 | `def` | [diagonalCutoff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/diagonalcutoff--1c9350fd3fdd2261b62bb305.md) | 130 | `declaration-track:1c9350fd3fdd2261b62bb3057ba6429c606e1a782386a8d1ebfd166ac87ef9d4` |
| 21 | `theorem` | [diagonalCutoff_ge_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/diagonalcutoff-ge-two--ef516190be26ab016e6bf02c.md) | 132 | `result-track:ef516190be26ab016e6bf02cf5acc94d24174c762406f2b1f1733d7a20273202` |
| 22 | `theorem` | [diagonal_exp_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/diagonal-exp-le--029f8692f659c5a8f6c4fe6e.md) | 134 | `result-track:029f8692f659c5a8f6c4fe6ebb85531227512d767edcc3e294046ffa0abb5c7f` |
| 23 | `theorem` | [diagonal_operator_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/diagonal-operator-error-le--78639aeac6fb7d40e667a565.md) | 144 | `result-track:78639aeac6fb7d40e667a5656a8b47855ab8f8f922a511ca84e4f8080f6f0064` |
| 24 | `theorem` | [diagonal_energy_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/TimeKernelTruncationFragment/Variant27d36330ac4035862fd07894e93774226dfb50ad3ce63ed379b085b7f68aec3a.lean/declarations/diagonal-energy-error-le--f5ee8d88f00581350dc43cc4.md) | 150 | `result-track:f5ee8d88f00581350dc43cc45c7dfd74928328b8c356d3d5b24a68a62d145e3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
