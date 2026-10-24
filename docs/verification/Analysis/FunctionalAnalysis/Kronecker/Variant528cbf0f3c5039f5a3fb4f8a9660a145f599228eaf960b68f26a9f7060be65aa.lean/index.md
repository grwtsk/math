# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Kronecker.Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16b17b0caa5078bc2866e895d72e3aa513aa0e29",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16b17b0caa5078bc2866e895d72e3aa513aa0e29`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.FeatureMap` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Kernel.Kronecker` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [raw_eq_zero_of_posDef](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/raw-eq-zero-of-posdef--6a97842845592892396becdb.md) | 27 | `result-track:6a97842845592892396becdb7cd8690d035e32c441e3589a6d8e5186e56e1f31` |
| 2 | `theorem` | [kernelVector_injective_of_posDef](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/kernelvector-injective-of-posdef--d57a3537ac5c6e17960a2f4a.md) | 40 | `result-track:d57a3537ac5c6e17960a2f4afebe3ae2b187ba65107b24032e231e8e2d8c3686` |
| 3 | `theorem` | [kernelVector_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/kernelvector-injective--099137029bfee13d119e6f43.md) | 64 | `result-track:099137029bfee13d119e6f434b3d6cdcb61d031e04c2e28b1db136f2f33624cb` |
| 4 | `theorem` | [kernelKronecker_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/kernelkronecker-apply--3998cad08e697ba61c590f7d.md) | 81 | `result-track:3998cad08e697ba61c590f7d1ba356511b7b93bb7a226113cdc65c00467d117f` |
| 5 | `theorem` | [kronecker_kernelVector_orthonormal](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/kronecker-kernelvector-orthonormal--209154c1142e822ee84b43d5.md) | 87 | `result-track:209154c1142e822ee84b43d51076438825dc3378b875b148daa663e698cc523f` |
| 6 | `theorem` | [kronecker_kernelVector_total](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/kronecker-kernelvector-total--21667a32ac287caf65b65301.md) | 94 | `result-track:21667a32ac287caf65b65301b99e5711a704b68c408ab63f381e1bc851fecfdf` |
| 7 | `def` | [kroneckerHilbertBasis](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/kroneckerhilbertbasis--18c3ca8e84998fa993f02327.md) | 101 | `declaration-track:18c3ca8e84998fa993f0232700d024420b96d623ba592465d9497f3872138637` |
| 8 | `theorem` | [kroneckerHilbertBasis_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/kroneckerhilbertbasis-apply--d01790544c2365bc6398de95.md) | 109 | `result-track:d01790544c2365bc6398de954fb042c1a6c28b858890f0a487959fb6f1a472e6` |
| 9 | `def` | [kroneckerCompletionEquivL2](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/kroneckercompletionequivl2--99c974bd8200a7663d07726e.md) | 116 | `declaration-track:99c974bd8200a7663d07726ee37da0520f678f516ac3b1b23dd3e7615b70fab9` |
| 10 | `theorem` | [kroneckerCompletionEquivL2_kernelVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Kronecker/Variant528cbf0f3c5039f5a3fb4f8a9660a145f599228eaf960b68f26a9f7060be65aa.lean/declarations/kroneckercompletionequivl2-kernelvector--e595c2382c08cf63dcd54397.md) | 124 | `result-track:e595c2382c08cf63dcd543971a157819412933aa738e2aace58941e0a19eaed5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
