# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fbfed547511bc767fc88ae03ed1e743c96cb433",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fbfed547511bc767fc88ae03ed1e743c96cb433`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Biproducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortExact.Abelian` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/instance--e34538e90c17d8147dc01c46.md) | 40 | `declaration-track:e34538e90c17d8147dc01c4633def789941988a717615a9e526d6d30b71f27d0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/instance--ba82f321298e5b06bbaf795d.md) | 43 | `declaration-track:ba82f321298e5b06bbaf795d9120cb18a4880f72639c7883edf2039f62d80711` |
| 3 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/binaryproductlimitcone--443ee76b71ce766ee0197834.md) | 51 | `declaration-track:443ee76b71ce766ee019783482e815f4632bfb51bc304f115d587f21607db92c` |
| 4 | `theorem` | [binaryProductLimitCone_cone_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/binaryproductlimitcone-cone-app-left--966e22b0aae398fa456e0937.md) | 68 | `result-track:966e22b0aae398fa456e093724147f631eda0e0f5277423126c04c8452a0d562` |
| 5 | `theorem` | [binaryProductLimitCone_cone_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/binaryproductlimitcone-cone-app-right--cbf9954c706e6d545f817179.md) | 74 | `result-track:cbf9954c706e6d545f8171795c78863398d694cfecf408d3e4d58fbf3cc7523d` |
| 6 | `def` | [biprodIsoProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/biprodisoprod--e5bb5c0193572d9bfb31d2c4.md) | 83 | `declaration-track:e5bb5c0193572d9bfb31d2c4b5abd07c5985376688522ac37119c520e338e0cc` |
| 7 | `theorem` | [biprodIsoProd_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/biprodisoprod-inv-comp-fst--8b5021a5b4634531ad9e9492.md) | 89 | `result-track:8b5021a5b4634531ad9e949254fd217dbfac1501010c6f4b542dea65e62082d1` |
| 8 | `theorem` | [biprodIsoProd_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/biprodisoprod-inv-comp-snd--00c6e459342b2da11b0e2035.md) | 95 | `result-track:00c6e459342b2da11b0e203563cc3e2054c1e070a90c9640af90d7a39e9170db` |
| 9 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/lift--c14be4b42221a7276ce54cf7.md) | 108 | `declaration-track:c14be4b42221a7276ce54cf7a840689411bb96f93c895e5862348b31fecd7a29` |
| 10 | `def` | [productLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/productlimitcone--6d3b88c639d035041fb55731.md) | 121 | `declaration-track:6d3b88c639d035041fb557311625b9cbdf9b308292e9a7fc8ae1cdd5ccb8f1ea` |
| 11 | `def` | [biproductIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/biproductisopi--7cf0a8598d0356a284ac75ba.md) | 144 | `declaration-track:7cf0a8598d0356a284ac75ba6eb8f05c85a121faab99626df375801c1b51a572` |
| 12 | `theorem` | [biproductIsoPi_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/biproductisopi-inv-comp--8d5519d519648ca3a243f1e1.md) | 150 | `result-track:8d5519d519648ca3a243f1e1b2d1f5d40f65f9da0ce818f4ed121f0c753bc102` |
| 13 | `def` | [lequivProdOfRightSplitExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/lequivprodofrightsplitexact--e6605184052583c2806cd6b2.md) | 168 | `declaration-track:e6605184052583c2806cd6b233cd7800ee301053cae78dc13490a1d0162ae53a` |
| 14 | `def` | [lequivProdOfLeftSplitExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant10d94684a68084b8796873ba3c16d506c7153671a533a16865f58e2e13747e3a.lean/declarations/lequivprodofleftsplitexact--c1d4d95b62327f05cda6b351.md) | 178 | `declaration-track:c1d4d95b62327f05cda6b351438fd0618dd45eedde0ed80f9f29786e4b8c1dca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
