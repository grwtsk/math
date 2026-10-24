# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98877545ffba83438e1eb59dae8272508a0813f",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98877545ffba83438e1eb59dae8272508a0813f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/tensorobj--f5ea8c6796f83b03fa226534.md) | 51 | `declaration-track:f5ea8c6796f83b03fa22653419477c31bb28777371f1494ead6f8f3a6befdf6b` |
| 2 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/tensorhom--e6d0c2dfa79329fd66938d7e.md) | 63 | `declaration-track:e6d0c2dfa79329fd66938d7e385e52e8d2f620313e22f43be706bfe9c4a52a17` |
| 3 | `def` | [whiskerLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/whiskerleft--65f5215f6e8adb5851679440.md) | 70 | `declaration-track:65f5215f6e8adb58516794409edd9ad6f45d42f3bc434f5498735b7158e4c8eb` |
| 4 | `def` | [whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/whiskerright--209e7198caee78793686e3b2.md) | 78 | `declaration-track:209e7198caee78793686e3b27f2c6bfe557bfa1ec41d62fd6a55d564fb281bcd` |
| 5 | `instance` | [functorCategoryMonoidalStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/functorcategorymonoidalstruct--1899baf80092c20abef5f970.md) | 93 | `declaration-track:1899baf80092c20abef5f9703beeacdb6c13c0633a5b34680924ebb8d1950c64` |
| 6 | `theorem` | [tensorUnit_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/tensorunit-obj--03516c3f9a14199c61405b9c.md) | 104 | `result-track:03516c3f9a14199c61405b9c7803621eb837978f283aca448ad8a5dac1012287` |
| 7 | `theorem` | [tensorUnit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/tensorunit-map--0d8b032ef3e03b71531e6b0a.md) | 108 | `result-track:0d8b032ef3e03b71531e6b0a2c721e4aca95d77db044c43fc92686334662f1c2` |
| 8 | `theorem` | [tensorObj_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/tensorobj-obj--94f483533f98c2ac1bfc405f.md) | 112 | `result-track:94f483533f98c2ac1bfc405f4c143000a24e8799479b2db9e37f83bf8e83fdab` |
| 9 | `theorem` | [tensorObj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/tensorobj-map--3818f134f3c2f0121fc025a2.md) | 116 | `result-track:3818f134f3c2f0121fc025a25cb7a67e4f25fdde8f45d15f230245ca34271123` |
| 10 | `theorem` | [tensorHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/tensorhom-app--b0e5df41f18e761375ea5420.md) | 120 | `result-track:b0e5df41f18e761375ea5420c8b780d03be176654ff285145578fe0e30e02a46` |
| 11 | `theorem` | [whiskerLeft_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/whiskerleft-app--3c186f05b852f57450e11f35.md) | 125 | `result-track:3c186f05b852f57450e11f35e6398c15810635142deaf0fd6f825472554c2cc5` |
| 12 | `theorem` | [whiskerRight_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/whiskerright-app--5baca4a9d226e9b883e5259f.md) | 130 | `result-track:5baca4a9d226e9b883e5259f7c7bf022604e9567aa8d1b60f8341188a04dbf1c` |
| 13 | `theorem` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/leftunitor-hom-app--f102e8587157126dbaca0623.md) | 135 | `result-track:f102e8587157126dbaca0623c318ace1c7811d3ac8fa35b3419e6b8598264bd8` |
| 14 | `theorem` | [leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/leftunitor-inv-app--41d33b4029792c374768305f.md) | 140 | `result-track:41d33b4029792c374768305f51a5aad692ba296b13741d8ad3361e2640ff006e` |
| 15 | `theorem` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/rightunitor-hom-app--b29bab3d00208cab25e5cd21.md) | 145 | `result-track:b29bab3d00208cab25e5cd21a45184e2f5f7e3839203d0604ef063be063ff590` |
| 16 | `theorem` | [rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/rightunitor-inv-app--64c89cb50b52fd97d3511d95.md) | 150 | `result-track:64c89cb50b52fd97d3511d95af7ac8a46739da5ba7f6f52bfbbcdc1d6b76be2e` |
| 17 | `theorem` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/associator-hom-app--d724fe60a07b2dbdeea110ba.md) | 155 | `result-track:d724fe60a07b2dbdeea110baec2fdaab8603b562810cdd56c13f4315f3606e04` |
| 18 | `theorem` | [associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/associator-inv-app--4a2820a449c1256d2ea58c5b.md) | 160 | `result-track:4a2820a449c1256d2ea58c5b1d713d13064acb603436e4b405a47498879806c0` |
| 19 | `instance` | [functorCategoryMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/functorcategorymonoidal--1084f3c3ac89e585efd71d3b.md) | 168 | `declaration-track:1084f3c3ac89e585efd71d3b208f07c5f31f0cc4892866398505222b0736dc96` |
| 20 | `instance` | [functorCategoryBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/functorcategorybraided--9e71bd93189954e4199d2cd3.md) | 183 | `declaration-track:9e71bd93189954e4199d2cd32afc9485c9fe5f463bd733ce9607e985d0c853f3` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/example--26fd290715e2a2ffb7f9d806.md) | 188 | `declaration-track:26fd290715e2a2ffb7f9d8062f546511b856d5ada27e4850c854a67a7988939d` |
| 22 | `instance` | [functorCategorySymmetric](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/functorcategorysymmetric--39b3319b5b600d023cc6121d.md) | 203 | `declaration-track:39b3319b5b600d023cc6121df1bf39a835ea7dd5354938486c33ede357ceae60` |
| 23 | `instance` | [Functor.LaxMonoidal.whiskeringRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/functor-laxmonoidal-whiskeringright--23e90e74d48f1585822e0944.md) | 212 | `declaration-track:23e90e74d48f1585822e0944e95324b43bafce0dadea1e0e8e4c659d78c9906b` |
| 24 | `instance` | [Functor.OplaxMonoidal.whiskeringRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/functor-oplaxmonoidal-whiskeringright--e34139bf85e12929a96939c8.md) | 221 | `declaration-track:e34139bf85e12929a96939c884f2fe7112a05e3f97a0a7d81885c74d4b907245` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/instance--3c9f30c9d17ecc6ba315fc5e.md) | 231 | `declaration-track:3c9f30c9d17ecc6ba315fc5e5120d2dcc099e06f0f3a8e06cd5a585191a329f6` |
| 26 | `instance` | [Functor.Monoidal.whiskeringLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/functor-monoidal-whiskeringleft--84d3baa30cca747ca19e8f0c.md) | 238 | `declaration-track:84d3baa30cca747ca19e8f0c8f363a25804b877ed96ec23b1ce773eecfe52f52` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/instance--b63204ac26ae41074dda0730.md) | 243 | `declaration-track:b63204ac26ae41074dda0730d50bbec212eaa2fa053bec7b1dd81a06e460b5c4` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/instance--8fd65c3604fe075adf6b87e7.md) | 247 | `declaration-track:8fd65c3604fe075adf6b87e70aec3c43cf10ef1ffce00745111ab39b7fcf14dd` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant1465927a5342ff222a06e247b0ce2a87b65173aa0cf8a62faa381b2df76296c7.lean/declarations/instance--f484ad7b1472b58376b52855.md) | 253 | `declaration-track:f484ad7b1472b58376b528552db955f2ec2e4881aa8797d68c6ad9109639918f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
