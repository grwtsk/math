# Verification target: GRWTSK.Analysis.FunctionalAnalysis.PositiveResolventKernelStatements.Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9bb460547ce2be2881c072200d396dbfe1c5c73",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9bb460547ce2be2881c072200d396dbfe1c5c73`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveshift--e393eac0ef8730e92f1500c7.md) | 29 | `declaration-track:e393eac0ef8730e92f1500c767bccff97994bdb2d43d2ccfcb1477a075f96647` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveshift-ispositive--05cb3dee381942eaed822b1d.md) | 33 | `result-track:05cb3dee381942eaed822b1da8a245a4dde54235f8915792b9ad3664f39d57de` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveshift-coercive--a5c9b9c2f8426820627373ad.md) | 40 | `result-track:a5c9b9c2f8426820627373ad93fbc10dffccaa68ed8c28d14dc40f9326e00ae7` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveshift-isunit--c73d29b92590241ef762a54f.md) | 55 | `result-track:c73d29b92590241ef762a54f8d6cd0f8bee485946c3dcf2d4fb37eddee93eb7d` |
| 5 | `def` | [positiveResolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveresolvent--4635ffa21eea19dafae33472.md) | 66 | `declaration-track:4635ffa21eea19dafae33472f2e4de42d4df43a10d411196ac2b7d60ab50304e` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveshift-mul-resolvent--ab189f73cd4a5a33435ea0e4.md) | 70 | `result-track:ab189f73cd4a5a33435ea0e4696011156b15af5f75a0f8df06d340bf109cd688` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/resolvent-mul-positiveshift--a4ca69d332681c1c66fca5b3.md) | 75 | `result-track:a4ca69d332681c1c66fca5b3dbac613c6ab8f79c5b848dc7c8cd54fbc5412f76` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveshift-resolvent-apply--9c874d87256419390b4c355d.md) | 80 | `result-track:9c874d87256419390b4c355dc80a037d75ba1fea7dcc702daed52b8cb66c5305` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveresolvent-norm-le--6d557bfffe13b485a6069507.md) | 87 | `result-track:6d557bfffe13b485a606950782e7f707c6548ceb0cf243bdad651e7875d08c00` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveresolvent-ispositive--b3d163b4eaad708877d28b6e.md) | 103 | `result-track:b3d163b4eaad708877d28b6eedfa760d8d2bdbbb016b497eb4f3ffaeb924935c` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveresolvent-sub--32d78eec2d6178e38916cf0f.md) | 114 | `result-track:32d78eec2d6178e38916cf0f50954e8967fab84adcf5a2377b75aba48e329840` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positiveresolvent-sub-norm-le--d0350a89bbb104530caa0fe0.md) | 126 | `result-track:d0350a89bbb104530caa0fe029ea0dcda9e3c60c522cf6833984cdbc3a2a754f` |
| 13 | `def` | [regularizedMass](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/regularizedmass--a615d150678590b4cf490db8.md) | 140 | `declaration-track:a615d150678590b4cf490db8e09aaf69015383124078b798107eef3e1c571315` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/abs-re-inner-map-le--c21b3ec6ab67317ac21df43f.md) | 144 | `result-track:c21b3ec6ab67317ac21df43f643dd64cb841bace7eefa24ebbb5f707a12e0652` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/regularizedmass-sub-abs-le--c67e34d2798d9fdad7bab35c.md) | 153 | `result-track:c67e34d2798d9fdad7bab35cab2a174284c67622261d272034bd7ecc5bf298b6` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/reference-regularizedmass-sub-abs-le--f5bef0774bbede19b8a2a49f.md) | 173 | `result-track:f5bef0774bbede19b8a2a49feb21d273123cf1542082581e6fb98c54ba59036f` |
| 17 | `theorem` | [positive_fixed_direction_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/positive-fixed-direction-le--05bb173ffdc34c8f261bb59a.md) | 198 | `result-track:05bb173ffdc34c8f261bb59adaf3e5dd036873366bd337324921892d926b302b` |
| 18 | `theorem` | [regularized_resolvent_kernel_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/regularized-resolvent-kernel-apply--80f026ff23d5846a3a7a75ff.md) | 231 | `result-track:80f026ff23d5846a3a7a75ff8156e6126f61c53b542abbf5ddea228e5c2f0ab9` |
| 19 | `theorem` | [kernel_witness_regularizedMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/kernel-witness-regularizedmass-le--1d1e08756eb378a7c2acd6e0.md) | 239 | `result-track:1d1e08756eb378a7c2acd6e05e612e6be57fe35064bb1f956b66c4fe2998b7ff` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/example--eb5dbf0145c5ecc6450d05c7.md) | 259 | `declaration-track:eb5dbf0145c5ecc6450d05c7b451463843f9be463fed63c88e5f85b552c4a506` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/example--13dcee83cc8862e004d66a06.md) | 263 | `declaration-track:13dcee83cc8862e004d66a0615c2e2e56f158e86b03ba07f9355dc0db5f0a73e` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/example--fa62b57a012d063167308a83.md) | 267 | `declaration-track:fa62b57a012d063167308a830c746a0e69e1e177ea16ade230688eda664f260f` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/PositiveResolventKernelStatements/Variantcaefaac152ce4cbbb1b72ac67b810f9a726149cfc8509f1b0b473c5c914a03d2.lean/declarations/example--5b5f6b310de7527446b7e076.md) | 271 | `declaration-track:5b5f6b310de7527446b7e076cab3397f260c2250cfa1f883599bfa06620c238b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
