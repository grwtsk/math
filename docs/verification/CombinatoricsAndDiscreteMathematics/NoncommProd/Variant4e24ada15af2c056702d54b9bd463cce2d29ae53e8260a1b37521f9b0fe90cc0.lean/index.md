# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.NoncommProd.Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3957b355efaf542c5da22b8c41b89c9afb2b4d4",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3957b355efaf542c5da22b8c41b89c9afb2b4d4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [noncommFoldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfoldr--60a3dc086a89701dc3dfe07b.md) | 45 | `declaration-track:60a3dc086a89701dc3dfe07b476106e4660d19f1ef32c9113d6b52cf2d953bf9` |
| 2 | `theorem` | [noncommFoldr_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfoldr-coe--593bbd41962b52e4f1d420bd.md) | 55 | `result-track:593bbd41962b52e4f1d420bd2ab1ce30df3cc6d54273bffa6d8bed53aab838f8` |
| 3 | `theorem` | [noncommFoldr_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfoldr-empty--6c95aaeaf3bddc99700b5789.md) | 62 | `result-track:6c95aaeaf3bddc99700b578948ebe06db32711047c21da2a57f438d51a882de2` |
| 4 | `theorem` | [noncommFoldr_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfoldr-cons--049a7eaa4807ef873ed7b294.md) | 65 | `result-track:049a7eaa4807ef873ed7b294ddcb4d6d0d22add413c4c3ecea6803cfe3570338` |
| 5 | `theorem` | [noncommFoldr_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfoldr-eq-foldr--cc95a44d7bd36e54b454465a.md) | 70 | `result-track:cc95a44d7bd36e54b454465a0e01c1fae9ae4c34359f12a24ebf7d1a669d8260` |
| 6 | `def` | [noncommFold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfold--dd90cf575f5d629cdbdc9f88.md) | 81 | `declaration-track:dd90cf575f5d629cdbdc9f88f597907885a2ea4a2f5d4ad28c6b965898dde77b` |
| 7 | `theorem` | [noncommFold_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfold-coe--d9a8c419a61c911da0fada3d.md) | 87 | `result-track:d9a8c419a61c911da0fada3db905be39dc38facd4e9437545a643c2cc76d306b` |
| 8 | `theorem` | [noncommFold_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfold-empty--508b5fdf2bebc90dc8ccb859.md) | 91 | `result-track:508b5fdf2bebc90dc8ccb8590cc18a7a278d1e334524d0a9b55793b741b1f10e` |
| 9 | `theorem` | [noncommFold_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfold-cons--3bc1a1aa1b53dbb616d043b8.md) | 94 | `result-track:3bc1a1aa1b53dbb616d043b8214705cfd9ee4bd7fc86bb2e0e11f11e450fbf37` |
| 10 | `theorem` | [noncommFold_eq_fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommfold-eq-fold--e4d140a39c724e0965f233e8.md) | 99 | `result-track:e4d140a39c724e0965f233e81be2be40e9da854e9766fae4d1f4c445e8ca58e5` |
| 11 | `def` | [noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod--353d245c15eb261714c81ca1.md) | 113 | `declaration-track:353d245c15eb261714c81ca119cef92dcbee4efc976400c5b170ca9c5184753f` |
| 12 | `theorem` | [noncommProd_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-coe--9496106d03aeb20bd4203003.md) | 118 | `result-track:9496106d03aeb20bd4203003c4cb27888f95855ee9226bf4a30b6e845cdf1428` |
| 13 | `theorem` | [noncommProd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-empty--efd314b15e4dc84b4fc78d7c.md) | 129 | `result-track:efd314b15e4dc84b4fc78d7c13718ea43fc23e6635b32d1ad9c57b7e2fdcd699` |
| 14 | `theorem` | [noncommProd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-cons--952302e5cf2f3d0705d7ef55.md) | 133 | `result-track:952302e5cf2f3d0705d7ef554cea0d3a34c29022116ffc1c70f71621609ec415` |
| 15 | `theorem` | [noncommProd_cons'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-cons--fa913c5d83b271b527e3b63e.md) | 139 | `result-track:fa913c5d83b271b527e3b63e6f90429eda2c5b875e061987f9152651e445c140` |
| 16 | `theorem` | [noncommProd_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-add--9fd77558242b82a187073ba9.md) | 156 | `result-track:9fd77558242b82a187073ba94b83af210dcffa9955b07d15c1094ac8eceda9e2` |
| 17 | `lemma` | [noncommProd_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-induction--3c453c4ae739c30656fdd572.md) | 165 | `result-track:3c453c4ae739c30656fdd5725557260b00e28b06432364c927afd6149947658f` |
| 18 | `theorem` | [map_noncommProd_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/map-noncommprod-aux--3072320588d6847920165f78.md) | 175 | `result-track:3072320588d6847920165f78c8ff1da2491a6632b404371ab01bc983d244cb50` |
| 19 | `theorem` | [map_noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/map-noncommprod--dccbdaeb2084b8d08fa805f8.md) | 182 | `result-track:dccbdaeb2084b8d08fa805f8960e2b504b096bb0a7c3cd840c477eab31ffe6eb` |
| 20 | `theorem` | [noncommProd_eq_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-eq-pow-card--0763a4f8858108626b9d475a.md) | 188 | `result-track:0763a4f8858108626b9d475a8e9f731abeefc92f00bdde6995174f96975dddd0` |
| 21 | `theorem` | [noncommProd_eq_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-eq-prod--8dda2a5e113d322d0dc85bd3.md) | 195 | `result-track:8dda2a5e113d322d0dc85bd3147ccdbb30a15a19763495e0a5bfcae91432b881` |
| 22 | `theorem` | [noncommProd_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-commute--78a65c614e180d72a9606c46.md) | 201 | `result-track:78a65c614e180d72a9606c4666586b52651097535d9c04540ffd056ac6c46f83` |
| 23 | `theorem` | [mul_noncommProd_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/mul-noncommprod-erase--3a7ddb817315e86685d41130.md) | 207 | `result-track:3a7ddb817315e86685d41130b5ad9634cb5c01d9e2cd75a9239260287e6c13e3` |
| 24 | `theorem` | [noncommProd_erase_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-erase-mul--58d524fbdf0aa2a424310b5b.md) | 218 | `result-track:58d524fbdf0aa2a424310b5b843768ae36c5c8cae46a1eb2f16dc0ef299e6072` |
| 25 | `theorem` | [noncommProd_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-lemma--2e2b174544ab97ec235b74e0.md) | 238 | `result-track:2e2b174544ab97ec235b74e0dee0d08de20346bec03efc94379b9d4a62b242f9` |
| 26 | `def` | [noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod--566c3346c30e9c13def25cdb.md) | 247 | `declaration-track:566c3346c30e9c13def25cdbc0c7cd29c8f76104c59c6c1c28fe633bce7b1f4a` |
| 27 | `lemma` | [noncommProd_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-induction--2508b0d0ebdc8b8e444d0263.md) | 252 | `result-track:2508b0d0ebdc8b8e444d0263ff4347aec36442f448b1c4bda7ae56b72aa6de3d` |
| 28 | `theorem` | [noncommProd_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-congr--11d97d5f2b2fe0ba194c553a.md) | 260 | `result-track:11d97d5f2b2fe0ba194c553a4061f83546f4747546fd83677fd4459e44444a11` |
| 29 | `theorem` | [noncommProd_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-tofinset--2f297b1e0178cc578c43c5a6.md) | 271 | `result-track:2f297b1e0178cc578c43c5a60db2c981ea3638c9b1d4a963b17194a4bc9f4208` |
| 30 | `theorem` | [noncommProd_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-empty--86f51e0d3c9bf179d1587b16.md) | 277 | `result-track:86f51e0d3c9bf179d1587b1608ad5b747ced5af5a15089b598408a644d8d62b5` |
| 31 | `theorem` | [noncommProd_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-cons--3a714631ce3e9dc5665b259a.md) | 281 | `result-track:3a714631ce3e9dc5665b259a70e5229c4f483d1e22d504a1c8bba0d0494565c5` |
| 32 | `theorem` | [noncommProd_cons'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-cons--1682c0922befa76c3268359a.md) | 288 | `result-track:1682c0922befa76c3268359a8f1e2e93cc9a1f7ae6cd8330c901c9ca7b543bf9` |
| 33 | `theorem` | [noncommProd_insert_of_notMem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-insert-of-notmem--ad8e3f3d12559af679c16bd6.md) | 296 | `result-track:ad8e3f3d12559af679c16bd618c5b80a06fe0dacd1b9b459f84fa348738fc608` |
| 34 | `theorem` | [noncommProd_insert_of_notMem'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-insert-of-notmem--efc63c551b1ca98d5ce67b6b.md) | 304 | `result-track:efc63c551b1ca98d5ce67b6b4fbf3f4edac2a4653a76440126764d4d123754a4` |
| 35 | `theorem` | [noncommProd_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-singleton--eb15ae2f92c70391c792965e.md) | 311 | `result-track:eb15ae2f92c70391c792965efc2a6747987c4de1b6ae603ef0142666ce1d3e71` |
| 36 | `theorem` | [map_noncommProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/map-noncommprod--ac06baf32dc93b09b2c08915.md) | 321 | `result-track:ac06baf32dc93b09b2c08915662bd98a2f5624b1e334e6525257fe1eb36061aa` |
| 37 | `theorem` | [noncommProd_eq_pow_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-eq-pow-card--6527dfe0c1d431daef41e48d.md) | 327 | `result-track:6527dfe0c1d431daef41e48d7e826540566dc023717bb4d2577d0cf3ca3679a3` |
| 38 | `theorem` | [noncommProd_commute](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-commute--328372d65303aa0e6653d4db.md) | 334 | `result-track:328372d65303aa0e6653d4db4f11fc2383200ec98b58be22aaee9bad20dbb159` |
| 39 | `theorem` | [mul_noncommProd_erase](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/mul-noncommprod-erase--8c29cf002c3572388868c62c.md) | 342 | `result-track:8c29cf002c3572388868c62cae371130e53e0484b7c998b6904f39a2a1e43f51` |
| 40 | `theorem` | [noncommProd_erase_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-erase-mul--c2471ae40a1391dba95be867.md) | 349 | `result-track:c2471ae40a1391dba95be8671a11e2c3f5cae07d77fece307add75a8bca02c21` |
| 41 | `theorem` | [noncommProd_eq_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-eq-prod--6452b2ca28134c2e3d4606ee.md) | 358 | `result-track:6452b2ca28134c2e3d4606eec667ba72b72a0613eae064e4b2139beb852031a3` |
| 42 | `theorem` | [noncommProd_union_of_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-union-of-disjoint--359e1bc16c42dc9712271da6.md) | 366 | `result-track:359e1bc16c42dc9712271da61b0f7c5a14c00b68300dea93ce8ce7c6848bb104` |
| 43 | `theorem` | [noncommProd_mul_distrib_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-mul-distrib-aux--2d5650f740572528cadfa4af.md) | 377 | `result-track:2d5650f740572528cadfa4af60a3fe7781534fd5d19cd954ba21f3f4f8f0c728` |
| 44 | `theorem` | [noncommProd_mul_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-mul-distrib--63ec353eaec813d218ee223c.md) | 392 | `result-track:63ec353eaec813d218ee223c00ae1b19e746766ad6d1548185c5f72f55da0f51` |
| 45 | `theorem` | [noncommProd_mulSingle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/noncommprod-mulsingle--132e4f61dd574869efe03bde.md) | 410 | `result-track:132e4f61dd574869efe03bde99dcf297974b610e7376cb226323a50be06e4717` |
| 46 | `theorem` | [_root_.MonoidHom.pi_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/declarations/root-monoidhom-pi-ext--4790758ec2af4a89539941ce.md) | 430 | `result-track:4790758ec2af4a89539941ce0c766cfcd43a065de95068f47225df42ec780829` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
