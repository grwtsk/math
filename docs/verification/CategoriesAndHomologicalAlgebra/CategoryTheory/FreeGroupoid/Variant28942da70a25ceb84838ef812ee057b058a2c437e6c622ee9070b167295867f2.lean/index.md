# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FreeGroupoid.Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "773f12cacb8890830ba0ffe8780baa506717b53a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `773f12cacb8890830ba0ffe8780baa506717b53a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean.json)

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
| 1 | `abbrev` | [Hom.toPosPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/hom-topospath--ee142f5c98632e32f2f67b3d.md) | 56 | `declaration-track:ee142f5c98632e32f2f67b3d9fb63cb30d9acc1dab8f4e4854db31b0d4de1584` |
| 2 | `abbrev` | [Hom.toNegPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/hom-tonegpath--276fd2aa11f94f7625610956.md) | 61 | `declaration-track:276fd2aa11f94f76256109568dea3ac4909b55f30efb97e16a027bb2fc2a9e9b` |
| 3 | `inductive` | [FreeGroupoid.redStep](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/freegroupoid-redstep--8e78a2e614cc42825caa788d.md) | 66 | `declaration-track:8e78a2e614cc42825caa788d099438e711412c0dcb1a146bead9fb1ebfb40daf` |
| 4 | `def` | [FreeGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/freegroupoid--5432c4dd719b48aaa7f65d81.md) | 71 | `declaration-track:5432c4dd719b48aaa7f65d819cc5cceee5894caf9cf6f1e8455ed9bec9bda26f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/instance--199866a1d18425101d25500f.md) | 78 | `declaration-track:199866a1d18425101d25500f2d9dce6784dc8d8a101e32a0eb2c514923f5ed20` |
| 6 | `theorem` | [congr_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/congr-reverse--8a079616d78802399bf73867.md) | 82 | `result-track:8a079616d78802399bf738677d4d2befa6f2eb0a8adf7ce848671d2212178b8b` |
| 7 | `theorem` | [congr_comp_reverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/congr-comp-reverse--0bad78f05a578e9a0ac23689.md) | 95 | `result-track:0bad78f05a578e9a0ac23689dec40ac0d20846d1a9b1488f575d9e0e2ad30587` |
| 8 | `theorem` | [congr_reverse_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/congr-reverse-comp--2ae4a8f202b57713a53731a5.md) | 122 | `result-track:2ae4a8f202b57713a53731a5596be885477715956b63adc7fc5353ee1e9a8c35` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/instance--9565a355dc3c5f88bfbf70c0.md) | 128 | `declaration-track:9565a355dc3c5f88bfbf70c023b4611a5d2186b5dbb62733cb08e4bf669df0df` |
| 10 | `def` | [quotInv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/quotinv--64168fe85bfcf6d37942a8a7.md) | 132 | `declaration-track:64168fe85bfcf6d37942a8a727a7959567caefc40fb174aee4c813cca93b2066` |
| 11 | `instance` | [instGroupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/instgroupoid--206845412f7f92e6145ef9e0.md) | 136 | `declaration-track:206845412f7f92e6145ef9e0914af689f87237780dd766ea60161999f2b28ec0` |
| 12 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/of--2748def811d16b7fe422d853.md) | 142 | `declaration-track:2748def811d16b7fe422d853d41a1713f46e4e69f2b1ac63a40b3fcca8cc850d` |
| 13 | `theorem` | [of_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/of-eq--485f5c70e45cd5bd1e266ed6.md) | 146 | `result-track:485f5c70e45cd5bd1e266ed620df2cd26ff865796c821b5676048883536f232b` |
| 14 | `lemma` | [hom_rec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/hom-rec--4f6d49d8e2f66240e0936330.md) | 156 | `result-track:4f6d49d8e2f66240e0936330aa355e0fe59bb15744f8544ca727a942200d7ee1` |
| 15 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/lift--a29ec3054ee502b9274af3d7.md) | 181 | `declaration-track:a29ec3054ee502b9274af3d772bad099cbb7b0c7e59dc97c02759a529fd06551` |
| 16 | `theorem` | [lift_spec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/lift-spec--3c35a9d444d75daea3a13a74.md) | 191 | `result-track:3c35a9d444d75daea3a13a74b630944ca675461d69c0cdcd329e404ec6551057` |
| 17 | `theorem` | [lift_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/lift-unique--7e63eb8d1abde517a9be6a1b.md) | 197 | `result-track:7e63eb8d1abde517a9be6a1b665b46eb5c69f900d6872fe917755892abcd9353` |
| 18 | `def` | [freeGroupoidFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/freegroupoidfunctor--49273e9c0ea45631517eb469.md) | 222 | `declaration-track:49273e9c0ea45631517eb4694cb5bf78bacafb3adb8025c55863263c82080e8d` |
| 19 | `theorem` | [freeGroupoidFunctor_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/freegroupoidfunctor-id--a4b063aa029a62f54ad91ccb.md) | 225 | `result-track:a4b063aa029a62f54ad91ccb5b082c237ccdcb918e38fe28b3764b9879d0b737` |
| 20 | `theorem` | [freeGroupoidFunctor_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant28942da70a25ceb84838ef812ee057b058a2c437e6c622ee9070b167295867f2.lean/declarations/freegroupoidfunctor-comp--400229e7e3c8560371cb6190.md) | 230 | `result-track:400229e7e3c8560371cb6190a81743cb8e81dd577aa9e99885ba625c934c6087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
