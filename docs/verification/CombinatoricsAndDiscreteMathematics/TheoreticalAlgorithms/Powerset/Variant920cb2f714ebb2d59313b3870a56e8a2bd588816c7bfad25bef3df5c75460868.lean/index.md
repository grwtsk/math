# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Powerset.Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d3ec90ea6e4facb9284118001e57cb60eca7023",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d3ec90ea6e4facb9284118001e57cb60eca7023`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Sublists` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Zip` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Bind` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Range` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powersetAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetaux--4a1efa799508e04b06e47c50.md) | 26 | `declaration-track:4a1efa799508e04b06e47c5069ae6dd0a277339c832392e1f1a39e6000d37d0f` |
| 2 | `theorem` | [powersetAux_eq_map_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetaux-eq-map-coe--44612e175822fbfd64adf6f5.md) | 29 | `result-track:44612e175822fbfd64adf6f5fc671952d102d0d6d03ccd82dc187076e1252540` |
| 3 | `theorem` | [mem_powersetAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/mem-powersetaux--bd5499b9c5d0f27df521d2ae.md) | 33 | `result-track:bd5499b9c5d0f27df521d2ae47f2e5691847d45943b601ab2d23caed6fb3e13a` |
| 4 | `def` | [powersetAux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetaux--106b47e412d21ef7a5a03bbf.md) | 38 | `declaration-track:106b47e412d21ef7a5a03bbf41180e7a0f049439773039df9786c574c14b2347` |
| 5 | `theorem` | [powersetAux_perm_powersetAux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetaux-perm-powersetaux--5a90044b6c28a104563ea410.md) | 41 | `result-track:5a90044b6c28a104563ea410ceb6b45f15967ccc0c0b1a2f46ce5351f3470a10` |
| 6 | `theorem` | [powersetAux'_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetaux-nil--c59a4f64187d084b2846eac3.md) | 45 | `result-track:c59a4f64187d084b2846eac37abfc09c3323b16dcb4a201c9c8c32c2c6fe1c42` |
| 7 | `theorem` | [powersetAux'_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetaux-cons--8192f96fb94f2789546a7097.md) | 49 | `result-track:8192f96fb94f2789546a7097c305131f1d5da63975128ccbe34ac892038b9248` |
| 8 | `theorem` | [powerset_aux'_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powerset-aux-perm--8681793f55cb60e67a7e667a.md) | 53 | `result-track:8681793f55cb60e67a7e667a1f1f142c721648ee5f9d551d40154c9d97712469` |
| 9 | `theorem` | [powersetAux_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetaux-perm--ccdc878d282e516be67bf487.md) | 67 | `result-track:ccdc878d282e516be67bf487fe7552fda10ad6ffd97348d72758cec4536ac291` |
| 10 | `def` | [powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powerset--3b292a0e15e5b33e62788c6d.md) | 73 | `declaration-track:3b292a0e15e5b33e62788c6ddcb7d948510fda6bda2ff8ef3a38abb44dcf4127` |
| 11 | `theorem` | [powerset_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powerset-coe--aae8567eb3188939e4cb1e96.md) | 78 | `result-track:aae8567eb3188939e4cb1e96e30f4eb7417247d517a1638cced1f17ea048242e` |
| 12 | `theorem` | [powerset_coe'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powerset-coe--5bf6d5750955ac0ab71df6be.md) | 82 | `result-track:5bf6d5750955ac0ab71df6be4977205ac9762e8d96a3ccb6c96584c22b9f3d68` |
| 13 | `theorem` | [powerset_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powerset-zero--3ab5f8e56f6e67e73922f1e4.md) | 86 | `result-track:3ab5f8e56f6e67e73922f1e44b200a672f4f03ab8888c2748780d3924d73740b` |
| 14 | `theorem` | [powerset_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powerset-cons--bca4aab7b3ca98ea79f84832.md) | 90 | `result-track:bca4aab7b3ca98ea79f848324671f2abfc88b5d015cc62ac73b4bf35f64515da` |
| 15 | `theorem` | [mem_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/mem-powerset--d335ceb53ed96558d160203a.md) | 94 | `result-track:d335ceb53ed96558d160203a56d9731de602710c248824792693c8b91e498ee3` |
| 16 | `theorem` | [map_single_le_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/map-single-le-powerset--1aa201b96d3069878d713ded.md) | 97 | `result-track:1aa201b96d3069878d713deda1f09d768451355119065a502c03e491e8eb28a1` |
| 17 | `theorem` | [card_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/card-powerset--a627174ead6f36b068b1aaa6.md) | 105 | `result-track:a627174ead6f36b068b1aaa6e221411c1fa54cf0bbe761494dc53ffe24ef9ab1` |
| 18 | `theorem` | [revzip_powersetAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/revzip-powersetaux--893191fb51e4631761da0041.md) | 108 | `result-track:893191fb51e4631761da004113715e6ab5ed0d1abc17b661b07c617613927ebb` |
| 19 | `theorem` | [revzip_powersetAux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/revzip-powersetaux--d7ba786d821dfb906a66984a.md) | 114 | `result-track:d7ba786d821dfb906a66984a8168389030f83a415cf57d291e4ca2688ab1dbd5` |
| 20 | `theorem` | [revzip_powersetAux_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/revzip-powersetaux-lemma--eb9bab4bcfb0ccabf40ab2d3.md) | 121 | `result-track:eb9bab4bcfb0ccabf40ab2d340d00c79c7134181e85523f2ca6f499532610efe` |
| 21 | `theorem` | [revzip_powersetAux_perm_aux'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/revzip-powersetaux-perm-aux--83d865da261d35765ef74943.md) | 134 | `result-track:83d865da261d35765ef749439658874dd30c5ff3278e7a854ad959859b395b96` |
| 22 | `theorem` | [revzip_powersetAux_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/revzip-powersetaux-perm--ea89ecc570d1204854849e3a.md) | 140 | `result-track:ea89ecc570d1204854849e3a04bb260082028872e57e8bcb39b9769a05332330` |
| 23 | `def` | [powersetCardAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcardaux--ff6179a48efe145b5950c4ef.md) | 151 | `declaration-track:ff6179a48efe145b5950c4ef15c5145a47ca961b68e79be7a0c4dcb2128d1bcb` |
| 24 | `theorem` | [powersetCardAux_eq_map_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcardaux-eq-map-coe--9280226d6d4fe4ff09507713.md) | 154 | `result-track:9280226d6d4fe4ff09507713dfca9a47e42c1f1355426a897cfb571d9ec324a0` |
| 25 | `theorem` | [mem_powersetCardAux](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/mem-powersetcardaux--503bf578526fa8ccde571bd0.md) | 159 | `result-track:503bf578526fa8ccde571bd0e97acb8f54c6555be3e17141e765a74f904c7b19` |
| 26 | `theorem` | [powersetCardAux_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcardaux-zero--e9205e89b9edbb863a2c8ce9.md) | 168 | `result-track:e9205e89b9edbb863a2c8ce9a6e745d6a66362d3ed40a5235d5dad7f31513e03` |
| 27 | `theorem` | [powersetCardAux_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcardaux-nil--e96e8d982838ab9ebe83e240.md) | 172 | `result-track:e96e8d982838ab9ebe83e240384f247484275c422a10709391468cec704576c6` |
| 28 | `theorem` | [powersetCardAux_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcardaux-cons--f600a87c8f86c46dbc4c218b.md) | 176 | `result-track:f600a87c8f86c46dbc4c218b9acc6a682926f3c4f8ab860f804a9dff8f3f64d6` |
| 29 | `theorem` | [powersetCardAux_perm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcardaux-perm--13e1ac2f1832d136221e6198.md) | 181 | `result-track:13e1ac2f1832d136221e61985bbf2485461528f6ccb4b57fea94d91e2055d94e` |
| 30 | `def` | [powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard--6accaf3c84f6c0b05a16721d.md) | 202 | `declaration-track:6accaf3c84f6c0b05a16721d2815baf6bb58ebdd00056cdbef7a287391aff854` |
| 31 | `theorem` | [powersetCard_coe'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-coe--2b25264d215cd5dee3957ffd.md) | 206 | `result-track:2b25264d215cd5dee3957ffd807b3b865f9f82052310e0ea0c30c817560c7796` |
| 32 | `theorem` | [powersetCard_coe](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-coe--2b047a727c3fcbe0bba823eb.md) | 209 | `result-track:2b047a727c3fcbe0bba823ebdebbaf7a108989ab71ece1ffbd58cc6faa4a98b5` |
| 33 | `theorem` | [powersetCard_zero_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-zero-left--e5d1275964b06db9f3e1d6ca.md) | 214 | `result-track:e5d1275964b06db9f3e1d6ca59a69e83a3e4fe6d46f27347f49b87f982aa15a4` |
| 34 | `theorem` | [powersetCard_zero_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-zero-right--f6fb07627075b31230a46799.md) | 217 | `result-track:f6fb07627075b31230a467995ae57cbef09919bb586000f7f17e4077416f0ca9` |
| 35 | `theorem` | [powersetCard_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-cons--20b9d8d4955199c87112a3a5.md) | 221 | `result-track:20b9d8d4955199c87112a3a56ef535af0bfabf017ef90e11c848435e6e55b3b5` |
| 36 | `theorem` | [powersetCard_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-one--cd6cfbb874c8642c26db8255.md) | 225 | `result-track:cd6cfbb874c8642c26db8255b0d810c3f341f6acec456c28f5b701ba14cfcfd5` |
| 37 | `theorem` | [mem_powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/mem-powersetcard--516ea4939e0c2284d907575f.md) | 230 | `result-track:516ea4939e0c2284d907575fa49e67e6e59470cccfd49d3392fae3e617792f3a` |
| 38 | `theorem` | [card_powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/card-powersetcard--70408012339f74915c17ce5d.md) | 234 | `result-track:70408012339f74915c17ce5da9457280637e677047cb5692dfa361329d46f1b8` |
| 39 | `theorem` | [powersetCard_le_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-le-powerset--8f00b7c85ce3a9a7c38018b5.md) | 238 | `result-track:8f00b7c85ce3a9a7c38018b59a7447107025804ce3a8e0ef9a117902251364c7` |
| 40 | `theorem` | [powersetCard_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-mono--6d1fdee8b1bd34c87daa69d9.md) | 243 | `result-track:6d1fdee8b1bd34c87daa69d975ae7bcd9663c2b3819a05021acaf120d1d5c4d4` |
| 41 | `theorem` | [powersetCard_eq_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-eq-empty--e945423e4c6f691b15723ec8.md) | 250 | `result-track:e945423e4c6f691b15723ec8eb5317a828327edfec4c6242c187783497e74852` |
| 42 | `theorem` | [powersetCard_card_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-card-add--ce457b5ea2ccc14ddb10c6c5.md) | 254 | `result-track:ce457b5ea2ccc14ddb10c6c5ba650df726332ca4cabf76763f75186de3c90857` |
| 43 | `theorem` | [powersetCard_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/powersetcard-map--e04790e4a7428246b831244e.md) | 258 | `result-track:e04790e4a7428246b831244e8346156047755da3eced93db0db7d0f31c625c15` |
| 44 | `theorem` | [pairwise_disjoint_powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/pairwise-disjoint-powersetcard--faee9e5988c0903c9cc7a155.md) | 264 | `result-track:faee9e5988c0903c9cc7a155324d5375bd09a63d9e17412a8c8578ecc2d9b0ab` |
| 45 | `theorem` | [bind_powerset_len](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/bind-powerset-len--a95cf2675807c1e6676682bb.md) | 269 | `result-track:a95cf2675807c1e6676682bb6ba606e65e4567da9a4cce8cac55ea4e7ec89543` |
| 46 | `theorem` | [nodup_powerset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/nodup-powerset--4e32d94ecc20dd1960f7ea0a.md) | 277 | `result-track:4e32d94ecc20dd1960f7ea0a6b28ae7441ef68858f88e0696d4ec7c0bd5b1175` |
| 47 | `theorem` | [Nodup.powersetCard](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Powerset/Variant920cb2f714ebb2d59313b3870a56e8a2bd588816c7bfad25bef3df5c75460868.lean/declarations/nodup-powersetcard--59097c2de9d4c536361ed095.md) | 287 | `result-track:59097c2de9d4c536361ed095da4fe5c16dd444943f87dd38a539fa723059e18a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
