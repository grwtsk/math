# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Types.Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b1f8bdf7b124450a0ec0fac56303e6d3882c2b4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b1f8bdf7b124450a0ec0fac56303e6d3882c2b4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Canonical` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [typesGrothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/typesgrothendiecktopology--22cb48ddadaf24501cc059d7.md) | 33 | `declaration-track:22cb48ddadaf24501cc059d781ebe016b7ad5407b41e8ffc4c824317b5a029cb` |
| 2 | `def` | [discreteSieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/discretesieve--5f9b3312c27272af86eee63a.md) | 41 | `declaration-track:5f9b3312c27272af86eee63a620a9cf25af07fbd870fca4e7f7259048f0f305f` |
| 3 | `theorem` | [discreteSieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/discretesieve-mem--83ad282d5243a268a2befcdf.md) | 45 | `result-track:83ad282d5243a268a2befcdfe6374664b775c4f6e578e70449d0da03fdaf1d39` |
| 4 | `def` | [discretePresieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/discretepresieve--895252f48df154987181e8a2.md) | 49 | `declaration-track:895252f48df154987181e8a295478b9c70b97b43b5053aedd584d594d192a9c6` |
| 5 | `theorem` | [generate_discretePresieve_mem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/generate-discretepresieve-mem--9caa8a72446dd091de836655.md) | 52 | `result-track:9caa8a72446dd091de836655d53c168dd0c11a4ee37549ae003a50e5e5160c81` |
| 6 | `theorem` | [Presieve.isSheaf_yoneda'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/presieve-issheaf-yoneda--69c2b7417abee0f452d62a74.md) | 57 | `result-track:69c2b7417abee0f452d62a74f912496bab6eef6562509b40af56dc48a5056f2a` |
| 7 | `theorem` | [Presheaf.isSheaf_yoneda'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/presheaf-issheaf-yoneda--a818b4f9644bcb8a42253474.md) | 66 | `result-track:a818b4f9644bcb8a42253474e70e094de749f39177f99e0f40ed4191bdb4608f` |
| 8 | `def` | [yoneda'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/yoneda--0e5cfc172a65bb45a9888beb.md) | 75 | `declaration-track:0e5cfc172a65bb45a9888beba1311089035e939f849db1995015aa5775baf526` |
| 9 | `theorem` | [yoneda'_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/yoneda-comp--b7309685c2ba42101dc4b597.md) | 80 | `result-track:b7309685c2ba42101dc4b5976d9ed0d7ffefe77e4b329680685f642ec683f957` |
| 10 | `def` | [eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/eval--855d3b602f387823ba221262.md) | 87 | `declaration-track:855d3b602f387823ba2212628f65c69a12522b613e96ef14a19313c953cd32ba` |
| 11 | `def` | [typesGlue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/typesglue--1251393a50154e803d178370.md) | 94 | `declaration-track:1251393a50154e803d17837005b36357bf2f0ad1232d4a2b0927cf5c11eda609` |
| 12 | `theorem` | [eval_typesGlue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/eval-typesglue--86e25c6b93ca3e50c552f450.md) | 106 | `result-track:86e25c6b93ca3e50c552f4506f9f4bdaf5083ae95c9d0b135cc281d0ed0b081b` |
| 13 | `theorem` | [typesGlue_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/typesglue-eval--1811ade7fb198a4e8372e9ac.md) | 111 | `result-track:1811ade7fb198a4e8372e9ac0da8a27557767964ea4a5af0d71c12e6ca2a9807` |
| 14 | `def` | [evalEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/evalequiv--6e63ef4276c0abb5ce1116a4.md) | 124 | `declaration-track:6e63ef4276c0abb5ce1116a444be375cedc819ece3455b1aef2c263bc838921a` |
| 15 | `theorem` | [eval_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/eval-map--d62fbb7aae1e624749ab97b0.md) | 132 | `result-track:d62fbb7aae1e624749ab97b062672d08b048fe6b6b15fd063a3f060139a9f4cd` |
| 16 | `def` | [equivYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/equivyoneda--a2fef9bb060de5d2381d17b7.md) | 138 | `declaration-track:a2fef9bb060de5d2381d17b7309b2f9782253c306d6f3400ef24eb142522504a` |
| 17 | `def` | [equivYoneda'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/equivyoneda--3ed303aef98fbbb8e940a878.md) | 146 | `declaration-track:3ed303aef98fbbb8e940a878a3b47fd2b3d11cde791129a70ea49e127d934cba` |
| 18 | `theorem` | [eval_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/eval-app--5a2b9af8b856131d1d5bc566.md) | 153 | `result-track:5a2b9af8b856131d1d5bc56652e4e3540ff88cb1166b146362431046929dba36` |
| 19 | `def` | [typeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/typeequiv--8f6ba5df845f57a94fba4b68.md) | 161 | `declaration-track:8f6ba5df845f57a94fba4b6842bfca35f549bf31f58d681c01654ee9fd874677` |
| 20 | `instance` | [subcanonical_typesGrothendieckTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/subcanonical-typesgrothendiecktopology--8e51823b1e8aa956cda9cb82.md) | 183 | `declaration-track:8e51823b1e8aa956cda9cb825627517c229b32f9dbdcabfb91cecb54017a7c46` |
| 21 | `theorem` | [typesGrothendieckTopology_eq_canonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant3c5b3943bdb56988dc477719fb8ab8b82dd24708a2fa1ec825ea924725a692fc.lean/declarations/typesgrothendiecktopology-eq-canonical--8516f6977ea7f601423ec31c.md) | 186 | `result-track:8516f6977ea7f601423ec31c7cbe334b15cbddb7fcc24a88a57c1675ba0c991f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
