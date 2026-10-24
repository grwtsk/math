# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdd2ca3e2cf4d7a928e113ea1768e78e9926b6b0",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdd2ca3e2cf4d7a928e113ea1768e78e9926b6b0`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean.json)

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
| 1 | `def` | [HarmonicAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat--006ae8dcd5a0610e9077abdd.md) | 49 | `declaration-track:006ae8dcd5a0610e9077abddbc492adb1a1e1197bdd1628b68e6c19f4e7dab7f` |
| 2 | `def` | [HarmonicOnNhd](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd--5a57524c6bb1b7f880e01fa3.md) | 56 | `declaration-track:5a57524c6bb1b7f880e01fa3aa46f28dc05d34680a16b8fa159b3b983de3057f` |
| 3 | `lemma` | [HarmonicOnNhd.contDiffOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-contdiffon--66a853e618ede56d66117093.md) | 61 | `result-track:66a853e618ede56d66117093edaba8b6f559d570a01839fb9780d78f9bea6199` |
| 4 | `theorem` | [harmonicAt_congr_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat-congr-nhds--a6d7010693bcbb9c8078e080.md) | 71 | `result-track:a6d7010693bcbb9c8078e08084119910f5c8d000d28ba1c5d00dcb4d06d6141f` |
| 5 | `theorem` | [HarmonicAt.eventually](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat-eventually--698b1dca11b0ec4fdcd25ccb.md) | 80 | `result-track:698b1dca11b0ec4fdcd25ccb34d39367c9bb11937254d30c0fe10166195f6bc7` |
| 6 | `theorem` | [harmonicAt_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat-const--7db1350c912def781c6b48ef.md) | 88 | `result-track:7db1350c912def781c6b48ef5eac0c241c32518a1400420f99bcc58e9f48c064` |
| 7 | `theorem` | [harmonicOnNhd_const](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-const--e7f604a8e7f2557469d2b00c.md) | 94 | `result-track:e7f604a8e7f2557469d2b00c5a74b4348ca9d28c015cb4c4e7d192bc16e5ee74` |
| 8 | `theorem` | [isOpen_setOfPred_harmonicAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/isopen-setofpred-harmonicat--5615b79ae0aeb501bd21f669.md) | 101 | `result-track:5615b79ae0aeb501bd21f669fb48cffc7e9149e69b818146c7685894bd09cb82` |
| 9 | `lemma` | [HarmonicOnNhd.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-mono--0a58f3b4fcc1e8a8e5b2f477.md) | 109 | `result-track:0a58f3b4fcc1e8a8e5b2f477cbdd44a61e3dd8d34a770c017917eda735baf804` |
| 10 | `theorem` | [HarmonicOnNhd.continuousOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-continuouson--d583f92695814c67be446be5.md) | 115 | `result-track:d583f92695814c67be446be55f2cedbddd839d406deea72d1addbb446e28b5c8` |
| 11 | `theorem` | [HarmonicAt.add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat-add--72ffa7db8a798a2ebd075996.md) | 126 | `result-track:72ffa7db8a798a2ebd0759965d4bf83814df4a067368c5dee20898d7d430375b` |
| 12 | `theorem` | [HarmonicAt.sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat-sub--ce3a1e244cf4061771ba0dca.md) | 136 | `result-track:ce3a1e244cf4061771ba0dcac445dba5bb9be2b9dd35537a68b6eb62ce40d603` |
| 13 | `theorem` | [HarmonicOnNhd.add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-add--25446dab05a9469d6c554798.md) | 146 | `result-track:25446dab05a9469d6c55479883191115aec4c6ff7f6f619e5d036a43ff668c5c` |
| 14 | `theorem` | [HarmonicOnNhd.sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-sub--1f3aab84944e388cf8b5e698.md) | 152 | `result-track:1f3aab84944e388cf8b5e6984b999170c68e05725eda0f38b90adc8bf72743b4` |
| 15 | `theorem` | [HarmonicAt.neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat-neg--81058cc50d5a2b0c15d60e14.md) | 158 | `result-track:81058cc50d5a2b0c15d60e14049bbf029489a9edd8e34cee80f4ff3bc3576ee1` |
| 16 | `theorem` | [HarmonicOnNhd.neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-neg--20d031cb4ef434fc83c98a4d.md) | 168 | `result-track:20d031cb4ef434fc83c98a4d3ba38aadfbd8b0f7982b44327a03ec7d5c98fc25` |
| 17 | `theorem` | [HarmonicAt.const_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat-const-smul--0266267f85b1ac0d51a5c316.md) | 174 | `result-track:0266267f85b1ac0d51a5c31641e55caf2403f47d0a3ea76083f6a91d433838d3` |
| 18 | `theorem` | [HarmonicOnNhd.const_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-const-smul--c73243ae13ab37a4256033a1.md) | 184 | `result-track:c73243ae13ab37a4256033a1b9c8b546c488bd7d7f9b523387929b40b2549d7c` |
| 19 | `theorem` | [HarmonicAt.comp_CLM](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat-comp-clm--4d522e2c6e2da14157a22f7e.md) | 194 | `result-track:4d522e2c6e2da14157a22f7e57c70bb1520ebf275dad845bcf63051aaf1acd85` |
| 20 | `theorem` | [HarmonicOnNhd.comp_CLM](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-comp-clm--c213fbd09df1f6965d17869b.md) | 204 | `result-track:c213fbd09df1f6965d17869b7dceb73ebb3dbc581a823579799b7017cac6e8a5` |
| 21 | `theorem` | [harmonicAt_comp_CLE_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmonicat-comp-cle-iff--75d20920d88b19accf432f7e.md) | 210 | `result-track:75d20920d88b19accf432f7e77572cc7f220bbc882f456e9d6d1ec33135eca23` |
| 22 | `theorem` | [harmonicOnNhd_comp_CLE_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantd3c2f79bec7e114661fcdd476e82570c42f19250c55701001fd733606306624d.lean/declarations/harmoniconnhd-comp-cle-iff--6835957ee086fc1194b684d4.md) | 219 | `result-track:6835957ee086fc1194b684d40e576c9f604b44ce1b4136188b7e23f0e6e431e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
