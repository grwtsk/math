# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredSecondMomentWinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e44ebebb57ac3f6f8eda89dc83abcfaeede76d95",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e44ebebb57ac3f6f8eda89dc83abcfaeede76d95`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredCauchyDimensionReduction`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredCauchyDimensionReduction.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredWindingModulusAggregate`](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredWindingModulusAggregate.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularCenteredFourFamilySecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/regularcenteredfourfamilysecondmoment--637c1612f5e94bf00708c4f0.md) | 17 | `declaration-track:637c1612f5e94bf00708c4f031c75a1ea240cc06a360bdc1555befd80353d400` |
| 2 | `def` | [regularCenteredFourFamilyZeroWindingEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/regularcenteredfourfamilyzerowindingenergy--3ce7388f6041abbb9a3c9a5e.md) | 23 | `declaration-track:3ce7388f6041abbb9a3c9a5e9bb763b8c0ee7e1749061e9e071f4283c6b660e9` |
| 3 | `theorem` | [regularCenteredFourFamilyZeroWindingEnergy_eq_four_mul_secondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/regularcenteredfourfamilyzerowindingenergy-eq-four-mul-secondmoment--f6741d34f84db8726afb1d16.md) | 29 | `result-track:f6741d34f84db8726afb1d16a507ca091eeae2aaa054f985c569e5014fb4c15a` |
| 4 | `def` | [regularCenteredCauchyWindingCostAtModulus](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/regularcenteredcauchywindingcostatmodulus--b7bdbe63880b862f2985bbec.md) | 42 | `declaration-track:b7bdbe63880b862f2985bbec77bbc101cf06642172e5ef25f2f51ff684535804` |
| 5 | `def` | [regularCenteredCauchyWindingCostEndpoint](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/regularcenteredcauchywindingcostendpoint--dc8f4ebf4b094f7ec86e9a7b.md) | 48 | `declaration-track:dc8f4ebf4b094f7ec86e9a7bc8a5f9eac46c1055999ea7c026ddc4456b6ca668` |
| 6 | `theorem` | [centeredWindingRadius_cast_le_b_mul_reciprocalSquare](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/centeredwindingradius-cast-le-b-mul-reciprocalsquare--a6858b458126ebea2421e3c4.md) | 53 | `result-track:a6858b458126ebea2421e3c4ded717aa84b48a14b12c1d19205b14fda70e4626` |
| 7 | `theorem` | [regularCenteredCauchyWindingCostEndpoint_le_sixteen_mul_b_secondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/regularcenteredcauchywindingcostendpoint-le-sixteen-mul-b-secondmoment--0e456afa3003c89fa7e00bac.md) | 59 | `result-track:0e456afa3003c89fa7e00bac6751dac2001247b937cb557162f9620db9a78fe0` |
| 8 | `theorem` | [regularCenteredCauchyWindingCostEndpoint_le_four_mul_b_zeroEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/regularcenteredcauchywindingcostendpoint-le-four-mul-b-zeroenergy--69b8789bf182e60132a369b2.md) | 95 | `result-track:69b8789bf182e60132a369b2ee4b7d1e4488ae049d4a5af28923b38f906d1eea` |
| 9 | `def` | [SubpolynomialRegularCenteredSecondMoment](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/subpolynomialregularcenteredsecondmoment--f4507a729ce3770d2d11481c.md) | 106 | `declaration-track:f4507a729ce3770d2d11481c4709ec30571027ac210952c594a7d64b089b2f0e` |
| 10 | `def` | [SubpolynomialRegularCenteredZeroWindingEnergy](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/subpolynomialregularcenteredzerowindingenergy--2c1027f2e69c87aa54717989.md) | 113 | `declaration-track:2c1027f2e69c87aa5471798969c2aa55b90c850cdbf05134723e3d3ef78bc3df` |
| 11 | `structure` | [RegularCenteredSecondMomentWindingSourceData](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/regularcenteredsecondmomentwindingsourcedata--8b996d59f62570a6339b11d6.md) | 119 | `declaration-track:8b996d59f62570a6339b11d6619d1a6af977bb19935d8f7d7aaf0c112def296c` |
| 12 | `def` | [RegularCenteredSecondMomentWindingSource](../../../../mathematics/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/declarations/regularcenteredsecondmomentwindingsource--51dd9eb1e8b69acd07625707.md) | 131 | `declaration-track:51dd9eb1e8b69acd07625707220423b15430fbc6a7def6c0c4eccf9b983a75c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
