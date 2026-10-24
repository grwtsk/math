# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Center.Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4daa0e110d7dd1799b399b3134f806d48e3d9b23",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4daa0e110d7dd1799b399b3134f806d48e3d9b23`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Braided` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HalfBraiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/halfbraiding--c2fbf83b5874c438ff9fd59b.md) | 63 | `declaration-track:c2fbf83b5874c438ff9fd59b933f471229a4a8e1f7e1bd6f58922ea71ee26cb7` |
| 2 | `def` | [Center](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/center--8bd52842646c0f9d2797c566.md) | 83 | `declaration-track:8bd52842646c0f9d2797c5668b2f7d64e21b92c2e2fc2e1c986f16b6d148f4c2` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/hom--22cea6e2ddc5769bdffec10f.md) | 93 | `declaration-track:22cea6e2ddc5769bdffec10f15edf598f957205efd1f50e0ad50fe7e942093a5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/instance--81382a0fa821287b974ecc85.md) | 100 | `declaration-track:81382a0fa821287b974ecc85c51ffa5df12bb5b3620c7e44186db7868fe76877` |
| 5 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/ext--065c1a630db5b17e6ee1cd8b.md) | 104 | `result-track:065c1a630db5b17e6ee1cd8b14b8c4260517d708fa6828f2b666efffc2dc0d8c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/instance--a0e4bb82b57bcf0e6042f2bd.md) | 108 | `declaration-track:a0e4bb82b57bcf0e6042f2bd63a0ddfd5a2e2f481735695cdf85fc1b02255606` |
| 7 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/id-f--fd5abe9c9c658c914c59c718.md) | 113 | `result-track:fd5abe9c9c658c914c59c71839f40f5e692fe7eeff56e566a7a01e924c003427` |
| 8 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/comp-f--3688a2d7b33230485f80507d.md) | 118 | `result-track:3688a2d7b33230485f80507d7d3415a9a537440b527ebd56fbaf0d73d115855b` |
| 9 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/isomk--7a57cf0296ab88e736ce128f.md) | 126 | `declaration-track:7a57cf0296ab88e736ce128f1ce73c99b0ffdeddaa7ce0b537f516470a9cd271` |
| 10 | `instance` | [isIso_of_f_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/isiso-of-f-isiso--391cc477530ea2581ba51daa.md) | 132 | `declaration-track:391cc477530ea2581ba51daa09a0278f6b8d4b904357423280998b43383fa29f` |
| 11 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/tensorobj--c59089e93046ead68ac180e0.md) | 139 | `declaration-track:c59089e93046ead68ac180e0a305c16e258d5eb499a68d238a59c42241a58146` |
| 12 | `def` | [tensorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/tensorhom--adcf0210243be5c4fbd811f5.md) | 173 | `declaration-track:adcf0210243be5c4fbd811f55e604acdb19017aad42069a14535d75059d9bd12` |
| 13 | `def` | [tensorUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/tensorunit--4b6fcf6837fb9711020730f8.md) | 189 | `declaration-track:4b6fcf6837fb9711020730f8593ded27be7065888cd2742aa7ff03c792bdd23b` |
| 14 | `def` | [associator](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/associator--c577d17b0480b30db97d78fd.md) | 199 | `declaration-track:c577d17b0480b30db97d78fd58714c7633c170fdde82fe4c07a9eb4d22d41536` |
| 15 | `def` | [leftUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/leftunitor--3b9c868a3c374ddcb5bb1b5f.md) | 208 | `declaration-track:3b9c868a3c374ddcb5bb1b5fafc1d7c1f5c4b1e067df64c17944b426bc5ee311` |
| 16 | `def` | [rightUnitor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/rightunitor--b47b722f7276d328c82ef57b.md) | 218 | `declaration-track:b47b722f7276d328c82ef57b8d2f95d0df4056287a9679f7acd54e35c6cb32a0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/instance--8246afc44f2f522a57a2799c.md) | 234 | `declaration-track:8246afc44f2f522a57a2799c9187515b2024a36f021e042e8a0230f1164028d6` |
| 18 | `theorem` | [tensor_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/tensor-fst--1859761512244fb6bf523433.md) | 247 | `result-track:1859761512244fb6bf5234339388fd83b4c77d6633ec6f0dd77ca96daca6da64` |
| 19 | `theorem` | [tensor_β](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/tensor--e322dc8407cb334a09087528.md) | 252 | `result-track:e322dc8407cb334a090875282acaa64f4bd867314698778cf62212c4a7769070` |
| 20 | `theorem` | [tensor_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/tensor-f--23e5818f2d3e198b01e988f8.md) | 260 | `result-track:23e5818f2d3e198b01e988f87cd807a30e75aa14c306d8f9eefcc3ec79bf7c43` |
| 21 | `theorem` | [tensorUnit_β](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/tensorunit--f1ea29987c493fc3fcf8f77a.md) | 265 | `result-track:f1ea29987c493fc3fcf8f77aec0aa395c44e6106577e2928273601bfe5d7380a` |
| 22 | `theorem` | [associator_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/associator-hom-f--4031f58535feedd9b061e0f7.md) | 270 | `result-track:4031f58535feedd9b061e0f7f86aa2cddb76acaaf5e22d22653e62023e0b2471` |
| 23 | `theorem` | [associator_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/associator-inv-f--d41166353041a3fe029a4f0f.md) | 275 | `result-track:d41166353041a3fe029a4f0ff38612c406c03b31a67cddca7ffddf8e32b6a2d8` |
| 24 | `theorem` | [leftUnitor_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/leftunitor-hom-f--212a8fb14911732e94b9854e.md) | 281 | `result-track:212a8fb14911732e94b9854e357cd3f66370fc99b0b779723bbb2264b15b8280` |
| 25 | `theorem` | [leftUnitor_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/leftunitor-inv-f--abcc4e6df2dc8124e9884334.md) | 286 | `result-track:abcc4e6df2dc8124e9884334b52b8eabeb7a594b4458289564b2640a01799f4d` |
| 26 | `theorem` | [rightUnitor_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/rightunitor-hom-f--76148b989327e23e203cc3c8.md) | 292 | `result-track:76148b989327e23e203cc3c807a152454b1d22718eec61d270857431367df10c` |
| 27 | `theorem` | [rightUnitor_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/rightunitor-inv-f--4ea0b15b7fed2ae5c1e1a1e3.md) | 297 | `result-track:4ea0b15b7fed2ae5c1e1a1e302a4f15f2abf6b81a74af849d74ece14b897df93` |
| 28 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/forget--d364fc7432042bd41113cacd.md) | 310 | `declaration-track:d364fc7432042bd41113cacd2ade31a31dccc910fc63f87cb5ce5a38c94e0454` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/instance--edb99af9e079fb2f7c50f498.md) | 317 | `declaration-track:edb99af9e079fb2f7c50f498ee82b9944047dc6b361dedf226aaaf4a57989d66` |
| 30 | `def` | [braiding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/braiding--e0ace579e5294e8e8401c9da.md) | 324 | `declaration-track:e0ace579e5294e8e8401c9da253c197097c9dea88a9ab78ade2da63db02dbaa9` |
| 31 | `instance` | [braidedCategoryCenter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/braidedcategorycenter--13000e3016199887a77de2ee.md) | 334 | `declaration-track:13000e3016199887a77de2ee2ace5740ec49488ef5ce4a8930b922bee0456a2f` |
| 32 | `def` | [ofBraidedObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/ofbraidedobj--26564e6fce5d5381351b70fa.md) | 352 | `declaration-track:26564e6fce5d5381351b70fa5ead9c2da10bcde99815b4ca725567929ecc71ad` |
| 33 | `def` | [ofBraided](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variant944496c3baf9b5f87e4b8885d8566b73aafaa5fad09ae591fdf8e8960b14f138.lean/declarations/ofbraided--ff40a6282e58960aee4cc60c.md) | 366 | `declaration-track:ff40a6282e58960aee4cc60c37fcccfdc8c0a536bb781d7fd5e30ec2063f498d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
