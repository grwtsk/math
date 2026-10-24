# Verification target: GRWTSK.Topology.GeneralTopology.Covolume.Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac4c33b9747034c47160e466e612fa157f61bef8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac4c33b9747034c47160e466e612fa157f61bef8`.

Source path: `GRWTSK/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean.json)

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
| 1 | `def` | [covolume](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume--4697b77a9d7075ec4ae92db9.md) | 72 | `declaration-track:4697b77a9d7075ec4ae92db9bd80a668f17eca45b8871ea6bdfb4ef12e5d89e5` |
| 2 | `theorem` | [covolume_eq_measure_fundamentalDomain](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume-eq-measure-fundamentaldomain--e4751fd4ec28f1a8465edc18.md) | 84 | `result-track:e4751fd4ec28f1a8465edc1850e3685e24d7dd1772ac669327f44ab202cc2d1d` |
| 3 | `theorem` | [covolume_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume-ne-zero--f99621c320714dffc8cff7e1.md) | 91 | `result-track:f99621c320714dffc8cff7e1c162bbe934f411fb47d3b3bc6e460b236328b17e` |
| 4 | `theorem` | [covolume_pos](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume-pos--f483f5e5da43d1647fc507dd.md) | 98 | `result-track:f483f5e5da43d1647fc507dd9622ef3e020eea2ce1109ec23636ccdff7d8a161` |
| 5 | `theorem` | [covolume_comap](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume-comap--10ea7d27490dc43d001920a0.md) | 102 | `result-track:10ea7d27490dc43d001920a07f2b783a5999b0c03392c76e497d35aee90add80` |
| 6 | `theorem` | [covolume_eq_det_mul_measureReal](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume-eq-det-mul-measurereal--c07d64db64210ca987092950.md) | 115 | `result-track:c07d64db64210ca98709295064450306bb4c7f56a52fdc0fdc52fb05314e69bf` |
| 7 | `theorem` | [covolume_eq_det](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume-eq-det--607f2bf8a65a18183728ebdc.md) | 125 | `result-track:607f2bf8a65a18183728ebdc06ba02a698e0c91c7ed87d0d2fced1e4ed1e00de` |
| 8 | `theorem` | [covolume_eq_det_inv](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume-eq-det-inv--f9ca852542943d5af2887d43.md) | 134 | `result-track:f9ca852542943d5af2887d43d9cb22c61cad373eee955dde45f9c9b7bfeb7398` |
| 9 | `theorem` | [covolume_div_covolume_eq_relIndex](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume-div-covolume-eq-relindex--46d0a32e2a61001d8b48252d.md) | 148 | `result-track:46d0a32e2a61001d8b48252d0f0735f38c55209ca440c61e5e8a2c92110a9a32` |
| 10 | `theorem` | [covolume_div_covolume_eq_relIndex'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/covolume-div-covolume-eq-relindex--fa994777cdde2cf64001ed55.md) | 170 | `result-track:fa994777cdde2cf64001ed55cc7f7bc9af31aeaf4013f60cfb85f4a48706c028` |
| 11 | `theorem` | [volume_image_eq_volume_div_covolume](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/volume-image-eq-volume-div-covolume--6167ee84b149642a74938a63.md) | 185 | `result-track:6167ee84b149642a74938a6379ea524f85de0df9a299ae119873bc62da4fdfb1` |
| 12 | `theorem` | [volume_image_eq_volume_div_covolume'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/volume-image-eq-volume-div-covolume--470c183669c1ee78441c9723.md) | 195 | `result-track:470c183669c1ee78441c97235555c2f0eb707fd172a4d17afba6c6c085ec0eed` |
| 13 | `theorem` | [tendsto_card_div_pow''](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/tendsto-card-div-pow--f430ac86a53e308bab50371e.md) | 230 | `result-track:f430ac86a53e308bab50371eed69454a3de92245eda6129d60f186b9b08866cf` |
| 14 | `theorem` | [tendsto_card_le_div''_aux](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/tendsto-card-le-div-aux--f65e9b2c48f95b04b5217332.md) | 249 | `result-track:f65e9b2c48f95b04b5217332046d97d430e344f014306d55fa7702561c265cba` |
| 15 | `theorem` | [tendsto_card_le_div''](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/tendsto-card-le-div--ac2b57da58c241800daf1b46.md) | 260 | `result-track:ac2b57da58c241800daf1b46080eed4b090c051204a6021ce47b6a5b2eb8fa63` |
| 16 | `theorem` | [frontier_equivFun](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/frontier-equivfun--56dd5224465d3e4957d0f14b.md) | 307 | `result-track:56dd5224465d3e4957d0f14bdf1235496304a334d4ff9f38b362876fb52d2adc` |
| 17 | `theorem` | [tendsto_card_div_pow](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/tendsto-card-div-pow--9ab7c72f929f3dd338c0c352.md) | 317 | `result-track:9ab7c72f929f3dd338c0c3526610806169bb62f207495e2910912759e880a46e` |
| 18 | `theorem` | [tendsto_card_le_div](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/tendsto-card-le-div--60b13ab18e4c780190349312.md) | 327 | `result-track:60b13ab18e4c780190349312cb5a431e88abbe8c8c5a19b7b6ba50979005a9b1` |
| 19 | `theorem` | [tendsto_card_div_pow'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/tendsto-card-div-pow--c3b880765d6e5414ab5fd2f8.md) | 358 | `result-track:c3b880765d6e5414ab5fd2f82db8f935c96a9981098f6dc8f91027bd91bf2bc9` |
| 20 | `theorem` | [tendsto_card_le_div'](../../../../../mathematics/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/declarations/tendsto-card-le-div--1c8848cb15969937b0865f27.md) | 373 | `result-track:1c8848cb15969937b0865f27d96ba51946ded74a67c303bc7cee67964c28c8e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
