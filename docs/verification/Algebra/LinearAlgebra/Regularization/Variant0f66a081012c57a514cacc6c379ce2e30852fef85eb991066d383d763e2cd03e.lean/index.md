# Verification target: GRWTSK.Algebra.LinearAlgebra.Regularization.Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fe687dc9b92af0cf6d26b842b8fbbc0f450d0f6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fe687dc9b92af0cf6d26b842b8fbbc0f450d0f6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Universe.Id` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RegularizedKernelIdentity](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/regularizedkernelidentity--6c43f63c9b92441396170d94.md) | 26 | `declaration-track:6c43f63c9b92441396170d94b01b47c55c7e4603f5a493fe896ae7b350090776` |
| 2 | `def` | [productionRegularizationVersion](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/productionregularizationversion--6fc6733efc10709e337c6482.md) | 38 | `declaration-track:6fc6733efc10709e337c64827c7450f8adc611cd7ee6390fe37aacf1155ce51c` |
| 3 | `def` | [productionEpsilonNumerator](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/productionepsilonnumerator--36b82ae8505113e029f6d1e0.md) | 42 | `declaration-track:36b82ae8505113e029f6d1e01c065f7659af346669d8ecf188345129782d1ac8` |
| 4 | `def` | [productionEpsilonDenominator](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/productionepsilondenominator--2be6e52fe06387722c8a8221.md) | 45 | `declaration-track:2be6e52fe06387722c8a822154c5496a915e34a34bec392ca088be79e764cc4d` |
| 5 | `def` | [productionEpsilon](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/productionepsilon--02be4e027ded4a88abe3a200.md) | 48 | `declaration-track:02be4e027ded4a88abe3a200de549151e94be8fe838e3005205e20f65273968c` |
| 6 | `theorem` | [productionEpsilon_pos](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/productionepsilon-pos--9e0c4f011654757936355e9e.md) | 51 | `result-track:9e0c4f011654757936355e9e022c9c1ccea8a08ea27597e55c09632dee57da7a` |
| 7 | `def` | [identityRegularizer](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/identityregularizer--115d7569d646b8c5388c312c.md) | 60 | `declaration-track:115d7569d646b8c5388c312cf96294739ce3e862a3cef183e1341bd5c785514d` |
| 8 | `theorem` | [identityRegularizer_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/identityregularizer-posdef--6138583416466e9fa5a23e6c.md) | 64 | `result-track:6138583416466e9fa5a23e6ca330aae91181f2ba5c5aa949aaebc3aa372ea3f8` |
| 9 | `def` | [regularizedKernel](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/regularizedkernel--72da258e8143a69d71face13.md) | 70 | `declaration-track:72da258e8143a69d71face132976edaa00310afc7bcfbb40318f41ac24feb21c` |
| 10 | `theorem` | [regularizedKernel_apply](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/regularizedkernel-apply--a2d7872fa68dc63c21a8cfa2.md) | 80 | `result-track:a2d7872fa68dc63c21a8cfa2b928f4b4a91ae3a7d7f5ca0a539b8022d1792cc0` |
| 11 | `theorem` | [regularizedKernel_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/regularizedkernel-hermitian--98c94c2a40c20261092eefe3.md) | 94 | `result-track:98c94c2a40c20261092eefe3fabb79fdbf6e42d63fbb755330061ef375c4c719` |
| 12 | `theorem` | [regularizedKernel_psd](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/regularizedkernel-psd--9ad8508df371abf7269baffa.md) | 102 | `result-track:9ad8508df371abf7269baffa46e7a0a1d73e3b2c2c73c7099f2b39a18cf8594c` |
| 13 | `theorem` | [regularizedKernel_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/regularizedkernel-posdef--b63ac9d946c04be667882a20.md) | 111 | `result-track:b63ac9d946c04be667882a20377bdc61270906d7df07ac2b6b260387d0f9f041` |
| 14 | `theorem` | [regularizedKernel_strictOnDistinct](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/regularizedkernel-strictondistinct--a143cdbfabe5303924cfe329.md) | 121 | `result-track:a143cdbfabe5303924cfe32956478ed519957399c32b89c8205820eca9768419` |
| 15 | `def` | [zeroSemanticKernel](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/zerosemantickernel--85efb3565da2250d2f3464b0.md) | 133 | `declaration-track:85efb3565da2250d2f3464b0da178f9a333d96434e5e2386cf7f6105f6d12552` |
| 16 | `theorem` | [regularizedZero_one_eq_kronecker](../../../../../mathematics/Algebra/LinearAlgebra/Regularization/Variant0f66a081012c57a514cacc6c379ce2e30852fef85eb991066d383d763e2cd03e.lean/declarations/regularizedzero-one-eq-kronecker--7edbced07874cc555d6a9bd2.md) | 139 | `result-track:7edbced07874cc555d6a9bd281d8f5f0d6da8c8803557baedafc404e4e969bc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
