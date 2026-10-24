# Verification target: GRWTSK.Algebra.RelNorm.Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37680f001821b4d78db5800800f90367922673f9",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/index.md) · [Full source](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37680f001821b4d78db5800800f90367922673f9`.

Source path: `GRWTSK/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean.json)

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
| 1 | `def` | [spanNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm--9788d5319899c593f808698a.md) | 58 | `declaration-track:9788d5319899c593f808698aeac086bd3482e0e48096d7f911c601d9d765d472` |
| 2 | `theorem` | [spanNorm_bot](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-bot--9f19b6d0d063e1c34e287d9a.md) | 62 | `result-track:9f19b6d0d063e1c34e287d9aee1e13808c7e38513c85c5e9be98fa8637fc74ff` |
| 3 | `theorem` | [spanNorm_eq_bot_iff](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-eq-bot-iff--8d4706a2acd790fd7042ff7e.md) | 67 | `result-track:8d4706a2acd790fd7042ff7eda626ef97a21aefecccb136f06ce71a6d1a6c981` |
| 4 | `theorem` | [intNorm_mem_spanNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/intnorm-mem-spannorm--c21ce8d5de6ad1cdd0d71dc5.md) | 72 | `result-track:c21ce8d5de6ad1cdd0d71dc5c61993e2125cb3c63ed41fcbbf67fbe579302df4` |
| 5 | `theorem` | [norm_mem_spanNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/norm-mem-spannorm--175a321df5add6db097c56d6.md) | 76 | `result-track:175a321df5add6db097c56d654f797cd9144e6ed0cdb3048f9da5eda7c7b84ba` |
| 6 | `theorem` | [spanNorm_singleton](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-singleton--57880b38a7f4ba85eab06653.md) | 82 | `result-track:57880b38a7f4ba85eab0665365f27cdd47e6816437a0e2cf6189cb5b9da8146e` |
| 7 | `theorem` | [spanNorm_top](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-top--a4e2ee4df59492281361c8a9.md) | 93 | `result-track:a4e2ee4df59492281361c8a9e067f76083f2d76d04d2a21fe21f9edeb09215d8` |
| 8 | `theorem` | [map_spanIntNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/map-spanintnorm--021130c33cba6e8dc96848d0.md) | 96 | `result-track:021130c33cba6e8dc96848d0ebead56b3afe392be1fdb7d0b29968c45bd46b11` |
| 9 | `theorem` | [spanNorm_mono](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-mono--b7a665b96fc0ed9be5640eb8.md) | 103 | `result-track:b7a665b96fc0ed9be5640eb8d54b8da6278620d0a36255fed1a92bdb714e4cf5` |
| 10 | `theorem` | [spanIntNorm_localization](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spanintnorm-localization--18827a558d6f200478e3a078.md) | 107 | `result-track:18827a558d6f200478e3a078bd78996b2ff48d420851c9fefac532dd1286de94` |
| 11 | `theorem` | [spanNorm_mul_spanNorm_le](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-mul-spannorm-le--75d676eb58b4949de97e9232.md) | 161 | `result-track:75d676eb58b4949de97e92326d11c7e06df5af56273fe60e4d323e96b07f9ba7` |
| 12 | `theorem` | [spanNorm_mul_of_bot_or_top](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-mul-of-bot-or-top--ed05898c71986f911a826c28.md) | 173 | `result-track:ed05898c71986f911a826c2851adbfc0903a26584b2f362c00d704d36336c604` |
| 13 | `theorem` | [spanNorm_le_comap](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-le-comap--181422358e3185ef2f17819c.md) | 185 | `result-track:181422358e3185ef2f17819c931b908e6d85a7caa64d9aac37df694ad2f3f773` |
| 14 | `theorem` | [spanNorm_mul](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-mul--087b65f679070ca88dc7bd3d.md) | 199 | `result-track:087b65f679070ca88dc7bd3d205dce888233e55ec24a0fc13b28b0d94e084d87` |
| 15 | `theorem` | [le_spanNorm_spanNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/le-spannorm-spannorm--92ca8dcc2aea124f4a2f226b.md) | 227 | `result-track:92ca8dcc2aea124f4a2f226b69abd346f17f3a2ef461f1bc4262eb94c39446d3` |
| 16 | `theorem` | [spanNorm_spanNorm_of_bot_or_top](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-spannorm-of-bot-or-top--7a7a9a24842068171b4759f9.md) | 238 | `result-track:7a7a9a24842068171b4759f950f72655f94c8f42c1cb70c2a5862332edc9e4c5` |
| 17 | `theorem` | [spanNorm_spanNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-spannorm--5c47f08019799564b8271dce.md) | 246 | `result-track:5c47f08019799564b8271dcec29a8cee1d90049f34769987175f5be1b5592e6e` |
| 18 | `def` | [relNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm--ea292c30b49aef3f64afe5a7.md) | 270 | `declaration-track:ea292c30b49aef3f64afe5a7f21de42e99db6e959b068c15e2eeea475fb4e144` |
| 19 | `theorem` | [relNorm_apply](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-apply--db1b02dbfc2ec8aa47b00675.md) | 276 | `result-track:db1b02dbfc2ec8aa47b00675940d7592016898032c1ec0e1f6b14c32b98acc50` |
| 20 | `theorem` | [spanNorm_eq](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/spannorm-eq--9e5e1e817abdcd34c5673762.md) | 281 | `result-track:9e5e1e817abdcd34c56737627569dc025a8261740905e6a338293ea0ac31521d` |
| 21 | `theorem` | [relNorm_bot](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-bot--1b9f2fff359aecd950e2e742.md) | 284 | `result-track:1b9f2fff359aecd950e2e742cea7789dbd62a91dc4f7218c3734477cc7bea13a` |
| 22 | `theorem` | [relNorm_top](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-top--233fc8ab8713f95d773eb313.md) | 288 | `result-track:233fc8ab8713f95d773eb313797d5ef18778581c0f9f86c25cb259ccc88389c9` |
| 23 | `theorem` | [relNorm_eq_bot_iff](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-eq-bot-iff--750065c0240f351fee63ff4e.md) | 293 | `result-track:750065c0240f351fee63ff4ed4c34be18d9f22b635efc4f4e0c442d518f8b19d` |
| 24 | `theorem` | [norm_mem_relNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/norm-mem-relnorm--a7d3b92988bf8a542bc8257a.md) | 296 | `result-track:a7d3b92988bf8a542bc8257a37974e31b7e3846c2b4b55b97f95ada0be2c808c` |
| 25 | `theorem` | [relNorm_singleton](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-singleton--7cd48b3f8dc6818a01d64167.md) | 301 | `result-track:7cd48b3f8dc6818a01d6416764b73a925f825295592781b1ab1eb550ba6470a5` |
| 26 | `theorem` | [map_relNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/map-relnorm--b56e7189f172af68b735781f.md) | 304 | `result-track:b56e7189f172af68b735781f8b26afa37ba4cf8193714d0f8ee209a0b2c1f72e` |
| 27 | `theorem` | [relNorm_mono](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-mono--755fb3b391d1141d7598354c.md) | 309 | `result-track:755fb3b391d1141d7598354c62254ed8ea89a59efe3306c8aa277ec185c0205e` |
| 28 | `theorem` | [relNorm_map_algEquiv_aux](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-map-algequiv-aux--fb693cbcb717e9393778a0a9.md) | 314 | `result-track:fb693cbcb717e9393778a0a9e6395011814cf46f0f82fe07e463b4bf937130bc` |
| 29 | `theorem` | [relNorm_map_algEquiv](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-map-algequiv--154958f2324af8b6e47767c9.md) | 322 | `result-track:154958f2324af8b6e47767c91d451fafb9fe58a296cb6af7fce54292ef94f3cf` |
| 30 | `theorem` | [relNorm_comap_algEquiv](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-comap-algequiv--d03a45b53aabc6cf0eae600d.md) | 331 | `result-track:d03a45b53aabc6cf0eae600de7173c5f82f202f0c9152a26a5f5815534d3bc8c` |
| 31 | `theorem` | [relNorm_smul](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-smul--f2d908ff66340667e23bdd39.md) | 339 | `result-track:f2d908ff66340667e23bdd39cca76c744ba8907b82ff654d2b9f148f55d31ce6` |
| 32 | `theorem` | [relNorm_le_comap](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-le-comap--9698f42db0aa74ee68fe5ff0.md) | 342 | `result-track:9698f42db0aa74ee68fe5ff078ae2437b7e84b5b474456d0384376e2519a0700` |
| 33 | `theorem` | [relNorm_relNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-relnorm--963799a99d6d4748df32795a.md) | 345 | `result-track:963799a99d6d4748df32795a719de02ec54a568a4e37b1792ece852ed6ffd19f` |
| 34 | `theorem` | [relNorm_algebraMap](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-algebramap--ba29235715474f3b6a13ffc1.md) | 354 | `result-track:ba29235715474f3b6a13ffc1c9f237d3dbc571bfefede92807a70286a78bb113` |
| 35 | `theorem` | [relNorm_algebraMap'](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-algebramap--d88d70a9fadcc74613753868.md) | 374 | `result-track:d88d70a9fadcc74613753868ed9c444441b7814fa738bd926e5cb8b19d88bd96` |
| 36 | `theorem` | [exists_relNorm_eq_pow_of_isPrime](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/exists-relnorm-eq-pow-of-isprime--4e78f72afb330f146264eb29.md) | 386 | `result-track:4e78f72afb330f146264eb292092053d5655f73c8d3e5182893a3be4a72f9193` |
| 37 | `theorem` | [relNorm_eq_pow_of_isPrime_isGalois](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-eq-pow-of-isprime-isgalois--d05a7db26396110a3633b4fa.md) | 401 | `result-track:d05a7db26396110a3633b4fa80af76ede88f7a9b4838510232849ae81dfbc7b6` |
| 38 | `theorem` | [relNorm_eq_pow_of_isMaximal](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-eq-pow-of-ismaximal--507e665e618a3717167489cc.md) | 437 | `result-track:507e665e618a3717167489cc21c78082f71a9cd069c5a7960e70c17573759fad` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/instance--a34035b7344e250a3ee9c9f0.md) | 456 | `declaration-track:a34035b7344e250a3ee9c9f02616751ab8d33f23d4d97bb8754cf47a30081699` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/instance--1460fc17c4382028b6b29f2d.md) | 457 | `declaration-track:1460fc17c4382028b6b29f2d2e2b46741c9ab397fd563c1eae074d0a923afbec` |
| 41 | `theorem` | [absNorm_relNorm](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/absnorm-relnorm--7fa89997899234e85728177c.md) | 460 | `result-track:7fa89997899234e85728177c65acf27c75a477e17cebd0220299b753e9ffee96` |
| 42 | `theorem` | [relNorm_int](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/relnorm-int--5f6df2beee75196a5844754b.md) | 480 | `result-track:5f6df2beee75196a5844754b52d1da521442070704343531d049c4ce01b96822` |
| 43 | `theorem` | [absNorm_algebraMap](../../../../mathematics/Algebra/RelNorm/Variantae71e63c506fb2c681528eab2e9dd680f16a2146d014ba2206517abcf2c10a56.lean/declarations/absnorm-algebramap--e3e15d3e0630b6f686f26c37.md) | 484 | `result-track:e3e15d3e0630b6f686f26c370cc094c6d72dad2f820d02bd577f2e7a86ef2391` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
