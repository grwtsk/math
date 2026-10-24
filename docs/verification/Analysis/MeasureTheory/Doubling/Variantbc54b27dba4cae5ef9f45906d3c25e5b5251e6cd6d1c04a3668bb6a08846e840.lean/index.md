# Verification target: GRWTSK.Analysis.MeasureTheory.Doubling.Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a01e563f3ab75cb9e86d1edd5be25f16ff8b657d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a01e563f3ab75cb9e86d1edd5be25f16ff8b657d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean.json)

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
| 1 | `class` | [IsUnifLocDoublingMeasure](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/isuniflocdoublingmeasure--ca1b2784aec9e44803ee2fc2.md) | 46 | `declaration-track:ca1b2784aec9e44803ee2fc2abc67b6c0586ff52210c0b50f1257993cdc25566` |
| 2 | `theorem` | [exists_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/exists-measure-closedball-le-mul--0b9f968c468348048fae7629.md) | 56 | `result-track:0b9f968c468348048fae76296d8a63b99bfee3c9ee0fe9d2a501f1dbfc4518e2` |
| 3 | `def` | [doublingConstant](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/doublingconstant--90bc551be7db3e51c2819cbf.md) | 63 | `declaration-track:90bc551be7db3e51c2819cbf8006046bf49f379e402b34d7fb3be2f921774010` |
| 4 | `theorem` | [eventually_measure_le_doublingConstant_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/eventually-measure-le-doublingconstant-mul--03135aa6c9c4a04bdc94d218.md) | 66 | `result-track:03135aa6c9c4a04bdc94d218fef34952bcc14a00ae2ea46ee5de7361d8ad12b3` |
| 5 | `theorem` | [exists_eventually_forall_measure_closedBall_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/exists-eventually-forall-measure-closedball-le-mul--0f89a4ea17324296c8e93dc8.md) | 70 | `result-track:0f89a4ea17324296c8e93dc87b17b6c6358f1c9c3ef8d6bfd4609f24a9776c2b` |
| 6 | `def` | [scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/scalingconstantof--affc95c57f1268305fb1783f.md) | 91 | `declaration-track:affc95c57f1268305fb1783f490efc4e3758d4becb5331923e3027b57a1511c7` |
| 7 | `theorem` | [one_le_scalingConstantOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/one-le-scalingconstantof--1f89eaeb593eea8b975c7403.md) | 95 | `result-track:1f89eaeb593eea8b975c74039e661d7ae3f8cde7c47a64bacb554990ac4b0489` |
| 8 | `theorem` | [eventually_measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/eventually-measure-mul-le-scalingconstantof-mul--e4e3f372a5005b317d12864e.md) | 98 | `result-track:e4e3f372a5005b317d12864e1ba7d7147c0f4f34da21bdebe4b739964e5d53ec` |
| 9 | `theorem` | [eventually_measure_le_scaling_constant_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/eventually-measure-le-scaling-constant-mul--9ed95c5cd5bafd061afd3e9e.md) | 116 | `result-track:9ed95c5cd5bafd061afd3e9e00d53861e83855b892d8544b2139188d2c9a2756` |
| 10 | `theorem` | [eventually_measure_le_scaling_constant_mul'](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/eventually-measure-le-scaling-constant-mul--4d5da09b40e74d068e60266a.md) | 122 | `result-track:4d5da09b40e74d068e60266a4bd7643b967f879cdea9d8c036b5a0310b7d7e04` |
| 11 | `def` | [scalingScaleOf](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/scalingscaleof--a115e1f423f4f863e843c66a.md) | 131 | `declaration-track:a115e1f423f4f863e843c66a4dae8f1e139b4acdac4bc0153f621ba90f3ee9e7` |
| 12 | `theorem` | [scalingScaleOf_pos](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/scalingscaleof-pos--1ee5a9eb5d8469f1e6148a1d.md) | 134 | `result-track:1ee5a9eb5d8469f1e6148a1d33747beb645c20a3d1cda872e40d5da85fd234b8` |
| 13 | `theorem` | [measure_mul_le_scalingConstantOf_mul](../../../../../mathematics/Analysis/MeasureTheory/Doubling/Variantbc54b27dba4cae5ef9f45906d3c25e5b5251e6cd6d1c04a3668bb6a08846e840.lean/declarations/measure-mul-le-scalingconstantof-mul--471ef2c11fc28e327fb63b81.md) | 137 | `result-track:471ef2c11fc28e327fb63b810865a1c2b54a7d80e5c180c3430364e22e651cb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
