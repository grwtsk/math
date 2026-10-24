# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cat.Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49dcb65227f7c2ac2dff2951c7e4d9b49f20ec41",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49dcb65227f7c2ac2dff2951c7e4d9b49f20ec41`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Bundled` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Strict` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/cat--abb03954fc8f1f6198b71ba6.md) | 42 | `declaration-track:abb03954fc8f1f6198b71ba65dbe14d557de9b269b2a3cf1fdeb7cd9ad0e7764` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/instance--8ba9db1485c6be968713490f.md) | 47 | `declaration-track:8ba9db1485c6be968713490f546ec8820af89fd546e4580b1e8a3d2844328123` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/instance--bfa924bfabee40220a2c1ad0.md) | 51 | `declaration-track:bfa924bfabee40220a2c1ad086e1d42cc7ee06e258928dcd6dd7ff600a887ca5` |
| 4 | `instance` | [str](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/str--2e1f60460110097fd36c6212.md) | 54 | `declaration-track:2e1f60460110097fd36c62128e98a7b25b8b7e6351a40bc83ccac46891459e14` |
| 5 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/of--6e602cfd2cc950164590d6eb.md) | 58 | `declaration-track:6e602cfd2cc950164590d6eba9ea88a5e5416072f8f9541cd512e43a87db176c` |
| 6 | `instance` | [bicategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/bicategory--89926d051d02b7d1d2d037aa.md) | 62 | `declaration-track:89926d051d02b7d1d2d037aaeb13fa38e52d20bf69a3174c2f172ddeaed02d42` |
| 7 | `instance` | [bicategory.strict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/bicategory-strict--368e4611612287d1d07856eb.md) | 76 | `declaration-track:368e4611612287d1d07856eb745036cdf27ed961c376992b513c5ce1efd5d0da` |
| 8 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/category--38ecfe7d3da28640781c1ca3.md) | 82 | `declaration-track:38ecfe7d3da28640781c1ca3868b0903dfa5411c35c8d6c575b5aeb77a1a06a6` |
| 9 | `theorem` | [id_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/id-obj--122ea5d8a42e1b6c89d7485a.md) | 86 | `result-track:122ea5d8a42e1b6c89d7485a9a477003c4a5168e2843af7a805052a6aeb10308` |
| 10 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/id-map--2c5014aa2c1c300ef671696f.md) | 90 | `result-track:2c5014aa2c1c300ef671696f0f49ee1f9b2f33f745c82d15a2fa438dbcea6c52` |
| 11 | `theorem` | [comp_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/comp-obj--db7bca1215377c5e3c9a250d.md) | 94 | `result-track:db7bca1215377c5e3c9a250d13adcafd6931031abc3dc08d11aede2b314dff9d` |
| 12 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/comp-map--09a5a61f6b307853c4e1f7b9.md) | 98 | `result-track:09a5a61f6b307853c4e1f7b9d635f113661cbc79675a9f3ab7105d867edc6821` |
| 13 | `theorem` | [id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/id-app--8f6edb50532c0ea5439de640.md) | 103 | `result-track:8f6edb50532c0ea5439de6408ce6f68ead23f0317db370d941f935a8b546979e` |
| 14 | `theorem` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/comp-app--dc6df7e23261c71d9405f2dc.md) | 106 | `result-track:dc6df7e23261c71d9405f2dc6de76d830661878fb1c394b8a5ddf4b833b26aec` |
| 15 | `lemma` | [whiskerLeft_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/whiskerleft-app--222f3b6c69e7d12d5e532dbe.md) | 110 | `result-track:222f3b6c69e7d12d5e532dbe2bb2327d2e542243e44eb852465075240a147ab9` |
| 16 | `lemma` | [whiskerRight_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/whiskerright-app--d8495e6df32fbfe2abd7a2b7.md) | 115 | `result-track:d8495e6df32fbfe2abd7a2b7b955b3e986b9a418d65d88adc81743284aa473a7` |
| 17 | `theorem` | [eqToHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/eqtohom-app--6d8f27e83d83e7fd2943fc08.md) | 120 | `result-track:6d8f27e83d83e7fd2943fc08585abd6771554cd4ce2b92ba223e5216232ee66d` |
| 18 | `lemma` | [leftUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/leftunitor-hom-app--43e634d1942c3403f2d1dae6.md) | 124 | `result-track:43e634d1942c3403f2d1dae62e9a915a3e5d4abdace377ce5570cc5420f59090` |
| 19 | `lemma` | [leftUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/leftunitor-inv-app--49a9aa3dddff9e34b148a856.md) | 127 | `result-track:49a9aa3dddff9e34b148a8563977a377b8edafbb60b4b820adb0cf67e67fb04a` |
| 20 | `lemma` | [rightUnitor_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/rightunitor-hom-app--bf56dac61a44b3633b100139.md) | 130 | `result-track:bf56dac61a44b3633b10013998615cc625ecca8bb52cf184961446acc2ec2461` |
| 21 | `lemma` | [rightUnitor_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/rightunitor-inv-app--c8e76a13965e509044a353e3.md) | 133 | `result-track:c8e76a13965e509044a353e3a39ee1ba2c05e2f8ddb3fa7012f3bd6f1932334a` |
| 22 | `lemma` | [associator_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/associator-hom-app--683a34c74d6d7c17abd3741d.md) | 136 | `result-track:683a34c74d6d7c17abd3741d63345ba7dac22ce9cada9f24de0679638de05ac7` |
| 23 | `lemma` | [associator_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/associator-inv-app--cb3ed5ccca3b0d79172b742b.md) | 140 | `result-track:cb3ed5ccca3b0d79172b742bb10414b6f4befa7fddc2670288f5854bf58a979f` |
| 24 | `theorem` | [id_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/id-eq-id--502e7fda80050d8b75f2a2bc.md) | 145 | `result-track:502e7fda80050d8b75f2a2bce954b5f2c9a17ef8c1f5942f1f22228d57ec7737` |
| 25 | `theorem` | [comp_eq_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/comp-eq-comp--2e4b3a97e0cc2a6e399682b8.md) | 148 | `result-track:2e4b3a97e0cc2a6e399682b82232480bbfc877423b13ffaba19d51311ac5c0b7` |
| 26 | `theorem` | [of_α](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/of--080bd7e7ba0ad7a4f8320353.md) | 150 | `result-track:080bd7e7ba0ad7a4f8320353cf5025c20abda563b1d7ce1704cb121aa790452e` |
| 27 | `theorem` | [coe_of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/coe-of--14815f9c44edd233a83b25c9.md) | 152 | `result-track:14815f9c44edd233a83b25c97f763ec38e338f11adf441602ad369e43c20ce20` |
| 28 | `def` | [toCatHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/tocathom--a52b09adc81c3fd0e6857bf4.md) | 159 | `declaration-track:a52b09adc81c3fd0e6857bf475586e72d799269d4122185692a4a250b4ac686c` |
| 29 | `def` | [ofCatHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/ofcathom--3b31fe7ea5f6f1b4b62c3e81.md) | 163 | `declaration-track:3b31fe7ea5f6f1b4b62c3e8148770df53184eb1ea46a28f6d24b4a35190d0f7e` |
| 30 | `theorem` | [to_ofCatHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/to-ofcathom--0fa3251b90ad13ee1356ae54.md) | 165 | `result-track:0fa3251b90ad13ee1356ae546d4e079a855afe58105ffbe639f38d8266fe41af` |
| 31 | `theorem` | [of_toCatHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/of-tocathom--ab20b37f85814ac410935dd8.md) | 168 | `result-track:ab20b37f85814ac410935dd8651885bbebb02a7bd9308dc20e00a617b01d4917` |
| 32 | `def` | [objects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/objects--b2311765e63955b959983d7f.md) | 176 | `declaration-track:b2311765e63955b959983d7f3f90a9a61ddfffcb3bffc3155fa1e892eff049f4` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/instance--8341f924e419f351d6ce836d.md) | 181 | `declaration-track:8341f924e419f351d6ce836d2bf36e96c26038fbd2430c9b4072493b206525e5` |
| 34 | `def` | [equivOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/equivofiso--149fdbd930b7915463f92ef8.md) | 188 | `declaration-track:149fdbd930b7915463f92ef86de084342542367f3b96e325333d7c397eb310a2` |
| 35 | `def` | [typeToCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/typetocat--4a80bbb7e9787788164c534f.md) | 203 | `declaration-track:4a80bbb7e9787788164c534fb063f8753ca6b944afedd488d19d463d2fa799c0` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/instance--e1ca8e85b2916c5de82e401d.md) | 216 | `declaration-track:e1ca8e85b2916c5de82e401d486f65b7d37d74eb1c7c8d0cf51fcce7416e0a2e` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cat/Variantd8ca408756328b686a0f736f6a40281b561d58efffc36f9cb7afe210139d5856.lean/declarations/instance--0922d163dda325dba62fa98c.md) | 220 | `declaration-track:0922d163dda325dba62fa98ce96d5f03dc99dd661e35322fe3969b032dc98aab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
