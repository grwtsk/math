# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCoefficientHeat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abe64202b8b86c97d84276c7ec74fc5b8688eb81",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abe64202b8b86c97d84276c7ec74fc5b8688eb81`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat`](../../../../../mathematics/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phaseCoefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/phasecoefficients--b6112ad7966a842f894a7373.md) | 28 | `declaration-track:b6112ad7966a842f894a73735bd8f05e19b93dfb7a19cb535e12773a230f5355` |
| 2 | `def` | [meanStage](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/meanstage--9e365c6126bebe53a2df9063.md) | 32 | `declaration-track:9e365c6126bebe53a2df9063d882996194d13fc9b2d16c1a47e29b86efa23f75` |
| 3 | `def` | [heat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/heat--ceb7f558804795a3fb016af2.md) | 35 | `declaration-track:ceb7f558804795a3fb016af237c49ee6c399a4b829009d421831162a08183569` |
| 4 | `def` | [closureHeat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/closureheat--389b5849a24a5e63ebfa63dd.md) | 39 | `declaration-track:389b5849a24a5e63ebfa63ddd60a0f596ce1b1e28b53786f308f1af9fd965860` |
| 5 | `theorem` | [coordinates_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/coordinates-injective--9d3130eac42aa6b03f259f11.md) | 42 | `result-track:9d3130eac42aa6b03f259f11d6a13dc9f8d7a709587e8849af85e1e2cec72542` |
| 6 | `theorem` | [coordinates_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/coordinates-add--d259694a048e39daadaa8a13.md) | 48 | `result-track:d259694a048e39daadaa8a1394ef24143a742a60ec8d817e056de5bd247d35e9` |
| 7 | `theorem` | [coordinates_smul](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/coordinates-smul--249fa1b668b4016cd8c33d55.md) | 52 | `result-track:249fa1b668b4016cd8c33d55d304762598ff6bfc496dc21c2e1e6bae2dd8332b` |
| 8 | `theorem` | [coordinates_sub](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/coordinates-sub--cdf448c7209a980eb11deaf3.md) | 55 | `result-track:cdf448c7209a980eb11deaf39b66ad181b32f89fa86dabb2ee94126f908b2ec1` |
| 9 | `theorem` | [mean_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/mean-coordinates--108c7a134c8c6fa7804d3b4f.md) | 59 | `result-track:108c7a134c8c6fa7804d3b4fa1c9c86d9638c8a032c6a4934a88e29704556fbb` |
| 10 | `theorem` | [heat_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/heat-coordinates--903e8ab0c9a89db062ef53e6.md) | 65 | `result-track:903e8ab0c9a89db062ef53e6de9ec05dbf37df9842c9f8189d8cb02b23d977ea` |
| 11 | `theorem` | [closure_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/closure-coordinates--42fd7262c3d88cc4bafc1dc0.md) | 71 | `result-track:42fd7262c3d88cc4bafc1dc087a87f2ad464bae0bfe2153984293eac7dc57762` |
| 12 | `theorem` | [heat_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/heat-zero--7c0539963bd7588757517908.md) | 75 | `result-track:7c0539963bd7588757517908abf6d518d3dbed4bdc6e7f6bd05a1b16aeb1bf7c` |
| 13 | `theorem` | [mean_heat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/mean-heat--fb321df26e4978bad277497b.md) | 80 | `result-track:fb321df26e4978bad277497b4d8d7af26c11e45a43d36e3f707a0c6f3cb2cf3b` |
| 14 | `theorem` | [heat_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/heat-add--72eb34fe9d7f37d4bee40935.md) | 87 | `result-track:72eb34fe9d7f37d4bee40935610d8930e2fb565202344ba6cdff4f88717b571f` |
| 15 | `theorem` | [closureHeat_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/closureheat-zero--5a6fd2f7113086400c99e406.md) | 96 | `result-track:5a6fd2f7113086400c99e406e01524c46a7318ab90759aa2be73c3036b4ab107` |
| 16 | `theorem` | [closureHeat_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/closureheat-add--519869e4a533d011e6f4a038.md) | 99 | `result-track:519869e4a533d011e6f4a038a3a5e1479c1cfcf1c3b93022944f5a8e40d8c9b0` |
| 17 | `def` | [coefficientTopology](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/coefficienttopology--b52264845e8e9576a8064460.md) | 105 | `declaration-track:b52264845e8e9576a8064460328b65edb89d5b8b0e317890b760f22575b33cd1` |
| 18 | `theorem` | [heat_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/heat-continuous--6b0e09cb17170e6732874a71.md) | 109 | `result-track:6b0e09cb17170e6732874a71ab0209243319caf6a66eb8231f96e25a190de707` |
| 19 | `theorem` | [closureHeat_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/closureheat-continuous--554c47c62ba1b7a9a7fb143c.md) | 121 | `result-track:554c47c62ba1b7a9a7fb143cb88ad52b8d0185e56fb641d05e9258afa638cd8a` |
| 20 | `theorem` | [heat_coordinate_derivative](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/heat-coordinate-derivative--18cf7ec9d35244ab4e11e6cf.md) | 131 | `result-track:18cf7ec9d35244ab4e11e6cf084af9a1421d08a57818f83f7789eb75dbe08297` |
| 21 | `theorem` | [heat_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/heat-lift--70cabe60d792cd46c8c8f645.md) | 142 | `result-track:70cabe60d792cd46c8c8f6452bd4058e126726ea8d8fc19ce0c0281650218f0b` |
| 22 | `theorem` | [closureHeat_lift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/closureheat-lift--a6a4099d13de89be2a291b74.md) | 150 | `result-track:a6a4099d13de89be2a291b748c7a194e15b28ae02135193129e79bafa4a0fc80` |
| 23 | `theorem` | [lift_continuous](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/lift-continuous--1a207795965d743b8cdb8345.md) | 156 | `result-track:1a207795965d743b8cdb8345ff01e4bc3329ca4950ef924f16349f82801486ff` |
| 24 | `def` | [defectEnergy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/defectenergy--8f24f943f718f5b0d94c727a.md) | 173 | `declaration-track:8f24f943f718f5b0d94c727a95185218170104090e02a88c2e32938b8c30ce40` |
| 25 | `def` | [totalEnergy](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/totalenergy--a320ed542c4caece4f1b1046.md) | 176 | `declaration-track:a320ed542c4caece4f1b104674acc8e96cb6e3f4cd23459bd71d2c8b9df4b1b5` |
| 26 | `theorem` | [totalEnergy_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/totalenergy-agrees--b742ce2cf23dc77028601841.md) | 180 | `result-track:b742ce2cf23dc77028601841cc442e47530c32b9586460d47737d338589decd9` |
| 27 | `theorem` | [defect_heat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/defect-heat--245e7f1da69d2896a02ac6b5.md) | 189 | `result-track:245e7f1da69d2896a02ac6b51d821b65e680201b77f255b52b39f17eaf794841` |
| 28 | `theorem` | [total_heat](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/total-heat--fbbe177acea8c2a169b68601.md) | 197 | `result-track:fbbe177acea8c2a169b68601fca257981dfe4dc687392b423e6790091f021a28` |
| 29 | `theorem` | [defect_nonneg](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/defect-nonneg--e11debaa089b81c8ff1dffb8.md) | 206 | `result-track:e11debaa089b81c8ff1dffb8074d85956ffb32aff0706ae5d8db462b6ffafa64` |
| 30 | `theorem` | [defect_zero_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/defect-zero-iff--29c6e376fc18e840b02557de.md) | 211 | `result-track:29c6e376fc18e840b02557de4ec2a968def3935c206f15813399c2cc6e482e05` |
| 31 | `theorem` | [defect_contraction](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/defect-contraction--fe6b70dd10290eb4313d0a0b.md) | 248 | `result-track:fe6b70dd10290eb4313d0a0b11eabd684c6f65a64e2cf6010c5d95e6bdac978b` |
| 32 | `theorem` | [nonconstant_stage_fixture](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/nonconstant-stage-fixture--e43fa71e4b876148d5cdf43f.md) | 257 | `result-track:e43fa71e4b876148d5cdf43f1e0ad19acd0d823502fe0ee85249f806b27f51d9` |
| 33 | `theorem` | [finite_time_zero_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/finite-time-zero-iff--f3539710f1b86eeb1c85c699.md) | 272 | `result-track:f3539710f1b86eeb1c85c699e6e9f0cbd491455a52031a7626110ff4c3231975` |
| 34 | `theorem` | [lifted_total_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCoefficientHeat.lean/declarations/lifted-total-bounds--a525fdba75e170b03810f00b.md) | 280 | `result-track:a525fdba75e170b03810f00b81440f9841255888d94e0850b54f48feb416dcf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
