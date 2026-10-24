# Verification target: GRWTSK.Topology.GeneralTopology.ActualRealMode.Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8098258657afc744b1d4062840f2feaa56ed659",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8098258657afc744b1d4062840f2feaa56ed659`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [p](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/p--e24b744d38c275b81007c8b1.md) | 15 | `declaration-track:e24b744d38c275b81007c8b1bab0bdf708acfedde9fa7381d162024fbec6d817` |
| 2 | `def` | [normalizedSquare](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/normalizedsquare--f07cf8752b91a313840960f5.md) | 17 | `declaration-track:f07cf8752b91a313840960f529ddc96f992aa8b0f0915a5ed089dc7cd0619395` |
| 3 | `theorem` | [p_coe](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/p-coe--818a094b61c8da9f011a7530.md) | 20 | `result-track:818a094b61c8da9f011a7530f69cf45d92d1ff72a80778fadc2f5500b58e27ee` |
| 4 | `theorem` | [actual_scaled_square_real](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/actual-scaled-square-real--ead0cab2e5f72e603ad9feb7.md) | 23 | `result-track:ead0cab2e5f72e603ad9feb7c9147b687a0ca844e938459a4fc84961b7abebdf` |
| 5 | `theorem` | [p_ratio](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/p-ratio--1f5e0676a06a6c0945cf4ad3.md) | 49 | `result-track:1f5e0676a06a6c0945cf4ad360503b2fa005b93192b1524623f57c0fec54db56` |
| 6 | `theorem` | [p_ratio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/p-ratio-tendsto--351cdc2db6577cf3b7e74275.md) | 53 | `result-track:351cdc2db6577cf3b7e742755a1007bdd06b33ec4685b63cb6567c30e5c20cd1` |
| 7 | `theorem` | [normalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/normalization-tendsto--c5efedc137f7afd068ff8730.md) | 70 | `result-track:c5efedc137f7afd068ff8730bcc5a21efb206e051c9089d3d4e74afab976f678` |
| 8 | `theorem` | [exp_scaled_neg_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/exp-scaled-neg-tendsto--58f23341f4c3c24d6da71ad4.md) | 79 | `result-track:58f23341f4c3c24d6da71ad458f4e4eb7638dd1271e2d0ada0609648839b277c` |
| 9 | `theorem` | [exp_square_rescale](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/exp-square-rescale--92168930010ad5d756a6761f.md) | 84 | `result-track:92168930010ad5d756a6761fb250b4dc3edd5ef5b4455bb27c149f3732b08e83` |
| 10 | `theorem` | [scaled_square_exact](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/scaled-square-exact--09ac8e7fcf4be351ec94905d.md) | 93 | `result-track:09ac8e7fcf4be351ec94905d6deed8df86e67f4c647a8962b009209b7ebc9231` |
| 11 | `theorem` | [scaled_square_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/scaled-square-tendsto--263d2da1d71844e5c0c81b6f.md) | 117 | `result-track:263d2da1d71844e5c0c81b6fdcd88db2e3556a7356ef101cebc517c3cd03fe87` |
| 12 | `theorem` | [quarter_scaled_limit](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/quarter-scaled-limit--0ff72cb09687d5aea1ab08ae.md) | 137 | `result-track:0ff72cb09687d5aea1ab08ae4784c8e392aeabcbde066893d315af3df1c6c49b` |
| 13 | `theorem` | [exponential_scale_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/exponential-scale-tendsto--ea4da0c35a14484dd6457de6.md) | 145 | `result-track:ea4da0c35a14484dd6457de606036eda966f0eefedb30ecb89fdf23c65ba9366` |
| 14 | `theorem` | [quarter_square_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/quarter-square-tendsto-attop--604366902d29a4575812e952.md) | 156 | `result-track:604366902d29a4575812e95201e2a56e8e8bac5c267d6b7796c842178181eff2` |
| 15 | `theorem` | [bounded_remainder_transfer](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/bounded-remainder-transfer--4429f920def7aa699e8b9e23.md) | 169 | `result-track:4429f920def7aa699e8b9e23ba8ce2977fa5b9684f296757c932f8c66a0c90b7` |
| 16 | `theorem` | [scaled_bounded_remainder](../../../../../mathematics/Topology/GeneralTopology/ActualRealMode/Variant8c5d04968294709bbf491c6188f1dde1d912d7abf83be08fb0ec52bef0cc2443.lean/declarations/scaled-bounded-remainder--bee2dfe5f49a42739661b165.md) | 182 | `result-track:bee2dfe5f49a42739661b16520dc3b02c1c6d92a5fbe757acaae6f90c454a69e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
