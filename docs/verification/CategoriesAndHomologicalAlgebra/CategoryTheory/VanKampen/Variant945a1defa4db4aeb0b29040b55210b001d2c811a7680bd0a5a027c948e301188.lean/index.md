# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.VanKampen.Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce223966b2663cfcfbbf978cf8dfa85f0b9a27e2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.StrictInitial` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.FiniteProductsOfBinaryProducts` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NatTrans.Equifibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/nattrans-equifibered--cd3d28295a58f177298768ea.md) | 50 | `declaration-track:cd3d28295a58f177298768ea8cd17b90d30745e089deddae876cb45bb5aaff9f` |
| 2 | `theorem` | [NatTrans.equifibered_of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/nattrans-equifibered-of-isiso--eb7a21f52f7c52ef2983d762.md) | 53 | `result-track:eb7a21f52f7c52ef2983d762ec6a2e5392419529b686f356d476494e28cf5a46` |
| 3 | `theorem` | [NatTrans.Equifibered.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/nattrans-equifibered-comp--454ca6d54825945a6bd53a5c.md) | 56 | `result-track:454ca6d54825945a6bd53a5ca8f2856b0c079e6a71139d6eca050602c3cf13f0` |
| 4 | `theorem` | [NatTrans.Equifibered.whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/nattrans-equifibered-whiskerright--5b671c05b55cdc1ddec9fefd.md) | 60 | `result-track:5b671c05b55cdc1ddec9fefdf159174618eeb250196f51e73c285537355c8228` |
| 5 | `theorem` | [NatTrans.Equifibered.whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/nattrans-equifibered-whiskerleft--1c9dadd55db9786bf81e96cf.md) | 65 | `result-track:1c9dadd55db9786bf81e96cfe842eae1aa7fbff586e954327cfaad6c5148980f` |
| 6 | `theorem` | [mapPair_equifibered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/mappair-equifibered--e24bc3b54f71f47d35ff8b23.md) | 69 | `result-track:e24bc3b54f71f47d35ff8b23124a64a4324b39b1d2436da3367a2588e890d8e6` |
| 7 | `theorem` | [NatTrans.equifibered_of_discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/nattrans-equifibered-of-discrete--96b370e896b9dfab0c60de40.md) | 76 | `result-track:96b370e896b9dfab0c60de4041655a62201a20b5233d22529255331793046e51` |
| 8 | `def` | [IsUniversalColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isuniversalcolimit--2cee20041c9453805f51ee39.md) | 85 | `declaration-track:2cee20041c9453805f51ee39fdde51e0a730246390a839746094872630eb78e3` |
| 9 | `def` | [IsVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit--c303952c7943890a9f2082be.md) | 96 | `declaration-track:c303952c7943890a9f2082bedaa418b389b96ab6592b16cef01cbe270dd7123f` |
| 10 | `theorem` | [IsVanKampenColimit.isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-isuniversal--89a8ac9fe2066482af1c8897.md) | 101 | `result-track:89a8ac9fe2066482af1c8897e6eaba676358683f42c9c3540d3310036273cf15` |
| 11 | `def` | [IsUniversalColimit.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isuniversalcolimit-iscolimit--3526926f6a11269318332365.md) | 106 | `declaration-track:3526926f6a112693183323657ff3624e1d84a5ab3e684649334409520eb5f913` |
| 12 | `def` | [IsVanKampenColimit.isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-iscolimit--fcdb3f242ae24ee3a69c7112.md) | 114 | `declaration-track:fcdb3f242ae24ee3a69c7112ed83595f332eb6aea020df38c918bde6fa110403` |
| 13 | `theorem` | [IsInitial.isVanKampenColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isinitial-isvankampencolimit--d3e5e9f16d8c2e00a8b69107.md) | 118 | `result-track:d3e5e9f16d8c2e00a8b69107af96b725bc08ec35655300122f87eaae3b959b23` |
| 14 | `theorem` | [IsUniversalColimit.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isuniversalcolimit-of-iso--13e11c5cdf478bbd3771df85.md) | 129 | `result-track:13e11c5cdf478bbd3771df85a8c360c936971c69a28095c38f612379de8b3ea1` |
| 15 | `theorem` | [IsVanKampenColimit.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-of-iso--5ac7de57df565a6dba15cebf.md) | 141 | `result-track:5ac7de57df565a6dba15cebf10e0b07dde86eac442cfdfde0a3310dfd504f752` |
| 16 | `theorem` | [IsVanKampenColimit.precompose_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-precompose-isiso--bbf107bb86b615ffd9d32898.md) | 154 | `result-track:bbf107bb86b615ffd9d32898f58cf2948714923851b70c8810bab22f2f6d0084` |
| 17 | `theorem` | [IsUniversalColimit.precompose_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isuniversalcolimit-precompose-isiso--3dbec28b4e1a0fcd0ad6d927.md) | 169 | `result-track:3dbec28b4e1a0fcd0ad6d9274249d9601b5d9e1f81f7a69db32fade878285041` |
| 18 | `theorem` | [IsVanKampenColimit.precompose_isIso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-precompose-isiso-iff--c6af77905fe5f514563d7fe7.md) | 181 | `result-track:c6af77905fe5f514563d7fe70939d8ce3a118534e8778e1da2b673e784077b0d` |
| 19 | `theorem` | [IsUniversalColimit.of_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isuniversalcolimit-of-mapcocone--b0cc9f3770858b3712e230bc.md) | 187 | `result-track:b0cc9f3770858b3712e230bc090a34c35dcfe255b6646729a6748302eef65c8b` |
| 20 | `theorem` | [IsVanKampenColimit.of_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-of-mapcocone--99dd71a38ad4c062fa16e824.md) | 195 | `result-track:99dd71a38ad4c062fa16e82416022570a7a8221030daaa9d851f1059402ab342` |
| 21 | `theorem` | [IsVanKampenColimit.mapCocone_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-mapcocone-iff--f64369bbd6eae31f808f747c.md) | 209 | `result-track:f64369bbd6eae31f808f747cd916653954b848825a0804f741d989e28cd87437` |
| 22 | `theorem` | [IsUniversalColimit.whiskerEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isuniversalcolimit-whiskerequivalence--73849f2dd91b570488783db2.md) | 217 | `result-track:73849f2dd91b570488783db21a2319516b8c4b934720f4b6f4d98e0426b134df` |
| 23 | `theorem` | [IsUniversalColimit.whiskerEquivalence_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isuniversalcolimit-whiskerequivalence-iff--999be866c92b64d3de609072.md) | 233 | `result-track:999be866c92b64d3de6090723506a072daf132def98914ea120ff65fc176ceb8` |
| 24 | `theorem` | [IsVanKampenColimit.whiskerEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-whiskerequivalence--215b54463dd4ab1fd6b2d0d1.md) | 239 | `result-track:215b54463dd4ab1fd6b2d0d148e08a0743acdc585b235b77c48f8aecfdc97b5f` |
| 25 | `theorem` | [IsVanKampenColimit.whiskerEquivalence_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-whiskerequivalence-iff--38571f2f7aadec973174e53a.md) | 264 | `result-track:38571f2f7aadec973174e53a5bf293bbd79cd354831522165e7fb3f4ba8a29f8` |
| 26 | `theorem` | [isVanKampenColimit_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-of-evaluation--0658c8779d4028cdc3c4de70.md) | 270 | `result-track:0658c8779d4028cdc3c4de708c4174eaf1a1caf011badfcb4ce61d35aa879fad` |
| 27 | `theorem` | [IsUniversalColimit.map_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isuniversalcolimit-map-reflective--a28ea3ec9d3cac62452615d1.md) | 293 | `result-track:a28ea3ec9d3cac62452615d1bbd057b0b1689aa037c2011f49da29f39c24a929` |
| 28 | `theorem` | [IsVanKampenColimit.map_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-map-reflective--3b57cbee20650162805ca03c.md) | 395 | `result-track:3b57cbee20650162805ca03c648e2c041f121efe8904e41b04eae6e86356df44` |
| 29 | `theorem` | [hasStrictInitial_of_isUniversal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/hasstrictinitial-of-isuniversal--4bc8f239a6b7cb2475e65c64.md) | 455 | `result-track:4bc8f239a6b7cb2475e65c64c86f7806f81cdbba8055bdd6f60bb00e2d144e2d` |
| 30 | `theorem` | [isVanKampenColimit_of_isEmpty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-of-isempty--3470027202c1885cf0911bcb.md) | 469 | `result-track:3470027202c1885cf0911bcbcc8c9aa24c17f8cb26fd876811ecaaaca8250980` |
| 31 | `theorem` | [BinaryCofan.isVanKampen_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/binarycofan-isvankampen-iff--cee03ff05b919d0e6c036504.md) | 488 | `result-track:cee03ff05b919d0e6c036504c91776403fb95eb302469b6777c78a2e5706ad1f` |
| 32 | `theorem` | [BinaryCofan.isVanKampen_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/binarycofan-isvankampen-mk--b5a3cb13b4dca15531bcb6df.md) | 519 | `result-track:b5a3cb13b4dca15531bcb6df8b23f2192227f5c05f3dda8d760b4fb4a6c61db9` |
| 33 | `theorem` | [BinaryCofan.mono_inr_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/binarycofan-mono-inr-of-isvankampen--0d0fab86335b4e06d5df6d35.md) | 558 | `result-track:0d0fab86335b4e06d5df6d3567367c094fe89fd62bf0c144596d7dfd0631c77d` |
| 34 | `theorem` | [BinaryCofan.isPullback_initial_to_of_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/binarycofan-ispullback-initial-to-of-isvankampen--5ee04beed3ce9a1872783652.md) | 568 | `result-track:5ee04beed3ce9a1872783652de5848e439965a6746318cadbec9f3b5fdc36433` |
| 35 | `theorem` | [isUniversalColimit_extendCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isuniversalcolimit-extendcofan--73861f03d56e241b501a36cc.md) | 581 | `result-track:73861f03d56e241b501a36ccd4c82745636cc4ae5cf186a91de33de56e406f11` |
| 36 | `theorem` | [isVanKampenColimit_extendCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/isvankampencolimit-extendcofan--45f88cf03f8f86fa3e2f6179.md) | 640 | `result-track:45f88cf03f8f86fa3e2f6179c6a2281f6c54e4d35f6812a9e43ecdf891440a2d` |
| 37 | `theorem` | [isPullback_of_cofan_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/ispullback-of-cofan-isvankampen--ea43267f032cb4ba9fc9f65f.md) | 709 | `result-track:ea43267f032cb4ba9fc9f65f9f4dc75029ce07acb849a1bef79b112ea7f88c23` |
| 38 | `theorem` | [isPullback_initial_to_of_cofan_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/ispullback-initial-to-of-cofan-isvankampen--e24661359aef41c8310df4fe.md) | 737 | `result-track:e24661359aef41c8310df4fe4183bac2d613b4b8f4da884d12d75386d4f63253` |
| 39 | `theorem` | [mono_of_cofan_isVanKampen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/VanKampen/Variant945a1defa4db4aeb0b29040b55210b001d2c811a7680bd0a5a027c948e301188.lean/declarations/mono-of-cofan-isvankampen--422964a491a20fa0be4b52f5.md) | 750 | `result-track:422964a491a20fa0be4b52f5c29a1b473ae12164781d86b9eefffbabecc293ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
