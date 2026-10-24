# Verification target: GRWTSK.Topology.GeneralTopology.Constructions.Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f71ff27810f81ee9c2c95418985556d170340ab",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f71ff27810f81ee9c2c95418985556d170340ab`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Prod.instBornology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/prod-instbornology--0b509403aab6eb901d5c6272.md) | 25 | `declaration-track:0b509403aab6eb901d5c6272209a345a729566282abf4e3b16f75cae90cf97b9` |
| 2 | `instance` | [Pi.instBornology](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/pi-instbornology--5a8b6584c632137b30ab28ea.md) | 30 | `declaration-track:5a8b6584c632137b30ab28ea253df6c960b29de88ea2424d65410d18dbb1623c` |
| 3 | `abbrev` | [Bornology.induced](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/bornology-induced--f9947b211f07bef1176b3eaa.md) | 35 | `declaration-track:f9947b211f07bef1176b3eaa5010460be74e89e1c5d4768ddeee1b517ece7ffe` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--66c0cc0b2a7d2155b2298281.md) | 39 | `declaration-track:66c0cc0b2a7d2155b2298281caace8354533bb342a52dcf83c3098912f2d7d36` |
| 5 | `theorem` | [cobounded_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/cobounded-prod--1ce6a89b8022e7b866b41720.md) | 49 | `result-track:1ce6a89b8022e7b866b417206e54a8f13ae37017fcf4090fcb547aedd8922fe5` |
| 6 | `theorem` | [isBounded_image_fst_and_snd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-image-fst-and-snd--3eb82313423909cffb487b17.md) | 52 | `result-track:3eb82313423909cffb487b171a815f3f13047ed2670f3ddd8953524613f052f6` |
| 7 | `lemma` | [IsBounded.image_fst](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-image-fst--b023137df445bd7a85317ea3.md) | 56 | `result-track:b023137df445bd7a85317ea3e15366c44e1aa80bcda620ae05c81ec17dd8a83a` |
| 8 | `lemma` | [IsBounded.image_snd](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-image-snd--10ef81f8afce042b2810fa1e.md) | 59 | `result-track:10ef81f8afce042b2810fa1eb61c4ae81fd65255a4fef0021f07680c3c43035d` |
| 9 | `theorem` | [IsBounded.fst_of_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-fst-of-prod--2e246474cfd9055a88873d7c.md) | 64 | `result-track:2e246474cfd9055a88873d7c441778351e156a8b77cb8bbca81259d5d259ed54` |
| 10 | `theorem` | [IsBounded.snd_of_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-snd-of-prod--f9e62a6b25f0586017d9dd00.md) | 67 | `result-track:f9e62a6b25f0586017d9dd00aebaf3bea77ec9371be4a478447e32123c30839c` |
| 11 | `theorem` | [IsBounded.prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-prod--f1fe84445a0756db6c5e2492.md) | 70 | `result-track:f1fe84445a0756db6c5e2492dea085043ddabb31cd2d40545c7e3ab516c8a075` |
| 12 | `theorem` | [isBounded_prod_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-prod-of-nonempty--974bb4f916278cde8280d460.md) | 74 | `result-track:974bb4f916278cde8280d4609aa940f6f8c6efc5fce2d85dd0154f22ce0ab75a` |
| 13 | `theorem` | [isBounded_prod](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-prod--816d206c0c5d0ba76f410d13.md) | 78 | `result-track:816d206c0c5d0ba76f410d133e9ff9a116fe4024a16cd8515056a6b072d9e3d2` |
| 14 | `theorem` | [isBounded_prod_self](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-prod-self--6116008b09e3091e1fbc1249.md) | 83 | `result-track:6116008b09e3091e1fbc12493f52324a7f4bb55c28ea9ce60c39845c5838f31f` |
| 15 | `theorem` | [cobounded_pi](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/cobounded-pi--d3105410191b9718f2dd2c30.md) | 92 | `result-track:d3105410191b9718f2dd2c309a0da05949a504cce767c671fdb0ede7ac94c2bd` |
| 16 | `theorem` | [forall_isBounded_image_eval_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/forall-isbounded-image-eval-iff--2330200e960450460745fa43.md) | 95 | `result-track:2330200e960450460745fa4359c67bf3c62969e3484ed93344f8b45a930fe312` |
| 17 | `lemma` | [IsBounded.image_eval](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-image-eval--2e3cfe2203df9974cdf76c1c.md) | 99 | `result-track:2e3cfe2203df9974cdf76c1cde95b9fe0b836b61257c18a141157374ccc4579b` |
| 18 | `theorem` | [IsBounded.pi](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-pi--76f49e06de27fa47347f4341.md) | 103 | `result-track:76f49e06de27fa47347f434163a022dd853e9850f959e23d82073f42d9e20f78` |
| 19 | `theorem` | [isBounded_pi_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-pi-of-nonempty--dddccd7cff54ea661249acc4.md) | 106 | `result-track:dddccd7cff54ea661249acc4ffa4864024104b3e3033386c5ecf5edd326f9fb3` |
| 20 | `theorem` | [isBounded_pi](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-pi--f5737ddda4549e78375936ea.md) | 110 | `result-track:f5737ddda4549e78375936eaa3730bdfdca99f85cafee7b985d24c9b65b64537` |
| 21 | `theorem` | [isBounded_induced](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-induced--d3ca5e3548ba7b7e148c825d.md) | 122 | `result-track:d3ca5e3548ba7b7e148c825d1cc58ada4d14f3b235cd99a6f5385d6cc6188fe2` |
| 22 | `theorem` | [isBounded_image_subtype_val](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/isbounded-image-subtype-val--4db825beffe5058d9a7967c0.md) | 126 | `result-track:4db825beffe5058d9a7967c084968df0296436f751584be914564317a86a8b85` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--70b82e9daea9260c56a3e99d.md) | 139 | `declaration-track:70b82e9daea9260c56a3e99d477bd95690faaa25443427326871d90b7fea10a9` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--bcfce6ea27898a2ad94a3ca3.md) | 142 | `declaration-track:bcfce6ea27898a2ad94a3ca3d0ac6aa6353e248ca0c7f121671e72f01816becb` |
| 25 | `theorem` | [boundedSpace_induced_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/boundedspace-induced-iff--470e04310236ca3fb6094057.md) | 145 | `result-track:470e04310236ca3fb6094057bb538ef7b5b46e57f386b05d72081339e6c5ff9b` |
| 26 | `theorem` | [boundedSpace_subtype_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/boundedspace-subtype-iff--5d4ddcaa66a4ecf78518aeae.md) | 149 | `result-track:5d4ddcaa66a4ecf78518aeae7b0d42b2c437c4e460f828a3e3b9c22275037aae` |
| 27 | `theorem` | [boundedSpace_val_set_iff](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/boundedspace-val-set-iff--486eb995c5e7a316caabdf47.md) | 153 | `result-track:486eb995c5e7a316caabdf4714cf8dcccd52f8b27035e82d7df0f2444946f2b7` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--98bd2f57d2df0257f89462d4.md) | 160 | `declaration-track:98bd2f57d2df0257f89462d4c3570478f4c55937ea1ead92aa11d02d2537ebcf` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--0771c631b0ee0cd8fc45e28f.md) | 170 | `declaration-track:0771c631b0ee0cd8fc45e28f40300382e3f7e19b9daed35b5eb4e97baab82c82` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--9a3effa9cc30f1ca200441ae.md) | 173 | `declaration-track:9a3effa9cc30f1ca200441ae8c58ed9ca4fcea768b70e2af194e3bce958ddc8a` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--57c81432b91333e406bbf3fd.md) | 176 | `declaration-track:57c81432b91333e406bbf3fd57ff4bccdc700d06ef8e939f7d9ab57eb3268928` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--462dc26c9e625fa48822cf4c.md) | 179 | `declaration-track:462dc26c9e625fa48822cf4c9d0ea13f8e5af72c2a3d981b7617f12e4cb28a22` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--672fdff4e8833f8ea5de7e6d.md) | 189 | `declaration-track:672fdff4e8833f8ea5de7e6d260c4b90b3a4cb31b7d309ba1cba52968dcee18b` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Constructions/Variant139b59edfad0d482c586f64941d243580e6ed7203fe22011260197f174346e19.lean/declarations/instance--2207557c6888e17ce4e80670.md) | 192 | `declaration-track:2207557c6888e17ce4e80670d388c2dbe8e6d814bf1166fbd9532834c0d38818` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
