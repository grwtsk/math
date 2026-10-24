# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UpperLower.Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fbe40058783e5a3b6736e673d9f71b28f820358",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fbe40058783e5a3b6736e673d9f71b28f820358`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.SMul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.smul_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/isupperset-smul-subset--2a13ed380d2132c52a802618.md) | 27 | `result-track:2a13ed380d2132c52a802618c34849ebee0b51cf12d02d845ae2c77e50d11b2d` |
| 2 | `theorem` | [IsLowerSet.smul_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/islowerset-smul-subset--4960827d0b843e668d727eb5.md) | 33 | `result-track:4960827d0b843e668d727eb5867c5686f8ec80ff8e760e3df3dce2acdd630e57` |
| 3 | `theorem` | [IsUpperSet.smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/isupperset-smul--f9408178d3d97bf100051dc9.md) | 45 | `result-track:f9408178d3d97bf100051dc9911f0d6c0170492c378b55bf8846946b9b2d9cd0` |
| 4 | `theorem` | [IsLowerSet.smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/islowerset-smul--2e7e06e7f2c8be4302ce2611.md) | 52 | `result-track:2e7e06e7f2c8be4302ce26112356185fb55e7952de54eefebfce696c5771365a` |
| 5 | `theorem` | [Set.OrdConnected.smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/set-ordconnected-smul--56e55a412f1fb798c7263abc.md) | 58 | `result-track:56e55a412f1fb798c7263abc1fa97792035489646c20aa8792cff9e0e917a01d` |
| 6 | `theorem` | [IsUpperSet.mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/isupperset-mul-left--ab3b5df44e5b61db3dc6ed95.md) | 65 | `result-track:ab3b5df44e5b61db3dc6ed95ef5bcd75ac65dbe37afd26a53c6fc18baedf8fa3` |
| 7 | `theorem` | [IsUpperSet.mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/isupperset-mul-right--eef1151e8f5f210f10316e5b.md) | 72 | `result-track:eef1151e8f5f210f10316e5b8c82eed8abeeb5895c691651f530ec97bdc9accf` |
| 8 | `theorem` | [IsLowerSet.mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/islowerset-mul-left--bdbcecfc46154d203da2a870.md) | 79 | `result-track:bdbcecfc46154d203da2a870b230422f455af95e7620d275bd1c54f96c1c7e56` |
| 9 | `theorem` | [IsLowerSet.mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/islowerset-mul-right--6db1bfa7635a4f1ee7421382.md) | 85 | `result-track:6db1bfa7635a4f1ee7421382363c1b005bb8ba67499e1611f7d4dd60dfa03816` |
| 10 | `theorem` | [IsUpperSet.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/isupperset-inv--9c803438b038aaf873b93e12.md) | 91 | `result-track:9c803438b038aaf873b93e12666b52887934ece7de599abb1f88c94a78645d35` |
| 11 | `theorem` | [IsLowerSet.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/islowerset-inv--0d79b5e678c7898d74e7fec0.md) | 96 | `result-track:0d79b5e678c7898d74e7fec0eca3ae37509aee697ca6e426bf7758083251b429` |
| 12 | `theorem` | [IsUpperSet.div_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/isupperset-div-left--a07dd073706c4d9b274515b6.md) | 101 | `result-track:a07dd073706c4d9b274515b6148b9f4c9bb9e8eb5c128d8ade842ed722a3d860` |
| 13 | `theorem` | [IsUpperSet.div_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/isupperset-div-right--be9375bd1efe589bbbd432eb.md) | 108 | `result-track:be9375bd1efe589bbbd432eb329aafca4ae32eb8a4ffdc6f219eabf0fd2cb326` |
| 14 | `theorem` | [IsLowerSet.div_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/islowerset-div-left--57c6aa1adfba7ce11e32970f.md) | 115 | `result-track:57c6aa1adfba7ce11e32970ff8db9913a4eb2254dab79fdfd26bf97e066b24be` |
| 15 | `theorem` | [IsLowerSet.div_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/islowerset-div-right--df52d2dfa94491d35d4141d3.md) | 121 | `result-track:df52d2dfa94491d35d4141d38e90b98892c60860cd678a3b66f76a1d10389b37` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--99a41dee1974014240606d6b.md) | 129 | `declaration-track:99a41dee1974014240606d6bd3015e553f38da2204734e6090d09c48bd1613cc` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--55e0cbdbe3f11001c7eded38.md) | 133 | `declaration-track:55e0cbdbe3f11001c7eded384fb161ff4c7d01b71d25a76ccc9f08f5af1cd6e3` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--1fdf8ca00be8e7e76fa2147b.md) | 137 | `declaration-track:1fdf8ca00be8e7e76fa2147b73fffe57283c0a7dcede98bb5294f981a1310f02` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--e04f899032d17efff71e28eb.md) | 141 | `declaration-track:e04f899032d17efff71e28eb1cdecee314102a9176a385a25bebf098b368d96a` |
| 20 | `theorem` | [coe_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/coe-one--b8f6a462b346f00ca4a3c69a.md) | 145 | `result-track:b8f6a462b346f00ca4a3c69a3afb6629ad6bc62c7171a6af3cea03d819b1dffc` |
| 21 | `theorem` | [coe_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/coe-mul--1e2ff65c0cf2ae10efce2979.md) | 151 | `result-track:1e2ff65c0cf2ae10efce29794dcdadecf33e5c8ab4ddca79d8263546dc85434f` |
| 22 | `theorem` | [coe_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/coe-div--d8f474312cccf4617a80193e.md) | 157 | `result-track:d8f474312cccf4617a80193e583423c3fb7d4bdd141aeaea030cb1820a4856d0` |
| 23 | `theorem` | [Ici_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/ici-one--0c16492f5341deee6c29a8eb.md) | 163 | `result-track:0c16492f5341deee6c29a8eb91d985fc8e9a821a16ca42d3667b1036c75fa8b0` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--c892a5a39d68b642fc2c9d1b.md) | 169 | `declaration-track:c892a5a39d68b642fc2c9d1b879b64f265ac6d0d2a906be390486b99911b58f4` |
| 25 | `instance` | [commSemigroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/commsemigroup--0382998620a7dc52b1781935.md) | 173 | `declaration-track:0382998620a7dc52b1781935cfab504777d7161529417fef77ce71a39332a347` |
| 26 | `theorem` | [one_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/one-mul--cacf5f6a5caa177ecc4834c4.md) | 178 | `result-track:cacf5f6a5caa177ecc4834c4020f778f88c9324e49ddd490fb930ad34ffa3a25` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--31adadb99f6788e70ef6df8a.md) | 185 | `declaration-track:31adadb99f6788e70ef6df8af7b8f5fb0d2224733b9986724b4278d42c9e3f51` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--a8ebcb077961295785ae3c3c.md) | 198 | `declaration-track:a8ebcb077961295785ae3c3ca01dc4a1ef4bcd9d1b78c474a624182560e7b702` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--9319e0237062262841efc75d.md) | 202 | `declaration-track:9319e0237062262841efc75db03c014496112fc0084b6c44d054a588f1eb9333` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--ce94ce59b664ee6fbade8373.md) | 206 | `declaration-track:ce94ce59b664ee6fbade837343fb1a5a89cc25b635d24153fb1bc36a1eff1bfe` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--5c3f7a5ad1b9abc5128d4a15.md) | 210 | `declaration-track:5c3f7a5ad1b9abc5128d4a15fa1ff824253593d95c56eb424d50d4a8444cc405` |
| 32 | `theorem` | [coe_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/coe-mul--cc2155720870b3856d247a91.md) | 214 | `result-track:cc2155720870b3856d247a912329a8060baf916e0bd99774e53256a405a6aef3` |
| 33 | `theorem` | [coe_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/coe-div--7843d9a669c2cc69bc13c743.md) | 220 | `result-track:7843d9a669c2cc69bc13c743719bec03b02d78a83ff8f1b322c93bba3cf2ed02` |
| 34 | `theorem` | [Iic_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/iic-one--798f01a7a917a7c7c8f1eb72.md) | 226 | `result-track:798f01a7a917a7c7c8f1eb7251a78a3bab139d16dd9722b0d0b4533ed5f3dab1` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--c8622bd45f8f544a955b85be.md) | 232 | `declaration-track:c8622bd45f8f544a955b85be11acd4c9adddd56e2a4b53589fcb4e98eb302cb6` |
| 36 | `instance` | [commSemigroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/commsemigroup--cec72951190bef700c388ec4.md) | 236 | `declaration-track:cec72951190bef700c388ec4665b6e897a8e081ebbf60b66461ab48b84e7dfcb` |
| 37 | `theorem` | [one_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/one-mul--ae2707addd8cc4eeb6c025a9.md) | 241 | `result-track:ae2707addd8cc4eeb6c025a94c87e5b879909ebd535a91d02d0cf1083943fe7b` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/instance--e67c8bbc306376d2637a4252.md) | 248 | `declaration-track:e67c8bbc306376d2637a4252cca5c11f64ad32bb17642616871016c04f072885` |
| 39 | `theorem` | [upperClosure_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/upperclosure-one--b9a5eff2bda45043d1a24aad.md) | 261 | `result-track:b9a5eff2bda45043d1a24aad92c94e3eb8d3e48af2c783b1737c3bd8f4e97039` |
| 40 | `theorem` | [lowerClosure_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/lowerclosure-one--7529cd086f188cfbc5ab7d18.md) | 267 | `result-track:7529cd086f188cfbc5ab7d185afdf3c10ab153406ecd843dfb11953d3c70c41b` |
| 41 | `theorem` | [upperClosure_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/upperclosure-smul--5a60e84bd1718ea7feadeca6.md) | 273 | `result-track:5a60e84bd1718ea7feadeca6837b334a96ef36644624ed0ffb17c27a247e540b` |
| 42 | `theorem` | [lowerClosure_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/lowerclosure-smul--5437e7b86fe6ec08c0b3468f.md) | 279 | `result-track:5437e7b86fe6ec08c0b3468ffeb5c5968d679ac8af9abd6d0527af0191e6f2e3` |
| 43 | `theorem` | [mul_upperClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/mul-upperclosure--86311956e4d7f297224faf8f.md) | 285 | `result-track:86311956e4d7f297224faf8fc3ea06fee4e9ec98eda3c662994a25cee2bff712` |
| 44 | `theorem` | [mul_lowerClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/mul-lowerclosure--88bb6e7c352459f00004b56c.md) | 293 | `result-track:88bb6e7c352459f00004b56c5dd42964661216acec28134f36a3640de524bafd` |
| 45 | `theorem` | [upperClosure_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/upperclosure-mul--7898e97798b59d699b02414b.md) | 301 | `result-track:7898e97798b59d699b02414ba0722b9074d54adfe88efc19a080110f639b2213` |
| 46 | `theorem` | [lowerClosure_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/lowerclosure-mul--6bbe60d63b3695ff3519bd66.md) | 308 | `result-track:6bbe60d63b3695ff3519bd66ddbfd13ad6f19f107a2e0a5a82805f8d6009a0e0` |
| 47 | `theorem` | [upperClosure_mul_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/upperclosure-mul-distrib--08a7b125986641d4ed6937b9.md) | 315 | `result-track:08a7b125986641d4ed6937b9f643149f7c620a870a029733809948a071542b58` |
| 48 | `theorem` | [lowerClosure_mul_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variantea4061f47d5405d8df3c423317e5c4e425521307fdce04eb81a84c28d98c3c2a.lean/declarations/lowerclosure-mul-distrib--a8304cdb24c11717788c3486.md) | 322 | `result-track:a8304cdb24c11717788c3486bc3fe651a0751a27dee7d2aa3aa0421dba551b42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
