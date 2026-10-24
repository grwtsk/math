# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Cone.Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24a765bc17a2038fe743dd6ca5e650f42d4d4b02",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24a765bc17a2038fe743dd6ca5e650f42d4d4b02`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Submonoid` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AddGroupConeClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/addgroupconeclass--de790501c0c5973568ea2c8c.md) | 21 | `declaration-track:de790501c0c5973568ea2c8c7268e709a04e07ddf6c1ca168d287d51dd9a6186` |
| 2 | `class` | [GroupConeClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/groupconeclass--beafd7583cfcf0efa44d23ed.md) | 27 | `declaration-track:beafd7583cfcf0efa44d23edfbb35f9244260d0a538fd9462dc4a0a98fa3a3bf` |
| 3 | `structure` | [AddGroupCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/addgroupcone--131a6575ba2a318988d8483a.md) | 38 | `declaration-track:131a6575ba2a318988d8483a85f3bc35f5137e968a23847828296a016bea1399` |
| 4 | `structure` | [GroupCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/groupcone--1d5e483efcfe630fd7636692.md) | 46 | `declaration-track:1d5e483efcfe630fd7636692776739846e5a1de4f6d4119a35daf1d638c926a4` |
| 5 | `instance` | [GroupCone.instSetLike](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/groupcone-instsetlike--91123683b79bf41157581124.md) | 50 | `declaration-track:91123683b79bf411575811247c88da7edde69e77b08d6e754c49c3b370d81396` |
| 6 | `instance` | [GroupCone.instGroupConeClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/groupcone-instgroupconeclass--2140821e00eeffab30b0331f.md) | 55 | `declaration-track:2140821e00eeffab30b0331f299f4cd52e875f123ba35da371b02f137febe620` |
| 7 | `class` | [IsMaxCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/ismaxcone--bdf676090f456ed540906d52.md) | 65 | `declaration-track:bdf676090f456ed540906d52b5e4c9f8123e71cf2bbc50455d53a6484500d9e5` |
| 8 | `class` | [IsMaxMulCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/ismaxmulcone--b03d5898852047f048c0ae63.md) | 70 | `declaration-track:b03d5898852047f048c0ae6335778ecba0b5c06623843594ab4a850a0eda3677` |
| 9 | `def` | [oneLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/onele--e29308d0c29c158f4880c142.md) | 82 | `declaration-track:e29308d0c29c158f4880c1429a950c0270b8e92274c44e5b3308833e8e35ec3e` |
| 10 | `lemma` | [oneLE_toSubmonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/onele-tosubmonoid--fd7834cfbc252e8aaae13dbb.md) | 87 | `result-track:fd7834cfbc252e8aaae13dbb57288bd7f9f3eaf0a4b879d6d6edd3b80a44bab2` |
| 11 | `lemma` | [mem_oneLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/mem-onele--8916fde0da5bb510034a6c0e.md) | 89 | `result-track:8916fde0da5bb510034a6c0e83e37838e108d8f24907e3af5889d1ab537362c9` |
| 12 | `lemma` | [coe_oneLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/coe-onele--e7040fd6ac7c330aa5b2fd2e.md) | 91 | `result-track:e7040fd6ac7c330aa5b2fd2e1501f25b44e77bb14d92f82850c84991dcca352e` |
| 13 | `instance` | [oneLE.isMaxMulCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/onele-ismaxmulcone--21982d26822dbb90dc7f170b.md) | 94 | `declaration-track:21982d26822dbb90dc7f170b97460ca91aaf5bc1d1cec596246fcc706128ebaa` |
| 14 | `abbrev` | [PartialOrder.mkOfGroupCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/partialorder-mkofgroupcone--ea21f48d6cc0a91aa5684558.md) | 104 | `declaration-track:ea21f48d6cc0a91aa5684558f9dd516a4787fb3be8757be22df60b6149f336d9` |
| 15 | `abbrev` | [LinearOrder.mkOfGroupCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/linearorder-mkofgroupcone--f95b7641f25d259a794d7fe6.md) | 113 | `declaration-track:f95b7641f25d259a794d7fe649ee5c01cbb4db44d74fdd179645e7a493fd898b` |
| 16 | `lemma` | [IsOrderedMonoid.mkOfCone](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Cone/Variante22755f82f8013203eb1610c31b7b342f6596c3b25a1c14480df01b3b77848a7.lean/declarations/isorderedmonoid-mkofcone--e5779d17fd39228dafae4fbc.md) | 122 | `result-track:e5779d17fd39228dafae4fbcd665cf17e1fb95c69564f728c5149f13698a2b9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
