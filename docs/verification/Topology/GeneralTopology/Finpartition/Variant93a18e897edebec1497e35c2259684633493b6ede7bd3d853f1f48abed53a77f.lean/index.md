# Verification target: GRWTSK.Topology.GeneralTopology.Finpartition.Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2eecf7d06c190b3d48b40a8418bfa6b1225a46a",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2eecf7d06c190b3d48b40a8418bfa6b1225a46a`.

Source path: `GRWTSK/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SupIndep` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Finpartition](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/finpartition--5eef5aa5c46e8e0dfd33b2b0.md) | 64 | `declaration-track:5eef5aa5c46e8e0dfd33b2b02fd945742b3a5f586e73bcd15b62818d9f39661c` |
| 2 | `def` | [ofErase](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/oferase--d92c772ec5b2b87473e6d976.md) | 92 | `declaration-track:d92c772ec5b2b87473e6d976c4c65a161fd551325a02946e93f5c66051b10c8e` |
| 3 | `def` | [ofSubset](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/ofsubset--da7e6d550e132b10d84d6298.md) | 103 | `declaration-track:da7e6d550e132b10d84d6298050dd569eecaad6ab8c0952c079224a63dcce7d9` |
| 4 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/copy--913235b7db3431e710b6c162.md) | 113 | `declaration-track:913235b7db3431e710b6c16260807b9bc725cdc78220df5fbe26317cdbae9fc4` |
| 5 | `def` | [empty](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/empty--8e804e407b537d16c93f6e74.md) | 125 | `declaration-track:8e804e407b537d16c93f6e743b55181024b37e2567dfe94c08f46a5068a1b741` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--85eb82de98d316c0ab5433df.md) | 133 | `declaration-track:85eb82de98d316c0ab5433df79c35df0af515a1587950563a75e6d5422e6e33a` |
| 7 | `theorem` | [default_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/default-eq-empty--116038991012b6ef012f1e1c.md) | 137 | `result-track:116038991012b6ef012f1e1c24c8503fa93350a684248276d31ab63331c6a607` |
| 8 | `def` | [indiscrete](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/indiscrete--8725d0599028b6016eed45a0.md) | 145 | `declaration-track:8725d0599028b6016eed45a0f2dffbceefdae67d6538cd2ebe7a0841343a9329` |
| 9 | `theorem` | [le](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/le--ef6711a335f7245ff8b95da8.md) | 155 | `result-track:ef6711a335f7245ff8b95da8fb8b8eca88de58c5dacfe2ce7efc162ed327c848` |
| 10 | `theorem` | [ne_bot](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/ne-bot--c59d72a95247a4ef0ff7dc4e.md) | 159 | `result-track:c59d72a95247a4ef0ff7dc4edbffb2ce54fbb73d0600c9392952a38c7595b627` |
| 11 | `theorem` | [disjoint](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/disjoint--d3da9467e4db853fb8ac65aa.md) | 166 | `result-track:d3da9467e4db853fb8ac65aa478c25d8c1a3a810290715d599dd9dca3dae9eec` |
| 12 | `theorem` | [parts_eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/parts-eq-empty-iff--2a3ad7e1a950a2058c5557fb.md) | 172 | `result-track:2a3ad7e1a950a2058c5557fb71c967cfbcfbdee64d7d03ce49e5890952a28ec5` |
| 13 | `theorem` | [parts_nonempty_iff](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/parts-nonempty-iff--b2bd5391bc3053542dad8daa.md) | 180 | `result-track:b2bd5391bc3053542dad8daae9f66aab9f89b8c97ceb715abc7866c4da05c987` |
| 14 | `theorem` | [parts_nonempty](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/parts-nonempty--f649237e11011fe61a6a18e5.md) | 184 | `result-track:f649237e11011fe61a6a18e559c4c64786d224589babaa75e3f6988eebed5561` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--981ee2d1f5498ef7c494cc6b.md) | 188 | `declaration-track:981ee2d1f5498ef7c494cc6b4e2c3ead79a4f105746cfed2795244be7f7de569` |
| 16 | `def` | [_root_.IsAtom.uniqueFinpartition](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/root-isatom-uniquefinpartition--19e562fd890339bccf666331.md) | 197 | `declaration-track:19e562fd890339bccf666331423295914cb4c4ae21e4d38155b86c1bb137ca07` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--2af27da110c6e1e19755a6ac.md) | 211 | `declaration-track:2af27da110c6e1e19755a6ac47af20a863a044a2e429b1b203980366c30726f2` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--e053668db83692bd030d2daf.md) | 222 | `declaration-track:e053668db83692bd030d2daf7b84c2bbd5945bfc159b4750df31e7a5a2760a64` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--6c5dde4ff76881f11f536e75.md) | 225 | `declaration-track:6c5dde4ff76881f11f536e754c4bba8ca0da2df87ea4d82dde5124490e1345ca` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--e649b975b84f5661cae6e2de.md) | 244 | `declaration-track:e649b975b84f5661cae6e2dee1c3e25992c5124ff0e8e350d1814a4eca9005ce` |
| 21 | `theorem` | [parts_top_subset](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/parts-top-subset--9c86321719d27219dca5bbea.md) | 253 | `result-track:9c86321719d27219dca5bbeab3dd83ba888e91b2db7cfd3fb488c0e3852950f3` |
| 22 | `theorem` | [parts_top_subsingleton](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/parts-top-subsingleton--2a632eb259c81bb3af417c12.md) | 261 | `result-track:2a632eb259c81bb3af417c1244991cf1f73a082efb01904d037ed9a2c556f7fd` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--1f4eb3ac6db9b3a6858fcf14.md) | 278 | `declaration-track:1f4eb3ac6db9b3a6858fcf14210c0456ebf54804e35866f5e60b30fe02741086` |
| 24 | `theorem` | [parts_inf](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/parts-inf--3e584ee6fdff7d8792e15666.md) | 299 | `result-track:3e584ee6fdff7d8792e1566601b8b55d6ce992b823a355c3c36f0b8276d50ea7` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--a0f6e3aa1f5d9c33ee3cdf08.md) | 304 | `declaration-track:a0f6e3aa1f5d9c33ee3cdf08ff2317b199fc9bdd5f6669f5c2bd5d8b3df80333` |
| 26 | `theorem` | [exists_le_of_le](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/exists-le-of-le--5998293a9c6110af2d66ff3a.md) | 327 | `result-track:5998293a9c6110af2d66ff3a84457b6244756d18cbe7a9dbaefc4cd71880d97b` |
| 27 | `theorem` | [card_mono](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/card-mono--a1718e462b79579e7e8d98a0.md) | 340 | `result-track:a1718e462b79579e7e8d98a0d1c4cb4051b800da0a3f88ae983123711d41e55b` |
| 28 | `def` | [bind](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/bind--6a97a8df686ac983037cade1.md) | 361 | `declaration-track:6a97a8df686ac983037cade1b12a662dcd0d4fd6947bf8c8ae0866b5aa49ae6f` |
| 29 | `theorem` | [mem_bind](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/mem-bind--ba857679b17a05b08e90d68f.md) | 385 | `result-track:ba857679b17a05b08e90d68f038efe250adad9119487a8b232dd06289ffaa22f` |
| 30 | `theorem` | [card_bind](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/card-bind--350deb696abf5d0c11975138.md) | 394 | `result-track:350deb696abf5d0c1197513873ffe2ca49986f5b00373cbe6b823cebd639da15` |
| 31 | `def` | [extend](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/extend--1cac6bdff0dcd5c089b1ff78.md) | 411 | `declaration-track:1cac6bdff0dcd5c089b1ff782160f4063808905ee7b7a66596ed95c9286942b5` |
| 32 | `theorem` | [card_extend](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/card-extend--5f041139052b1e6ee665d2c8.md) | 421 | `result-track:5f041139052b1e6ee665d2c878ee498a1f82f0ce9962053e777e2862dbf7c122` |
| 33 | `def` | [avoid](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/avoid--7db19d69323941831c68a01e.md) | 434 | `declaration-track:7db19d69323941831c68a01e79be8d271e10973980f2060258376d249445e492` |
| 34 | `theorem` | [mem_avoid](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/mem-avoid--e07f1bd85e0b41d8d08f3689.md) | 442 | `result-track:e07f1bd85e0b41d8d08f3689c6234810bd9dba120fbad5851bf152209383439a` |
| 35 | `theorem` | [nonempty_of_mem_parts](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/nonempty-of-mem-parts--318afb2e5a275a6102e11780.md) | 461 | `result-track:318afb2e5a275a6102e11780c515cefc0cd48470db7a47c28b3ad3dbb70ce46f` |
| 36 | `theorem` | [exists_mem](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/exists-mem--9eebe3b9bdf9141438fa2274.md) | 465 | `result-track:9eebe3b9bdf9141438fa2274f1086edba092d50b667a56af17c988e93e32cd38` |
| 37 | `theorem` | [biUnion_parts](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/biunion-parts--0e9d9da1baba37e340c88e22.md) | 470 | `result-track:0e9d9da1baba37e340c88e22beda5b81cc22edf87243f9e42bc923f2c84c1d00` |
| 38 | `theorem` | [sum_card_parts](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/sum-card-parts--e2256721ac7fb8dabaa09e07.md) | 474 | `result-track:e2256721ac7fb8dabaa09e07cddc15403225316da7f7e0b670c173e5b6bfd9a0` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--54275fa3b666a05b934081f2.md) | 481 | `declaration-track:54275fa3b666a05b934081f2e1f80da5cb17c46b2f5a034a122c24088ceac0e0` |
| 40 | `theorem` | [parts_bot](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/parts-bot--ffdd65b61f37081cb8fb2fb9.md) | 492 | `result-track:ffdd65b61f37081cb8fb2fb9ca2f8a6acea79381c08b16b490fae7ca3011ea01` |
| 41 | `theorem` | [card_bot](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/card-bot--7228b4962eadbce4a42b41b7.md) | 497 | `result-track:7228b4962eadbce4a42b41b79c6c001f572637c1f6389e76938f8dfc4be7f603` |
| 42 | `theorem` | [mem_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/mem-bot-iff--0e0a30a5a8a8ef22b692e8c1.md) | 501 | `result-track:0e0a30a5a8a8ef22b692e8c112bd98887be7832628e6888bded4adda238dab99` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/instance--014261e30433e7e7303d98ba.md) | 505 | `declaration-track:014261e30433e7e7303d98ba388f333e1d040cdabca65d8be1d0d2771a2e603d` |
| 44 | `theorem` | [card_parts_le_card](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/card-parts-le-card--734236243c7aac00affdd806.md) | 513 | `result-track:734236243c7aac00affdd806470e0d872c63f5de1734f6bacdf71a7e89a8cc69` |
| 45 | `def` | [atomise](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/atomise--0c6408a919015cd254900755.md) | 522 | `declaration-track:0c6408a919015cd254900755e65124e399dbe9ed03b0f06b9468784bdcf29ab1` |
| 46 | `theorem` | [mem_atomise](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/mem-atomise--5be2180c9a94966a255964b1.md) | 559 | `result-track:5be2180c9a94966a255964b143f0ba8b37173dbcb9ab5f80f3e464c70526ef2a` |
| 47 | `theorem` | [atomise_empty](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/atomise-empty--8352be4c6dfc12096e54fd09.md) | 566 | `result-track:8352be4c6dfc12096e54fd090305f230a7403d1a0bd7abf3ded6fdf8eaf25aa6` |
| 48 | `theorem` | [card_atomise_le](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/card-atomise-le--5a4da701121450f743859569.md) | 572 | `result-track:5a4da701121450f7438595695f4d716f44d0e86c04c0234beb81e76d53ea906f` |
| 49 | `theorem` | [biUnion_filter_atomise](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/biunion-filter-atomise--2a4e7a72f7d37d87dc28aacb.md) | 576 | `result-track:2a4e7a72f7d37d87dc28aacb3182f5e35e0883e0a240903da1a195cb578e6894` |
| 50 | `theorem` | [card_filter_atomise_le_two_pow](../../../../../mathematics/Topology/GeneralTopology/Finpartition/Variant93a18e897edebec1497e35c2259684633493b6ede7bd3d853f1f48abed53a77f.lean/declarations/card-filter-atomise-le-two-pow--25868a41dcdc12f841d7036d.md) | 587 | `result-track:25868a41dcdc12f841d7036dcb070a2f4359dbfaaa4deef74d4fcfaf8ff090d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
