# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fb910e24afe996a8dac7c1f14ac6e0594428ae6",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fb910e24afe996a8dac7c1f14ac6e0594428ae6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.BundledHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.PUnitInstances` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/moncat--877e116ef465c4b372947ba8.md) | 32 | `declaration-track:877e116ef465c4b372947ba829bd08480abb1f09a27625384600ddaa13252b89` |
| 2 | `abbrev` | [AssocMonoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/assocmonoidhom--f84f5ec7018981f59d31c7b0.md) | 47 | `declaration-track:f84f5ec7018981f59d31c7b0ca20d491c3e5f9ec80471b341e69d7c5bd7a8b70` |
| 3 | `instance` | [bundledHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/bundledhom--d878e215c899527ff51fdd93.md) | 59 | `declaration-track:d878e215c899527ff51fdd9342d5fd4d47fa631d3b756a7c106028a18fe0a90e` |
| 4 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/concretecategory--ff252a359c237f3e9c605a61.md) | 73 | `declaration-track:ff252a359c237f3e9c605a6158bc231ba6952873f65a7cc6805b0d83778f4de9` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--dbc5ad49c3595b250552c57d.md) | 77 | `declaration-track:dbc5ad49c3595b250552c57d4afc89c6b756d6332cd5b5b1a23379428803af14` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--61f41b9a998e1afed5ef3425.md) | 81 | `declaration-track:61f41b9a998e1afed5ef342573f62b3f534678474c0f0e629e09085a00ecca91` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--f1c0a6763e331e999b7d3eae.md) | 85 | `declaration-track:f1c0a6763e331e999b7d3eaee70924e9fd539efc2889ca3e82bd45376e5de3db` |
| 8 | `instance` | [Hom_FunLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/hom-funlike--b6c1a28c92e69bbee4202bdb.md) | 89 | `declaration-track:b6c1a28c92e69bbee4202bdba9d2ea49b464c84d69a12b0ddc78d251dcd89cc3` |
| 9 | `lemma` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/coe-id--d33c6ed2de6604e952fa2a55.md) | 94 | `result-track:d33c6ed2de6604e952fa2a555babf4c76ff4774521900d38b7bb56c32b5c7d82` |
| 10 | `lemma` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/coe-comp--13035674ad6e07a732fe42f1.md) | 98 | `result-track:13035674ad6e07a732fe42f1569571bd22f8651d39206f3f2d17f94e03271713` |
| 11 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/forget-map--2a0468ba5930a82b5c012d2d.md) | 101 | `result-track:2a0468ba5930a82b5c012d2de2161d59a53339fbcebc9f997a84a28fb5d961fb` |
| 12 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/ext--3a24af1196c4619f669bb6c6.md) | 104 | `result-track:3a24af1196c4619f669bb6c6d305c9ca3683440f843640a5f1ba38b7ad2f3aa7` |
| 13 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/of--e8373a4369e669efca44e082.md) | 109 | `declaration-track:e8373a4369e669efca44e082620ac8fa13c67bd6ffaa0f240dd241619c909b1b` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/coe-of--e377e02363564d76048d81c9.md) | 123 | `result-track:e377e02363564d76048d81c9209a0e923f51d9b04e5d4cfde555f49e11163195` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--43f214f566d50f0cd65695a0.md) | 130 | `declaration-track:43f214f566d50f0cd65695a06515b9880bdb92023ba15a81164012abf6f5d297` |
| 16 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/ofhom--b068bdb3d73a41d484cdf46d.md) | 137 | `declaration-track:b068bdb3d73a41d484cdf46d1c404f36ff3ef890027a45cc9f017d821ac41999` |
| 17 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/ofhom-apply--86220f1412a0a02aa5c61f68.md) | 147 | `result-track:86220f1412a0a02aa5c61f682526d08c5938a78308397929a4a0156f2f9d3187` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--af50b07d6ba247ecc5e6244e.md) | 154 | `declaration-track:af50b07d6ba247ecc5e6244eeefcaaa5194f62f95b63237b6d20f35202d28a31` |
| 19 | `lemma` | [oneHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/onehom-apply--c7a31ab49109d6ff21746d49.md) | 157 | `result-track:c7a31ab49109d6ff21746d491eafc1ba83b048bc4a825fc35144589af1a54bb5` |
| 20 | `lemma` | [one_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/one-of--c97ca39b5a1bf04920e1d139.md) | 161 | `result-track:c97ca39b5a1bf04920e1d139e6b183cbe2be4a1824d480cab3533ea1638ede27` |
| 21 | `lemma` | [mul_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/mul-of--f97226af76dec7958b255934.md) | 164 | `result-track:f97226af76dec7958b255934a293a5b26d9dfc4c996a6e634fa2739120c048ec` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--5a13ce0a286930f7cd3024af.md) | 168 | `declaration-track:5a13ce0a286930f7cd3024afdee5a72945947fbc333e00504a55e59683f71541` |
| 23 | `def` | [CommMonCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/commmoncat--ba81358de656a77ca1ea307c.md) | 174 | `declaration-track:ba81358de656a77ca1ea307c7d4d6468286fa083be62cdcfbca25c0672a19522` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--f992014ab0a33a7358770dbe.md) | 187 | `declaration-track:f992014ab0a33a7358770dbe4adfb6e014dd444305235d129b3a2e61281ef995` |
| 25 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/concretecategory--ea780537927866881212cab8.md) | 194 | `declaration-track:ea780537927866881212cab82de86685b0a37aa4402e516c685cb085c628e5ae` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--ea0099672562a11d485ecc46.md) | 199 | `declaration-track:ea0099672562a11d485ecc4668d6296f8daef54523a03d03357d2a0b85adfeb7` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--f68d2fa39c19fa65dad40325.md) | 203 | `declaration-track:f68d2fa39c19fa65dad4032590704abad02fc15f048c32a4ff8c83f45646adea` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--e47c934968ab3551034e8288.md) | 207 | `declaration-track:e47c934968ab3551034e828854d7ec3521a42fc86a2d24a420696b8725201596` |
| 29 | `instance` | [Hom_FunLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/hom-funlike--5ece347510c76a52ced28a0d.md) | 211 | `declaration-track:5ece347510c76a52ced28a0d28be1b81aa62e1b8655df6d714543ae2066d31a6` |
| 30 | `lemma` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/coe-id--1352aae4a0f60911592e5eb4.md) | 216 | `result-track:1352aae4a0f60911592e5eb46e113a1445c8612df2208fec38b3b8085264185c` |
| 31 | `lemma` | [coe_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/coe-comp--aa490e369050c07b9b8aeb26.md) | 220 | `result-track:aa490e369050c07b9b8aeb262f3d7a4a47f9aba483b8b079682d65d9770f9d60` |
| 32 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/forget-map--80a2370b0763a8af6fbdb097.md) | 224 | `result-track:80a2370b0763a8af6fbdb0975b7ebed7c21d0566a998331550fea8018cd9e09c` |
| 33 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/ext--32a36e79241e125b3c8f6ac3.md) | 229 | `result-track:32a36e79241e125b3c8f6ac32efb5271688fb081e0eb6b190938305090f79008` |
| 34 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/of--30a24c45b6696ec6fc16bed1.md) | 234 | `declaration-track:30a24c45b6696ec6fc16bed17bd9ac50aa2cae49e216e5dd70b3c810f22dbf25` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--a94df3eced88ebaa23980115.md) | 245 | `declaration-track:a94df3eced88ebaa2398011533c70ff59426b28bd857b7054bce40378e04f015` |
| 36 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/coe-of--4b723c729874e1cbd79f92cf.md) | 253 | `result-track:4b723c729874e1cbd79f92cf81abb13875426d6eb72675a53fe352d396ad2c09` |
| 37 | `instance` | [hasForgetToMonCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/hasforgettomoncat--e05f02e5a2b96533807f5486.md) | 261 | `declaration-track:e05f02e5a2b96533807f54864352c528ce6028855457482631d7143a6704e00f` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/instance--0d15f55b7099083b6f72d22e.md) | 269 | `declaration-track:0d15f55b7099083b6f72d22ed3a7be5dc8ceafafe3fef1bc581456aa75124ed2` |
| 39 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/ofhom--e65a2032db1ddbbbd2da929f.md) | 274 | `declaration-track:e65a2032db1ddbbbd2da929fab981770b2ac1bd924398631cc7f8cbbbc70d03a` |
| 40 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/ofhom-apply--cd80dff974ace122885da354.md) | 280 | `result-track:cd80dff974ace122885da3544d6bea2e3a702d4ccd3e71c220865a4bc461e4df` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/example--4556c0ab98487b87620fdb89.md) | 286 | `declaration-track:4556c0ab98487b87620fdb89621a57ab94e7056e0d8522595f338f83ae23491f` |
| 42 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/example--b62a6807d7f41a20bbbf5cc9.md) | 289 | `declaration-track:b62a6807d7f41a20bbbf5cc928d9eb79b48e81fa5233343741b789e033b8e09a` |
| 43 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/example--626df10f4c4abb4c2edb1043.md) | 291 | `declaration-track:626df10f4c4abb4c2edb1043c2e9489499894d3e378e5bee8c9bd0d8d8ae23b5` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/example--53e20e07f219914ac618ba32.md) | 293 | `declaration-track:53e20e07f219914ac618ba32c888559f871e08cae62ed2653caf4a93c37c554f` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/example--b4276c645155994a551e14f3.md) | 297 | `declaration-track:b4276c645155994a551e14f3c638bf04a1cc986367b2f3384fcdace06c3c9176` |
| 46 | `def` | [MulEquiv.toMonCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/mulequiv-tomoncatiso--eba0ee0dfb8b3d8c50c9a99a.md) | 316 | `declaration-track:eba0ee0dfb8b3d8c50c9a99a56cf8aee185831e516b7bc9be329dde0fb7508f5` |
| 47 | `def` | [MulEquiv.toCommMonCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/mulequiv-tocommmoncatiso--db81668d86249e7332b6761b.md) | 332 | `declaration-track:db81668d86249e7332b6761b62dc2f015e28edec7f06fc68dfdc71ddcf54f3b1` |
| 48 | `def` | [monCatIsoToMulEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/moncatisotomulequiv--2a3190aae32d672fe8c4e739.md) | 351 | `declaration-track:2a3190aae32d672fe8c4e73920e11227e5c6c5cbec534dfc4a2a0cf075d08387` |
| 49 | `def` | [commMonCatIsoToMulEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/commmoncatisotomulequiv--4e1f5d301fdf4afc860f7286.md) | 360 | `declaration-track:4e1f5d301fdf4afc860f7286d42ec18181aac87024aa688b92d19f735f61ec28` |
| 50 | `def` | [mulEquivIsoMonCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/mulequivisomoncatiso--0aa898b42af4fc910cc8dc37.md) | 372 | `declaration-track:0aa898b42af4fc910cc8dc376fbe1ccaf6327948e3fefa88b79d06773dc36e09` |
| 51 | `def` | [mulEquivIsoCommMonCatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/mulequivisocommmoncatiso--78bcdaf87ac783a0d1d6a9e0.md) | 388 | `declaration-track:78bcdaf87ac783a0d1d6a9e09af969c328368e2d2647be68546aa667ed1cf656` |
| 52 | `instance` | [MonCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/moncat-forget-reflects-isos--86bf33f2d47d21f9d840e23a.md) | 403 | `declaration-track:86bf33f2d47d21f9d840e23a98a0bd6b4933616b32c04c0a44b1d18e017e4329` |
| 53 | `instance` | [CommMonCat.forget_reflects_isos](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/commmoncat-forget-reflects-isos--ded16a459cf0f152949dbd2a.md) | 414 | `declaration-track:ded16a459cf0f152949dbd2ad7760f54cd699c7448c705c74ee1683504411b71` |
| 54 | `instance` | [CommMonCat.forget₂Full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/commmoncat-forget-full--f795618ecd4766a2d77faa6e.md) | 430 | `declaration-track:f795618ecd4766a2d77faa6e8a929e78f590070661d270d4209202cb9c54e991` |
| 55 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfbd81de4087ab8b6a8a7bd23d4d3d6ab7002b2deae7578a14d64167b609d21f3.lean/declarations/example--7f8a5d15b971f2a0b009d677.md) | 432 | `declaration-track:7f8a5d15b971f2a0b009d677226867862d60595d25b36c3e92b02b5845e58b62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
