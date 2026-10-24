# Verification target: GRWTSK.Analysis.MeasureTheory.Doubling.Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d194b245a2bc10174a1c34ddc0dc70ff12aa4d0b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d194b245a2bc10174a1c34ddc0dc70ff12aa4d0b`.

Source path: `GRWTSK/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsUnifLocDoublingMeasure](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/isuniflocdoublingmeasure--9a6f83394e3f04de64f7be5c.md) | 54 | `declaration-track:9a6f83394e3f04de64f7be5cae61c1999f2470bd60d8d7acd65aa819488fa1e3` |
| 2 | `theorem` | [exists_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/exists-measure-closedball-le-mul--1d764cbaa952717d26d8e8eb.md) | 64 | `result-track:1d764cbaa952717d26d8e8eb81845e3eecf2a6da2cc57c8f3c93679d86e46685` |
| 3 | `def` | [doublingConstant](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/doublingconstant--20553119b2aee46cd91eab4e.md) | 71 | `declaration-track:20553119b2aee46cd91eab4e8b190797af128b18c1df308234b384f789d0945e` |
| 4 | `theorem` | [eventually_measure_le_doublingConstant_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/eventually-measure-le-doublingconstant-mul--93a10d8c55f762c472363c3e.md) | 74 | `result-track:93a10d8c55f762c472363c3ef4161cd51f80ef3800df58ff4ec63e9d64b51211` |
| 5 | `theorem` | [exists_eventually_forall_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/exists-eventually-forall-measure-closedball-le-mul--7aa46dcab29b13eeabb81bf1.md) | 78 | `result-track:7aa46dcab29b13eeabb81bf1b67e911b8d1393b660112ebb0a40e11c47925b53` |
| 6 | `def` | [scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/scalingconstantof--366106a1153a2b6a761d8735.md) | 99 | `declaration-track:366106a1153a2b6a761d8735fc9b191bb94a088bb358685e4817812266db5d71` |
| 7 | `theorem` | [one_le_scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/one-le-scalingconstantof--2a4040f41a88f7eea3eaf71b.md) | 103 | `result-track:2a4040f41a88f7eea3eaf71b2bb0755eba1945e054f911dcb19a6c3f9df6f7d6` |
| 8 | `theorem` | [eventually_measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/eventually-measure-mul-le-scalingconstantof-mul--ecbe1e93d3a2319a8cae524a.md) | 106 | `result-track:ecbe1e93d3a2319a8cae524a85273372e1cb7b8895c59c6362fecafbcd04e9fa` |
| 9 | `theorem` | [eventually_measure_le_scaling_constant_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/eventually-measure-le-scaling-constant-mul--0dea5575c2fbc36192227ab7.md) | 124 | `result-track:0dea5575c2fbc36192227ab7083d321aa48ec2175817fd00a004480a7af73b35` |
| 10 | `theorem` | [eventually_measure_le_scaling_constant_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/eventually-measure-le-scaling-constant-mul--f27835fea6483a3ef13dad27.md) | 130 | `result-track:f27835fea6483a3ef13dad27efd05d7624d9c027d0e87c56b7087ef67f1468e7` |
| 11 | `def` | [scalingScaleOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/scalingscaleof--4729fe1de07f4aed98af37ab.md) | 139 | `declaration-track:4729fe1de07f4aed98af37abea11579c7006cab9d43dd49e2e8f85fc028461d9` |
| 12 | `theorem` | [scalingScaleOf_pos](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/scalingscaleof-pos--35f9a76c6ec7400d809b29cb.md) | 142 | `result-track:35f9a76c6ec7400d809b29cbd54256e569154dbd159c28c89e3886b27d8a60cf` |
| 13 | `theorem` | [measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant860cd8a62ed594692095e1adcbc7b2f567eca4022bbc1c282d47ff71458e4053.lean/declarations/measure-mul-le-scalingconstantof-mul--01f7853c5b86d0eb54c552a1.md) | 145 | `result-track:01f7853c5b86d0eb54c552a192735b11cd2be07bfd83624feb851a3477e6f34f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
