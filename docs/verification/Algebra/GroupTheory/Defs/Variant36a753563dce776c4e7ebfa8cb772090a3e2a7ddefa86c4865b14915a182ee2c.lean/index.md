# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "064cc275209f146aa9600df25cfa63f10ce33dc8",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `064cc275209f146aa9600df25cfa63f10ce33dc8`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nat.unaryCast](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/nat-unarycast--999e20d9dc989918ffe3e9bb.md) | 30 | `declaration-track:999e20d9dc989918ffe3e9bbf31865e5a0c96d33c6877e86930ec4a0e93114e2` |
| 2 | `class` | [Nat.AtLeastTwo](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/nat-atleasttwo--ffa36f8268d71856c55fd3a1.md) | 44 | `declaration-track:ffa36f8268d71856c55fd3a1ee5d8412722d7e520b258050f5aab39d87720b8e` |
| 3 | `instance` | [instNatAtLeastTwo](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/instnatatleasttwo--28bca441ff47a523427783cf.md) | 47 | `declaration-track:28bca441ff47a523427783cfe39abc43dd75d0d715e8de1b4684ebd2b76bf348` |
| 4 | `instance` | [instOfNat](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/instofnat--4b8dc9787f55268aa5e0de69.md) | 55 | `declaration-track:4b8dc9787f55268aa5e0de69f7fb3801d9073d0cd2d8e9d3a3ba5a0ff62eda7a` |
| 5 | `theorem` | [Nat.cast_ofNat](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/nat-cast-ofnat--a2e31d395912b9b03029fbea.md) | 58 | `result-track:a2e31d395912b9b03029fbeab69e7b1f06c378897a210e76eba093c6570cc689` |
| 6 | `theorem` | [Nat.cast_eq_ofNat](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/nat-cast-eq-ofnat--f3b019b08694d2ec1e7c4076.md) | 61 | `result-track:f3b019b08694d2ec1e7c40768f37ff9c285f29192db6fcf9aa5b4fbe9219ca1b` |
| 7 | `class` | [AddMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/addmonoidwithone--b0fa9b387b25d4cd01adb13d.md) | 67 | `declaration-track:b0fa9b387b25d4cd01adb13dc3705960d59eece305e09ac331db880bf766c673` |
| 8 | `class` | [AddCommMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/addcommmonoidwithone--ea4033c1bf3f2ce86fc1d4b9.md) | 81 | `declaration-track:ea4033c1bf3f2ce86fc1d4b9e743e0e7ed0e293db04a9a05a0c14b33ac9f2e8b` |
| 9 | `theorem` | [cast_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/cast-zero--f7eecbf252147ae18322eaa0.md) | 106 | `result-track:f7eecbf252147ae18322eaa01831afbcf68358f7f8065c9a6858783648987a7c` |
| 10 | `theorem` | [cast_succ](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/cast-succ--d082f98a7c7d6577d39efe8f.md) | 114 | `result-track:d082f98a7c7d6577d39efe8fa2f67c8b0cb6255474cb572f8edd6261c80c1d60` |
| 11 | `theorem` | [cast_add_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/cast-add-one--21c288a2523a3e2215ca8888.md) | 118 | `result-track:21c288a2523a3e2215ca88880abb4f6cfe877a9cf4ba8ebd2904255854468199` |
| 12 | `theorem` | [cast_ite](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/cast-ite--faa6e4afdb4d0402d62944bf.md) | 123 | `result-track:faa6e4afdb4d0402d62944bf46dacf495d1fbe9aa52c36b6f8cd85b348831585` |
| 13 | `theorem` | [cast_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/cast-one--9c25a7ecd54920df18c83d8f.md) | 133 | `result-track:9c25a7ecd54920df18c83d8f6229f4fae3269d9bfd53ba04a64040fe23d33140` |
| 14 | `theorem` | [cast_add](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/cast-add--2bcf62b4f628203acb486538.md) | 138 | `result-track:2bcf62b4f628203acb4865385b1e0bd003fafc8ac45454d2d4f070c636d0bc21` |
| 15 | `def` | [binCast](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/bincast--cb91546e232c2e7fc74ba11e.md) | 143 | `declaration-track:cb91546e232c2e7fc74ba11ee74bd6f6c6baee4a855928574dd60cd4f2943b67` |
| 16 | `theorem` | [binCast_eq](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/bincast-eq--990b9638ac082d277824a6ab.md) | 152 | `result-track:990b9638ac082d277824a6ab8e0ab0937c7d403c3d0b5f724600fa4322b2b2c2` |
| 17 | `theorem` | [cast_bit0](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/cast-bit0--c8533ad744a56def2ebafc2e.md) | 174 | `result-track:c8533ad744a56def2ebafc2ecbb6c314e7b06020736ccac66492460e9e163e9c` |
| 18 | `theorem` | [cast_bit1](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/cast-bit1--0030a367f8437d2e62a2f1b7.md) | 179 | `result-track:0030a367f8437d2e62a2f1b7781a541587119d148f63865293baaf54da6e42cc` |
| 19 | `theorem` | [cast_two](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/cast-two--91ddb296c3f94043adcbb86e.md) | 185 | `result-track:91ddb296c3f94043adcbb86ec53cf177b7f01d01609e01f93e195ba11b5ffd42` |
| 20 | `def` | [AddMonoidWithOne.unary](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/addmonoidwithone-unary--8f65ac0a0c1c1750ded9512a.md) | 194 | `declaration-track:8f65ac0a0c1c1750ded9512a91b59f6e599887341752498cf1c4f8e03baf4ec9` |
| 21 | `def` | [AddMonoidWithOne.binary](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/addmonoidwithone-binary--b1a72eee3a67353a29329344.md) | 200 | `declaration-track:b1a72eee3a67353a29329344f6fb0cc5705aef16ceaad4c25f2cb2a4dab64317` |
| 22 | `lemma` | [natCast_ne](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/natcast-ne--2e8027160caaee222496b908.md) | 212 | `result-track:2e8027160caaee222496b9088a7c79812f6257fe81da29aa25df1cfd5634920f` |
| 23 | `lemma` | [of_neZero_natCast](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/of-nezero-natcast--b77be35de8c3afaedb1984ad.md) | 216 | `result-track:b77be35de8c3afaedb1984ad4a4775d7c02f3ecd4c6dd84847da89be47a07ebc` |
| 24 | `lemma` | [pos_of_neZero_natCast](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/pos-of-nezero-natcast--d085c5fb2af469a287c99501.md) | 220 | `result-track:d085c5fb2af469a287c99501ef07a53421415538cd24dcbcd98f92ec9466a9b8` |
| 25 | `theorem` | [one_add_one_eq_two](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/one-add-one-eq-two--32d8b853335c632726110fe9.md) | 226 | `result-track:32d8b853335c632726110fe94e6a0e4e34ca66a4b4e66c683947871753c4f11e` |
| 26 | `theorem` | [two_add_one_eq_three](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/two-add-one-eq-three--151a953ae2abbf42df109d6d.md) | 232 | `result-track:151a953ae2abbf42df109d6dac6b1d73043557ce580bdef38d43d388cdaa1698` |
| 27 | `theorem` | [three_add_one_eq_four](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/declarations/three-add-one-eq-four--a2f5d4b1ad95658acd3410d7.md) | 237 | `result-track:a2f5d4b1ad95658acd3410d742b08eb7e76951363ee336e1fdd608a1be5d2c66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
