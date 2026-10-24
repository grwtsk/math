# Verification target: GRWTSK.Analysis.MeasureTheory.Doubling.Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "949f144d9c04a8b4dd8b43ed1328ac22ea776ee3",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `949f144d9c04a8b4dd8b43ed1328ac22ea776ee3`.

Source path: `GRWTSK/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MeasureSpaceDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/macro-rules--c34914a3d3b4b49b4ef5c04e.md) | 29 | `declaration-track:c34914a3d3b4b49b4ef5c04e87cb07ebfeb33801f093a1409d91862a2d709f08` |
| 2 | `class` | [IsUnifLocDoublingMeasure](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/isuniflocdoublingmeasure--4302999c68dd2a48f5c123bd.md) | 44 | `declaration-track:4302999c68dd2a48f5c123bd2cd928fa3f3bb73f671aa1a9c29f7318c24463cc` |
| 3 | `theorem` | [exists_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/exists-measure-closedball-le-mul--b25a2a75fbc18d3e53d9b0cf.md) | 56 | `result-track:b25a2a75fbc18d3e53d9b0cfb06090524b7b1b1924e29b6fa2524dbdd9a692d3` |
| 4 | `def` | [doublingConstant](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/doublingconstant--2751ffd33345517ef95a8827.md) | 63 | `declaration-track:2751ffd33345517ef95a8827f3d968fe9a22fc490a092407e11c2616334a1d8e` |
| 5 | `theorem` | [exists_measure_closedBall_le_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/exists-measure-closedball-le-mul--7e4c477589316cb6102df968.md) | 67 | `result-track:7e4c477589316cb6102df968ca2092163ae17f766cac7b48abf9f14646418bcc` |
| 6 | `theorem` | [exists_eventually_forall_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/exists-eventually-forall-measure-closedball-le-mul--393171842e4475332c714e56.md) | 72 | `result-track:393171842e4475332c714e56ad42522b68accb627e34073fb492614483594446` |
| 7 | `def` | [scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/scalingconstantof--e2414f98d734719b34f8458d.md) | 108 | `declaration-track:e2414f98d734719b34f8458d9adb2cfe0d688e3d5d76408bc6082676856d55d1` |
| 8 | `theorem` | [one_le_scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/one-le-scalingconstantof--efb70212ea72a30117a2d756.md) | 113 | `result-track:efb70212ea72a30117a2d7561329c58db773e34fe8fd0176ee52fb7bfa39eff8` |
| 9 | `theorem` | [eventually_measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/eventually-measure-mul-le-scalingconstantof-mul--b2376d938d30595a56c0130f.md) | 117 | `result-track:b2376d938d30595a56c0130f863e56e77c7e7869b7f334a4ddf6a534b109551f` |
| 10 | `theorem` | [eventually_measure_le_scaling_constant_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/eventually-measure-le-scaling-constant-mul--4cf1677aa7772b79ab789e61.md) | 135 | `result-track:4cf1677aa7772b79ab789e610bb52b8f11fc7f385f652083e2c39c59f7d058fe` |
| 11 | `theorem` | [eventually_measure_le_scaling_constant_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/eventually-measure-le-scaling-constant-mul--c74c54e43a6da78c1b9b056b.md) | 142 | `result-track:c74c54e43a6da78c1b9b056b4fae58230e2712af549339cc964817c97b2ac08a` |
| 12 | `def` | [scalingScaleOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/scalingscaleof--8168c6497645450a488bfffd.md) | 152 | `declaration-track:8168c6497645450a488bfffdd5106d121f93104c864f39041f076b5c3b291b25` |
| 13 | `theorem` | [scalingScaleOf_pos](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/scalingscaleof-pos--4ac262dea0222c0dae4875fd.md) | 156 | `result-track:4ac262dea0222c0dae4875fdd17768206671b0b55a004edd86acc6d4496c1873` |
| 14 | `theorem` | [measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant4dddaaee1e91f689579575334cb64bc8d3bed62a1f25b66de793b2b15a8a30e7.lean/declarations/measure-mul-le-scalingconstantof-mul--79e97e1c701651c03bfa664a.md) | 160 | `result-track:79e97e1c701651c03bfa664ad48b0f97347d455716a513e74daefc433d6a5308` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
