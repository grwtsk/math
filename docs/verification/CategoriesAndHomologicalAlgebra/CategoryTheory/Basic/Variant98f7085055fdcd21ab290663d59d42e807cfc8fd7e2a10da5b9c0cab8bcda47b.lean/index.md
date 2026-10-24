# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f4845e1c6666ae35037f9c5a1cd726c2145d104",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f4845e1c6666ae35037f9c5a1cd726c2145d104`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MvQPF](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/mvqpf--5ca77fa20adec88b861ef4be.md) | 93 | `declaration-track:5ca77fa20adec88b861ef4be6d210d36d114a3b9e05eccc7c7f8f62750afe417` |
| 2 | `theorem` | [id_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/id-map--3cfc97f6a34f28a746f61ccb.md) | 112 | `result-track:3cfc97f6a34f28a746f61ccbfb669393e9d91a487a0df2f7c5d175a83d807582` |
| 3 | `theorem` | [comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/comp-map--b6699651939a13b36dfb91ed.md) | 120 | `result-track:b6699651939a13b36dfb91ed9cec79d499fe4c19f785b74e781c4afd686f09e4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/instance--38f6b299891246fdcabbceaf.md) | 128 | `declaration-track:38f6b299891246fdcabbceaf31dadbe4a7b0aef5d3f77ca2dffad380b74ad510` |
| 5 | `theorem` | [liftP_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/liftp-iff--3096050e6bb4fd99df4310ed.md) | 134 | `result-track:3096050e6bb4fd99df4310edfcccd2838f1d7eacfabda8910235243e59414d32` |
| 6 | `theorem` | [liftR_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/liftr-iff--1b67fb1c1e217d3b1d70dadc.md) | 149 | `result-track:1b67fb1c1e217d3b1d70dadcb7f1e756d18726602dcbbd79e133f0333f0863b6` |
| 7 | `theorem` | [mem_supp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/mem-supp--0a8a7b03f544c501dd40f915.md) | 172 | `result-track:0a8a7b03f544c501dd40f915e36030ff5f3a03017fac7fb08af3a8abdf2bd58f` |
| 8 | `theorem` | [supp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/supp-eq--dc7a22eb219e26ee10f5dc4d.md) | 188 | `result-track:dc7a22eb219e26ee10f5dc4dfc5cf25ed12a5b94653aa2a45441c4d096031565` |
| 9 | `theorem` | [has_good_supp_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/has-good-supp-iff--317a2fc279e02db08201c761.md) | 192 | `result-track:317a2fc279e02db08201c7618e431992a2e874b3bb2c79a8665a22550c9cb9f1` |
| 10 | `def` | [IsUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/isuniform--95e0efe498745fd4c3fbdf38.md) | 220 | `declaration-track:95e0efe498745fd4c3fbdf38874da4dc3e462aa026b4d34d459a11831ee1d97f` |
| 11 | `def` | [LiftPPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/liftppreservation--e160ff0b27297051de8bd11e.md) | 226 | `declaration-track:e160ff0b27297051de8bd11e64d8fdab9cc6b5657d6d46a72c62bba64727bb17` |
| 12 | `def` | [SuppPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/supppreservation--3f49564ef79e2c2bd74d587b.md) | 231 | `declaration-track:3f49564ef79e2c2bd74d587bb0c6a33b6efa954f8ebe4edbc7c373b53d236e1b` |
| 13 | `theorem` | [supp_eq_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/supp-eq-of-isuniform--44960206594ad67340c339f5.md) | 235 | `result-track:44960206594ad67340c339f56fc2ac86d92d50fb0a03cec995d834fe2212e393` |
| 14 | `theorem` | [liftP_iff_of_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/liftp-iff-of-isuniform--da8443d435844be3fdeb4ec0.md) | 244 | `result-track:da8443d435844be3fdeb4ec0a429ca6f0147eacc045423c3622ad5020d3f20c1` |
| 15 | `theorem` | [supp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/supp-map--85a158695d32665b4f7232bd.md) | 259 | `result-track:85a158695d32665b4f7232bd82b449552f693dcefd9ec1af2a765cb4b13340f3` |
| 16 | `theorem` | [suppPreservation_iff_isUniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/supppreservation-iff-isuniform--b32b8cce7a75011ac1a7bae9.md) | 266 | `result-track:b32b8cce7a75011ac1a7bae931c4ab2fea955b2f3907b5b8643cdcc1da122f3c` |
| 17 | `theorem` | [suppPreservation_iff_liftpPreservation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/supppreservation-iff-liftppreservation--2809e352ccb74c53ce123711.md) | 275 | `result-track:2809e352ccb74c53ce1237115b634108ad302fe166554bbfa641e96762641c41` |
| 18 | `theorem` | [liftpPreservation_iff_uniform](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant98f7085055fdcd21ab290663d59d42e807cfc8fd7e2a10da5b9c0cab8bcda47b.lean/declarations/liftppreservation-iff-uniform--c35c092d91c567eb8109455f.md) | 290 | `result-track:c35c092d91c567eb8109455f0a2aa780dd0199dda580455815b99a6f39877189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
