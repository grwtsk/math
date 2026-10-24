# Verification target: GRWTSK.Topology.GeneralTopology.List.Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5cdf2650c9105a6a4dc607b2e612cb802fd8f273",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5cdf2650c9105a6a4dc607b2e612cb802fd8f273`.

Source path: `GRWTSK/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ListTraverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/instance--0197393cbaecd54bac4f063d.md) | 23 | `declaration-track:0197393cbaecd54bac4f063d1fae159fd2b1d657657680624a195915c95f3fdc` |
| 2 | `theorem` | [nhds_list](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/nhds-list--2b6a6db580d1a9ac87acadfa.md) | 26 | `result-track:2b6a6db580d1a9ac87acadfafabb15bff7d4e1b2cf38fc96ce0d41e0323a6e7e` |
| 3 | `theorem` | [nhds_nil](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/nhds-nil--07a9f3d43a63b356476774c5.md) | 64 | `result-track:07a9f3d43a63b356476774c5c355ac1d353c77f3b4fd77d49f8a74cadbf11e17` |
| 4 | `theorem` | [nhds_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/nhds-cons--bfba666a3b100cd8ff6ebb22.md) | 67 | `result-track:bfba666a3b100cd8ff6ebb227d0fdcf74c6904fc3fb50b43a41383a4ecb87fa9` |
| 5 | `theorem` | [List.tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/list-tendsto-cons--9c8b0f1b3e54c4d40e081c25.md) | 70 | `result-track:9c8b0f1b3e54c4d40e081c25368bbb45a3e5ec826da9a4a8719507b922f224e5` |
| 6 | `theorem` | [Filter.Tendsto.cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/filter-tendsto-cons--f30de0c8d25d4f97142d6b09.md) | 74 | `result-track:f30de0c8d25d4f97142d6b09798bcca7890f71d8f0f2360536c8c94c5be59003` |
| 7 | `theorem` | [tendsto_cons_iff](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/tendsto-cons-iff--74ec78837cb0704dcb0a9fee.md) | 81 | `result-track:74ec78837cb0704dcb0a9feeb7dd7232590d6f87ee3b9ca94b45b04824a22855` |
| 8 | `theorem` | [continuous_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/continuous-cons--cf9e73b784dc1c74fab37039.md) | 89 | `result-track:cf9e73b784dc1c74fab370399e96ca8e9dbb1b86ae8228a4d75ae49bccb53313` |
| 9 | `theorem` | [tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/tendsto-nhds--b347a403a79016c461a2ed8e.md) | 92 | `result-track:b347a403a79016c461a2ed8e340554f6825faf2826b821d125ad301b1e589b00` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/instance--fcbe372aaeed67a541c95aa3.md) | 103 | `declaration-track:fcbe372aaeed67a541c95aa3b721089a1deccc10b2d8b9fda08fa1e61a4e14f9` |
| 11 | `theorem` | [continuousAt_length](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/continuousat-length--06619f0ce9cc2791286abafe.md) | 106 | `result-track:06619f0ce9cc2791286abafead0ee2bc44906a088e1090a5e5d12f8b1e3d34dd` |
| 12 | `theorem` | [tendsto_insertIdx'](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/tendsto-insertidx--2295636942c65275f3cf85b9.md) | 116 | `result-track:2295636942c65275f3cf85b92d675fd51bcf1a8e66e64fa943f8d8b8d2c5b361` |
| 13 | `theorem` | [tendsto_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/tendsto-insertidx--c8a18b347a019e39207c365f.md) | 131 | `result-track:c8a18b347a019e39207c365fb466dab23fc20d4904b29112eb61da64e9204615` |
| 14 | `theorem` | [continuous_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/continuous-insertidx--989ccf241593203f6fb54ad4.md) | 136 | `result-track:989ccf241593203f6fb54ad4355b414f5bf28158817d39d4655df0753a73b7a0` |
| 15 | `theorem` | [tendsto_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/tendsto-eraseidx--be3d23307b7ee00ba07c940e.md) | 140 | `result-track:be3d23307b7ee00ba07c940e4a7e34e66835f2875c284d24b9678eb4f985a9c3` |
| 16 | `theorem` | [continuous_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/continuous-eraseidx--203bd7b794489d25a3f64a67.md) | 149 | `result-track:203bd7b794489d25a3f64a6710ee21977ef5d362912c04e71c73bb88cd53b9fd` |
| 17 | `theorem` | [tendsto_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/tendsto-prod--b64f02d2182a6ced06772f02.md) | 153 | `result-track:b64f02d2182a6ced06772f0257c5c95b1e53a32aa01b5e6d6ff5027117150969` |
| 18 | `theorem` | [continuous_prod](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/continuous-prod--f7265c52886d71a2cd23d9a5.md) | 164 | `result-track:f7265c52886d71a2cd23d9a5aaddd9995c050a015463236de11720ebecd47a6f` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/instance--1f8663e29f5e89828bee9d77.md) | 173 | `declaration-track:1f8663e29f5e89828bee9d77d7e96a51ac6bee13997070e996ef022c839b4db9` |
| 20 | `theorem` | [tendsto_cons](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/tendsto-cons--3807f3877dde626cf1421d20.md) | 175 | `result-track:3807f3877dde626cf1421d20ff849ed8c2f6e5049334b20416cc9b44bf0f3201` |
| 21 | `theorem` | [tendsto_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/tendsto-insertidx--ce8617fce12542f410eb14ab.md) | 180 | `result-track:ce8617fce12542f410eb14ab97c2e4fd6766195999e37455b2adccc14e928229` |
| 22 | `theorem` | [continuous_insertIdx'](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/continuous-insertidx--9e13e651cc2192fa6749b53b.md) | 190 | `result-track:9e13e651cc2192fa6749b53b07c51422a11ecc3264a9054658318c470b98a659` |
| 23 | `theorem` | [continuous_insertIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/continuous-insertidx--3953a3f21ac533aa7ad44355.md) | 195 | `result-track:3953a3f21ac533aa7ad44355bc5d6afae646510fc58e14c29a716063880236a9` |
| 24 | `theorem` | [continuousAt_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/continuousat-eraseidx--c99c1b7267b9a2f79f720631.md) | 199 | `result-track:c99c1b7267b9a2f79f720631784e8eb0b81273e4399c121a8f1d045276740386` |
| 25 | `theorem` | [continuous_eraseIdx](../../../../../mathematics/Topology/GeneralTopology/List/Variant23ae0bdf333b04bbbd2b3a809965de9f442d5e23e809fdf9982fa316f14acde7.lean/declarations/continuous-eraseidx--2c0fd224daafd2269c276674.md) | 206 | `result-track:2c0fd224daafd2269c27667446fa99d69c736f76d804b348c93136dcc7865a60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
