# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.MStructure.Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7c99c4a22ea1bb17dc0ce8f39986f088c3dffc8",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7c99c4a22ea1bb17dc0ce8f39986f088c3dffc8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Idempotent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsLprojection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/islprojection--05a675de10abd669107ddef1.md) | 71 | `declaration-track:05a675de10abd669107ddef19a01329aa86be245ec1145de7b49a76629b3bd44` |
| 2 | `structure` | [IsMprojection](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/ismprojection--202d18fbdf415588e58b7ef2.md) | 80 | `declaration-track:202d18fbdf415588e58b7ef22fa3d2e451172e36d3f1594606fae3985fa67b14` |
| 3 | `theorem` | [Lcomplement](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/lcomplement--ad8fdfe1857c90b11e0e9baf.md) | 89 | `result-track:ad8fdfe1857c90b11e0e9baf21ad8d8d9672cbfb446a52e5ade6930e0787a558` |
| 4 | `theorem` | [Lcomplement_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/lcomplement-iff--ebc11dc7d1e25395e53e04b0.md) | 94 | `result-track:ebc11dc7d1e25395e53e04b075eb047948b2dd99e355f854fd7462d5beda76fc` |
| 5 | `theorem` | [commute](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/commute--049f93fb4d8501ca976dc9cc.md) | 97 | `result-track:049f93fb4d8501ca976dc9cc86e6522569d8bf54a7c55988e2333c64f406359a` |
| 6 | `theorem` | [mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/mul--9f1ec85187952ac90069d43c.md) | 136 | `result-track:9f1ec85187952ac90069d43c1b957fe170e7647c19909fed584d4afd73b191c8` |
| 7 | `theorem` | [join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/join--4a571a27e27d3d9f386a68de.md) | 153 | `result-track:4a571a27e27d3d9f386a68dee58c180451a5d58b45617da245f42e0dfb9784c5` |
| 8 | `instance` | [Subtype.hasCompl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-hascompl--eb2da3275b491f44b92e8e59.md) | 158 | `declaration-track:eb2da3275b491f44b92e8e59db5ae0c32126ee8b421f7ee24eb7e62c5653a422` |
| 9 | `theorem` | [coe_compl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/coe-compl--ff6dd4c337ccb74b9701071e.md) | 162 | `result-track:ff6dd4c337ccb74b9701071e58cb9004e57ea439d7a107024ede78804db82d95` |
| 10 | `instance` | [Subtype.inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-inf--b33c6ce4c5826600ea46f0be.md) | 165 | `declaration-track:b33c6ce4c5826600ea46f0be4607c9c8e34f3f294b7f6899aedd2984a57f0fbb` |
| 11 | `theorem` | [coe_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/coe-inf--98f248409378659cfe782a0e.md) | 169 | `result-track:98f248409378659cfe782a0ee80c962311879a91d869f71d5b64a4c799ff8a25` |
| 12 | `instance` | [Subtype.sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-sup--21905795073ff0d8fbffc0a6.md) | 173 | `declaration-track:21905795073ff0d8fbffc0a696b3aaa4a1fa4423b978f3a182d0021a4b12d72f` |
| 13 | `theorem` | [coe_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/coe-sup--f676ecfa0787abc4223b7b88.md) | 177 | `result-track:f676ecfa0787abc4223b7b88e370110c9690f3fab625cfc232d98f53452d1fb1` |
| 14 | `instance` | [Subtype.sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-sdiff--7041b94bc4153b3f242128c7.md) | 181 | `declaration-track:7041b94bc4153b3f242128c748b849e22b6927d2f810f2d7b082343735504a5c` |
| 15 | `theorem` | [coe_sdiff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/coe-sdiff--a4ffa8d1d06ee93d7aa6d7ba.md) | 185 | `result-track:a4ffa8d1d06ee93d7aa6d7ba38b709db7e3cd28f6131fc1f5db68d67c2914d7d` |
| 16 | `instance` | [Subtype.partialOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-partialorder--105b17069dce0b9e739a4e5f.md) | 189 | `declaration-track:105b17069dce0b9e739a4e5f02241e3c3241a10351a3f9056935c2dab9d81ac6` |
| 17 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/le-def--3f70db1579dca4d25a38dd57.md) | 198 | `result-track:3f70db1579dca4d25a38dd57679bd794a3803730d7a9991049eff707ae7ac92e` |
| 18 | `instance` | [Subtype.zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-zero--e2b95c6caae7b517da68f6d8.md) | 202 | `declaration-track:e2b95c6caae7b517da68f6d819bf0a452b89c5596923fdf7159f813e3997ce1b` |
| 19 | `theorem` | [coe_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/coe-zero--9b50cac6cbafc3e0be835f55.md) | 207 | `result-track:9b50cac6cbafc3e0be835f55e772f4dc073b51df679b551d173f5245cb1f8886` |
| 20 | `instance` | [Subtype.one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-one--ff4095e0a59db30b9f1d172e.md) | 210 | `declaration-track:ff4095e0a59db30b9f1d172ef949bcd729675512ac610c6cc55fa5f04d70b4d9` |
| 21 | `theorem` | [coe_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/coe-one--367d51eb89786d1c2d4980b9.md) | 214 | `result-track:367d51eb89786d1c2d4980b97e256b46df3f3fbb0d40c32bda9da5bef0a9716f` |
| 22 | `instance` | [Subtype.boundedOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-boundedorder--62943decd1a1278bc1006665.md) | 217 | `declaration-track:62943decd1a1278bc10066652096bef4ec7ddaeea16df91328b5f9809e542bcd` |
| 23 | `theorem` | [coe_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/coe-bot--e25947ed8f046214c0000bb5.md) | 225 | `result-track:e25947ed8f046214c0000bb565e1a6800958067122549f9a7a3dbd443865a88b` |
| 24 | `theorem` | [coe_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/coe-top--690a22b882b9812d84304623.md) | 230 | `result-track:690a22b882b9812d843046239f4869a8cf8860281a5499d8e4112f603a82934f` |
| 25 | `theorem` | [compl_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/compl-mul--8603daaf135f2dbb1bbfec85.md) | 234 | `result-track:8603daaf135f2dbb1bbfec85232b5c68e0c9616fb2ec2bf1cd181135dddb0c32` |
| 26 | `theorem` | [mul_compl_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/mul-compl-self--b6ad6b6bead6064b03695860.md) | 237 | `result-track:b6ad6b6bead6064b0369586079fe7ffead6e920b41ae9200b11272430631c390` |
| 27 | `theorem` | [distrib_lattice_lemma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/distrib-lattice-lemma--da3115affc6c7dc1d0e78d82.md) | 240 | `result-track:da3115affc6c7dc1d0e78d828035c15e9ac65e68cdcccc3e3515878b8c4b0757` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/instance--dfc71cf62027339be46fce49.md) | 254 | `declaration-track:dfc71cf62027339be46fce499f696d83e4f4d25a987f0e9ecb2371fcdf160e9d` |
| 29 | `instance` | [Subtype.distribLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-distriblattice--917316c6e89e975a1c86871f.md) | 277 | `declaration-track:917316c6e89e975a1c86871f5b71b28698d1df328ceda04bfb43d0a37ec95c08` |
| 30 | `instance` | [Subtype.BooleanAlgebra](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/MStructure/Variantd0d9ab52dce726c414cf5e310d9010496a2f53f29fdf1dd39f1b04b16c692fac.lean/declarations/subtype-booleanalgebra--eeda733a1b1765fa23b61f9f.md) | 292 | `declaration-track:eeda733a1b1765fa23b61f9fbdb336e3c5405f8e0e31c702c9f76275ee3b36d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
