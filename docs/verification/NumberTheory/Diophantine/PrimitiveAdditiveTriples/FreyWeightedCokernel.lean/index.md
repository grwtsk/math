# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedCokernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a41a4f00873f010b1adc736c7661e5dd252f6b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a41a4f00873f010b1adc736c7661e5dd252f6b`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.WeightedPermutationCokernel`](../../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationCokernel.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedLattice`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [exponent](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/exponent--45542ebee0cd2a6a397e716c.md) | 28 | `declaration-track:45542ebee0cd2a6a397e716cbda9ca8959db02ce67579b5633053ff8c8fbc5ab` |
| 2 | `theorem` | [weight_natAbs](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/weight-natabs--7b3c019188a621fb08102e90.md) | 31 | `result-track:7b3c019188a621fb08102e903f3801bb728699b6fb3b58648358b1cb5ab591e7` |
| 3 | `theorem` | [weight_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/weight-ne-zero--b0c2ba7903d3fa6fa086541a.md) | 37 | `result-track:b0c2ba7903d3fa6fa086541a5b404cf4a1062f225a751c8e104bdad8ec0f5b6c` |
| 4 | `theorem` | [two_block_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/two-block-sum--2955d8f48c4a7178f0c9c993.md) | 44 | `result-track:2955d8f48c4a7178f0c9c9930811c2c25c4f79f7739f12cb429640adf8a88b47` |
| 5 | `theorem` | [exponent_sum](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/exponent-sum--2de2ae5b86e71dae73ba59bb.md) | 60 | `result-track:2de2ae5b86e71dae73ba59bb722c985710243296a9771766d03fd8f9f29a576f` |
| 6 | `theorem` | [weight_product](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/weight-product--bf7d3db3fd8bec3da4bf530b.md) | 68 | `result-track:bf7d3db3fd8bec3da4bf530b7a3dcb5b9241057f7bcf57c1decb04ddd245358d` |
| 7 | `abbrev` | [CoefficientCokernel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/coefficientcokernel--9608b8d67c775f73e0dde696.md) | 74 | `declaration-track:9608b8d67c775f73e0dde6966130d7c500206dc7f8cdcec7a4ec0898e299904c` |
| 8 | `def` | [coefficientCokernelEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/coefficientcokernelequiv--5de8546a431acc632c35477a.md) | 77 | `declaration-track:5de8546a431acc632c35477acc53bf27b087d3f3de6d3a4a57d42e62b8872963` |
| 9 | `theorem` | [coefficient_cokernel_card](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/coefficient-cokernel-card--cf1db715764972c6eb8fe1db.md) | 82 | `result-track:cf1db715764972c6eb8fe1db81c4167da5d11989ca112663bb052ac75e17b3b8` |
| 10 | `def` | [latticeCoordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticecoordinates--83a8812ec6d877a42ea2ae2b.md) | 88 | `declaration-track:83a8812ec6d877a42ea2ae2bb3bb50f2ea64a85e0383c4a71f2091be98236ada` |
| 11 | `theorem` | [latticeCoordinates_val](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticecoordinates-val--e0ff38934ca5277c9a143018.md) | 91 | `result-track:e0ff38934ca5277c9a143018d91dd0b897b185e8aa0e89db9e8ddfb45250e4f5` |
| 12 | `def` | [latticeMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticemap--751430aeb7292eb2cb1e2468.md) | 95 | `declaration-track:751430aeb7292eb2cb1e2468e945617b773c9edcc8dd22e11c2c3224a4575a25` |
| 13 | `theorem` | [latticeMap_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticemap-coordinates--e162a95b632f4900d8b37b1a.md) | 103 | `result-track:e162a95b632f4900d8b37b1aeab99a77cc8eb9d2f870e03b9eae00783c649271` |
| 14 | `abbrev` | [LatticeCokernel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticecokernel--966ecb200f1ea15ace2e4b02.md) | 111 | `declaration-track:966ecb200f1ea15ace2e4b02e21f4c57e590adf49788944f295c82ba89c4ea9a` |
| 15 | `def` | [latticeResidue](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticeresidue--6d30f4c664d706f163adaa12.md) | 116 | `declaration-track:6d30f4c664d706f163adaa12a31ab112f6b58f52c06ea54af23e00932956d516` |
| 16 | `theorem` | [latticeResidue_surjective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticeresidue-surjective--c1a53802e8a02b884e5d594d.md) | 120 | `result-track:c1a53802e8a02b884e5d594dd13e3163fe6ee4fae359c5af939021f4167fe3ff` |
| 17 | `theorem` | [latticeResidue_kernel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticeresidue-kernel--d629d02ee769d45e141bb49f.md) | 125 | `result-track:d629d02ee769d45e141bb49f219bdd3e754a72696f56363d12acd43f1bce0d82` |
| 18 | `def` | [latticeCokernelEquiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticecokernelequiv--21938020876e675c8ec72de2.md) | 144 | `declaration-track:21938020876e675c8ec72de28011168ca8a4c6b2c43e48e70bde2988c5dd92e9` |
| 19 | `theorem` | [latticeCokernelEquiv_mk](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/latticecokernelequiv-mk--24eb0c6e5f8d39c74060703c.md) | 150 | `result-track:24eb0c6e5f8d39c74060703c118229ef275d7720849dc52d9bea73b248c24567` |
| 20 | `theorem` | [product_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/product-ne-zero--ff1a31f6db3f34f6443de04e.md) | 159 | `result-track:ff1a31f6db3f34f6443de04e909c38082fc1f826ac4882bc00109ea4e293d726` |
| 21 | `theorem` | [lattice_cokernel_card](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/lattice-cokernel-card--5acfbba47ee581d73c459c47.md) | 167 | `result-track:5acfbba47ee581d73c459c47c14d9164adebc64e8773d030faeca1c1b3a6d577` |
| 22 | `theorem` | [lattice_cokernel_annihilator](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/lattice-cokernel-annihilator--297ac823303218659d9bc1fc.md) | 174 | `result-track:297ac823303218659d9bc1fca9a62476eb4630f63343b5626b4110ee354795a0` |
| 23 | `theorem` | [two_three_grade_two_index](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedCokernel.lean/declarations/two-three-grade-two-index--784612d842ff91da062c8a3b.md) | 192 | `result-track:784612d842ff91da062c8a3b728ef730a2bf8520a4fddfc2b56e3678c2a64454` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
