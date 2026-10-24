# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.WalkCounting.Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "306289f93a83a0d02fd463ebfb20e8ab4438e574",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `306289f93a83a0d02fd463ebfb20e8ab4438e574`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lattice` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [set_walk_self_length_zero_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/set-walk-self-length-zero-eq--a7571997a66c4471e0796728.md) | 47 | `result-track:a7571997a66c4471e07967284eea9c8035acf9086a708cea9ad6e327a30cce8c` |
| 2 | `theorem` | [set_walk_length_zero_eq_of_ne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/set-walk-length-zero-eq-of-ne--611f8bab528eb7d1b0a9c960.md) | 51 | `result-track:611f8bab528eb7d1b0a9c960e5cf4cbc07d5ef4384be003e995f6fe050be6ff6` |
| 3 | `theorem` | [set_walk_length_succ_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/set-walk-length-succ-eq--2a368d8f70bc91b3a3a649a4.md) | 57 | `result-track:2a368d8f70bc91b3a3a649a4eae6e825021122b15806256817e96f46f11787f4` |
| 4 | `def` | [walkLengthTwoEquivCommonNeighbors](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/walklengthtwoequivcommonneighbors--112e6887c1ec9ee5ceaba3c0.md) | 75 | `declaration-track:112e6887c1ec9ee5ceaba3c0fdc1c19a50d7d6560ad14ee22effbd04d0afb5db` |
| 5 | `def` | [finsetWalkLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/finsetwalklength--e6250923eefd192bd56fc17b.md) | 93 | `declaration-track:e6250923eefd192bd56fc17bea5f69aba3f9a415c18287bae422d518b8c6a661` |
| 6 | `theorem` | [coe_finsetWalkLength_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/coe-finsetwalklength-eq--4890ec15d93ee071e10869e7.md) | 104 | `result-track:4890ec15d93ee071e10869e734865bd9212605f6781468cbf4dd9937fb4b37d4` |
| 7 | `theorem` | [mem_finsetWalkLength_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/mem-finsetwalklength-iff--084127364b421c0c9dfa361d.md) | 122 | `result-track:084127364b421c0c9dfa361de03ba5cd798ee2f63c4aed07b8967de0e20ed381` |
| 8 | `def` | [finsetWalkLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/finsetwalklengthlt--bee296bb7768a2c5d1467766.md) | 128 | `declaration-track:bee296bb7768a2c5d1467766c54ded93ad0cfb2cdd7340c6a2001721b7c2271e` |
| 9 | `theorem` | [coe_finsetWalkLengthLT_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/coe-finsetwalklengthlt-eq--453bd0e80880dfca9d066203.md) | 137 | `result-track:453bd0e80880dfca9d066203e592dc3b5611f923eec57e3e1a7c13208ba3679d` |
| 10 | `theorem` | [mem_finsetWalkLengthLT_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/mem-finsetwalklengthlt-iff--a2ad23e8313fbb96e538f079.md) | 143 | `result-track:a2ad23e8313fbb96e538f079cf301cb5880225f3e0505380f2169d2ab4bb32f9` |
| 11 | `instance` | [fintypeSetWalkLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/fintypesetwalklength--6154423fd7ce1ae2da80b9bc.md) | 147 | `declaration-track:6154423fd7ce1ae2da80b9bc47421ec943d735f002a915fa622477839d1edd8c` |
| 12 | `instance` | [fintypeSubtypeWalkLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/fintypesubtypewalklength--806ce3c0c57e47bd56a208d1.md) | 151 | `declaration-track:806ce3c0c57e47bd56a208d1b0c00d02c9a921bfec17053520d6973bd499582f` |
| 13 | `theorem` | [set_walk_length_toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/set-walk-length-tofinset-eq--467d235b3cd8313792fa776b.md) | 154 | `result-track:467d235b3cd8313792fa776b088d163cd0842831b5d5302d0f0e869703022967` |
| 14 | `theorem` | [card_set_walk_length_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/card-set-walk-length-eq--4b0359366e7f7ff20d1e4b15.md) | 161 | `result-track:4b0359366e7f7ff20d1e4b150b21f8994e8693eae58361760a9d6e18cdbaf861` |
| 15 | `instance` | [fintypeSetWalkLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/fintypesetwalklengthlt--bb5cfc5d04f431750e5176a6.md) | 166 | `declaration-track:bb5cfc5d04f431750e5176a6e30aeb27ec7335223b3c8989a4a7ef0dc159da91` |
| 16 | `instance` | [fintypeSubtypeWalkLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/fintypesubtypewalklengthlt--880231b6409d05f3c4950e82.md) | 170 | `declaration-track:880231b6409d05f3c4950e826548ea336bbf864bd2508d04687f8e0c65961bc0` |
| 17 | `instance` | [fintypeSetPathLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/fintypesetpathlength--fd56aa956ce19496a4edfd5d.md) | 173 | `declaration-track:fd56aa956ce19496a4edfd5d6b55b8b748af1a9b435e61aed1abd4a313ed15f1` |
| 18 | `instance` | [fintypeSubtypePathLength](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/fintypesubtypepathlength--b6602f3c6cc2ebc715e05770.md) | 178 | `declaration-track:b6602f3c6cc2ebc715e057703399b87e3e5980e818ab5730a60e6e9dcae71cfb` |
| 19 | `instance` | [fintypeSetPathLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/fintypesetpathlengthlt--d96305ac4f1fdee999446f42.md) | 182 | `declaration-track:d96305ac4f1fdee999446f4290ecd9e6eec67c5a1600d2353689b9541c05c96c` |
| 20 | `instance` | [fintypeSubtypePathLengthLT](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/fintypesubtypepathlengthlt--80acf89f6cee1936a099a73d.md) | 187 | `declaration-track:80acf89f6cee1936a099a73d0bb17f5c8d39ba57436ee297575eb9e30cd928a0` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/instance--948c0f24224f693e747edbf9.md) | 193 | `declaration-track:948c0f24224f693e747edbf9b93bd556bfad78c77c53ea97f5c3c7642067fa04` |
| 22 | `theorem` | [reachable_iff_exists_finsetWalkLength_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/reachable-iff-exists-finsetwalklength-nonempty--0c5a6f97331e3153ce91e274.md) | 199 | `result-track:0c5a6f97331e3153ce91e2746b615a30fd7401a6773bb66a05afbb531237de2c` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/instance--8c2eea8623ee37f5f772bf60.md) | 209 | `declaration-track:8c2eea8623ee37f5f772bf60127e6d2b0f9953dd5208d105e3032de44eaf5a1d` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/instance--e88ad8e2a50afaf93b739fdb.md) | 212 | `declaration-track:e88ad8e2a50afaf93b739fdbbb49fb4d05288c1a650897b9df6bb78092afc861` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/instance--493ab47aaa315f1bc6e975c6.md) | 215 | `declaration-track:493ab47aaa315f1bc6e975c6da62e54eeacbadca21b1e5fa15565c161837a329` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/instance--1af377fa73bfbadd2c5dd87f.md) | 218 | `declaration-track:1af377fa73bfbadd2c5dd87f155b1d2cd0c5c542646fa9e2e43a0b198f2f30be` |
| 27 | `instance` | [Path.instFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/path-instfintype--9198e2b2406ee58f05105a71.md) | 222 | `declaration-track:9198e2b2406ee58f05105a71cb67dabb7ef412f2594a8b20097cc3d4b68ceafa` |
| 28 | `instance` | [instDecidableMemSupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/instdecidablememsupp--b709377b74b5432ed82a6e33.md) | 230 | `declaration-track:b709377b74b5432ed82a6e33c2b03eddbf7977b7ce75bc8365545944f7bcb384` |
| 29 | `lemma` | [disjiUnion_supp_toFinset_eq_supp_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/disjiunion-supp-tofinset-eq-supp-tofinset--a502b11bcdff5cc4ae5004a1.md) | 235 | `result-track:a502b11bcdff5cc4ae5004a1b3d3795ae16bd085633d32c778d037188443b49f` |
| 30 | `abbrev` | [oddComponents](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/oddcomponents--193fe10a6b972f0ce066e909.md) | 247 | `declaration-track:193fe10a6b972f0ce066e909786b5289a03128a99b5e3cceb6985c7ca5a85ef2` |
| 31 | `lemma` | [ConnectedComponent.odd_oddComponents_ncard_subset_supp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/connectedcomponent-odd-oddcomponents-ncard-subset-supp--a9be5dd9d5ec4bc25436c76e.md) | 249 | `result-track:a9be5dd9d5ec4bc25436c76e8721361cdc03bb43f810c78ed67e354d5c8951c1` |
| 32 | `lemma` | [odd_ncard_oddComponents](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/odd-ncard-oddcomponents--62bb7fa94cd97498ee55ca7d.md) | 263 | `result-track:62bb7fa94cd97498ee55ca7d97a6da9a4711745ceccffadec9d71219f0f58f48` |
| 33 | `lemma` | [ncard_oddComponents_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/WalkCounting/Variant1c1c62e3696dab8bf3cbf70fc8a3943e535cba0e1886875dc8bb4a0e86e07b70.lean/declarations/ncard-oddcomponents-mono--8421d14db89bbf4611d8c8c4.md) | 276 | `result-track:8421d14db89bbf4611d8c8c49a7dcbb309a5836608e4942555aabf5f29f06205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
