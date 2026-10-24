# Verification target: GRWTSK.Analysis.Basic.Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2060e8372f1bbdec007158f23ed3d507e6a8e8af",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/index.md) · [Full source](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2060e8372f1bbdec007158f23ed3d507e6a8e8af`.

Source path: `GRWTSK/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--70ca73ffb0a71788928a1ef5.md) | 20 | `declaration-track:70ca73ffb0a71788928a1ef5e23f28b122346b2492b532aac7ec0316b3eca84b` |
| 2 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--4f4c12bdb0edc7be01547217.md) | 21 | `declaration-track:4f4c12bdb0edc7be01547217d7007e0cd867d3c0ac231cd2452a61c387050097` |
| 3 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--e7b553d7b85d4d67bf4a484c.md) | 22 | `declaration-track:e7b553d7b85d4d67bf4a484c2e552d7613b2b41fbeff4928fa5f0e28d5561d01` |
| 4 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--f082e9f14ea6572dcdcf5332.md) | 23 | `declaration-track:f082e9f14ea6572dcdcf5332fbe64da723e31468493527a53dc976bca1014d85` |
| 5 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--89c3c7a80dce44e369c38147.md) | 24 | `declaration-track:89c3c7a80dce44e369c38147ab37eedaa093603f6e3bf0fc1b2c1cef6ffe1200` |
| 6 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--d10b2cf73734fbf7ef419c85.md) | 25 | `declaration-track:d10b2cf73734fbf7ef419c85f3265517db89a44babc6a757d81819cf420733ab` |
| 7 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--b7fa12587419c3c9afcf191c.md) | 26 | `declaration-track:b7fa12587419c3c9afcf191c8d47b9a1d38482b69a3bdab0e0298ed00078e046` |
| 8 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--67bfb12b3a2f0d7087906aad.md) | 31 | `declaration-track:67bfb12b3a2f0d7087906aad02683f1de744c398ed3286b6c5c874b400b6a187` |
| 9 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--a64617e0ccef32028b8c039f.md) | 43 | `declaration-track:a64617e0ccef32028b8c039f108925fcca7d4fc962d19b3daf0a4a3b6c47125d` |
| 10 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--518a58453062dbb31c7a22c0.md) | 44 | `declaration-track:518a58453062dbb31c7a22c0f0912dab36c648619a87e803d0fa10eb82a60132` |
| 11 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--f10ac89d76ded49ab1a67342.md) | 45 | `declaration-track:f10ac89d76ded49ab1a67342256c1d032d1b875e853e50e533df7dbf61c4ea87` |
| 12 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--088bb5d0ea9e2ce2ff49532c.md) | 46 | `declaration-track:088bb5d0ea9e2ce2ff49532c5afa0a4cb6277e305e261b16d8ef67fb0920e06c` |
| 13 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--cd3835c352a095aa04241874.md) | 47 | `declaration-track:cd3835c352a095aa04241874e2f8c67f424738a0172b6b2c4fffb0a00af8842c` |
| 14 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--c620a3da309a76828db11e96.md) | 48 | `declaration-track:c620a3da309a76828db11e96fc755a918b48a2e738f3263a3cf811eff4a155a3` |
| 15 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--d3d6d89cc1758469ad318bef.md) | 49 | `declaration-track:d3d6d89cc1758469ad318befc7fffb6fedfe5d2316d2c185c82b987c9f8a41aa` |
| 16 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--1cca855d5944388d19db65ec.md) | 50 | `declaration-track:1cca855d5944388d19db65ecc2d632b282f6c2eec3a3b5fa15ed7459a2a82083` |
| 17 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--3ae2d6a7e223e5ab8e41c944.md) | 51 | `declaration-track:3ae2d6a7e223e5ab8e41c944977f4a2ea3412e5c68cacb360221c755c0745a7f` |
| 18 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--5aee92b63269b7271383a4a5.md) | 52 | `declaration-track:5aee92b63269b7271383a4a5db4334fe93889ece2d015ef26dbc7f410fb5121d` |
| 19 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--c619bb6ec87ab99f184aa86a.md) | 53 | `declaration-track:c619bb6ec87ab99f184aa86af240a2ea687c0a5c715dce143f8da88d16395b4a` |
| 20 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--967c55dc158b49f06f5af61d.md) | 54 | `declaration-track:967c55dc158b49f06f5af61dd299b76b90b784c6dc36c0fcde2120806d3a8985` |
| 21 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--cdef3a33028fefb0ef4aa623.md) | 60 | `declaration-track:cdef3a33028fefb0ef4aa62311d569b51b100710ac907723ea40b82522f0ae8f` |
| 22 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--18c31120e50555a8a1e4ec61.md) | 61 | `declaration-track:18c31120e50555a8a1e4ec61b408c95b43ec69b8ad5650fef217a47ed64a28ca` |
| 23 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--2c681d072e44b526be7af93a.md) | 62 | `declaration-track:2c681d072e44b526be7af93ab12b5f82f53adb967a592f9aa7a951d22874fb96` |
| 24 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--fe95bb7a73f748907bd4e668.md) | 63 | `declaration-track:fe95bb7a73f748907bd4e66890ec8207974e0e1857e8824d546bdb1c7ae41281` |
| 25 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--8fe15e1ea27839e4d7c4d985.md) | 64 | `declaration-track:8fe15e1ea27839e4d7c4d9851e54f57bac93f894670ab530632a0a251ffeebe4` |
| 26 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--195baf3d8b1e6b39461c991e.md) | 65 | `declaration-track:195baf3d8b1e6b39461c991e5e09e8786f67abd3a198c2d4428b5cc698ff0e78` |
| 27 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--a4aaa91b55fba3e139aca984.md) | 66 | `declaration-track:a4aaa91b55fba3e139aca9843115e197b2574f6950a5681256dcb270d915dbcd` |
| 28 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--026600439289b901cc0968e7.md) | 67 | `declaration-track:026600439289b901cc0968e779d716e3598456f68938cc7a80c410981d248cdf` |
| 29 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--d4f9b2f724dda2a4e9c326de.md) | 68 | `declaration-track:d4f9b2f724dda2a4e9c326dee5ce84b87603432b49ff3ab5c302942fe834573c` |
| 30 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--61ddb328ca9db6cc3e13e554.md) | 69 | `declaration-track:61ddb328ca9db6cc3e13e5546eb895446984d748c660df00704297b36e3139f8` |
| 31 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--fe8e80476a377a193ba76a4a.md) | 70 | `declaration-track:fe8e80476a377a193ba76a4a257c481e844f97d6c47190c3d11a0e722f30c85b` |
| 32 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--aca16f5c3d7ec8d625da19e5.md) | 71 | `declaration-track:aca16f5c3d7ec8d625da19e5d4782520e29f245f1a267b92bc7ac6b5026b5fe5` |
| 33 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--80a881c1238e908aeb125957.md) | 76 | `declaration-track:80a881c1238e908aeb125957485f108b8bd3b933d5bf1753bd557c564cc523a2` |
| 34 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--9313e903e2502b55515e76bb.md) | 77 | `declaration-track:9313e903e2502b55515e76bb21300231fe0f975054fd389ba87fc67110213587` |
| 35 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--3dc725f0c84c5fd426444968.md) | 78 | `declaration-track:3dc725f0c84c5fd426444968c533953c666ec10295801b60fcd3f346ba17ed7d` |
| 36 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--f0ce1130e87061e72d3f511d.md) | 79 | `declaration-track:f0ce1130e87061e72d3f511d064d7381dd84c7cf2e79c133dab2e000db2e3b12` |
| 37 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--95beeaaa0b9f47710d83b044.md) | 80 | `declaration-track:95beeaaa0b9f47710d83b044c0f46f5803e611a12bd6ac45145debab83ffd761` |
| 38 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--e4c4bb9f181d7b5939aaa901.md) | 81 | `declaration-track:e4c4bb9f181d7b5939aaa901913f56f73be0b618b9dc4238e3efc546a95858b8` |
| 39 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--256a63075316464cf2c081a3.md) | 82 | `declaration-track:256a63075316464cf2c081a3cc806167798ac51b7ed3aea715d385405d2466cf` |
| 40 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--89d6a464dda737663d5bf167.md) | 83 | `declaration-track:89d6a464dda737663d5bf16727ac4b471cc88f3e8ed01ce5100aa29de5e26b4c` |
| 41 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--2ec22b249ed2142d32f723fd.md) | 84 | `declaration-track:2ec22b249ed2142d32f723fda140409ec55d22462cb998da372b640589218152` |
| 42 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--a4432c613817c0e1739f1d60.md) | 85 | `declaration-track:a4432c613817c0e1739f1d60e01e3cc1fba1dd6cf85752c461e6ef31a1a6e2d1` |
| 43 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--e071db8446f05b12ad19d596.md) | 86 | `declaration-track:e071db8446f05b12ad19d5961ad06152bd38df317a12b8c0b08db626e9139efb` |
| 44 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--74d0f74ecc84a6c7c39302e0.md) | 87 | `declaration-track:74d0f74ecc84a6c7c39302e021a60528c0701e2b86c4787ce7500473018c3f83` |
| 45 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--4d5939ca6f441a4406e483d8.md) | 88 | `declaration-track:4d5939ca6f441a4406e483d8d88b72d33960152537b5bd7da14d0c913716b065` |
| 46 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--207094e9bf41845e6933fec2.md) | 89 | `declaration-track:207094e9bf41845e6933fec21a43152d520c49b429c96750a9bdf8454203e0bc` |
| 47 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--9999e3d12e0fb685a79f0da6.md) | 94 | `declaration-track:9999e3d12e0fb685a79f0da61cbe7d7389afcc1c70e35653138e7f5c46785777` |
| 48 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--0da5a24aed5bbe3d980a250f.md) | 95 | `declaration-track:0da5a24aed5bbe3d980a250f99fcddf9edd02ac30f0f7fd81ae2bc3014e2b1d6` |
| 49 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--d1c6384b19c561eab53603f2.md) | 96 | `declaration-track:d1c6384b19c561eab53603f2181433ab913c6b79c3b5014d47a4c47f20d8b88f` |
| 50 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--0e400d9ec7b16cea75f226a2.md) | 97 | `declaration-track:0e400d9ec7b16cea75f226a2b02c97c6fb8a2de87d1502d0ace302803ab78850` |
| 51 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--6eee9102a7c64a8d09a2153e.md) | 98 | `declaration-track:6eee9102a7c64a8d09a2153e659dc4dc62ea2f4294e934ca2536b39801d34f72` |
| 52 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--4540b8117a0588d65f841228.md) | 99 | `declaration-track:4540b8117a0588d65f8412286776235c6390d44ccf6b0f2b03399f6df606d6c4` |
| 53 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--c3f3d11b36f509b5bd6c2828.md) | 100 | `declaration-track:c3f3d11b36f509b5bd6c2828ab3fcf7bf25b69eec0e013fb5169a1c5adde94e9` |
| 54 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--d44f00f0995d5b66bcff0816.md) | 101 | `declaration-track:d44f00f0995d5b66bcff0816a7352a8c5efbe0bc8de38035feefc317e824516d` |
| 55 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--57088452696acb1eac181f1d.md) | 102 | `declaration-track:57088452696acb1eac181f1daa34c5335b11563fbf3641ad911c6ac66b41e2e4` |
| 56 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--a6315a0b739724ec6d43150f.md) | 103 | `declaration-track:a6315a0b739724ec6d43150f1594b7812e53c0b733ee4fa8a434f93fab141249` |
| 57 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--84ed0f48d14ef2d630265db8.md) | 104 | `declaration-track:84ed0f48d14ef2d630265db852be314b4fdde7cf173c8892f9087fe646f44a84` |
| 58 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--b4679cdbc33c313e61b1c904.md) | 105 | `declaration-track:b4679cdbc33c313e61b1c90417b341d1adf15f29f0c644ea755d634ca19d5e25` |
| 59 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--08ed3ecfc8aab64b90021f9e.md) | 106 | `declaration-track:08ed3ecfc8aab64b90021f9e728449b53d3875c345eb063d1ee30a9796dedc52` |
| 60 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--ee41d8bcbee79d8409729ed6.md) | 107 | `declaration-track:ee41d8bcbee79d8409729ed66ff7814245999e259d87e14d5aaf5b1a989e0995` |
| 61 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--6c177a11ab5187e52ea1f64c.md) | 108 | `declaration-track:6c177a11ab5187e52ea1f64cd5556cdcbc8f08cf628c4193e527b6a422583f93` |
| 62 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--2dfb517a37edd97e2b1d8678.md) | 109 | `declaration-track:2dfb517a37edd97e2b1d86787855828853d16a5a1b4c0694251d0a40071a328d` |
| 63 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--5bc145742e5b7913469c754b.md) | 110 | `declaration-track:5bc145742e5b7913469c754ba5161c958dcafd379037622b4c145ea7fd3f2598` |
| 64 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--97e84941dbda0ab37d495de8.md) | 111 | `declaration-track:97e84941dbda0ab37d495de8fd424c8420242b9fa7ba89d23d63bd4a9c8be2e9` |
| 65 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--fee3c3a2a3199d030473a56f.md) | 117 | `declaration-track:fee3c3a2a3199d030473a56f6993148d3f88698978c23e34b0f0c9e305907a7a` |
| 66 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--a4159cf07cbb978032dc26ee.md) | 125 | `declaration-track:a4159cf07cbb978032dc26ee0936015852e9e211be788f068338cfb314a31fcf` |
| 67 | `example` | [(anonymous)](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/example--8a28be54ebc4f48a56a4ad4a.md) | 134 | `declaration-track:8a28be54ebc4f48a56a4ad4a58c11da2ac4bd86eec4eec4fa03efa0f70a227e3` |
| 68 | `theorem` | [test_unknown_identifier](../../../../mathematics/Analysis/Basic/Variantf64b692a853fca566c47cb0efab98b3dd43e29efe8b6346ae32164510c02890a.lean/declarations/test-unknown-identifier--b5e6bed1423427b169944238.md) | 138 | `result-track:b5e6bed1423427b1699442385b55fbbbb19d76264e67e7f70fafded194128d29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
