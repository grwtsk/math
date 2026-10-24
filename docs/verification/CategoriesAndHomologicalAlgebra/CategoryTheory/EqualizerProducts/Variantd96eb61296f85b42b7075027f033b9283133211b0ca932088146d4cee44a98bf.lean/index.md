# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EqualizerProducts.Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0c04d40d758060b20ae3b518f85c3b3fa6705e7",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0c04d40d758060b20ae3b518f85c3b3fa6705e7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.PairwiseIntersections` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [piOpens](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/piopens--15f2295ebfaab1e20194a272.md) | 51 | `declaration-track:15f2295ebfaab1e20194a2720b028231a8030cd5b7a90da36ca42160f819b18b` |
| 2 | `def` | [piInters](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/piinters--118541040b4d92030ac068f7.md) | 59 | `declaration-track:118541040b4d92030ac068f7d9b3786fe88dfacd328b65fbbc6d7674700ea41c` |
| 3 | `def` | [leftRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/leftres--4be95b63ec9029c5dcb2f278.md) | 67 | `declaration-track:4be95b63ec9029c5dcb2f278f60ea9e0ce766cccebf14c44b7790d9a379f1034` |
| 4 | `def` | [rightRes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/rightres--33fe56b67b75bd8ffd725e5f.md) | 75 | `declaration-track:33fe56b67b75bd8ffd725e5fac183a74f9bef98f93ece97fb65b3fed938a0aa6` |
| 5 | `def` | [res](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/res--eca0162b1b10fc0b6f7a68f2.md) | 83 | `declaration-track:eca0162b1b10fc0b6f7a68f2fd796c0b5acfb47ff6b8971b025500c61db9ea8a` |
| 6 | `theorem` | [res_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/res--eb3ec142002689b1e86208e8.md) | 89 | `result-track:eb3ec142002689b1e86208e83b001f7fe1204116db8d5bb390a7cbb6abe6109a` |
| 7 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/w--0fd0a468fe05cb790f0d8bce.md) | 95 | `result-track:0fd0a468fe05cb790f0d8bcef1ce38261d950eb408fe64fd551fa361a90f280f` |
| 8 | `def` | [diagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/diagram--737282d1fc7fde32ddd17565.md) | 110 | `declaration-track:737282d1fc7fde32ddd17565a1ebe179bbb8de848c1df41ed37822806be32deb` |
| 9 | `def` | [fork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/fork--4d871761e6a4ab3a7175879b.md) | 118 | `declaration-track:4d871761e6a4ab3a7175879b1ac27368936350a727045b5131f809df3b0d6d9c` |
| 10 | `theorem` | [fork_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/fork-pt--49873c04e8cabc042a10f0c9.md) | 124 | `result-track:49873c04e8cabc042a10f0c9d8fe8af5dbaecafba747001b9bccaa1234ca57cd` |
| 11 | `theorem` | [fork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/fork--33e9288085504cc23cd19b94.md) | 130 | `result-track:33e9288085504cc23cd19b946f4af349da5c2d2ffd6f54ab02645201c6bf737c` |
| 12 | `theorem` | [fork_π_app_walkingParallelPair_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/fork-app-walkingparallelpair-zero--27cd6cd10b00219f7a6c60c2.md) | 136 | `result-track:27cd6cd10b00219f7a6c60c2a4788d2409aff79d61f33e3130ec7820e52193f1` |
| 13 | `theorem` | [fork_π_app_walkingParallelPair_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/fork-app-walkingparallelpair-one--874de0a3cafb7b5376501953.md) | 143 | `result-track:874de0a3cafb7b5376501953c768f1ddc4bdb7a2ad9711ea5e7420572e8567f1` |
| 14 | `def` | [piOpens.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/piopens-isoofiso--5da19f6a5d2a7c9057ada280.md) | 153 | `declaration-track:5da19f6a5d2a7c9057ada280579befdc9e4a1e28fb884cc6111705f29ab82c2b` |
| 15 | `def` | [piInters.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/piinters-isoofiso--b46b87c9f5d282be47d61538.md) | 160 | `declaration-track:b46b87c9f5d282be47d61538b10e71026d06e3dbeb90cf55460f7f6db785982b` |
| 16 | `def` | [diagram.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/diagram-isoofiso--5eda803730ac3e83501758c8.md) | 166 | `declaration-track:5eda803730ac3e83501758c8ba7a1a05aa49a116cfb3019a4d8fbe976d5f05fe` |
| 17 | `def` | [fork.isoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/fork-isoofiso--1087d73db75b76269b2c604c.md) | 194 | `declaration-track:1087d73db75b76269b2c604c30c7e2b6e60ad2dc3e050373c209d8b4c4344622` |
| 18 | `def` | [IsSheafEqualizerProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/issheafequalizerproducts--65edd80c7f1f9960334ee964.md) | 217 | `declaration-track:65edd80c7f1f9960334ee964731102478f130b412c11fbae97a177307876b73a` |
| 19 | `def` | [coneEquivFunctorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/coneequivfunctorobj--0b5657c62ca29505105747e3.md) | 234 | `declaration-track:0b5657c62ca29505105747e3bb3d263fd36bd374ea302f85a19fd664175be8d4` |
| 20 | `def` | [coneEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/coneequivfunctor--26b887dce8ccb4a265ad4f41.md) | 284 | `declaration-track:26b887dce8ccb4a265ad4f4129c3380a06498fc37faf6b05b674357cb872ff25` |
| 21 | `def` | [coneEquivInverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/coneequivinverseobj--6eac1969ef3a609d02bbfa9d.md) | 304 | `declaration-track:6eac1969ef3a609d02bbfa9d6eac9858400cc278fc22736dd00e7e803480f00a` |
| 22 | `def` | [coneEquivInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/coneequivinverse--fc4a45a7a6f625826925c449.md) | 352 | `declaration-track:fc4a45a7a6f625826925c44996df67ef83484957cabdc131ad356a21a97d2df4` |
| 23 | `def` | [coneEquivUnitIsoApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/coneequivunitisoapp--cba88ce1ae6dc84cf857a6de.md) | 372 | `declaration-track:cba88ce1ae6dc84cf857a6de78ff87d52bde73c65a499b4ca27e50f1d9cb1268` |
| 24 | `def` | [coneEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/coneequivunitiso--4761778c4b462688e45b6152.md) | 394 | `declaration-track:4761778c4b462688e45b615217fd6f0410262832a23547732dedcabc710458af` |
| 25 | `def` | [coneEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/coneequivcounitiso--28f3f8682bd54905ce79bcb6.md) | 402 | `declaration-track:28f3f8682bd54905ce79bcb6efb5bec75d980e8cb0065c22dbadf10f36d8d86d` |
| 26 | `def` | [coneEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/coneequiv--ee106934c1e9f6c8126113b9.md) | 446 | `declaration-track:ee106934c1e9f6c8126113b923efb97838e8734f527626d65562e7d15b56cc2a` |
| 27 | `def` | [isLimitMapConeOfIsLimitSheafConditionFork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/islimitmapconeofislimitsheafconditionfork--ad155ad9282bb8b756203197.md) | 463 | `declaration-track:ad155ad9282bb8b756203197cc8b89978db11925b88fd7bc576bcd91e6057a51` |
| 28 | `def` | [isLimitSheafConditionForkOfIsLimitMapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/islimitsheafconditionforkofislimitmapcone--9518e2efb613b0dba13fdb1d.md) | 500 | `declaration-track:9518e2efb613b0dba13fdb1d60c52146fdfbb8521a62ac78ed69b3805d25163d` |
| 29 | `theorem` | [isSheaf_iff_isSheafEqualizerProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd96eb61296f85b42b7075027f033b9283133211b0ca932088146d4cee44a98bf.lean/declarations/issheaf-iff-issheafequalizerproducts--72033cbc403fa1d36f9a3d1b.md) | 543 | `result-track:72033cbc403fa1d36f9a3d1bb38c385555840b93b6fe78a5c48d3f9b0e2aeb4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
