# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqualizerProducts.Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0bd2079d54ef7d242309c69aacb64f64010c25e7",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0bd2079d54ef7d242309c69aacb64f64010c25e7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.PairwiseIntersections` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piOpens](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/piopens--4895e6721da6ce22b3f90df5.md) | 40 | `declaration-track:4895e6721da6ce22b3f90df5eadae78808d7b518584daec8c80b31498218beec` |
| 2 | `def` | [piInters](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/piinters--ac891b34169119d84fbedd4d.md) | 46 | `declaration-track:ac891b34169119d84fbedd4de09b870953f7d1339bcbb52a440b98b0223c17d4` |
| 3 | `def` | [leftRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/leftres--2f3727f358780a2566032f13.md) | 52 | `declaration-track:2f3727f358780a2566032f1331305d163cb92b541ec252b72a82606c45e07386` |
| 4 | `def` | [rightRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/rightres--7a9d990364f05c175ca92af2.md) | 58 | `declaration-track:7a9d990364f05c175ca92af2f97b1dceffb44953505f5c425887e91ff1c7a114` |
| 5 | `def` | [res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/res--8c53a731fb4e469f1db13305.md) | 64 | `declaration-track:8c53a731fb4e469f1db13305f1c8707cdcc0978917cb159f0b3404b235f43954` |
| 6 | `theorem` | [res_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/res--db70da34ed23569b8f296f9c.md) | 68 | `result-track:db70da34ed23569b8f296f9cc5239be486e2ea8b8570fefc05a93efa1c6a7e2f` |
| 7 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/w--37a785216e5bcee99e30eedc.md) | 72 | `result-track:37a785216e5bcee99e30eedc65ce607644801f27169e54fdf658ebc5bf0368d4` |
| 8 | `abbrev` | [diagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/diagram--16435545eeb42e6f35d526ff.md) | 83 | `declaration-track:16435545eeb42e6f35d526fff5682179885f85504f3be9b186b89532771be7b0` |
| 9 | `def` | [fork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/fork--f195d3a37f732f6a298f087c.md) | 89 | `declaration-track:f195d3a37f732f6a298f087c7abe1c74d77504ebb38b8fa476484c525385b357` |
| 10 | `theorem` | [fork_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/fork-pt--4c4aaec52ab91af1f029fb43.md) | 93 | `result-track:4c4aaec52ab91af1f029fb4300a438da9947e79568cdf3bcf860f584b55d391f` |
| 11 | `theorem` | [fork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/fork--10d9c0be7dfdae38cd63aac0.md) | 97 | `result-track:10d9c0be7dfdae38cd63aac0979604b9cb92e96b852a0e2755df70935912bec3` |
| 12 | `theorem` | [fork_π_app_walkingParallelPair_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/fork-app-walkingparallelpair-zero--89108a4b1c718a27348b4cad.md) | 101 | `result-track:89108a4b1c718a27348b4cadbd6cdefeeaec661ac9379365cb85ebd91fb0a0a8` |
| 13 | `theorem` | [fork_π_app_walkingParallelPair_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/fork-app-walkingparallelpair-one--5c1a0a39a9cc8fc68154d3b6.md) | 106 | `result-track:5c1a0a39a9cc8fc68154d3b6981f4777860f8104427157dc15a5330138122166` |
| 14 | `def` | [piOpens.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/piopens-isoofiso--40dae7370552b6c1b529bc11.md) | 114 | `declaration-track:40dae7370552b6c1b529bc113e08bef3630eca2f861a09b13c48f88bf27c9fdc` |
| 15 | `def` | [piInters.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/piinters-isoofiso--36248e4ebb87e4eac41f0a3c.md) | 119 | `declaration-track:36248e4ebb87e4eac41f0a3c1274c5fb9021280cc85b0682371d319ad7131545` |
| 16 | `def` | [diagram.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/diagram-isoofiso--8cc2957ee4717f391f8dc543.md) | 123 | `declaration-track:8cc2957ee4717f391f8dc543312b4ab334ae7415e31042c93d2c184971a75add` |
| 17 | `def` | [fork.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/fork-isoofiso--2fdf83f85969824cb8f9d06f.md) | 150 | `declaration-track:2fdf83f85969824cb8f9d06f31aff3266c99520fb4031d60407dd1109321a8f8` |
| 18 | `def` | [IsSheafEqualizerProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/issheafequalizerproducts--601db276f869b258bc51ff07.md) | 170 | `declaration-track:601db276f869b258bc51ff07c788dd9caeef0bfe0a894a0e99ced4d934405a6a` |
| 19 | `def` | [coneEquivFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/coneequivfunctorobj--c56836ae9362f24f9cceb1dd.md) | 185 | `declaration-track:c56836ae9362f24f9cceb1dd31e3bd1989eb02bbb2683ffad56831227feab138` |
| 20 | `def` | [coneEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/coneequivfunctor--aa86ecd884565efcb405ea74.md) | 229 | `declaration-track:aa86ecd884565efcb405ea74b071cd94749845ef81bd3a8012fba5ea3ee26458` |
| 21 | `def` | [coneEquivInverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/coneequivinverseobj--b85cce0022e45c15cd75213b.md) | 246 | `declaration-track:b85cce0022e45c15cd75213b10b307a105ab391e1c47edf4193a101d0c945a26` |
| 22 | `def` | [coneEquivInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/coneequivinverse--2df993dbeeb18ab4a5c80ee6.md) | 292 | `declaration-track:2df993dbeeb18ab4a5c80ee6c5e9759c3a34cfaba41e4d8ff8f3abb6ca98567d` |
| 23 | `def` | [coneEquivUnitIsoApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/coneequivunitisoapp--9f5fc0f5c2c362fb0c6ada26.md) | 310 | `declaration-track:9f5fc0f5c2c362fb0c6ada2643023e38f76e260ce7fb689f445caf550e2f1072` |
| 24 | `def` | [coneEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/coneequivunitiso--d352a3d45bf12425f36001fe.md) | 330 | `declaration-track:d352a3d45bf12425f36001fe1429b3b7bd82c32f4d0912d9771433568b938373` |
| 25 | `def` | [coneEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/coneequivcounitiso--c48dd37cf4435be873d92125.md) | 336 | `declaration-track:c48dd37cf4435be873d921254eb663d42c8c184c81291a0d4fcf978fc012ea96` |
| 26 | `def` | [coneEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/coneequiv--4a2bac76dde7580c6502f7a9.md) | 374 | `declaration-track:4a2bac76dde7580c6502f7a92591141037dda143554f16a912da66c6fcbfcf41` |
| 27 | `def` | [isLimitMapConeOfIsLimitSheafConditionFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/islimitmapconeofislimitsheafconditionfork--55bf00b28cf07c9d52477fa2.md) | 385 | `declaration-track:55bf00b28cf07c9d52477fa28ba2141fc633cfb1d13670495545528dfb384737` |
| 28 | `def` | [isLimitSheafConditionForkOfIsLimitMapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/islimitsheafconditionforkofislimitmapcone--e47471d1eebe2a80e027d685.md) | 420 | `declaration-track:e47471d1eebe2a80e027d6855223529a2f2fcdccca11224c160d1bba04da2c76` |
| 29 | `theorem` | [isSheaf_iff_isSheafEqualizerProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/declarations/issheaf-iff-issheafequalizerproducts--e782ed7e2faf9c125293383c.md) | 459 | `result-track:e782ed7e2faf9c125293383cab51cb99e52acdfacb51a288874cd5700c2e5705` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
