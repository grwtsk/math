# Verification target: GRWTSK.Analysis.ConstantSpeed.Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "308cfdf9f15ce8955e5602cf8bb521d19ef71e3a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/index.md) · [Full source](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `308cfdf9f15ce8955e5602cf8bb521d19ef71e3a`.

Source path: `GRWTSK/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Function` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.BoundedVariation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasConstantSpeedOnWith](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasconstantspeedonwith--3ee1295891f6e7a3560e9810.md) | 52 | `declaration-track:3ee1295891f6e7a3560e98101c04958953a566598581d68f7093ff513b6badb9` |
| 2 | `theorem` | [HasConstantSpeedOnWith.hasLocallyBoundedVariationOn](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasconstantspeedonwith-haslocallyboundedvariationon--648d9a68cd6b444d74f46cb8.md) | 57 | `result-track:648d9a68cd6b444d74f46cb859e8b1d6ff838bfaf99c5018dd926253e299a21d` |
| 3 | `theorem` | [hasConstantSpeedOnWith_of_subsingleton](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasconstantspeedonwith-of-subsingleton--c2706aab9c67fe0ef154516f.md) | 61 | `result-track:c2706aab9c67fe0ef154516f58af919e08a2045dbc80b49e45b4c1d12734b87f` |
| 4 | `theorem` | [hasConstantSpeedOnWith_iff_ordered](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasconstantspeedonwith-iff-ordered--2f63fae272d71b338f7fdf9e.md) | 67 | `result-track:2f63fae272d71b338f7fdf9e5274624e4f23aa86485b0b1bc375464aa395bf52` |
| 5 | `theorem` | [hasConstantSpeedOnWith_iff_variationOnFromTo_eq](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasconstantspeedonwith-iff-variationonfromto-eq--42844402a2ca7e3bf6f4637e.md) | 80 | `result-track:42844402a2ca7e3bf6f4637e882eef2a9dcbc897bea439d207b6971bbd374aa6` |
| 6 | `theorem` | [HasConstantSpeedOnWith.union](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasconstantspeedonwith-union--57533d547d36a1e19874f72e.md) | 96 | `result-track:57533d547d36a1e19874f72e4bc7396d3aa4ed038cc9d6a4a17c0b1b18499925` |
| 7 | `theorem` | [HasConstantSpeedOnWith.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasconstantspeedonwith-icc-icc--bceeb933ebee48c9d31f16de.md) | 133 | `result-track:bceeb933ebee48c9d31f16de5a496ffe4c0d428265567c7e19d08ce08ac3a029` |
| 8 | `theorem` | [hasConstantSpeedOnWith_zero_iff](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasconstantspeedonwith-zero-iff--e7565421e0fb61d75b74db8e.md) | 148 | `result-track:e7565421e0fb61d75b74db8ee380b81f625b8b76ffd170150cc4c8d1a92cea4f` |
| 9 | `theorem` | [HasConstantSpeedOnWith.ratio](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasconstantspeedonwith-ratio--a437d16f49273e41e10f0575.md) | 167 | `result-track:a437d16f49273e41e10f0575240f2f168734a9d584b6bb65bbe360859257b8c9` |
| 10 | `def` | [HasUnitSpeedOn](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasunitspeedon--3c3fa87cd73bc8d62f20509f.md) | 184 | `declaration-track:3c3fa87cd73bc8d62f20509f93e3eeb86199b49f9ae5176974e50e5e32ffc0e2` |
| 11 | `theorem` | [HasUnitSpeedOn.union](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasunitspeedon-union--b79915e5b30d34d11f0e1dbc.md) | 187 | `result-track:b79915e5b30d34d11f0e1dbccbdfc384fca60661f0f95db4f8271164bc3fa16a` |
| 12 | `theorem` | [HasUnitSpeedOn.Icc_Icc](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/hasunitspeedon-icc-icc--71d0b3ddccfa3e809c207d5d.md) | 192 | `result-track:71d0b3ddccfa3e809c207d5de087a8bef7759984dd6d2d9a81c5d5325f6ce968` |
| 13 | `theorem` | [unique_unit_speed](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/unique-unit-speed--cd0320382d55dca2f13f48b7.md) | 199 | `result-track:cd0320382d55dca2f13f48b7b01ca9811fb0a28843fac380738814f2db573da3` |
| 14 | `theorem` | [unique_unit_speed_on_Icc_zero](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/unique-unit-speed-on-icc-zero--27697f395a11302d711191b0.md) | 208 | `result-track:27697f395a11302d711191b0e2bdd88728c5560ee9e12fae936a28720eeaa7ee` |
| 15 | `def` | [naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/naturalparameterization--45b2ae377762d5c41c09eabc.md) | 228 | `declaration-track:45b2ae377762d5c41c09eabc8111202d029c948c21180dd3b8f30883cbfcb47b` |
| 16 | `theorem` | [edist_naturalParameterization_eq_zero](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/edist-naturalparameterization-eq-zero--797e0d79d7ff68cb327625ea.md) | 231 | `result-track:797e0d79d7ff68cb327625eaacfdfd41c0031a548df8f6985b751906e80a634b` |
| 17 | `theorem` | [has_unit_speed_naturalParameterization](../../../../mathematics/Analysis/ConstantSpeed/Variant189ee14a0091ae6fc8fb29a49fcf72dbdfde55765cb9f0634fbee22126b46b1b.lean/declarations/has-unit-speed-naturalparameterization--9e13e8ab609de5f9cd6684ff.md) | 240 | `result-track:9e13e8ab609de5f9cd6684ffd05e138aec0a7b6473d67516cc17abe7a396c642` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
