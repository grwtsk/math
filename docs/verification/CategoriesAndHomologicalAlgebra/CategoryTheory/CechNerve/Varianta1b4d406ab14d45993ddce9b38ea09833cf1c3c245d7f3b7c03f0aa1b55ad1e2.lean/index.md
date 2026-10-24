# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CechNerve.Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "579e504bc2a691d81a22ea18557c055dccc8d9c3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `579e504bc2a691d81a22ea18557c055dccc8d9c3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialObject` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Arrow` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/cechnerve--ab954599da3e91000fe4a270.md) | 61 | `declaration-track:ab954599da3e91000fe4a270d9145513e171bd2d695c466d93a6b1ce9716c01c` |
| 2 | `def` | [mapCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/mapcechnerve--7ff6689a3b694f23c46b437c.md) | 69 | `declaration-track:7ff6689a3b694f23c46b437cd0eccef8d9cbd7dcfc41fb007066086bc1da6d8c` |
| 3 | `def` | [augmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/augmentedcechnerve--17a4f3081e4822b71c319a38.md) | 80 | `declaration-track:17a4f3081e4822b71c319a38872a7d28263669e7c377e1f38c37ecb60f85e081` |
| 4 | `def` | [mapAugmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/mapaugmentedcechnerve--f0f29717f125387174031852.md) | 88 | `declaration-track:f0f29717f125387174031852d2298674393ea2956209b4618c137e2bc9a17655` |
| 5 | `def` | [cechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/cechnerve--2133d1e330ea590f57604c8a.md) | 107 | `declaration-track:2133d1e330ea590f57604c8a2c151ffaf2483a09bb9095c709a5942a32fdbe27` |
| 6 | `def` | [augmentedCechNerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/augmentedcechnerve--07e96879c1da324cf45a17e4.md) | 114 | `declaration-track:07e96879c1da324cf45a17e4fc06cd48d23077d21ea756c97e3ab0b61b9cbaef` |
| 7 | `def` | [equivalenceRightToLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/equivalencerighttoleft--864d590142550f6f02486d0f.md) | 121 | `declaration-track:864d590142550f6f02486d0f4520b182f674faf6ab51820934631fd1e702c913` |
| 8 | `def` | [equivalenceLeftToRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/equivalencelefttoright--922506b8a767688e6178745e.md) | 133 | `declaration-track:922506b8a767688e6178745ec582b27bff1fdcd89fabff270ca8f7a9299e220c` |
| 9 | `def` | [cechNerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/cechnerveequiv--febce6617161fbc76c47b192.md) | 156 | `declaration-track:febce6617161fbc76c47b1926a2f111abeeff7553022fe8f307dea241020ea37` |
| 10 | `abbrev` | [cechNerveAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/cechnerveadjunction--0fd4f21be56b10674280c958.md) | 187 | `declaration-track:0fd4f21be56b10674280c958311f5a04561771804638860112ded1195c379da3` |
| 11 | `def` | [cechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/cechconerve--951c4b826ba500b2792f3e2a.md) | 206 | `declaration-track:951c4b826ba500b2792f3e2a4c99738f421515d9abff60173529a2dc95b0f4b1` |
| 12 | `def` | [mapCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/mapcechconerve--31e043edf98f927a605e68f6.md) | 216 | `declaration-track:31e043edf98f927a605e68f6922109de9a56b72f5a153434f02a32c94bc52941` |
| 13 | `def` | [augmentedCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/augmentedcechconerve--7184612640140152084f348e.md) | 227 | `declaration-track:7184612640140152084f348e2482a128ba9692c7d3b542f42e2de2073307fdea` |
| 14 | `def` | [mapAugmentedCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/mapaugmentedcechconerve--bd807e675c6b6c46a814a920.md) | 236 | `declaration-track:bd807e675c6b6c46a814a9206b41bc3ead7a180ed40844010a6d8a3663e24935` |
| 15 | `def` | [cechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/cechconerve--c54ac41b69cba7151c028cfc.md) | 255 | `declaration-track:c54ac41b69cba7151c028cfccdea27b5af5957c70ad40f1407d52dd06c2ef701` |
| 16 | `def` | [augmentedCechConerve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/augmentedcechconerve--81374995efcf1675d9d72bbc.md) | 262 | `declaration-track:81374995efcf1675d9d72bbc534b50c00e0193c26469b8a04c56adb216dc2050` |
| 17 | `def` | [equivalenceLeftToRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/equivalencelefttoright--14e86987be1e1912d265221b.md) | 269 | `declaration-track:14e86987be1e1912d265221b6554792c4876ff6d41cd69afa6c31ca5b5f748b1` |
| 18 | `def` | [equivalenceRightToLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/equivalencerighttoleft--29a54c5ed9def9954f4162bd.md) | 282 | `declaration-track:29a54c5ed9def9954f4162bd4a65c489cf1544b5feb27a874c6f51743b70c410` |
| 19 | `def` | [cechConerveEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/cechconerveequiv--6e1ef818f76a4c2fc2d9f8ff.md) | 312 | `declaration-track:6e1ef818f76a4c2fc2d9f8ff06b4609087af3aca0cb5f660e64b64bcdd4d2746` |
| 20 | `abbrev` | [cechConerveAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/cechconerveadjunction--188f0e494c6fda9669873765.md) | 345 | `declaration-track:188f0e494c6fda9669873765b1e10af037d49220e210db6ee85fcbbffebd1fa3` |
| 21 | `def` | [cechNerveTerminalFrom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/cechnerveterminalfrom--2bfd52f307148aae202acfd4.md) | 352 | `declaration-track:2bfd52f307148aae202acfd4dbcea9cf07cfa7bf6db1a677f0993b5679abe55c` |
| 22 | `def` | [wideCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/widecospan--11b6fb15f12fc7827f512bf4.md) | 363 | `declaration-track:11b6fb15f12fc7827f512bf475727085bbe4992c2e57dac829416b9f1f4365d1` |
| 23 | `instance` | [uniqueToWideCospanNone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/uniquetowidecospannone--0688a127402ad655dd98bbac.md) | 367 | `declaration-track:0688a127402ad655dd98bbac4a87edbe5a31c497bd82b015b2f17d840b7b2d9c` |
| 24 | `def` | [wideCospan.limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/widecospan-limitcone--55ad7ff9f27e7b1e2a9fae0d.md) | 375 | `declaration-track:55ad7ff9f27e7b1e2a9fae0de93632ceefd6c94311cb86894b924c2ea1ff43d1` |
| 25 | `instance` | [hasWidePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/haswidepullback--2f49630200f4cb7582980a8e.md) | 399 | `declaration-track:2f49630200f4cb7582980a8ede6a8d35481365b377c369945b9501bf90d7ba64` |
| 26 | `instance` | [hasWidePullback'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/haswidepullback--b1e28db067c0c75c6f0885c3.md) | 408 | `declaration-track:b1e28db067c0c75c6f0885c374c579ca3b2fbaf57f13d2bbfdd20865b2441838` |
| 27 | `instance` | [hasLimit_wideCospan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/haslimit-widecospan--02d1d03611254e847a347f7f.md) | 415 | `declaration-track:02d1d03611254e847a347f7f4f540a38aa65c4e11a118da27d39390e62f0d3b4` |
| 28 | `def` | [wideCospan.limitIsoPi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/widecospan-limitisopi--467ce59f9428c9d31eb2e098.md) | 419 | `declaration-track:467ce59f9428c9d31eb2e098d8c3ba334b7186ec945503b328518f170ec5c343` |
| 29 | `lemma` | [wideCospan.limitIsoPi_inv_comp_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/widecospan-limitisopi-inv-comp-pi--6b0b993348f3828861e857ad.md) | 426 | `result-track:6b0b993348f3828861e857ad9a81a06420460f3095a12f39235b73915f929c2a` |
| 30 | `lemma` | [wideCospan.limitIsoPi_hom_comp_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/widecospan-limitisopi-hom-comp-pi--6d12040e3cb0862590479483.md) | 431 | `result-track:6d12040e3cb0862590479483a23f9f5f0947aa160901a62364cfbfcc2505c6d5` |
| 31 | `def` | [iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Varianta1b4d406ab14d45993ddce9b38ea09833cf1c3c245d7f3b7c03f0aa1b55ad1e2.lean/declarations/iso--c37b21328d6df1d6e85601a7.md) | 438 | `declaration-track:c37b21328d6df1d6e85601a75cc685f41c2337cb96188825bb1a27ca2fdb5876` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
