# Verification target: GRWTSK.Algebra.LinearAlgebra.Curry.Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "232382ce9247f711dd0cc7a990c84ac7252b1aa2",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `232382ce9247f711dd0cc7a990c84ac7252b1aa2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean.json)

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
| 1 | `def` | [LinearMap.uncurryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/linearmap-uncurryleft--aec2783c3cde76751a125152.md) | 69 | `declaration-track:aec2783c3cde76751a125152e42e62f841fbbd4b492cd3b338d69855b3e39197` |
| 2 | `theorem` | [LinearMap.uncurryLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/linearmap-uncurryleft-apply--465010783640f675fb7b99e9.md) | 76 | `result-track:465010783640f675fb7b99e9e0ce56f1fb7480e4de3dd0d194464dd458277c55` |
| 3 | `def` | [MultilinearMap.curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-curryleft--0da7039d3249b410cd805039.md) | 82 | `declaration-track:0da7039d3249b410cd8050399ea339b7b2021178f2ea8e4cdb090c3330be1fe6` |
| 4 | `theorem` | [MultilinearMap.curryLeft_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-curryleft-apply--4370030c6cff42ea8a237ee3.md) | 93 | `result-track:4370030c6cff42ea8a237ee3f5bbf60b1c63119b8e637f8f02d7baba4028927d` |
| 5 | `theorem` | [LinearMap.curry_uncurryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/linearmap-curry-uncurryleft--b45f0fb9ec33d0847a80d26c.md) | 98 | `result-track:b45f0fb9ec33d0847a80d26c26b08ff60a360b6ab54d30d360af8e65e056adaf` |
| 6 | `theorem` | [MultilinearMap.uncurry_curryLeft](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-uncurry-curryleft--08a25dbbf0bafb5f604ddef2.md) | 103 | `result-track:08a25dbbf0bafb5f604ddef2e9ce5ad23f6565d1aef894098365bb3b6690b76a` |
| 7 | `def` | [multilinearCurryLeftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearcurryleftequiv--468066ed2787c7d7d797a855.md) | 118 | `declaration-track:468066ed2787c7d7d797a855ff78f3d539a4e49534055da64eccd494556c1a1d` |
| 8 | `def` | [MultilinearMap.uncurryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-uncurryright--7691b81cb9a9943f3b7c6f55.md) | 134 | `declaration-track:7691b81cb9a9943f3b7c6f55eee9368e4cb59322565ca0986fe220fd8c56bf41` |
| 9 | `theorem` | [MultilinearMap.uncurryRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-uncurryright-apply--74417131e204c88eeb1ff533.md) | 142 | `result-track:74417131e204c88eeb1ff53306ea28454d2a10fd15faa4bec20137e0de3defde` |
| 10 | `def` | [MultilinearMap.curryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-curryright--0541f5f2e9a211c386139b31.md) | 150 | `declaration-track:0541f5f2e9a211c386139b315b4eaed4ae009ce0b023a57066d98abd8a423858` |
| 11 | `theorem` | [MultilinearMap.curryRight_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-curryright-apply--e6eaa15a5816f2625b9b162b.md) | 158 | `result-track:e6eaa15a5816f2625b9b162b50e208aa4eca7d63e3039c33f9c0b3b7833c6a23` |
| 12 | `theorem` | [MultilinearMap.curry_uncurryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-curry-uncurryright--d683fecf908fe76e8c6c7b9e.md) | 163 | `result-track:d683fecf908fe76e8c6c7b9e9aeb0cbd5ac512147f90037bb49474e38717595b` |
| 13 | `theorem` | [MultilinearMap.uncurry_curryRight](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-uncurry-curryright--150510be593f9afff374d19b.md) | 171 | `result-track:150510be593f9afff374d19b29cc963f535cf5325df7bf11f3443871f68f615c` |
| 14 | `def` | [multilinearCurryRightEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearcurryrightequiv--22ae13c606c8702f9061684a.md) | 185 | `declaration-track:22ae13c606c8702f9061684a38587f22c90b5a22ae299d90b7a304b21aec54a5` |
| 15 | `def` | [LinearMap.uncurryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/linearmap-uncurrymid--9851851714b35b4a51301259.md) | 201 | `declaration-track:9851851714b35b4a5130125935a18757c7a5783532e0ae75574d7ef51cde10b6` |
| 16 | `def` | [MultilinearMap.curryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-currymid--dd7396820a0798d7d9523528.md) | 210 | `declaration-track:dd7396820a0798d7d952352897c1ceba915d37bed796429900d8d930c3a2a03c` |
| 17 | `theorem` | [LinearMap.curryMid_uncurryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/linearmap-currymid-uncurrymid--6db66836531dca3c70ce2ce0.md) | 217 | `result-track:6db66836531dca3c70ce2ce0c4ef6a7d4a3948083560631e82249dcaf5bef618` |
| 18 | `theorem` | [MultilinearMap.uncurryMid_curryMid](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-uncurrymid-currymid--8738e7d8feadf05aafc706e0.md) | 222 | `result-track:8738e7d8feadf05aafc706e0622aa9a3cf106bd45404b3ab27f216a2ae14a3b3` |
| 19 | `def` | [MultilinearMap.curryMidLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/multilinearmap-currymidlinearequiv--db55ccd8ebc4f4927c0ed9ba.md) | 229 | `declaration-track:db55ccd8ebc4f4927c0ed9ba338bc734dec15a667abb64715bb7b380152e0c87` |
| 20 | `def` | [currySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/currysum--85eb62164ef7d6b6c1ed2707.md) | 247 | `declaration-track:85eb62164ef7d6b6c1ed270765535e4e631b1da42df18e10f204141aa6d4a68e` |
| 21 | `theorem` | [currySum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/currysum-apply--bca91edb0ac0eee7a0b5f980.md) | 259 | `result-track:bca91edb0ac0eee7a0b5f9807b70f99a53b2b544965a51395e59d65700e46454` |
| 22 | `theorem` | [currySum_apply'](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/currysum-apply--7f9904c414a2415c0eb133c6.md) | 264 | `result-track:7f9904c414a2415c0eb133c6a6dc7652f39d5bb0e6e031c31c0383cc296b0158` |
| 23 | `lemma` | [currySum_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/currysum-add--2f7c40865513603dca3fa1a6.md) | 270 | `result-track:2f7c40865513603dca3fa1a6faac24ed4585c86b1304d912ba044c42d21a8c91` |
| 24 | `lemma` | [currySum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/currysum-smul--1d57765d69e4efd384a8721c.md) | 274 | `result-track:1d57765d69e4efd384a8721cbfe0bbc1cf9cb4f63901c0cc39c9dc02782fdb38` |
| 25 | `def` | [uncurrySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/uncurrysum--0f555cdff32de983dbf2c849.md) | 281 | `declaration-track:0f555cdff32de983dbf2c8494b31c6e2540b23a2970660dd8ddef5fb3d4f62d9` |
| 26 | `theorem` | [uncurrySum_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/uncurrysum-apply--a7127be636dae1b8bfdbbc6a.md) | 296 | `result-track:a7127be636dae1b8bfdbbc6aacb073701bd2468f8a4e0cec967829fac0b3cfdb` |
| 27 | `lemma` | [uncurrySum_add](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/uncurrysum-add--86a5ede5965357282848aafc.md) | 303 | `result-track:86a5ede5965357282848aafc956df96d62c9b0a132e79b446f353df3e1645727` |
| 28 | `lemma` | [uncurrySum_smul](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/uncurrysum-smul--fe5f25d0ef1be6c868273c9c.md) | 309 | `result-track:fe5f25d0ef1be6c868273c9c2d26da5e456b459115045e73b4b7262bffadcf1f` |
| 29 | `lemma` | [uncurrySum_currySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/uncurrysum-currysum--3bfaf29446824b21966b0e3c.md) | 316 | `result-track:3bfaf29446824b21966b0e3c71e8d7f46ade8f4442e53f896c6dfaa6065efe7b` |
| 30 | `lemma` | [currySum_uncurrySum](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/currysum-uncurrysum--84098953ee63bf96d5120bd5.md) | 324 | `result-track:84098953ee63bf96d5120bd54e2dcaac7ca31c20c2405fa64dd479425a7a83a2` |
| 31 | `def` | [currySumEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/currysumequiv--515997ab10a0f7cf0e9f4a59.md) | 334 | `declaration-track:515997ab10a0f7cf0e9f4a599932f2acedcc9e2452dc10c3faa14bf5dab8c026` |
| 32 | `theorem` | [coe_currySumEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/coe-currysumequiv--c5a607e6609af4d5bca933db.md) | 344 | `result-track:c5a607e6609af4d5bca933dbca46fdb9d385d312e7f5260db02589b754266b5a` |
| 33 | `theorem` | [coe_currySumEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/coe-currysumequiv-symm--8ad1a0e29ae94ba7dcd8b72d.md) | 348 | `result-track:8ad1a0e29ae94ba7dcd8b72d768dca1db58a919c8f7dd8aa09f0e6e613bb326f` |
| 34 | `def` | [curryFinFinset](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/curryfinfinset--b1b8ca45f3cfd2a0ac37b903.md) | 357 | `declaration-track:b1b8ca45f3cfd2a0ac37b903b88b38b4a2c13a9534e37b87df139333f1bbab56` |
| 35 | `theorem` | [curryFinFinset_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/curryfinfinset-apply--eb40247d9e0ea1ea103bd6aa.md) | 366 | `result-track:eb40247d9e0ea1ea103bd6aacb3e3ea154e865c266f6ca70a04bab3eeda08eca` |
| 36 | `theorem` | [curryFinFinset_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/curryfinfinset-symm-apply--9e8f73b75ca5eceb431de0c9.md) | 373 | `result-track:9e8f73b75ca5eceb431de0c92111a52f5764967d364efb124494bcbda19783ee` |
| 37 | `theorem` | [curryFinFinset_symm_apply_piecewise_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/curryfinfinset-symm-apply-piecewise-const--62ebc3e9bc91e943dd93f542.md) | 382 | `result-track:62ebc3e9bc91e943dd93f54204e034606311367b41da21913096f9a4f1343959` |
| 38 | `theorem` | [curryFinFinset_symm_apply_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/curryfinfinset-symm-apply-const--61dd999b0d67403fb6dc6b87.md) | 397 | `result-track:61dd999b0d67403fb6dc6b873de225c2f3d97ee97fb00558dc1cf1bbc63547d7` |
| 39 | `theorem` | [curryFinFinset_apply_const](../../../../../mathematics/Algebra/LinearAlgebra/Curry/Variantb1ada97707aa86e4d54e375effbaa92352b4eb03b2ec673121b43aa832926a0e.lean/declarations/curryfinfinset-apply-const--951e1c47dbecabc8b777ffa3.md) | 403 | `result-track:951e1c47dbecabc8b777ffa3c7536c4cdfe9781cba21e17d8ac803833e436e98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
