# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Identity.Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66465baf363daa59dff2b3e20952e6e2fc6f5eed",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66465baf363daa59dff2b3e20952e6e2fc6f5eed`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.FeatureMap` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Kernel.Regularization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [raw_eq_zero_of_posDef](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/raw-eq-zero-of-posdef--6ac97a0af3928088fd7a4d82.md) | 33 | `result-track:6ac97a0af3928088fd7a4d82c3430ee1fbbd22c5043728a025636a0d4eaec5b3` |
| 2 | `theorem` | [rhetoricalVector_injective_of_posDef](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/rhetoricalvector-injective-of-posdef--45a9b026258a53c3b36a7e9c.md) | 46 | `result-track:45a9b026258a53c3b36a7e9c6154bf30d657e73a716c3653b129ef615c95c134` |
| 3 | `theorem` | [rhetoricalVector_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/rhetoricalvector-injective--32c1105d64993eff1114181b.md) | 70 | `result-track:32c1105d64993eff1114181b93c0d58e65b9f3fa2153098e6a254bad38c2f738` |
| 4 | `def` | [kroneckerKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/kroneckerkernel--4ad5c0912c5da7fb82be36c9.md) | 87 | `declaration-track:4ad5c0912c5da7fb82be36c986c3e1f77670971898a0626e7c3d76a8577dfb50` |
| 5 | `theorem` | [kroneckerKernel_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/kroneckerkernel-apply--e71ecd4cf064dd24196bd896.md) | 91 | `result-track:e71ecd4cf064dd24196bd8962cc1f1975292ea6eda5d04d11ed59f73fc8796ff` |
| 6 | `theorem` | [kronecker_rhetoricalVector_orthonormal](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/kronecker-rhetoricalvector-orthonormal--b71d798883b0ff48efaf90e6.md) | 97 | `result-track:b71d798883b0ff48efaf90e6001061d662894a9963e2c1e1cb968d2c4c4534f1` |
| 7 | `theorem` | [kronecker_rhetoricalVector_total](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/kronecker-rhetoricalvector-total--84c7ea3383a1446b8c6a284b.md) | 104 | `result-track:84c7ea3383a1446b8c6a284befd85b7846105a3c8bddc3590e8269e8f3de3844` |
| 8 | `def` | [kroneckerHilbertBasis](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/kroneckerhilbertbasis--cb87c6a55bfa41047b721c8f.md) | 111 | `declaration-track:cb87c6a55bfa41047b721c8fee6e6d62a950ed56ff10dd85e82258a496d41deb` |
| 9 | `theorem` | [kroneckerHilbertBasis_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/kroneckerhilbertbasis-apply--452e1a894b41298b2d6071b8.md) | 119 | `result-track:452e1a894b41298b2d6071b836d136b70c64f203be8046a2af3199156b684ab3` |
| 10 | `def` | [kroneckerCompletionEquivL2](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/kroneckercompletionequivl2--bb787685308a55d5704ccb25.md) | 126 | `declaration-track:bb787685308a55d5704ccb25e409084658c62412b31c68b04374187231248f7a` |
| 11 | `theorem` | [kroneckerCompletionEquivL2_rhetoricalVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Identity/Variant46543102bafea0061ccfb6240aedf3b712707f0c2f1e17693aa64d950509e3a5.lean/declarations/kroneckercompletionequivl2-rhetoricalvector--fc949720f8788b597da86cd8.md) | 134 | `result-track:fc949720f8788b597da86cd8dc552f0d918d9efeaee0dfdd72528c5d9c0a970d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
