# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Random.Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18cb379acfac9898cca127853c85d8880ede7d5c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18cb379acfac9898cca127853c85d8880ede7d5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.ULiftable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RandGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/randgt--a48acc0231b406a6b9b6fc8b.md) | 42 | `declaration-track:a48acc0231b406a6b9b6fc8b93f60a6bcc71f0b414ccf40e52c92e437663c97d` |
| 2 | `abbrev` | [RandG](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/randg--d64f39e0d1cfe326f5920b82.md) | 44 | `declaration-track:d64f39e0d1cfe326f5920b82ff83a6b3b08c4c6f7b7132796e207b7214a9f913` |
| 3 | `abbrev` | [RandT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/randt--7a26fcc7bd1907239cacb704.md) | 48 | `declaration-track:7a26fcc7bd1907239cacb704d393aba93b545cc5e61bc35459155d33d4d7a1ce` |
| 4 | `abbrev` | [Rand](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/rand--ee59a1117d2c19facb29978e.md) | 51 | `declaration-track:ee59a1117d2c19facb29978eabf943cdfaff5ab9360b7df14c2454ddaa2f2c04` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/instance--e7de1161eac9b7838dc5e7fa.md) | 53 | `declaration-track:e7de1161eac9b7838dc5e7fa7d2fc7735c41095598046708cd9756922d76ddc3` |
| 6 | `class` | [Random](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/random--770d02a635b635fa1a0e56a5.md) | 59 | `declaration-track:770d02a635b635fa1a0e56a5305b6dd61fc01fb8e480c2b985b8d3cf7fb5f9e8` |
| 7 | `class` | [BoundedRandom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/boundedrandom--fd2f9fb7e192b0bbc835e3cc.md) | 65 | `declaration-track:fd2f9fb7e192b0bbc835e3cc508501e0eba312738c0ac22ab27a3d4cadd7b152` |
| 8 | `def` | [next](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/next--06990ce5f868591f1e9e9672.md) | 71 | `declaration-track:06990ce5f868591f1e9e9672b9513eb81a1d5bd4ee18a0373d06cf0917ede211` |
| 9 | `def` | [split](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/split--058ed9e1411846d5d45eca7b.md) | 78 | `declaration-track:058ed9e1411846d5d45eca7be02e015fd8760e2365f0103d5e651cfd4c26c150` |
| 10 | `def` | [range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/range--9e257e51f85ed4d2971b4bd3.md) | 85 | `declaration-track:9e257e51f85ed4d2971b4bd3cdf6142d48b23582b2362f91aa6c81ddb50fcd5f` |
| 11 | `def` | [rand](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/rand--bd042b8888e1fcd46cd03240.md) | 97 | `declaration-track:bd042b8888e1fcd46cd03240a89383a1253cff0adc53521dd45e2d138340f8ed` |
| 12 | `def` | [randBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/randbound--5d45322d891309a27767ec7a.md) | 100 | `declaration-track:5d45322d891309a27767ec7ab261ab6b8283ef27491cbf6ed72c43bb6dd1ec52` |
| 13 | `def` | [randFin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/randfin--3393f44ea9f28a6974f475b6.md) | 106 | `declaration-track:3393f44ea9f28a6974f475b68f91a8070ee9d912981c93bdb550a02073358233` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/instance--9561b65e9b8e45bfa22e503e.md) | 109 | `declaration-track:9561b65e9b8e45bfa22e503ec549f42df46c4f2f7cf5eb22bfefb6c5d3a5f68a` |
| 15 | `def` | [randBool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/randbool--190e0705cddd9800d1df7264.md) | 113 | `declaration-track:190e0705cddd9800d1df7264f46b868bb2c4227c0254329eb878688869578b51` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/instance--6e987322c752fee6b9261638.md) | 116 | `declaration-track:6e987322c752fee6b92616384bad7696a0392fc8cc48744b4bdd355fe34667a6` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/instance--a6f8a57a6beb393b666d5e2f.md) | 119 | `declaration-track:a6f8a57a6beb393b666d5e2f52108a6f53f4c304d4dcd09c224d59e2290cd6c5` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/instance--d8ec332e4bc95adf94dd2ce5.md) | 122 | `declaration-track:d8ec332e4bc95adf94dd2ce591a6b41b08e6c634c83cbf3075c2ecda121faf37` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/instance--f9659bd92e8ae3b682391f3c.md) | 130 | `declaration-track:f9659bd92e8ae3b682391f3c243b41600863b0b947780c5cbf941e0275202cf4` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/instance--adcda76a780b2a76e62ba344.md) | 140 | `declaration-track:adcda76a780b2a76e62ba34481ecf833afa053408037a86065912b944f708b2d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/instance--3b865aad47d1c4bfaaec8dbe.md) | 145 | `declaration-track:3b865aad47d1c4bfaaec8dbe87e4123e95ab59a05edf4e7fba18cd541e9afe03` |
| 22 | `def` | [runRand](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/runrand--d19b72af7593a28a08abc3ca.md) | 167 | `declaration-track:d19b72af7593a28a08abc3ca48e722942682707f2fea42d55b67018d1cc4d312` |
| 23 | `def` | [runRandWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variant4a81aef2f430e95e44dc926971f67027de88cb3ea0377a04807bde9325036360.lean/declarations/runrandwith--da84c7d5346971a58f6cb434.md) | 174 | `declaration-track:da84c7d5346971a58f6cb434a2913264484688df29ec02eb38cb3f6f03f54a98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
