# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetCharts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0921d583705c3b381c4a4ee70bd5655a2c4c3ae",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0921d583705c3b381c4a4ee70bd5655a2c4c3ae`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyFormalNeighborhood.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyHigherJet`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/index.md) — import line 11; pinned internal source present.
- `Mathlib.RingTheory.Localization.Away.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimitiveAdditiveTriple.freyPortRootInt](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freyportrootint--010055ef08ac6449297bc25e.md) | 21 | `declaration-track:010055ef08ac6449297bc25e4b7a66ed5f083b96578f38044b36b920d9aa8278` |
| 2 | `theorem` | [PrimitiveAdditiveTriple.freyPortRootInt_cast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freyportrootint-cast--49ce6c9395debf47af566255.md) | 24 | `result-track:49ce6c9395debf47af566255ae63a970b729c924fefa0caeaaa2c0673fbbb374` |
| 3 | `theorem` | [PrimitiveAdditiveTriple.freyJacobian_partition_one](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freyjacobian-partition-one--a9ec00c180d1d4dc9c382492.md) | 32 | `result-track:a9ec00c180d1d4dc9c3824926e054be7c1c84fb6515e088fb3b93a21fc9de24e` |
| 4 | `theorem` | [PrimitiveAdditiveTriple.freyJacobian_span_eq_top](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freyjacobian-span-eq-top--e0529ddac98dfec2032adc2b.md) | 44 | `result-track:e0529ddac98dfec2032adc2b3ab2b19c3602c711e1483f7c71a8df5927a1f070` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.freyJacobian_avoids_proper_ideal](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freyjacobian-avoids-proper-ideal--3ccc1ab5d5d31a863680b8c9.md) | 58 | `result-track:3ccc1ab5d5d31a863680b8c95c7a2c19b778b0c3e1e4c715cc9953ad483f31c9` |
| 6 | `abbrev` | [FreyJetChart](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/freyjetchart--73fcefdcbe5d4eda52e5e13d.md) | 76 | `declaration-track:73fcefdcbe5d4eda52e5e13d52a8517d2580305289f7928d604a4b141fc06ba1` |
| 7 | `def` | [PrimitiveAdditiveTriple.freyChartInverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freychartinverse--88486dc55047c560f3af4e6a.md) | 80 | `declaration-track:88486dc55047c560f3af4e6a83333bc094e5da3e07970fe6f7084b0c4e93a663` |
| 8 | `theorem` | [PrimitiveAdditiveTriple.freyChart_mul_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freychart-mul-inverse--98fdefba10cbc64762c909d1.md) | 84 | `result-track:98fdefba10cbc64762c909d10b991a5cd408cda7607da541f419dbf19870a021` |
| 9 | `def` | [PrimitiveAdditiveTriple.freyChartMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freychartmap--630fac83e098b79aeb42c72a.md) | 90 | `declaration-track:630fac83e098b79aeb42c72a995b00ceb0955721e58572e2fcda5dc1f1d97805` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.freyChartMap_integer](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freychartmap-integer--e79ad5dfa8288ac786d547ad.md) | 95 | `result-track:e79ad5dfa8288ac786d547ad6c8d41cb33cf4e44006e0c7be1559fa233ce966e` |
| 11 | `theorem` | [PrimitiveAdditiveTriple.freyChartMap_comp](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freychartmap-comp--e342fc2995a755e3588f50fe.md) | 102 | `result-track:e342fc2995a755e3588f50feb974c84e59b3b0d58785337f966e927ce388cd45` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyChartMap_inverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freychartmap-inverse--0e28f76bb1941fb2c9a974bc.md) | 113 | `result-track:0e28f76bb1941fb2c9a974bc64199ba80cf2caff3edacb0d09ad10416806ff2a` |
| 13 | `def` | [PrimitiveAdditiveTriple.freyChartApproximant](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freychartapproximant--e1cad39cc06e5845ddc3dec5.md) | 128 | `declaration-track:e1cad39cc06e5845ddc3dec50e7d125a95c76d0a25fa2389f0281625649397f2` |
| 14 | `theorem` | [PrimitiveAdditiveTriple.freyChartApproximant_map](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freychartapproximant-map--d564bb571177ee0bc77ae374.md) | 135 | `result-track:d564bb571177ee0bc77ae374f0a92a2d3b964e05f89bae39b3f74825c2b43957` |
| 15 | `theorem` | [PrimitiveAdditiveTriple.freyChartApproximant_toRat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freychartapproximant-torat--c65f21b6278d38936e0108ce.md) | 149 | `result-track:c65f21b6278d38936e0108ce41e83256537b793dc434a77b5ff068bd0304672c` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyPort_shifted_cubic](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freyport-shifted-cubic--7a45866c0262116f03aa2781.md) | 164 | `result-track:7a45866c0262116f03aa2781878c3cd61baa758d02bdc74de0b9127c614b4746` |
| 17 | `def` | [PrimitiveAdditiveTriple.freyCurveNeighborhood](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freycurveneighborhood--d7f148f5da123bac1c40c404.md) | 179 | `declaration-track:d7f148f5da123bac1c40c404df7fa60bc75040490ec469ea4b87c90d83ed3e1e` |
| 18 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralEquation_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freyintegralequation-iff--1c94f9d58236559bf48b6230.md) | 187 | `result-track:1c94f9d58236559bf48b6230a18a315b4c751c5a48bc6a739e3718a0d834d158` |
| 19 | `theorem` | [PrimitiveAdditiveTriple.freyCurveNeighborhood_equation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freycurveneighborhood-equation--604ee4ada7a9dfe6c4530f9f.md) | 202 | `result-track:604ee4ada7a9dfe6c4530f9f3a06a04e23626ca28a38c675176b3acd10addada` |
| 20 | `def` | [PrimitiveAdditiveTriple.freyCurveNeighborhood_shift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freycurveneighborhood-shift--caa071735ac2a0c7890c7919.md) | 210 | `declaration-track:caa071735ac2a0c7890c791977eec911baa08b7d35b9230e5d268b9714a2144c` |
| 21 | `def` | [PrimitiveAdditiveTriple.freyCurveNeighborhood_equiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freycurveneighborhood-equiv--0512f705513d52f38dae636c.md) | 231 | `declaration-track:0512f705513d52f38dae636c0a94b7106770987ba7864145c66df8fcb1be0099` |
| 22 | `def` | [PrimitiveAdditiveTriple.freyIntegralNeighborhood_equiv](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean/declarations/primitiveadditivetriple-freyintegralneighborhood-equiv--c82dcfa84f844687c143a638.md) | 241 | `declaration-track:c82dcfa84f844687c143a6386c7e052196abffb7bf8b5aeea9f8482c111859d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
