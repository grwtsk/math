# Verification target: GRWTSK.Analysis.MeasureTheory.Doubling.Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4aa4afb2b07ade1f3c3cc0681c52256b6d82102d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4aa4afb2b07ade1f3c3cc0681c52256b6d82102d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean.json)

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
| 1 | `class` | [IsUnifLocDoublingMeasure](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/isuniflocdoublingmeasure--b960d3a9f51a459404f2c9ff.md) | 39 | `declaration-track:b960d3a9f51a459404f2c9ffc85823821da93a90f423ff98ead23fd7198fe54f` |
| 2 | `theorem` | [exists_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/exists-measure-closedball-le-mul--216f2151287df20170348cf2.md) | 49 | `result-track:216f2151287df20170348cf2f0f8547fe0a00669a5678b19b27e6920a922b0ae` |
| 3 | `def` | [doublingConstant](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/doublingconstant--8b2f910b9a564634faf871ac.md) | 56 | `declaration-track:8b2f910b9a564634faf871ac935fc808160c05600bcea82606bab2f30fb8f0f6` |
| 4 | `theorem` | [exists_measure_closedBall_le_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/exists-measure-closedball-le-mul--91d7280153256aebe520f3da.md) | 59 | `result-track:91d7280153256aebe520f3da1c6efd0c5357ff8399e7f6721fef3db095ce1bd5` |
| 5 | `theorem` | [exists_eventually_forall_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/exists-eventually-forall-measure-closedball-le-mul--422547d50dca329973e79b1c.md) | 63 | `result-track:422547d50dca329973e79b1c8fa5e8b013e6e52a5f0bcceb0dd754dccff43f3f` |
| 6 | `def` | [scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/scalingconstantof--4ff8ea88579fed0ccfcba48f.md) | 97 | `declaration-track:4ff8ea88579fed0ccfcba48f513a724f0bbb8c171505c4e9aac8b11a18263778` |
| 7 | `theorem` | [one_le_scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/one-le-scalingconstantof--e7069b0d410dd11c5a0130d7.md) | 101 | `result-track:e7069b0d410dd11c5a0130d78975c21b59f05b2a6de444aa58bf13577426b40a` |
| 8 | `theorem` | [eventually_measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/eventually-measure-mul-le-scalingconstantof-mul--9860c0422e0415beaa900b16.md) | 104 | `result-track:9860c0422e0415beaa900b16561f2e931b108745a501cb120fb7745b0b5b00cf` |
| 9 | `theorem` | [eventually_measure_le_scaling_constant_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/eventually-measure-le-scaling-constant-mul--2f0980e48ecb126c37b6e0ab.md) | 122 | `result-track:2f0980e48ecb126c37b6e0ab9e25371495df191a01fa28d5ea0b9a2978e0697d` |
| 10 | `theorem` | [eventually_measure_le_scaling_constant_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/eventually-measure-le-scaling-constant-mul--8588bf1eaa64415f0fc9f0a8.md) | 128 | `result-track:8588bf1eaa64415f0fc9f0a8f2be1bebd449c7fb11e32dfdc3e08a38e7eef0e0` |
| 11 | `def` | [scalingScaleOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/scalingscaleof--c454813baf079dfba43e874e.md) | 137 | `declaration-track:c454813baf079dfba43e874ed0aa7b747cfe146b51c6d46e7afc1e3d55263820` |
| 12 | `theorem` | [scalingScaleOf_pos](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/scalingscaleof-pos--2f02a2755e073fb4934cdcc5.md) | 140 | `result-track:2f02a2755e073fb4934cdcc5a61cd64594c0236c283fe2db39555e59c3aec4fd` |
| 13 | `theorem` | [measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantf7489bd0e59efaabd33486686a95117d1aa85409f2372ded3b9b2515a4316eb8.lean/declarations/measure-mul-le-scalingconstantof-mul--cd6418e590c0924a6fbeccf0.md) | 143 | `result-track:cd6418e590c0924a6fbeccf0f0c771fc5d59ff650f15f762e9a9a372418ea988` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
