# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.JordanHolder.Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6ba949cd340e0a11327d485e1348f5fd300ad50",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6ba949cd340e0a11327d485e1348f5fd300ad50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Functor` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pigeonhole` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelSeries` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [JordanHolderLattice](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/jordanholderlattice--781251e41d535a1c94837eb2.md) | 92 | `declaration-track:781251e41d535a1c94837eb2df2d7b07654cb20cee6f072eb1f60b0f7c9760bc` |
| 2 | `theorem` | [isMaximal_inf_right_of_isMaximal_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/ismaximal-inf-right-of-ismaximal-sup--bf0822765080c8c9c9ee1433.md) | 107 | `result-track:bf0822765080c8c9c9ee1433b5864f9c8b2ca0e4984e67adb5cebbaf045c191f` |
| 3 | `theorem` | [isMaximal_of_eq_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/ismaximal-of-eq-inf--c8b10d4343f58f067d880566.md) | 113 | `result-track:c8b10d4343f58f067d88056690a2a855eec5b6d0e0306401cd52d986701d6f5e` |
| 4 | `theorem` | [second_iso_of_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/second-iso-of-eq--e0703f5ee591240876b1dd4c.md) | 119 | `result-track:e0703f5ee591240876b1dd4c5a02963357355a5df7ecc74bd29675ace489babd` |
| 5 | `theorem` | [IsMaximal.iso_refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/ismaximal-iso-refl--a0686599e9436da0c4158b6c.md) | 122 | `result-track:a0686599e9436da0c4158b6c5d850853c375ffea66cd1403ab630d0dcefabdab` |
| 6 | `abbrev` | [CompositionSeries](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/compositionseries--de1fde7f099e8ff13652d5cd.md) | 141 | `declaration-track:de1fde7f099e8ff13652d5cd872f9a7baebb3fbb128ab61eec11cdccc25a5b09` |
| 7 | `theorem` | [lt_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/lt-succ--937585548d502e26d6ac214a.md) | 148 | `result-track:937585548d502e26d6ac214a559b4267268941fa12665573d5684dbe61f710ae` |
| 8 | `theorem` | [strictMono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/strictmono--918390e28e987a7218aa75b7.md) | 152 | `result-track:918390e28e987a7218aa75b74443a242cf13d22e7429a840a0189e2757d48c3e` |
| 9 | `theorem` | [injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/injective--888637c4f03cc7e5de72d857.md) | 155 | `result-track:888637c4f03cc7e5de72d8570af9f1ccb9f00c5da9e10344a03d8a0932806949` |
| 10 | `theorem` | [inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/inj--2855e8b1172452b1d126230d.md) | 159 | `result-track:2855e8b1172452b1d126230db3dceeca2c17bb347508dadc1c3b59d8895d587b` |
| 11 | `theorem` | [total](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/total--482f9c05d7ea4581e1a0d3ff.md) | 162 | `result-track:482f9c05d7ea4581e1a0d3ffa658a5df976439197e493d22ebe95ec1439b634c` |
| 12 | `theorem` | [toList_sorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/tolist-sorted--f87638a95459bcc4a006c49b.md) | 168 | `result-track:f87638a95459bcc4a006c49beef1be33bde3109b848fa4637c3e57dba92f2866` |
| 13 | `theorem` | [toList_nodup](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/tolist-nodup--f9a2e275f4acea1fcee9379e.md) | 174 | `result-track:f9a2e275f4acea1fcee9379ef86e680f00b6ce1f299b015a07d8ac0b0b1b09cc` |
| 14 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/ext--ec414db85f62f2445b82a2e2.md) | 179 | `result-track:ec414db85f62f2445b82a2e27fc42cbaaffbe9c95c88fc3386a2c2a683071bb9` |
| 15 | `theorem` | [le_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/le-last--19e8cd9e54764add918f506a.md) | 189 | `result-track:19e8cd9e54764add918f506a32c4eda5bddd66bd0dc1c714f29b9aad7e226d3f` |
| 16 | `theorem` | [le_last_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/le-last-of-mem--6fc52f585f730d467f73f621.md) | 192 | `result-track:6fc52f585f730d467f73f6214ae5a6afd8ce8b542e64abfa9393f4bad6489be3` |
| 17 | `theorem` | [head_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/head-le--2973231222b83aa0af81e2de.md) | 197 | `result-track:2973231222b83aa0af81e2dedf9d560eb2d4b069ac6314d29c9cf256a1e0fa14` |
| 18 | `theorem` | [head_le_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/head-le-of-mem--030d0f95ba671fe44436b060.md) | 200 | `result-track:030d0f95ba671fe44436b060feb959439e5e655a423e59decae6d4ef5db70b64` |
| 19 | `theorem` | [last_eraseLast_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/last-eraselast-le--1136f75df6371d62307016aa.md) | 204 | `result-track:1136f75df6371d62307016aaae3cd76ff0089fc369a608b6c56d12682e4985c2` |
| 20 | `theorem` | [mem_eraseLast_of_ne_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/mem-eraselast-of-ne-of-mem--eac9daee1ac892abedb98138.md) | 207 | `result-track:eac9daee1ac892abedb98138b814e5a0acbf4d3c6823b360274d5a88b34dc541` |
| 21 | `theorem` | [mem_eraseLast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/mem-eraselast--6a8720258455ea6b7ec8971b.md) | 217 | `result-track:6a8720258455ea6b7ec8971b3d25d7986550b56a34d9a0d46824e74a12d39237` |
| 22 | `theorem` | [lt_last_of_mem_eraseLast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/lt-last-of-mem-eraselast--fae914754792625e17e23fa4.md) | 229 | `result-track:fae914754792625e17e23fa49a0afa585930193f72ea39a999f831e21b64502d` |
| 23 | `theorem` | [isMaximal_eraseLast_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/ismaximal-eraselast-last--52e8727989e33c223997e635.md) | 233 | `result-track:52e8727989e33c223997e635018faa8ce4e6ff86dfc72bb1d0e216d4abd798ef` |
| 24 | `theorem` | [eq_snoc_eraseLast](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/eq-snoc-eraselast--f0be94bf5be97ad9aac833a0.md) | 240 | `result-track:f0be94bf5be97ad9aac833a0863fc78d43c09dcc64dcb3ce69f23e4f1101d80e` |
| 25 | `theorem` | [snoc_eraseLast_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/snoc-eraselast-last--ce0b2b399bb45e036e8adc1e.md) | 247 | `result-track:ce0b2b399bb45e036e8adc1e0790fea36353486f14fac2d5a9cff51891632b4d` |
| 26 | `def` | [Equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/equivalent--ad8718b73eafe94718fef9ac.md) | 256 | `declaration-track:ad8718b73eafe94718fef9ac9315b1e53a9f44826f1b6fc4a1365a367f18bb29` |
| 27 | `theorem` | [refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/refl--f2e5378f5b5c5eb10550900f.md) | 264 | `result-track:f2e5378f5b5c5eb10550900f3fbf634bd19df23cfcb4333e22d62295f8d74bd2` |
| 28 | `theorem` | [symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/symm--7c3ce7a34ea2cb484357ed67.md) | 268 | `result-track:7c3ce7a34ea2cb484357ed6746346a32549c110b738802a2aedda2bac4d7abbd` |
| 29 | `theorem` | [trans](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/trans--f5f064b9a7dedbb737a46e73.md) | 272 | `result-track:f5f064b9a7dedbb737a46e7340985ca8f2df41d5377a391f090f61e88ad9012e` |
| 30 | `theorem` | [smash](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/smash--3418ba1e896e93ef61ce5c7d.md) | 277 | `result-track:3418ba1e896e93ef61ce5c7df73739bf8af58c82399a6569f5c80266b014a517` |
| 31 | `theorem` | [snoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/snoc--e5846cc84be9c26709338095.md) | 294 | `result-track:e5846cc84be9c26709338095ff4ac4e4d20f95c8531693458dfeac2102766de8` |
| 32 | `theorem` | [length_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/length-eq--c84b731caa2f5427a93eda01.md) | 308 | `result-track:c84b731caa2f5427a93eda016bc6bee5b552ae797f8a3743464b9a88ee74bf0e` |
| 33 | `theorem` | [snoc_snoc_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/snoc-snoc-swap--5ddf2c64bd154543372f3c0f.md) | 311 | `result-track:5ddf2c64bd154543372f3c0f6dbf3f93a282ac83cfaf1af295fc81f55a9c0fa4` |
| 34 | `theorem` | [length_eq_zero_of_head_eq_head_of_last_eq_last_of_length_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/length-eq-zero-of-head-eq-head-of-last-eq-last-of-length-eq-zero--bbf8eb76b5aa26934fbbd2bd.md) | 342 | `result-track:bbf8eb76b5aa26934fbbd2bd860bba58e5e96520de1cdd9fd8db2c37a0b51524` |
| 35 | `theorem` | [length_pos_of_head_eq_head_of_last_eq_last_of_length_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/length-pos-of-head-eq-head-of-last-eq-last-of-length-pos--a6728ec3ee2dd39267210d79.md) | 349 | `result-track:a6728ec3ee2dd39267210d7943b9990eddbc370ad140da999dd39d59c06cdce4` |
| 36 | `theorem` | [eq_of_head_eq_head_of_last_eq_last_of_length_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/eq-of-head-eq-head-of-last-eq-last-of-length-eq-zero--639f922ecbd1bf7be38d29f8.md) | 356 | `result-track:639f922ecbd1bf7be38d29f8a74966c99d91c02e616a3334529f3871b70dbf94` |
| 37 | `theorem` | [exists_last_eq_snoc_equivalent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/exists-last-eq-snoc-equivalent--32c22809bd24ecb731c4692b.md) | 373 | `result-track:32c22809bd24ecb731c4692bcc0c9914bd62b127be3df640f4e1f5c3d42f017c` |
| 38 | `theorem` | [jordan_holder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/JordanHolder/Variant166bc906723c608418a99d73e57596a999d935437e66a8a5e38fabfcc1208e62.lean/declarations/jordan-holder--da8733611fea0ecc10a54885.md) | 411 | `result-track:da8733611fea0ecc10a5488557508dbdc1f76505ba736b8cfd23bf083f3966dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
