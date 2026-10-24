# Verification target: GRWTSK.Algebra.UniversalAlgebra.Free.Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13c8ab93df35818a51041602c5a1c49e681c91ed",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13c8ab93df35818a51041602c5a1c49e681c91ed`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeNonUnitalNonAssocAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.NonUnitalNonAssocAlgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.UniversalEnveloping` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/rel--7c82bfc4777be38451576f2c.md) | 74 | `declaration-track:7c82bfc4777be38451576f2ce15fe31e980c194398e076cc78712fdb902c675c` |
| 2 | `theorem` | [Rel.addLeft](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/rel-addleft--7da29c4a375f4f30c2bb3b31.md) | 84 | `result-track:7da29c4a375f4f30c2bb3b310b6c917a32f1c152777b8e245c702eb8f7f3da50` |
| 3 | `theorem` | [Rel.neg](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/rel-neg--970f04e18818496b3e18dc43.md) | 87 | `result-track:970f04e18818496b3e18dc43cf1d91d3fef9b2b6e7f05c69dd723c5139d055cd` |
| 4 | `theorem` | [Rel.subLeft](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/rel-subleft--7a999a30a4c10260a517d3eb.md) | 90 | `result-track:7a999a30a4c10260a517d3eb376ba103b0794811f8be547305346c0621072289` |
| 5 | `theorem` | [Rel.subRight](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/rel-subright--4fa85bd91d54c8d6a9449492.md) | 93 | `result-track:4fa85bd91d54c8d6a94494924023429d6ed23e2e0e8d7480fedcaf889565d69c` |
| 6 | `theorem` | [Rel.smulOfTower](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/rel-smuloftower--b81b938f7451ff1b914d8ed7.md) | 96 | `result-track:b81b938f7451ff1b914d8ed7c59b734a66d7be7065c06f0a7105de28dbb7320e` |
| 7 | `def` | [FreeLieAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/freeliealgebra--d2182813f99c2bcaa44df35a.md) | 117 | `declaration-track:d2182813f99c2bcaa44df35a5bfc23b143ca5ee61060a57b76591b4ba5f594d7` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--447d8864b423f73c591cadcd.md) | 120 | `declaration-track:447d8864b423f73c591cadcd4ec0f71c4476b8c86a7029f065147f28b7aa4d1e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--2fed58db4cf972ef921ddf0c.md) | 124 | `declaration-track:2fed58db4cf972ef921ddf0c5030ef202b9de1dde024ad7faf01e8c01a47d5b2` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--c9430e7299108be14afbeb20.md) | 127 | `declaration-track:c9430e7299108be14afbeb208e47edd2b145009cfda3103dee16fc5af0be7688` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--91e951c22ce2074c86e05bec.md) | 131 | `declaration-track:91e951c22ce2074c86e05becebfd1505d650a09859101401706e730962040fcf` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--589948ef85114a3e1ad43a56.md) | 133 | `declaration-track:589948ef85114a3e1ad43a5672d94e62bf17628775a61b723945bd97f1d3ad83` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--ee1fdd26c06504bce85d3c2b.md) | 136 | `declaration-track:ee1fdd26c06504bce85d3c2bd8f319ef4ee348884510e723fe3bca3acdfc6d56` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--5cf37552dfb1029ae8407892.md) | 138 | `declaration-track:5cf37552dfb1029ae8407892a06e13147195154e7d038d8971c4e52ab7cb020c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--26a37ee11d773703c43ac51d.md) | 141 | `declaration-track:26a37ee11d773703c43ac51d41f94f7e201751c6d12bc456f923c16e760d1e69` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--a0f2e13343597b2c40df765a.md) | 145 | `declaration-track:a0f2e13343597b2c40df765a068919c6155f24f88af6ebf93122d077d9d2fb27` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--ecbab2562ef955f57414e156.md) | 148 | `declaration-track:ecbab2562ef955f57414e156fa1342e2512d2c63ac01385648203a3869af9002` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--adc134b6088e7e50e0ac40f3.md) | 152 | `declaration-track:adc134b6088e7e50e0ac40f314d1c71950f990bbe3f346de44607c198e03c6af` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--07126a8fe7ecf978713c6e97.md) | 159 | `declaration-track:07126a8fe7ecf978713c6e978865a7a6b147ed7bf51565a7e869eec1b6cd6adf` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/instance--6a99efe06a7135e52f2368f4.md) | 166 | `declaration-track:6a99efe06a7135e52f2368f482ac6e19fc67bb2adf92a9e6b37f30511437f6d6` |
| 21 | `def` | [of](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/of--36ffbd94e5c85ee9654fa164.md) | 176 | `declaration-track:36ffbd94e5c85ee9654fa16446defca18e4e52dc2f89aab7b94bee4bcb7c96d2` |
| 22 | `def` | [liftAux](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/liftaux--7cdaf02325dc8856153fc2ef.md) | 181 | `declaration-track:7cdaf02325dc8856153fc2efb4b7415ff52e29371aa8eb009d125204e4d6b1b5` |
| 23 | `theorem` | [liftAux_map_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/liftaux-map-smul--0929b853af11476087700025.md) | 184 | `result-track:0929b853af11476087700025dc51485ab25fd7909a4491dcf60095f1587a551b` |
| 24 | `theorem` | [liftAux_map_add](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/liftaux-map-add--0cb632385bf8c4850ca6b417.md) | 188 | `result-track:0cb632385bf8c4850ca6b4177ebbd204da95511d620e019f6a740730613922bf` |
| 25 | `theorem` | [liftAux_map_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/liftaux-map-mul--b247a61f13239c7b07364427.md) | 192 | `result-track:b247a61f13239c7b07364427f46d1f84ab335438e9954f0c19447abc5ba1acc9` |
| 26 | `theorem` | [liftAux_spec](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/liftaux-spec--fd73ca30be1b84993bf8d216.md) | 196 | `result-track:fd73ca30be1b84993bf8d2160a7f966954dc034aea48ea572cba03729dbcf484` |
| 27 | `def` | [mk](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/mk--cab3288c317310db7efcda23.md) | 208 | `declaration-track:cab3288c317310db7efcda23628ee8eec9e9c3fda55b4f637f88b0c68635f414` |
| 28 | `def` | [lift](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/lift--bb0846df6388a1f6921bc71d.md) | 217 | `declaration-track:bb0846df6388a1f6921bc71de1c84b2339dc8f1faae4fb787276c38b1184b8e4` |
| 29 | `theorem` | [lift_symm_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/lift-symm-apply--2f1c8e264228e6654b6d102f.md) | 233 | `result-track:2f1c8e264228e6654b6d102ffdfb5a8a5fb1aa51263a6401cec8f2f53dbaf00a` |
| 30 | `theorem` | [of_comp_lift](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/of-comp-lift--eab938d9b53e5d5edf8e6cdf.md) | 238 | `result-track:eab938d9b53e5d5edf8e6cdfdb998be9035916c8c3f982230c3334566ade177e` |
| 31 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/lift-unique--e614fbd7de5c11ce8a226221.md) | 241 | `result-track:e614fbd7de5c11ce8a2262210256cd98c45d4e8a73fde2c7cf70428e3ad43191` |
| 32 | `theorem` | [lift_of_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/lift-of-apply--2c7893c6cdb5f3ce520f55a4.md) | 245 | `result-track:2c7893c6cdb5f3ce520f55a49c67b4acf7c6293ab1b1eda7630f223dbd8814eb` |
| 33 | `theorem` | [lift_comp_of](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/lift-comp-of--35ddc3e24e635f9fd02191f9.md) | 249 | `result-track:35ddc3e24e635f9fd02191f93ca5fc59781acb8744ab0c2b75db0767cd675019` |
| 34 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/hom-ext--f20777a0f1a13bc2c3afff02.md) | 253 | `result-track:f20777a0f1a13bc2c3afff0258e1e3794f77d53f5715c4e6fb1f1269cb521c26` |
| 35 | `def` | [universalEnvelopingEquivFreeAlgebra](../../../../../mathematics/Algebra/UniversalAlgebra/Free/Variant9cbd31d583249097152a689b7360fe0d3f178a72bea15875eb123ebb9b4e1880.lean/declarations/universalenvelopingequivfreealgebra--71918dd00cc9bb32c62734cc.md) | 263 | `declaration-track:71918dd00cc9bb32c62734ccbb11dcb6f73e9830905be87fcf9f47aea1215cdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
