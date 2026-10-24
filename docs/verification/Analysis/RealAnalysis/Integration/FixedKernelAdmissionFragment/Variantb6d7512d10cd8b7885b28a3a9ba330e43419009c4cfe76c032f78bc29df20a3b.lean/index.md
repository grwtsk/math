# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FixedKernelAdmissionFragment.Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10c9ad6f033883228d5896b035d463e97c72c217",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10c9ad6f033883228d5896b035d463e97c72c217`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sample_prefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/sample-prefix-eq--35f8dc9793a9d0f638ca6779.md) | 14 | `result-track:35f8dc9793a9d0f638ca67797a2a247278f51a0c42d7a3bb2ec587c592856d0d` |
| 2 | `theorem` | [fixedKernel_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/fixedkernel-abs-le--9fbb5cba067979467cfddc7d.md) | 24 | `result-track:9fbb5cba067979467cfddc7d3b826ccb8f1e1298f82cad6f8cfd4388b20839e4` |
| 3 | `theorem` | [tail_majorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/tail-majorant-integrable--6549f165e3157ca128e2c51c.md) | 39 | `result-track:6549f165e3157ca128e2c51ca1966e05f44672e80bbe18ebcda29e06f5c06d3b` |
| 4 | `theorem` | [fixedKernel_integrableOn_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/fixedkernel-integrableon-tail--56d3476c6cbcffe041eddc96.md) | 51 | `result-track:56d3476c6cbcffe041eddc9650c65ca28aa5815d71e9710de469d8e907aa9bda` |
| 5 | `theorem` | [fixedKernel_integrableOn_Ioi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/fixedkernel-integrableon-ioi--a01536b5093e366b2281f66a.md) | 58 | `result-track:a01536b5093e366b2281f66ab380b125439aa6cb51bcd75d2a86cac5f4a6e6f0` |
| 6 | `theorem` | [fixedKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/fixedkernel-integrable--f7326e2f23968a8bd4d2614c.md) | 66 | `result-track:f7326e2f23968a8bd4d2614c4f90fcadc3e6c082b4285cd2adc550d34046ca4f` |
| 7 | `theorem` | [fixedKernel_square_integrableOn_Icc](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/fixedkernel-square-integrableon-icc--b50749e768a6ed7d0380cfd2.md) | 75 | `result-track:b50749e768a6ed7d0380cfd2fc51aa175e29e1f745b89c0c7515f74f5c83aef8` |
| 8 | `theorem` | [fixedKernel_square_integrableOn_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/fixedkernel-square-integrableon-tail--fbcfc3f529ffd8128309a643.md) | 91 | `result-track:fbcfc3f529ffd8128309a643b7b06359e0f76730cb1b1ce44a67a578d492509a` |
| 9 | `theorem` | [fixedKernel_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/fixedkernel-square-integrable--365ae18f26c448e43433f4ce.md) | 116 | `result-track:365ae18f26c448e43433f4ce8653936f3766e3db06b2676c9c3c0ffd033f58f4` |
| 10 | `theorem` | [fixedKernel_memLp_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FixedKernelAdmissionFragment/Variantb6d7512d10cd8b7885b28a3a9ba330e43419009c4cfe76c032f78bc29df20a3b.lean/declarations/fixedkernel-memlp-two--beca67d625e1bee84c420005.md) | 134 | `result-track:beca67d625e1bee84c4200056118da7b15b94415e83f593e3b346095e0fe2f0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
