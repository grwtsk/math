# Verification target: GRWTSK.Algebra.OrderedProductGauge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4138e2c6eca0bf5bcc93a58c0d92d3935caabe08",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/OrderedProductGauge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/OrderedProductGauge.lean/index.md) · [Full source](../../../mathematics/Algebra/OrderedProductGauge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4138e2c6eca0bf5bcc93a58c0d92d3935caabe08`.

Source path: `GRWTSK/Algebra/OrderedProductGauge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/OrderedProductGauge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.OrderedProduct`](../../../mathematics/Algebra/OrderedProduct.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [conjugation_preserves_order](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/conjugation-preserves-order--4bd95a9a889dcbb2b47ec380.md) | 28 | `result-track:4bd95a9a889dcbb2b47ec380c6e72879a8c56c01946f17e0ab0668e1bcf976cb` |
| 2 | `theorem` | [inversion_reverses_order](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/inversion-reverses-order--2bfc4efba07cfc1ca562a654.md) | 35 | `result-track:2bfc4efba07cfc1ca562a654936ae8518347db401bab4f76b19d1c54363a6389` |
| 3 | `def` | [forwardGauge](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/forwardgauge--2d3b88713bf7ddc61198615e.md) | 41 | `declaration-track:2d3b88713bf7ddc61198615eefaacc793406e02c316ba9563fdf5a2a8d1c8c54` |
| 4 | `theorem` | [orderedProduct_forwardGauge](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/orderedproduct-forwardgauge--2e675ba5d5841d2cb299ac1c.md) | 47 | `result-track:2e675ba5d5841d2cb299ac1c56125087dd1f79fd39aedc21974061f9d42394ee` |
| 5 | `def` | [siteGauge](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/sitegauge--455a8f17bb4e7fea5a7443a6.md) | 60 | `declaration-track:455a8f17bb4e7fea5a7443a614f032f096c7474dcd2886691bd00fd781cf28cc` |
| 6 | `theorem` | [site_loop_gauge](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/site-loop-gauge--95fc052010aa75cd8687a0cb.md) | 67 | `result-track:95fc052010aa75cd8687a0cbbd66c11f434f52f240d054da607ac3a992093e78` |
| 7 | `theorem` | [orderedProduct_identity](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/orderedproduct-identity--87a42cb5d5bbd0a35a51b9fb.md) | 77 | `result-track:87a42cb5d5bbd0a35a51b9fb809521019eb89b862b81b2502dd6dd1a528ae62b` |
| 8 | `def` | [chartEdges](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/chartedges--d0e4f48e78d76bfe346d75f0.md) | 86 | `declaration-track:d0e4f48e78d76bfe346d75f0d0f10d9cfe89a22a01cb6359d34c65603a56efd4` |
| 9 | `theorem` | [orderedProduct_chartEdges](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/orderedproduct-chartedges--a7eb0c695d1e84bc3210be33.md) | 92 | `result-track:a7eb0c695d1e84bc3210be33059c46586e8829e5d70113d0a10d81f042730288` |
| 10 | `theorem` | [chart_loop_identity](../../../mathematics/Algebra/OrderedProductGauge.lean/declarations/chart-loop-identity--af3702dbb3f48a00a2634a81.md) | 102 | `result-track:af3702dbb3f48a00a2634a81c175bf247ca5fff63a3e97ce810f58b4b7666d3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
