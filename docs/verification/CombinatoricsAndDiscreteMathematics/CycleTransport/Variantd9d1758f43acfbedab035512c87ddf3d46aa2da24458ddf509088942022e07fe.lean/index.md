# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CycleTransport.Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c729cc82a0c98452be7d925093abd06c68df8b0",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c729cc82a0c98452be7d925093abd06c68df8b0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.InvolutiveCycle` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgePermAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/edgepermat--ad5309629d196946c467ce35.md) | 26 | `declaration-track:ad5309629d196946c467ce3586a0a46fc4bbaf9c111e97a2d09a285aa17b060a` |
| 2 | `def` | [forwardTransport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardtransport--8cd7e5d93af0a1511acd6bf9.md) | 30 | `declaration-track:8cd7e5d93af0a1511acd6bf9806084cce1b06dad0f29ce9eb1502bb20d0a9b71` |
| 3 | `def` | [reverseTransport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/reversetransport--e554e26078ee84444d86d654.md) | 35 | `declaration-track:e554e26078ee84444d86d654a6c4c12f6e971408a4955b05680fe316e0f365de` |
| 4 | `def` | [forwardSegment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardsegment--eb025faa591b70eb791627e0.md) | 40 | `declaration-track:eb025faa591b70eb791627e0621645817bcf3e198d13eb3a1e8a4d8e35c8af5e` |
| 5 | `def` | [forwardPrefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardprefix--b5a6a28013ec8d3dc9bae7cd.md) | 46 | `declaration-track:b5a6a28013ec8d3dc9bae7cd7ee6815e1f0c78a196d7c23062e44bb3f922cdf4` |
| 6 | `def` | [reversePrefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/reverseprefix--a4d03af1ae9253f46eeb71b2.md) | 51 | `declaration-track:a4d03af1ae9253f46eeb71b2efe486d5aa859bdca35dc44feea95ffe946375ce` |
| 7 | `def` | [orderedTransport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/orderedtransport--deb78733462729f3af6f16a9.md) | 56 | `declaration-track:deb78733462729f3af6f16a9c0629d3dcddc7298895e3785a91225b3534456ec` |
| 8 | `theorem` | [orderedTransport_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/orderedtransport-zero--062353c5c6ef69858596f04e.md) | 62 | `result-track:062353c5c6ef69858596f04e00191f6aec325e785d3eae23e31d75e566dbd6a9` |
| 9 | `theorem` | [forwardTransport_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardtransport-zero--7a502e89c4613214a699cdcc.md) | 68 | `result-track:7a502e89c4613214a699cdcc433035e92bd4b025ee9457625d9a82614a5c342d` |
| 10 | `theorem` | [reverseTransport_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/reversetransport-zero--8cdcecb90062b61d3051d312.md) | 73 | `result-track:8cdcecb90062b61d3051d312fe476a326ad2a462a83445396dc8d40d2e3c87ad` |
| 11 | `theorem` | [forwardTransport_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardtransport-succ--29dd73b29489b18df6118618.md) | 77 | `result-track:29dd73b29489b18df611861883e8e793f70f2a8b36c414513613948380956f19` |
| 12 | `theorem` | [reverseTransport_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/reversetransport-succ--bca40a6132452039808b3571.md) | 82 | `result-track:bca40a6132452039808b35715383d3ccc92d9a3e3ad92b305fe9703afa7163f8` |
| 13 | `theorem` | [forwardSegment_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardsegment-zero--99e76a8fd86fc0b2f2d84441.md) | 88 | `result-track:99e76a8fd86fc0b2f2d844416dda4608e806008d30deb64f6bf602ce57b39b0d` |
| 14 | `theorem` | [forwardSegment_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardsegment-succ--3d1abcc5fc3ddf2b5d1d7105.md) | 92 | `result-track:3d1abcc5fc3ddf2b5d1d71051f6ea654c864ab7a08e9748aecc43e83204288ef` |
| 15 | `theorem` | [forwardTransport_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardtransport-add--253131994a334058917123e4.md) | 99 | `result-track:253131994a334058917123e42839a9f363d1ac9de25b8be9d49e240cc913cf4b` |
| 16 | `theorem` | [forwardTransport_succ_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardtransport-succ-apply--8f25aee1a0d450d353363032.md) | 109 | `result-track:8f25aee1a0d450d3533630324617e3500bf9371d66a521df62c3b462cea1bd9f` |
| 17 | `theorem` | [reverseTransport_succ_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/reversetransport-succ-apply--6f12a728d7a2b5ae9623f0d0.md) | 115 | `result-track:6f12a728d7a2b5ae9623f0d0b0f7f23632444ecc25fec3f61b0f907577998032` |
| 18 | `theorem` | [edgePermAt_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/edgepermat-symm--7e45bdcc6b04f3847d335a3f.md) | 122 | `result-track:7e45bdcc6b04f3847d335a3f16d4c6eb0ef62d950164b0514e2fec131fe5f08f` |
| 19 | `theorem` | [reverseTransport_eq_symm_forward](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/reversetransport-eq-symm-forward--f531044881a65efd0bf0a8da.md) | 127 | `result-track:f531044881a65efd0bf0a8da5866a34e0e0aaafd061c00e7be4ebd97f1c563df` |
| 20 | `theorem` | [reverseTransport_forwardTransport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/reversetransport-forwardtransport--081c6f141b581b01d508d5bb.md) | 140 | `result-track:081c6f141b581b01d508d5bb6b5c869ca45bc40bfb51064db30da226cac61de3` |
| 21 | `theorem` | [forwardTransport_reverseTransport](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/forwardtransport-reversetransport--8515b23af5016fe497635f46.md) | 147 | `result-track:8515b23af5016fe497635f46235f79fece1adb55fcc11ad96e54b6d60b228144` |
| 22 | `theorem` | [reversePrefix_eq_symm_forwardPrefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/reverseprefix-eq-symm-forwardprefix--de07225619609b97e1ab284c.md) | 153 | `result-track:de07225619609b97e1ab284c9a1dc8317b124411b812aabf48903134d37b7d9d` |
| 23 | `theorem` | [orderedTransport_forward](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/orderedtransport-forward--0c44579483fedc87031f3e8a.md) | 159 | `result-track:0c44579483fedc87031f3e8a03863e99b3b6cfdc8677396c4c76e926ef703779` |
| 24 | `theorem` | [orderedTransport_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/orderedtransport-reverse--f69e3bbe5477000e4a9715ea.md) | 165 | `result-track:f69e3bbe5477000e4a9715eadeea31a29bb33a24a534ea7e2c91e4b27f8069e8` |
| 25 | `theorem` | [transport_forward_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/transport-forward-apply--ce3d31596966b6877ecb2e83.md) | 171 | `result-track:ce3d31596966b6877ecb2e833d1bbd65fe14d17c012413c8be208ed5e1cdc386` |
| 26 | `structure` | [CyclicReindexing](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/cyclicreindexing--a1510147c48a3a140c7e97d1.md) | 188 | `declaration-track:a1510147c48a3a140c7e97d139f8553ad6aea91f1a54fc14f5219678f17a8b78` |
| 27 | `def` | [cycle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/cycle--acb198aa788188cd4145f9d7.md) | 197 | `declaration-track:acb198aa788188cd4145f9d758f72027463a2bb2ed46aabf1fa7d53a0855c101` |
| 28 | `theorem` | [cycle_orbit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/cycle-orbit--a43cbce739dd4c3a36a93fcd.md) | 218 | `result-track:a43cbce739dd4c3a36a93fcde1e91b330e838b04625cf7236e03fdc892242de3` |
| 29 | `theorem` | [cycle_edge](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/cycle-edge--e1c46c94713205b50fcbd8ca.md) | 226 | `result-track:e1c46c94713205b50fcbd8cac4327613bdb0f1afee3be4813908f9cb2d3b725a` |
| 30 | `theorem` | [cycle_direction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/cycle-direction--add9f9b275cb4938b399cae5.md) | 234 | `result-track:add9f9b275cb4938b399cae5fe59323049c36a6d892c3e7b59fd99bbfd718e76` |
| 31 | `structure` | [CompleteCycleOrderWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/completecycleorderwitness--54fedab40e808b16ce44e704.md) | 247 | `declaration-track:54fedab40e808b16ce44e704885734f8bad01257ceb53c362bbb20fc712aa2b0` |
| 32 | `theorem` | [completeCycleTransport_not_involutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean/declarations/completecycletransport-not-involutive--961861f1466654d0569b1479.md) | 254 | `result-track:961861f1466654d0569b1479f47379d0b03afc4803b718bab8398e358d681348` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
