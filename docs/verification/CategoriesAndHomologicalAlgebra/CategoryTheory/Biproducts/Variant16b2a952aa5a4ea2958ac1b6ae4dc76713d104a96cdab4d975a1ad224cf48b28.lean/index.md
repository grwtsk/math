# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Biproducts.Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb6fcbd933e072009721f008f621128efa50ba27",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb6fcbd933e072009721f008f621128efa50ba27`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/instance--c7149d5a24f23e9df5b44e3d.md) | 35 | `declaration-track:c7149d5a24f23e9df5b44e3d3f0dd830b1981b4bf959a5f4af1776aabcf686b3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/instance--69f046d4c46a160881debaff.md) | 38 | `declaration-track:69f046d4c46a160881debaffd3e75d6ef7738484405f76e2b9d08986a9936841` |
| 3 | `def` | [binaryProductLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/binaryproductlimitcone--a34fc65d91145888ca2a3439.md) | 46 | `declaration-track:a34fc65d91145888ca2a3439d22e8070946095751d4eaf1dde743c9d04699fc4` |
| 4 | `theorem` | [binaryProductLimitCone_cone_π_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/binaryproductlimitcone-cone-app-left--e6ac571d4ad06c42fb614840.md) | 64 | `result-track:e6ac571d4ad06c42fb614840da3872d93404abf196b222891bb36254a9a7bf41` |
| 5 | `theorem` | [binaryProductLimitCone_cone_π_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/binaryproductlimitcone-cone-app-right--55c11bd77d5c397a37b239d8.md) | 69 | `result-track:55c11bd77d5c397a37b239d89209d319fe5ac862b35c31db0528fc43783dc163` |
| 6 | `def` | [biprodIsoProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/biprodisoprod--854fa58ad587231f13bec266.md) | 76 | `declaration-track:854fa58ad587231f13bec2669179f9d9b5a6228f404d3c2d2304060158943510` |
| 7 | `theorem` | [biprodIsoProd_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/biprodisoprod-inv-comp-fst--16f429b668c19d5d49a99ea1.md) | 81 | `result-track:16f429b668c19d5d49a99ea13114776c582766c4e81bc98a440565a4b8d6bcd3` |
| 8 | `theorem` | [biprodIsoProd_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/biprodisoprod-inv-comp-snd--6054b4495871fd27010553be.md) | 86 | `result-track:6054b4495871fd27010553becf98c73a3961a6a44237804478aa00328b818eab` |
| 9 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/lift--533665773045e314a83049f7.md) | 98 | `declaration-track:533665773045e314a83049f7674f4614632e17cbc2833a78f17f5155c60cc410` |
| 10 | `def` | [productLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/productlimitcone--881467d3b6fe932d06cd6a7d.md) | 111 | `declaration-track:881467d3b6fe932d06cd6a7df21f0d20618444ab2930ba14c00af935c7d95c8b` |
| 11 | `def` | [biproductIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/biproductisopi--f84fe9ff41b2c17e3e4cc3ed.md) | 131 | `declaration-track:f84fe9ff41b2c17e3e4cc3ed5f0ef76e44073208747dbc639cc8b2f8ca701114` |
| 12 | `theorem` | [biproductIsoPi_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/biproductisopi-inv-comp--14d21b4e460945cec35bcebe.md) | 136 | `result-track:14d21b4e460945cec35bcebe43a88163f6a54ef896adbcf4002d0a2af682f66a` |
| 13 | `def` | [lequivProdOfRightSplitExact'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/lequivprodofrightsplitexact--5cd4ff9e5ac614c80ee7e7b1.md) | 152 | `declaration-track:5cd4ff9e5ac614c80ee7e7b1e769165671e70aaa74b1d3c8cf9d483133d460ab` |
| 14 | `def` | [lequivProdOfLeftSplitExact'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/lequivprodofleftsplitexact--e9bd282db9e42e02d08d7eba.md) | 160 | `declaration-track:e9bd282db9e42e02d08d7eba722cf24c1c2730c9a9ca86c893c4573a0908f3a9` |
| 15 | `def` | [lequivProdOfRightSplitExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/lequivprodofrightsplitexact--9df540e8d79140f3c9f0adf3.md) | 181 | `declaration-track:9df540e8d79140f3c9f0adf33b68a801acee18f9badbdb20a183a394d96ee9ef` |
| 16 | `def` | [lequivProdOfLeftSplitExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant16b2a952aa5a4ea2958ac1b6ae4dc76713d104a96cdab4d975a1ad224cf48b28.lean/declarations/lequivprodofleftsplitexact--2a67106e9b99df4d026c3f0b.md) | 195 | `declaration-track:2a67106e9b99df4d026c3f0b12ca8959e3096ba79532619307a85c67d732262e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
