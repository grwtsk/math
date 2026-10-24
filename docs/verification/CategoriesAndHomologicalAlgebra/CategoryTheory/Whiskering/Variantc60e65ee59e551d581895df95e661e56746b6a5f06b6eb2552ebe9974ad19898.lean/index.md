# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Whiskering.Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ae15f9f00badf247d7ce7e38e300a451e6adee8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ae15f9f00badf247d7ce7e38e300a451e6adee8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multicospanComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/multicospancomp--49b29e5ac88f29a06448cfff.md) | 59 | `declaration-track:49b29e5ac88f29a06448cfff2402ce1b29d1168d106ac022bb597ee452f861e7` |
| 2 | `theorem` | [multicospanComp_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/multicospancomp-app-left--2f3db2d54ab1a6c1a87380b0.md) | 71 | `result-track:2f3db2d54ab1a6c1a87380b041b7957810a7ab17d233235596ab0059c1bb187f` |
| 3 | `theorem` | [multicospanComp_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/multicospancomp-app-right--451b33c09796c41c9cf2007d.md) | 77 | `result-track:451b33c09796c41c9cf2007d3963b7dfd9cf3dba48f897336d1ede89cebb728a` |
| 4 | `theorem` | [multicospanComp_hom_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/multicospancomp-hom-app-left--4dedec9a36178ae54a946d0b.md) | 83 | `result-track:4dedec9a36178ae54a946d0b5035a90dc6fc497b7b7720691eb9b44499f491eb` |
| 5 | `theorem` | [multicospanComp_hom_app_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/multicospancomp-hom-app-right--91340127dee8bb214fb68c70.md) | 89 | `result-track:91340127dee8bb214fb68c7009e50fa113dfcbfef2fe2768267e3bc930beb1e7` |
| 6 | `theorem` | [multicospanComp_hom_inv_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/multicospancomp-hom-inv-left--7d4296a22dbd9f1e6abe920c.md) | 95 | `result-track:7d4296a22dbd9f1e6abe920cf0f1c4efb57c6331cc96e47ec8326f20c63d8bee` |
| 7 | `theorem` | [multicospanComp_hom_inv_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/multicospancomp-hom-inv-right--7888879e5da6322da2aeb7ee.md) | 101 | `result-track:7888879e5da6322da2aeb7ee4776b4f641d84bf64313c6ef7293624a5ce00db8` |
| 8 | `def` | [mapMultifork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/mapmultifork--fef6660615bb66334a82c2a8.md) | 109 | `declaration-track:fef6660615bb66334a82c2a8f1ca71ae5fd01f24f2b2423a6e97d3d572271a5a` |
| 9 | `theorem` | [Presheaf.IsSheaf.comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/presheaf-issheaf-comp--25ad95042bc110f27e256744.md) | 129 | `result-track:25ad95042bc110f27e2567445ae146c72fd0b9bacae7910ba74d92fe4d85727f` |
| 10 | `def` | [sheafCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/sheafcompose--6b612e3d30a3c7db2ad5391c.md) | 144 | `declaration-track:6b612e3d30a3c7db2ad5391c1cb809914a041fba6cadd9ec8b958320930e67da` |
| 11 | `def` | [sheafCompose_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/sheafcompose-map--fbec67a30df2d453c6c9fd9f.md) | 158 | `declaration-track:fbec67a30df2d453c6c9fd9ff0840f12bfd0aa7d41e87255030dcbc0dbf29d42` |
| 12 | `lemma` | [sheafCompose_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/sheafcompose-id--468f08e238216b555185ee38.md) | 162 | `result-track:468f08e238216b555185ee3805b1e57d8b5017f3beb78f7cc559ef78e4c20d2b` |
| 13 | `lemma` | [sheafCompose_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Whiskering/Variantc60e65ee59e551d581895df95e661e56746b6a5f06b6eb2552ebe9974ad19898.lean/declarations/sheafcompose-comp--afda0ee2cf8f1cc8a1c426ee.md) | 165 | `result-track:afda0ee2cf8f1cc8a1c426ee3d17cdb6603e7534f4f8567b38df911d4cf4caf7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
