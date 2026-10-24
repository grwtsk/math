# Verification target: GRWTSK.Topology.GeneralTopology.OfScalars.Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e023a4985dca7a2838c80579aa7cd25c54e8bf89",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e023a4985dca7a2838c80579aa7cd25c54e8bf89`.

Source path: `GRWTSK/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofScalars](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars--e21d0a604558c41c739875f7.md) | 41 | `declaration-track:e21d0a604558c41c739875f74cabdc85ece570dff980eedb116d7769702eb19c` |
| 2 | `theorem` | [ofScalars_eq_zero](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-eq-zero--b1dc26eef83eb18edb686b0f.md) | 45 | `result-track:b1dc26eef83eb18edb686b0fcb96a1a67a053b147d02f3db3862e7f0bbbcdaf1` |
| 3 | `theorem` | [ofScalars_eq_zero_of_scalar_zero](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-eq-zero-of-scalar-zero--7d0b4f5454eaf999ab33aa3d.md) | 52 | `result-track:7d0b4f5454eaf999ab33aa3dc449a89b3cfb1923a7446bb713225081bb35dabf` |
| 4 | `theorem` | [ofScalars_series_eq_zero](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-series-eq-zero--236f2fe39ab5eca569ef2f16.md) | 56 | `result-track:236f2fe39ab5eca569ef2f16ef192fab7c2f84a0da2c8fb09e5af993d28b2a53` |
| 5 | `theorem` | [ofScalars_series_eq_zero_of_scalar_zero](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-series-eq-zero-of-scalar-zero--1c64e874cb07fb1fc9c20ecb.md) | 61 | `result-track:1c64e874cb07fb1fc9c20ecb4cb10d6b7a372ce90b92b7aff9ed9350b04d87c7` |
| 6 | `theorem` | [ofScalars_series_of_subsingleton](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-series-of-subsingleton--df703fbc957293bfc86b0a18.md) | 65 | `result-track:df703fbc957293bfc86b0a18df6b476b0e3655e965acca248d4aa39f828a4a40` |
| 7 | `theorem` | [ofScalars_series_injective](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-series-injective--42a2fb91aafb274163b950b5.md) | 70 | `result-track:42a2fb91aafb274163b950b5fdc0b695b26f18c83a30d36ff330b655831ee629` |
| 8 | `theorem` | [ofScalars_series_eq_iff](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-series-eq-iff--6c7edc4a2112b1d083c82afd.md) | 84 | `result-track:6c7edc4a2112b1d083c82afddf6ff62de697948d88224eda8bbba5b0163b2eeb` |
| 9 | `theorem` | [ofScalars_apply_zero](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-apply-zero--d03c57cdc5013b2d27dfa98c.md) | 88 | `result-track:d03c57cdc5013b2d27dfa98cc0b8975eebb45aa36079480d7eaa2a9dfd6d9548` |
| 10 | `lemma` | [coeff_ofScalars](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/coeff-ofscalars--80344de1a9fa92b89a613c00.md) | 94 | `result-track:80344de1a9fa92b89a613c00c0016f665cf026f64a2569750f243f11fb26885a` |
| 11 | `theorem` | [ofScalars_add](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-add--e43ef064e5304349485cb10c.md) | 98 | `result-track:e43ef064e5304349485cb10c5281e5864aa38c07ce8520e246312383f081817e` |
| 12 | `theorem` | [ofScalars_smul](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-smul--ca3bf9236f911f53419cd0f4.md) | 103 | `result-track:ca3bf9236f911f53419cd0f4f9f93cbdb24cf75e45f02508614a43ef0b9e7268` |
| 13 | `def` | [ofScalarsSubmodule](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalarssubmodule--54e88705f6a8328aa56d1d38.md) | 109 | `declaration-track:54e88705f6a8328aa56d1d381cffcf6315936c6c498f1fc71c1ff5ccdb1fa2b8` |
| 14 | `theorem` | [ofScalars_apply_eq](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-apply-eq--e8e817b0a7070145a1549016.md) | 117 | `result-track:e8e817b0a7070145a1549016c9d5cc5eaad3faaa8f77b67ea8d4efee5c00508d` |
| 15 | `theorem` | [ofScalars_apply_eq'](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-apply-eq--28efd78aee82cc45626d52c3.md) | 122 | `result-track:28efd78aee82cc45626d52c35ee74c16acd2b128350ce20776bb40f66a7f1a1c` |
| 16 | `def` | [ofScalarsSum](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalarssum--b06fe2235d3e1864f4613656.md) | 127 | `declaration-track:b06fe2235d3e1864f46136564c4c26cc35d4c932d7aa9d4bf1e69c8270bc7925` |
| 17 | `theorem` | [ofScalars_sum_eq](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-sum-eq--3e7c8051e9351d33039adcaa.md) | 129 | `result-track:3e7c8051e9351d33039adcaa83bbb3f8cae7cdb7029a0f60bb2177e1766bf621` |
| 18 | `theorem` | [ofScalarsSum_eq_tsum](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalarssum-eq-tsum--fae6f8dadcf19d97d32db16d.md) | 132 | `result-track:fae6f8dadcf19d97d32db16dbb698213fd366c8ab2e880f121aa97ec61f52ccf` |
| 19 | `theorem` | [ofScalarsSum_zero](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalarssum-zero--b30556a2a3c16dc0f3b1b04a.md) | 136 | `result-track:b30556a2a3c16dc0f3b1b04a2743cd18074af6379fa041b4c654f13bdf2ba9ab` |
| 20 | `theorem` | [ofScalarsSum_of_subsingleton](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalarssum-of-subsingleton--c2aa1dd039fe55598e21f21d.md) | 140 | `result-track:c2aa1dd039fe55598e21f21df3eb44069991079d8a0f685413cec8f0158424b9` |
| 21 | `theorem` | [ofScalarsSum_op](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalarssum-op--2b15e18cc9e4c067b997b1cc.md) | 144 | `result-track:2b15e18cc9e4c067b997b1ccc302849a9967435bee13cb2a73c23eb096f9922d` |
| 22 | `theorem` | [ofScalarsSum_unop](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalarssum-unop--0ef4c461ca9b2c21c95d310e.md) | 149 | `result-track:0ef4c461ca9b2c21c95d310ec43689fc5959b6a75a45e59ada3857422ccdda2e` |
| 23 | `theorem` | [ofScalars_norm_eq_mul](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-norm-eq-mul--3da21fe08180105ea622224a.md) | 163 | `result-track:3da21fe08180105ea622224aaf5232ba34e606430f3fbcc8e61cb06247088f6a` |
| 24 | `theorem` | [ofScalars_norm_le](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-norm-le--f6dae4c889df4d1c93097a5e.md) | 167 | `result-track:f6dae4c889df4d1c93097a5e544dcadd276b863f51642e6771f4fe26c815a1c0` |
| 25 | `theorem` | [ofScalars_norm](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-norm--710c8575ce46303e8453bc27.md) | 173 | `result-track:710c8575ce46303e8453bc2768f3f861cf3698f899dd87bdc347c153a0172a87` |
| 26 | `theorem` | [tendsto_succ_norm_div_norm](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/tendsto-succ-norm-div-norm--45c963d23a5a2fdba85c3517.md) | 186 | `result-track:45c963d23a5a2fdba85c35175e2fcf81d7d1a9f4f4ea70483eb59529e6ce7bd6` |
| 27 | `theorem` | [ofScalars_radius_ge_inv_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-radius-ge-inv-of-tendsto--15a21ad6fbf6540c3a34513c.md) | 194 | `result-track:15a21ad6fbf6540c3a34513c14cb82e2bff29ebe2bf7a5a21b74c1a5b04f16de` |
| 28 | `theorem` | [ofScalars_radius_eq_inv_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-radius-eq-inv-of-tendsto--d8d1f476ab1f8e617ae2d242.md) | 215 | `result-track:d8d1f476ab1f8e617ae2d242f74337b8ef8b0bd3eb3b2dd2ea2986dcb67b3455` |
| 29 | `theorem` | [ofScalars_radius_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-radius-eq-of-tendsto--483dad761c411b006f60dd94.md) | 229 | `result-track:483dad761c411b006f60dd94f70663cc8a3e770816c5f540256d4bfa180e6804` |
| 30 | `theorem` | [ofScalars_radius_eq_top_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-radius-eq-top-of-tendsto--e58e06fc53f6859d82461307.md) | 241 | `result-track:e58e06fc53f6859d8246130730543255cbc5a9d5af047234b536e6b8c1e5deba` |
| 31 | `theorem` | [ofScalars_radius_eq_zero_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-radius-eq-zero-of-tendsto--8858732ec2346382940e8d21.md) | 259 | `result-track:8858732ec2346382940e8d2124ded22afb134bea69199e0e41252adf57fef36c` |
| 32 | `theorem` | [ofScalars_radius_eq_inv_of_tendsto_ENNReal](../../../../../mathematics/Topology/GeneralTopology/OfScalars/Variant90f407674e2fb7e956e88919284e182994b7a57f8d77c236d699e5d35f1b719c.lean/declarations/ofscalars-radius-eq-inv-of-tendsto-ennreal--cbd8c128c5bc106c162a465e.md) | 287 | `result-track:cbd8c128c5bc106c162a465e71afc1ff2cbd94a624ec65724e779084bae3c3d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
