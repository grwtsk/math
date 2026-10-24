# Verification target: GRWTSK.Topology.GeneralTopology.LocallyFinsupp.Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40c1e569c7d033760b39fbdbb8122f26790ba773",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40c1e569c7d033760b39fbdbb8122f26790ba773`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteSubset` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Function.locallyFinsuppWithin](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/function-locallyfinsuppwithin--f0211171b57ca9fcc1788802.md) | 46 | `declaration-track:f0211171b57ca9fcc1788802d1e3690ddc2095f85d9bf9e198e2c78bf70c814a` |
| 2 | `def` | [Function.locallyFinsupp](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/function-locallyfinsupp--f2a21dfb19e770473b2e295a.md) | 59 | `declaration-track:f2a21dfb19e770473b2e295aa21ed0b5413931e038859c289f361f124d320ec4` |
| 3 | `theorem` | [supportDiscreteWithin_iff_locallyFiniteWithin](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/supportdiscretewithin-iff-locallyfinitewithin--e4e42c8e0cf68db5c33ea331.md) | 65 | `result-track:e4e42c8e0cf68db5c33ea331dc40fd19c58b92759b631dc8f8ff67af087bb1a8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--5ababd50f322dc946fcb9871.md) | 80 | `declaration-track:5ababd50f322dc946fcb98713eb4b12041cf8a70a9bcada82c1dac9633d02d29` |
| 5 | `abbrev` | [support](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/support--2bba48528ee5cddf30b100be.md) | 85 | `declaration-track:2bba48528ee5cddf30b100bec2c418efecfc08c3cbeec809e97052e9e0b44202` |
| 6 | `lemma` | [supportWithinDomain](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/supportwithindomain--d2a670d479a9980687162cfd.md) | 87 | `result-track:d2a670d479a9980687162cfdb4a7f5577a46526cb73cacd675d07e0782be9867` |
| 7 | `lemma` | [supportLocallyFiniteWithinDomain](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/supportlocallyfinitewithindomain--d04ba1eaa6894a59b3c4b854.md) | 90 | `result-track:d04ba1eaa6894a59b3c4b854a6be44994b5826e091851b9d32bc23e07bdcce02` |
| 8 | `lemma` | [ext](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/ext--abb43192d4956575c029f73e.md) | 94 | `result-track:abb43192d4956575c029f73e70df49833f0d1fcb3a1c067b352ccc699a6e2848` |
| 9 | `lemma` | [coe_injective](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/coe-injective--64a5c6619f58f67a9b59fd1b.md) | 97 | `result-track:64a5c6619f58f67a9b59fd1b2d257cdfb477afba61df711b77152e6a74b9eb68` |
| 10 | `lemma` | [apply_eq_zero_of_notMem](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/apply-eq-zero-of-notmem--6c4acc342ba737ed8780fff6.md) | 108 | `result-track:6c4acc342ba737ed8780fff68feadf482549c62edf51877b776d6ff86199ef97` |
| 11 | `theorem` | [eq_zero_codiscreteWithin](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/eq-zero-codiscretewithin--49a9cd99d9dd624eebb1589c.md) | 118 | `result-track:49a9cd99d9dd624eebb1589c1d901b503bf38a8a7c4470520d699fa291c24569` |
| 12 | `theorem` | [discreteSupport](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/discretesupport--af2f238b085a573cb0542cbd.md) | 131 | `result-track:af2f238b085a573cb0542cbd72c454bb554acf3d3bb530d9ba16de7e05475a11` |
| 13 | `theorem` | [closedSupport](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/closedsupport--9f80faad347108ca0a05e0be.md) | 149 | `result-track:9f80faad347108ca0a05e0be691f6011a5b1c9b2b745c148d1f9eb3f9b43175f` |
| 14 | `theorem` | [finiteSupport](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/finitesupport--83bae2b6110f28f968ec550e.md) | 163 | `result-track:83bae2b6110f28f968ec550e54067054b548bb5538e6e7671439d9aac03c553d` |
| 15 | `def` | [addSubgroup](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/addsubgroup--378e68e64230e875bf22ea88.md) | 181 | `declaration-track:378e68e64230e875bf22ea882b9b0f28ea4780ffe10dbe5372833a7345ca065a` |
| 16 | `lemma` | [memAddSubgroup](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/memaddsubgroup--1f8d47a963660bef59512abe.md) | 207 | `result-track:1f8d47a963660bef59512abe41701ef225746f623b5fd678a2340590cb4d4df0` |
| 17 | `def` | [mk_of_mem](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/mk-of-mem--cfbcf2f49e31439d69166fa2.md) | 215 | `declaration-track:cfbcf2f49e31439d69166fa2856e29afabe29e11704720c7d868561e68ed9f53` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--8e2a87d2be96c8bad8bcb487.md) | 218 | `declaration-track:8e2a87d2be96c8bad8bcb487c73458565a441c7d9ec318aafeebcc85f84c4580` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--817dffda202bd943b15c37cc.md) | 221 | `declaration-track:817dffda202bd943b15c37cc4e8bc422fcf025b4a537a204718bb95a4fa4bc70` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--a5371ab76ede686f9dfa7cc5.md) | 224 | `declaration-track:a5371ab76ede686f9dfa7cc56b5debd18d229aa88d86b2388cea03102c0f5656` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--a800e38d5a8b4f70fcd128ae.md) | 227 | `declaration-track:a800e38d5a8b4f70fcd128ae866bd81d0e18ff15c1c57d074bc5c0a1e2652407` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--de1ba15540b895ded4b26383.md) | 230 | `declaration-track:de1ba15540b895ded4b26383a9e2cf7251b8dfe73da74564ac47e9d1dec45ee4` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--a102e15835b44ec4ade4a6c9.md) | 233 | `declaration-track:a102e15835b44ec4ade4a6c92484bbdde8d56bece3b54628a75f0bdb7bfeb93c` |
| 24 | `lemma` | [coe_zero](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/coe-zero--001f044becc9a29b939c4a14.md) | 236 | `result-track:001f044becc9a29b939c4a14a017df004d45cb31c9c5bfd2b8d98c2519a36e3c` |
| 25 | `lemma` | [coe_add](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/coe-add--0f756817385ea1c35c320227.md) | 238 | `result-track:0f756817385ea1c35c320227656d0aaf0232e1e357a738c2f0a3e7c265d1e03c` |
| 26 | `lemma` | [coe_neg](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/coe-neg--f7189f9f03bae88075c6e711.md) | 240 | `result-track:f7189f9f03bae88075c6e71198fd3885b39db1cc7ff9df02b780038920d8af97` |
| 27 | `lemma` | [coe_sub](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/coe-sub--2a6af4d71eabe805cda1b814.md) | 242 | `result-track:2a6af4d71eabe805cda1b814fc5147b39f0836f61d214cbf64e12067756a34ad` |
| 28 | `lemma` | [coe_nsmul](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/coe-nsmul--47c4037e8419f316bddecfa8.md) | 244 | `result-track:47c4037e8419f316bddecfa879eb1a2d962ea507c9eb32ee8e2ef2ab0dff1c9d` |
| 29 | `lemma` | [coe_zsmul](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/coe-zsmul--e17c31493e2cdfe3ad39812f.md) | 246 | `result-track:e17c31493e2cdfe3ad39812f585f207876c307e2135eefd946c20ff4b14743a1` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--6b1763c4f8ccd71842a2b297.md) | 249 | `declaration-track:6b1763c4f8ccd71842a2b297d413091795e666eb7fa02ab4f83a516c62d1aba9` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--aa88e377167750e4f7a942da.md) | 253 | `declaration-track:aa88e377167750e4f7a942da00eea70ae69851c2cda599b27b9c754e44eb2f07` |
| 32 | `lemma` | [le_def](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/le-def--23b1adf7e43ace6c4b8ca507.md) | 256 | `result-track:23b1adf7e43ace6c4b8ca5074329ae05d6fadcc9025d396f6bdff1bb249aba62` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--9cb40cf6943078eec6aa825f.md) | 259 | `declaration-track:9cb40cf6943078eec6aa825ff0d03c2277d5f620f8b95d22b6351478e3fd9189` |
| 34 | `lemma` | [lt_def](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/lt-def--4b9cf21825e129fb73806bdd.md) | 262 | `result-track:4b9cf21825e129fb73806bdde5ca6c242f4d4637e7c0d4bc9ea215e47144e5f1` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--0ff1c1e13840d5d55951e3f5.md) | 265 | `declaration-track:0ff1c1e13840d5d55951e3f5233d2ad757732c28d9cca961017685df9514d3f1` |
| 36 | `lemma` | [max_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/max-apply--e960971b263857dfbdede4f7.md) | 287 | `result-track:e960971b263857dfbdede4f716af3a2f8d4633b45044586c88aa542469f0e7e8` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--f9c062b8a8faf497edc4c801.md) | 290 | `declaration-track:f9c062b8a8faf497edc4c801b774bfc5464ae07208e5c7816bdf4a6240dc08f1` |
| 38 | `lemma` | [min_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/min-apply--8cbec053da135a80b67ad8ff.md) | 312 | `result-track:8cbec053da135a80b67ad8ff77a282410f76c99f1f45b865ea6580ccab507c77` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--a509eab362deeda48ab607af.md) | 315 | `declaration-track:a509eab362deeda48ab607afbbfc787bc0a5e25d45af07edc3752b66ac1044da` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/instance--8d4ba955dde28b595ce4687f.md) | 335 | `declaration-track:8d4ba955dde28b595ce4687f88e77212e05d5d4e4349f696c9c936c163e44ca2` |
| 41 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/restrict--abfa6951be2208e17e56bc7a.md) | 347 | `declaration-track:abfa6951be2208e17e56bc7a605c1ea535822a72b657e3a84979df33d41c5e80` |
| 42 | `lemma` | [restrict_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/restrict-apply--59882f1ca354c26a9625cacf.md) | 365 | `result-track:59882f1ca354c26a9625cacfddc4eeffd49f07fb3705d8e6ca6887292c78ccb0` |
| 43 | `lemma` | [restrict_eqOn](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/restrict-eqon--0f4110042620f6d4a022232b.md) | 368 | `result-track:0f4110042620f6d4a022232b078eb627dfeb1db7f3addefe870b6306f47fb38d` |
| 44 | `lemma` | [restrict_eqOn_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/restrict-eqon-compl--300906b1be167881b5f5c9f8.md) | 373 | `result-track:300906b1be167881b5f5c9f851566dda95a40cf0166d7275583825ed4a210b9f` |
| 45 | `def` | [restrictMonoidHom](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/restrictmonoidhom--f9f55f58408557f0d3c010eb.md) | 379 | `declaration-track:f9f55f58408557f0d3c010eb911c49ea85b9ad5ac08ff83fc9b5a327429e8914` |
| 46 | `lemma` | [restrictMonoidHom_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/restrictmonoidhom-apply--94bbbd6dfa9179e4965ef531.md) | 391 | `result-track:94bbbd6dfa9179e4965ef531a0a95690a0b0d01cbdd4bd538b6287a0096a6849` |
| 47 | `def` | [restrictLatticeHom](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/restrictlatticehom--87f0e62b38b1a4d63d4f8cc3.md) | 396 | `declaration-track:87f0e62b38b1a4d63d4f8cc3cce353804afcca70219d0a1d22e986c7585230e4` |
| 48 | `lemma` | [restrictLatticeHom_apply](../../../../../mathematics/Topology/GeneralTopology/LocallyFinsupp/Variant8eff3d81f280bc5421ec63109c1507cfbd82fef97f7ab8bdb4cd635cad9d1d11.lean/declarations/restrictlatticehom-apply--faba72d9216410f63a61889c.md) | 409 | `result-track:faba72d9216410f63a61889c78c8ab3f48cf2394a3a5c9622b85cd8143dfcbd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
