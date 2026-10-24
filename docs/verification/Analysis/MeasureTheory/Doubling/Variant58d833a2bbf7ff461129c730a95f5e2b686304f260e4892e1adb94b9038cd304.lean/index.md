# Verification target: GRWTSK.Analysis.MeasureTheory.Doubling.Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12e3486705083983217ae7fb5e2fc28baae3754c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12e3486705083983217ae7fb5e2fc28baae3754c`.

Source path: `GRWTSK/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.MeasureSpaceDef` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsUnifLocDoublingMeasure](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/isuniflocdoublingmeasure--9c7ef39bae8f33dcce48266b.md) | 47 | `declaration-track:9c7ef39bae8f33dcce48266b8264c04739400577448bb23aac2945f84a577033` |
| 2 | `theorem` | [exists_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/exists-measure-closedball-le-mul--9b9e8e634b903e6b45808b8c.md) | 57 | `result-track:9b9e8e634b903e6b45808b8cfe4cfef12755c4ef5a12c6f6ce2a2ed7420ff47d` |
| 3 | `def` | [doublingConstant](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/doublingconstant--2b972b5e16f21d3dea9f20a3.md) | 64 | `declaration-track:2b972b5e16f21d3dea9f20a32e0b3f40fa85bf5178bfb4431817cc5a1223dbf9` |
| 4 | `theorem` | [exists_measure_closedBall_le_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/exists-measure-closedball-le-mul--08f97fdef621b3e3a6eda8a2.md) | 67 | `result-track:08f97fdef621b3e3a6eda8a251db53ac57fefccf9b93d1f4c1dcd2200b01fe12` |
| 5 | `theorem` | [exists_eventually_forall_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/exists-eventually-forall-measure-closedball-le-mul--ded10a98da3ef1cfb4f40fac.md) | 71 | `result-track:ded10a98da3ef1cfb4f40fac53943cf936815db1c783095e44e75dcab843413e` |
| 6 | `def` | [scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/scalingconstantof--8a0eb0d0713e4a88c25b440b.md) | 105 | `declaration-track:8a0eb0d0713e4a88c25b440be6ff4a76fc9920b16997755d4c4c37e628751656` |
| 7 | `theorem` | [one_le_scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/one-le-scalingconstantof--bc8941801bce9a9572818ded.md) | 109 | `result-track:bc8941801bce9a9572818dedc4ab45d554f21d530769fcddd4f0e4c3f421db9f` |
| 8 | `theorem` | [eventually_measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/eventually-measure-mul-le-scalingconstantof-mul--d8cee5509b952d630d506acd.md) | 112 | `result-track:d8cee5509b952d630d506acd3081fc8f967b175bc293a18252c83e90ac116b91` |
| 9 | `theorem` | [eventually_measure_le_scaling_constant_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/eventually-measure-le-scaling-constant-mul--4932a018b93a627e2cac71f9.md) | 130 | `result-track:4932a018b93a627e2cac71f91c3282f29d6bcea802bb0076c6b6be657a3acd97` |
| 10 | `theorem` | [eventually_measure_le_scaling_constant_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/eventually-measure-le-scaling-constant-mul--925571231d8569adfb48ed44.md) | 136 | `result-track:925571231d8569adfb48ed44d9721ad6d04eff901bee88a411d0eb1d6e1db279` |
| 11 | `def` | [scalingScaleOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/scalingscaleof--d682c53f5a255260f828b2b5.md) | 145 | `declaration-track:d682c53f5a255260f828b2b50456d454c9721463a7fde9737f889788c50d1f35` |
| 12 | `theorem` | [scalingScaleOf_pos](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/scalingscaleof-pos--e435789c6f2ec4c682e8bced.md) | 148 | `result-track:e435789c6f2ec4c682e8bced4ea4d52fe223a662e79bfd29cf97fdd5458a0e00` |
| 13 | `theorem` | [measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variant58d833a2bbf7ff461129c730a95f5e2b686304f260e4892e1adb94b9038cd304.lean/declarations/measure-mul-le-scalingconstantof-mul--cd166197387e482066b58954.md) | 151 | `result-track:cd166197387e482066b58954cb4931e3cb47d9a32382e7656bfc26c6577b94e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
