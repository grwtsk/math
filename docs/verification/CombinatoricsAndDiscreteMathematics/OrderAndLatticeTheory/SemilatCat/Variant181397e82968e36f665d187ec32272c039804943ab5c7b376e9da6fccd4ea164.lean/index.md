# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SemilatCat.Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1b5733e242ac3d34f94470b38fe8643833b22ff",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1b5733e242ac3d34f94470b38fe8643833b22ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.PartOrdCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemilatSupCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/semilatsupcat--4cafde83d93abf6ad04af95b.md) | 29 | `declaration-track:4cafde83d93abf6ad04af95b6c4af2cad758f4400d35be203d24af95b2f726f1` |
| 2 | `structure` | [SemilatInfCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/semilatinfcat--77b2e6a90f3767888f100a24.md) | 36 | `declaration-track:77b2e6a90f3767888f100a24f47af8d2d76fb2963589d43ddec2b4080352cffc` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instance--87d4b97eb284e60921e520c3.md) | 44 | `declaration-track:87d4b97eb284e60921e520c3ae1a0ef5203ca1041a9727021613939ccb4fabd4` |
| 4 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/of--a78694977f2a35e1c225ee54.md) | 50 | `declaration-track:a78694977f2a35e1c225ee54b154cb7bed38e8b02f5e72ab638d89eb3e53655e` |
| 5 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/coe-of--51ae458cc42d6406fffdc6ff.md) | 55 | `result-track:51ae458cc42d6406fffdc6ff37ce5ba3a48165cc049c16558eeb9e8917d9738b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instance--43f10a19d90e4c4c82ea7ae4.md) | 59 | `declaration-track:43f10a19d90e4c4c82ea7ae413326f1fbb6e4bcd335838182b3f2666543fc5f1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instance--ceaac01f780dbd7c3b20af77.md) | 62 | `declaration-track:ceaac01f780dbd7c3b20af778fe6064cc0d564932c46f03117f09b2a6a583e78` |
| 8 | `instance` | [instFunLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instfunlike--994b274bd2a402327e5f161c.md) | 72 | `declaration-track:994b274bd2a402327e5f161c003e5a95be8e4b94990c5cc7be2113bac891bd56` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instance--f8222a5ffb0f33b87927d579.md) | 75 | `declaration-track:f8222a5ffb0f33b87927d57991c15e2576961ac9ad710f167670543354ab197a` |
| 10 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/hasforgettopartord--6436bdea0207632a2cf6e1cd.md) | 81 | `declaration-track:6436bdea0207632a2cf6e1cd3a8d0e134d10b74a988653f664f866d121760c25` |
| 11 | `theorem` | [coe_forget_to_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/coe-forget-to-partordcat--a29d22d0543c771bcbcb480d.md) | 90 | `result-track:a29d22d0543c771bcbcb480d7717746c190ce1abd62d79e74cabf578bcec221c` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instance--fb0b9767d12a54f483b66979.md) | 99 | `declaration-track:fb0b9767d12a54f483b669797606eab87dd15c05c1276f5d8e5f441de732e000` |
| 13 | `def` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/of--37c07ef471019391a7680c07.md) | 105 | `declaration-track:37c07ef471019391a7680c071e80cc72459382dd2b6308f939f0e21c3abfda38` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/coe-of--0bb01d2d10c57510bf4fd61f.md) | 110 | `result-track:0bb01d2d10c57510bf4fd61fd8226272f2dcad6e92fe469c0a324523e88ddf3e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instance--75aed24d7eccf36e6c6e4bed.md) | 114 | `declaration-track:75aed24d7eccf36e6c6e4bedafdc9290f474e02c2d2f37f1978c847f040d307b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instance--0cac485e581d92e32a21be63.md) | 117 | `declaration-track:0cac485e581d92e32a21be631c33ad1e12be2aac5012b426dfb2239a5ba55e2f` |
| 17 | `instance` | [instFunLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instfunlike--e274cfce1160e72b65a32228.md) | 126 | `declaration-track:e274cfce1160e72b65a32228ae07807fbd00c961ef0d169bcd1638ef3ea930aa` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/instance--c36af907a7a8285d32e6461f.md) | 129 | `declaration-track:c36af907a7a8285d32e6461fad3156a8a38810742c469d40205021a3640ee5ff` |
| 19 | `instance` | [hasForgetToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/hasforgettopartord--dd4a46a8788bef7d6950364d.md) | 135 | `declaration-track:dd4a46a8788bef7d6950364d9ec85ac42f2f89bf62a3d6d68fa2f96b84e30644` |
| 20 | `theorem` | [coe_forget_to_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/coe-forget-to-partordcat--8e4f032435ade472032e6728.md) | 143 | `result-track:8e4f032435ade472032e672821e6ff7905c6d042d8abbb9bb57372b02b0cf32c` |
| 21 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/iso-mk--fdd9e658c30f03f4d7f51ef3.md) | 156 | `declaration-track:fdd9e658c30f03f4d7f51ef359a8f3ad9c941e2b85d40e8b87262bd316e07d2e` |
| 22 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/dual--45775f08e39f3e169ddcef49.md) | 165 | `declaration-track:45775f08e39f3e169ddcef49007166168a059c6ab858e284242597d297cd5a3d` |
| 23 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/iso-mk--9ceaa3b923a25efd15baa06a.md) | 176 | `declaration-track:9ceaa3b923a25efd15baa06abbd8010b73d42af44da25fa74c974bdd2bf257dc` |
| 24 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/dual--db32a511ec7f91e06dd64ba0.md) | 185 | `declaration-track:db32a511ec7f91e06dd64ba0e40d934492c653a7475435ef5b7d0cc05ed19154` |
| 25 | `def` | [SemilatSupCatEquivSemilatInfCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/semilatsupcatequivsemilatinfcat--96270e1e8e2e3db2da5a2780.md) | 194 | `declaration-track:96270e1e8e2e3db2da5a278094ed6125d5d23c1375eb4dc4217d9a804ea17f8c` |
| 26 | `theorem` | [SemilatSupCat_dual_comp_forget_to_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/semilatsupcat-dual-comp-forget-to-partordcat--9f6c73bc213638e09a7636ef.md) | 201 | `result-track:9f6c73bc213638e09a7636ef5e21b49a98ee02bee023d12ea2b41706aa369e21` |
| 27 | `theorem` | [SemilatInfCat_dual_comp_forget_to_partOrdCat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SemilatCat/Variant181397e82968e36f665d187ec32272c039804943ab5c7b376e9da6fccd4ea164.lean/declarations/semilatinfcat-dual-comp-forget-to-partordcat--58407ef5552f4e3d8a1dd21a.md) | 207 | `result-track:58407ef5552f4e3d8a1dd21a5902e8802da0b3563e604fa902b54fce94dffcf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
