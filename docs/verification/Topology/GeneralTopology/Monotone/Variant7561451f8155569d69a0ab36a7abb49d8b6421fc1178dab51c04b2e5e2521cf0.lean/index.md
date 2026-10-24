# Verification target: GRWTSK.Topology.GeneralTopology.Monotone.Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8`.

Source path: `GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.IsLUB` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonotoneOn.map_csSup_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotoneon-map-cssup-of-continuouswithinat--22f431f2ca6de8a2237550c8.md) | 30 | `result-track:22f431f2ca6de8a2237550c86c9747cbcb988b62e1276003fa2fbb2393555e39` |
| 2 | `theorem` | [Monotone.map_csSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-map-cssup-of-continuousat--ec94e21f11a08b6678e14d36.md) | 40 | `result-track:ec94e21f11a08b6678e14d36c490c735b025552afc08042c5dc5a06cd8a2b811` |
| 3 | `theorem` | [Monotone.map_ciSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-map-cisup-of-continuousat--ae11afd61472085a847ab5e7.md) | 48 | `result-track:ae11afd61472085a847ab5e76c48b6b2c84c4087c55daa89d01d832f2bac0b38` |
| 4 | `theorem` | [MonotoneOn.map_csInf_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotoneon-map-csinf-of-continuouswithinat--1a20f06c4c73e208452cca71.md) | 56 | `result-track:1a20f06c4c73e208452cca71546c345c674db8eb0297ee7c3275881572739bfa` |
| 5 | `theorem` | [Monotone.map_csInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-map-csinf-of-continuousat--ae565e666769b4a7cdd9e1e1.md) | 64 | `result-track:ae565e666769b4a7cdd9e1e119568633dbce208af38d1b46b82b0d2b802bf332` |
| 6 | `theorem` | [Monotone.map_ciInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-map-ciinf-of-continuousat--182f3b6fc4bf7bc378d992ef.md) | 71 | `result-track:182f3b6fc4bf7bc378d992ef65623cac1729ab20968771a68e67a6efd58bebc1` |
| 7 | `theorem` | [AntitoneOn.map_csInf_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitoneon-map-csinf-of-continuouswithinat--ef637851775e8d811867a982.md) | 79 | `result-track:ef637851775e8d811867a98228f8393e50ab4875400564b8b3f587b153e6f235` |
| 8 | `theorem` | [Antitone.map_csInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-map-csinf-of-continuousat--3ea8500184820b4ae87252a4.md) | 87 | `result-track:3ea8500184820b4ae87252a4c0a27facc30c5ec4f14b398e569a5fea10ca0d13` |
| 9 | `theorem` | [Antitone.map_ciInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-map-ciinf-of-continuousat--c24954b4ad400f16548f68d8.md) | 94 | `result-track:c24954b4ad400f16548f68d876b73322ed308d88213fc68be4c6cfea4933d5ac` |
| 10 | `theorem` | [AntitoneOn.map_csSup_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitoneon-map-cssup-of-continuouswithinat--a1e549e24e468ceac79f6e8a.md) | 102 | `result-track:a1e549e24e468ceac79f6e8ab2e28ce76007a1cce156aac8c55636ea1a8ea7be` |
| 11 | `theorem` | [Antitone.map_csSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-map-cssup-of-continuousat--38517d23119db42eeacba33d.md) | 110 | `result-track:38517d23119db42eeacba33dfb2a867c3b2b0706357c58e29d070ddb434be8e0` |
| 12 | `theorem` | [Antitone.map_ciSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-map-cisup-of-continuousat--bd79a37557a956decf40a21c.md) | 117 | `result-track:bd79a37557a956decf40a21c8f4300b243f8db9c8fc75f1fe8ef21fde04ed84d` |
| 13 | `theorem` | [sSup_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/ssup-mem-closure--d2c33262a876ada90ff7a424.md) | 130 | `result-track:d2c33262a876ada90ff7a424d67311c50bf190d79af068fd7764dc1ecb2656ee` |
| 14 | `theorem` | [sInf_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/sinf-mem-closure--e9822421baf9752912b775d7.md) | 133 | `result-track:e9822421baf9752912b775d770c9a2048e5484f0983631eeb4fdb47ce4d2c5f8` |
| 15 | `theorem` | [IsClosed.sSup_mem](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/isclosed-ssup-mem--35fa11ff75363c3b055b5839.md) | 136 | `result-track:35fa11ff75363c3b055b583981e78c5f8b62abc28d5d0536ca66a53b2549f8b2` |
| 16 | `theorem` | [IsClosed.sInf_mem](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/isclosed-sinf-mem--b92a37a99fca127dfb599373.md) | 139 | `result-track:b92a37a99fca127dfb599373b9760cfa5afd0ab49830b1bcf27544d3bbb9618c` |
| 17 | `theorem` | [MonotoneOn.map_sSup_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotoneon-map-ssup-of-continuouswithinat--490486ef19af90b85c9fdac9.md) | 144 | `result-track:490486ef19af90b85c9fdac939eb393a2e03c6937a42028b191197822133fda0` |
| 18 | `theorem` | [Monotone.map_sSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-map-ssup-of-continuousat--fc8adfae1b656821c405ae87.md) | 153 | `result-track:fc8adfae1b656821c405ae872f5579b2d13aeddd7f8eef422eb99eb6e3e1548c` |
| 19 | `theorem` | [Monotone.map_iSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-map-isup-of-continuousat--9bfb44356b3b708aa0b40a13.md) | 159 | `result-track:9bfb44356b3b708aa0b40a13563dba4bceb22e1b60f7697400338e00f861e238` |
| 20 | `theorem` | [MonotoneOn.map_sInf_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotoneon-map-sinf-of-continuouswithinat--fef0b335649de3e2d2f61fa1.md) | 166 | `result-track:fef0b335649de3e2d2f61fa1285165e53e99ad6f6de61ac84afede9ca47e3fff` |
| 21 | `theorem` | [Monotone.map_sInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-map-sinf-of-continuousat--f9efba69942b750c8d951c60.md) | 173 | `result-track:f9efba69942b750c8d951c6027114e4c366b8f04fb52a1d90e2c4b4a4ac1b0b2` |
| 22 | `theorem` | [Monotone.map_iInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-map-iinf-of-continuousat--067cf0eb265bba33c2542752.md) | 179 | `result-track:067cf0eb265bba33c2542752366123397caa93ae36c46ff99314bc5e746a6467` |
| 23 | `theorem` | [AntitoneOn.map_sSup_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitoneon-map-ssup-of-continuouswithinat--35ce1e6ae507dca082f415ce.md) | 185 | `result-track:35ce1e6ae507dca082f415ced18e88128f9ccefc18b68be3dc8b457f732812ed` |
| 24 | `theorem` | [Antitone.map_sSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-map-ssup-of-continuousat--8d069d1b6bd2feef11a18fac.md) | 193 | `result-track:8d069d1b6bd2feef11a18fac78f8012059c95074fe1db2b3686021c6351ca0d6` |
| 25 | `theorem` | [Antitone.map_iSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-map-isup-of-continuousat--d291fb880e4aeadf0b4d33af.md) | 200 | `result-track:d291fb880e4aeadf0b4d33afdb8b875eba7cf74e5a0c2e10f9847a48e3481707` |
| 26 | `theorem` | [AntitoneOn.map_sInf_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitoneon-map-sinf-of-continuouswithinat--839f8fc4ef569b5cafce6217.md) | 208 | `result-track:839f8fc4ef569b5cafce6217eeadba13d918ca2afc5cc00085aeb290612f4c20` |
| 27 | `theorem` | [Antitone.map_sInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-map-sinf-of-continuousat--29035907cfaa1d83c05dbc3b.md) | 216 | `result-track:29035907cfaa1d83c05dbc3ba5f6dc888339fea51b8765a4f7fdcc6b658a8a70` |
| 28 | `theorem` | [Antitone.map_iInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-map-iinf-of-continuousat--aee4d8ad7e734f94d681cd19.md) | 223 | `result-track:aee4d8ad7e734f94d681cd196c46b29291c78c12777d9cc6958101d445863e07` |
| 29 | `theorem` | [csSup_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/cssup-mem-closure--ec6d1b16e1a2e521ace12b38.md) | 234 | `result-track:ec6d1b16e1a2e521ace12b387182c64ce4535590a662701c41e0023fb59111d5` |
| 30 | `theorem` | [csInf_mem_closure](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/csinf-mem-closure--6da653fba06e3d2a9100edf5.md) | 237 | `result-track:6da653fba06e3d2a9100edf56457c62533383d600441da09ba6630fbee141e43` |
| 31 | `theorem` | [IsClosed.csSup_mem](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/isclosed-cssup-mem--248f2be15ebf6ab739d97037.md) | 240 | `result-track:248f2be15ebf6ab739d9703717139c9897d8bdbdfa0e9f37f60b5deee52a8433` |
| 32 | `theorem` | [IsClosed.csInf_mem](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/isclosed-csinf-mem--c70ab81e1265884af5c4509b.md) | 244 | `result-track:c70ab81e1265884af5c4509b151a07d60ebcb547196bc5769b34e19721e33861` |
| 33 | `theorem` | [IsClosed.isLeast_csInf](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/isclosed-isleast-csinf--5a3fb771e3ada334c0aabe5a.md) | 248 | `result-track:5a3fb771e3ada334c0aabe5aa72dfa78c2e30b17b4cd067d1c4fe8da46b8241f` |
| 34 | `theorem` | [IsClosed.isGreatest_csSup](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/isclosed-isgreatest-cssup--6cc9e0dbffb94210c8a5c6c5.md) | 252 | `result-track:6cc9e0dbffb94210c8a5c6c532523a70ae1619132c6ad4000ecb9be152e7a10a` |
| 35 | `lemma` | [MonotoneOn.tendsto_nhdsWithin_Ioo_left](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotoneon-tendsto-nhdswithin-ioo-left--fbde4c8dd1a7a113f2ecf608.md) | 256 | `result-track:fbde4c8dd1a7a113f2ecf608130ba58334008772920d7fa929656a0624a48760` |
| 36 | `lemma` | [MonotoneOn.tendsto_nhdsWithin_Ioo_right](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotoneon-tendsto-nhdswithin-ioo-right--5d94b5c4d22a6a8a1b873734.md) | 271 | `result-track:5d94b5c4d22a6a8a1b873734fde7c040abb69a0631957eb25fe540f628f5c549` |
| 37 | `lemma` | [MonotoneOn.tendsto_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotoneon-tendsto-nhdslt--08c31cf32955f27d714a855f.md) | 286 | `result-track:08c31cf32955f27d714a855f62d0ef0e93b6e07edda0c93c92fc1ba874499254` |
| 38 | `lemma` | [MonotoneOn.tendsto_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotoneon-tendsto-nhdsgt--cf6536fd82a5f8ebc7af4c5a.md) | 302 | `result-track:cf6536fd82a5f8ebc7af4c5a723beff1a91e6c6a124e448b77881b0c3a7b4002` |
| 39 | `theorem` | [Monotone.tendsto_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-tendsto-nhdslt--f1c1ea832f72828a655835f5.md) | 312 | `result-track:f1c1ea832f72828a655835f57b5ddda02184029208bc081fabaf97b1360de5d3` |
| 40 | `theorem` | [Monotone.tendsto_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/monotone-tendsto-nhdsgt--b452f3d4c220fc29b09283e9.md) | 321 | `result-track:b452f3d4c220fc29b09283e9d9a1afbe28b36e93e32b6c1a76dc5bdf89b8a53f` |
| 41 | `lemma` | [AntitoneOn.tendsto_nhdsWithin_Ioo_left](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitoneon-tendsto-nhdswithin-ioo-left--4b7ce5305056413bf1cd44e9.md) | 329 | `result-track:4b7ce5305056413bf1cd44e9ac8a4d803fe3d5a29b71842d4e425a3681b57159` |
| 42 | `lemma` | [AntitoneOn.tendsto_nhdsWithin_Ioo_right](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitoneon-tendsto-nhdswithin-ioo-right--cbe4e2f15855871cf66f8914.md) | 336 | `result-track:cbe4e2f15855871cf66f8914ecdc79cf773c681015cc24f10feece89c025e7de` |
| 43 | `lemma` | [AntitoneOn.tendsto_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitoneon-tendsto-nhdslt--7b598d94418a350721653f06.md) | 343 | `result-track:7b598d94418a350721653f0686821f9bfed3901dd0ea2915677c82ee822382e4` |
| 44 | `lemma` | [AntitoneOn.tendsto_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitoneon-tendsto-nhdsgt--c17f5f3735c9893a9feed747.md) | 352 | `result-track:c17f5f3735c9893a9feed747340acbf5a8cffe0e5f7ab2094a82b3daf3c8c1cd` |
| 45 | `theorem` | [Antitone.tendsto_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-tendsto-nhdslt--e1862e661aabbb4971009fe1.md) | 362 | `result-track:e1862e661aabbb4971009fe11874257baed0da048d5be278315160380abe42b8` |
| 46 | `theorem` | [Antitone.tendsto_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/declarations/antitone-tendsto-nhdsgt--d2e4dfe0f3c08d936f57851b.md) | 371 | `result-track:d2e4dfe0f3c08d936f57851b44d43cd3a1f7d6fe4b02f8ec79123474f06503ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
