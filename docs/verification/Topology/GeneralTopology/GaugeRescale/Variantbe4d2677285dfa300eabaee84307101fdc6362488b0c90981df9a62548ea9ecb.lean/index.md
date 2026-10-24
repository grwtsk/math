# Verification target: GRWTSK.Topology.GeneralTopology.GaugeRescale.Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7af1ff2d5adf1fd5feff9d2ddac67c6ea3d86b3c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7af1ff2d5adf1fd5feff9d2ddac67c6ea3d86b3c`.

Source path: `GRWTSK/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Gauge` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaugeRescale](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gaugerescale--a77253a3dea4782617b88336.md) | 41 | `declaration-track:a77253a3dea4782617b88336f6bcd3f092ffc1465dfa039ab591808dfe922e83` |
| 2 | `theorem` | [gaugeRescale_def](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gaugerescale-def--e5e8580530694fccc5919621.md) | 43 | `result-track:e5e8580530694fccc5919621bd1be88212e2c84d4ebf45ca0bd649f0f9aa5603` |
| 3 | `theorem` | [gaugeRescale_zero](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gaugerescale-zero--344c004990f5f67e66cc1a62.md) | 47 | `result-track:344c004990f5f67e66cc1a6246ba7cf182d8be7c148d1a7895b26a7ccee43e42` |
| 4 | `theorem` | [gaugeRescale_smul](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gaugerescale-smul--06810dea1e354c7daadd3854.md) | 49 | `result-track:06810dea1e354c7daadd38544f9582670c5411db85f3455ed287bea6239f2817` |
| 5 | `theorem` | [gauge_gaugeRescale'](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gauge-gaugerescale--d2e0c0fd8a6571854a83c8ad.md) | 54 | `result-track:d2e0c0fd8a6571854a83c8ad6dbcb4922cc8b3fe327c95c483cce2a6508220e7` |
| 6 | `theorem` | [gauge_gaugeRescale_le](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gauge-gaugerescale-le--7cc46e4a046854c44d979ae0.md) | 59 | `result-track:7cc46e4a046854c44d979ae0fc30cc597211c2f1f1ce1bdc52903c64b806066d` |
| 7 | `theorem` | [gaugeRescale_self_apply](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gaugerescale-self-apply--24fdb54dc0a486bfa40c42d5.md) | 70 | `result-track:24fdb54dc0a486bfa40c42d59ee0df48a3910abb96bd634028d27eb5c3be187e` |
| 8 | `theorem` | [gaugeRescale_self](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gaugerescale-self--9cab3dfd63725a3f0561cb5c.md) | 76 | `result-track:9cab3dfd63725a3f0561cb5cdf01e6dee8e9e2e85dbfa15937bdd4b6c81c2503` |
| 9 | `theorem` | [gauge_gaugeRescale](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gauge-gaugerescale--67515ef54d10efc845bb44d7.md) | 80 | `result-track:67515ef54d10efc845bb44d747f89d3ee982c0c3dd7ed5b04cf23d5fff4b3aad` |
| 10 | `theorem` | [gaugeRescale_gaugeRescale](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gaugerescale-gaugerescale--0480227f4672e7543fc9b911.md) | 86 | `result-track:0480227f4672e7543fc9b911ca4cdc2d9436b7e280e0b812d0668389253ba9e8` |
| 11 | `def` | [gaugeRescaleEquiv](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gaugerescaleequiv--3aff10310ab726d2ce753811.md) | 94 | `declaration-track:3aff10310ab726d2ce753811373f331160fd9256a0bf5058dd20d191bb725fd7` |
| 12 | `theorem` | [mapsTo_gaugeRescale_interior](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/mapsto-gaugerescale-interior--d35cdb289c31c9dfff6a0732.md) | 105 | `result-track:d35cdb289c31c9dfff6a0732d8af8b8508a68cc99b48a559fef91462349ef927` |
| 13 | `theorem` | [mapsTo_gaugeRescale_closure](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/mapsto-gaugerescale-closure--661fffa4deda4e2b8835b783.md) | 110 | `result-track:661fffa4deda4e2b8835b78328bab3805493978fbc6f8d2e514cd781786e9d7b` |
| 14 | `theorem` | [continuous_gaugeRescale](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/continuous-gaugerescale--bb60db587cab0def66230ce4.md) | 118 | `result-track:bb60db587cab0def66230ce4331945379a0bbdfbcfc76d3d62001826bc05c52b` |
| 15 | `def` | [gaugeRescaleHomeomorph](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/gaugerescalehomeomorph--ac882caca4816c84971bb8a9.md) | 132 | `declaration-track:ac882caca4816c84971bb8a912c3c7de95aa8a542b064f70eafdc55c328c8347` |
| 16 | `theorem` | [image_gaugeRescaleHomeomorph_interior](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/image-gaugerescalehomeomorph-interior--b720ef01541a1bfa4fd6c869.md) | 139 | `result-track:b720ef01541a1bfa4fd6c869401821949795cd7d13d51b4401f5f0c3f5606bf6` |
| 17 | `theorem` | [image_gaugeRescaleHomeomorph_closure](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/image-gaugerescalehomeomorph-closure--67ab5f7e140cd86c54e19536.md) | 147 | `result-track:67ab5f7e140cd86c54e19536e0ab4f4e1a4283e257ff406ae357401f57e333f2` |
| 18 | `theorem` | [exists_homeomorph_image_eq](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/exists-homeomorph-image-eq--4cc3acfaf38b20c9f45f63d2.md) | 164 | `result-track:4cc3acfaf38b20c9f45f63d2bb964cec669862bf239663a8fe8c5980fd579251` |
| 19 | `theorem` | [exists_homeomorph_image_interior_closure_frontier_eq_unitBall](../../../../../mathematics/Topology/GeneralTopology/GaugeRescale/Variantbe4d2677285dfa300eabaee84307101fdc6362488b0c90981df9a62548ea9ecb.lean/declarations/exists-homeomorph-image-interior-closure-frontier-eq-unitball--095244986ee533b6c9239ebe.md) | 195 | `result-track:095244986ee533b6c9239ebe9f0e22e078ed1069e6871f4f631700a0af8934f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
