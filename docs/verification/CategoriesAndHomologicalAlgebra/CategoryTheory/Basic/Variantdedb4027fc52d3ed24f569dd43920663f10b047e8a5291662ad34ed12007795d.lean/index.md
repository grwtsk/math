# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5cf2907343ea0bfd65e5f99eb7a4b7ae53066bc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5cf2907343ea0bfd65e5f99eb7a4b7ae53066bc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FreeMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/freemonoidalcategory--ca2b4479ebe15ead5890bcca.md) | 45 | `declaration-track:ca2b4479ebe15ead5890bcca451622496bd8db9e909cc4195d0d341886229dca` |
| 2 | `inductive` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/hom--7051322530f914a6a541b01c.md) | 65 | `declaration-track:7051322530f914a6a541b01c163a699ba8d53a960916af8383854c5770fa9d27` |
| 3 | `inductive` | [HomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/homequiv--dc585475b2d72c264244f95d.md) | 81 | `declaration-track:dc585475b2d72c264244f95d444a99e4da72bc4dc92b47fd3c24e51d26b29eba` |
| 4 | `def` | [setoidHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/setoidhom--9a1b3c724217789f59966c94.md) | 124 | `declaration-track:9a1b3c724217789f59966c940772ae4dab8b762197d07dc6958ac8fad29113cb` |
| 5 | `instance` | [categoryFreeMonoidalCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/categoryfreemonoidalcategory--a2b112f270836332c2db8501.md) | 136 | `declaration-track:a2b112f270836332c2db8501af226e5518779c343a5cc56f571ffc7df4db759c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/instance--b1d6aefc0b0394d53e6495a1.md) | 156 | `declaration-track:b1d6aefc0b0394d53e6495a117dec825f968bcb422fdc66709853b32cbd82599` |
| 7 | `theorem` | [mk_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/mk-comp--4e379226906dbe67a703a197.md) | 207 | `result-track:4e379226906dbe67a703a19727fb261cd6a732780a493066f7a8bc8c9badab50` |
| 8 | `theorem` | [mk_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/mk-tensor--2ee8ea7b7f6e25f2031abcfb.md) | 213 | `result-track:2ee8ea7b7f6e25f2031abcfb0cbb816ed2b78ed572cddf5633904481bf431938` |
| 9 | `theorem` | [mk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/mk-id--b28f0ff53c4c18aaacec9100.md) | 219 | `result-track:b28f0ff53c4c18aaacec9100309e05bdd8966a098719effd16b0a9e9ec6d79e4` |
| 10 | `theorem` | [mk_α_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/mk-hom--ac06719c91185b47366190c4.md) | 224 | `result-track:ac06719c91185b47366190c47441f5f87f00098e1dfc90603f521530caec624f` |
| 11 | `theorem` | [mk_α_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/mk-inv--95818690316afd97e2450870.md) | 229 | `result-track:95818690316afd97e245087051b503b0ea51d308e9151ecdd407f55806082f8a` |
| 12 | `theorem` | [mk_ρ_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/mk-hom--b17fa8ea1386e33cbbe62b0c.md) | 234 | `result-track:b17fa8ea1386e33cbbe62b0cd92d85c2b247bda681d96dda1f4a94c47a5c8a6b` |
| 13 | `theorem` | [mk_ρ_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/mk-inv--5fc00690ce707363a54b48b5.md) | 239 | `result-track:5fc00690ce707363a54b48b59566e3abce185314fbf3329ee2506bb4a61c38a2` |
| 14 | `theorem` | [mk_l_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/mk-l-hom--348617403c16599753788349.md) | 244 | `result-track:348617403c165997537883498852e18c3b63a3b3865b85dc0411b400bb223ac2` |
| 15 | `theorem` | [mk_l_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/mk-l-inv--b0208aabc7fbe58c936c169f.md) | 249 | `result-track:b0208aabc7fbe58c936c169f37a8d21a2ba4e34946507ebbd4554a3c5282a415` |
| 16 | `theorem` | [tensor_eq_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/tensor-eq-tensor--1139113ea983a5745281480d.md) | 254 | `result-track:1139113ea983a5745281480dca027fe92a8286d674d6779c45bec7e6131c94d1` |
| 17 | `theorem` | [unit_eq_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/unit-eq-unit--144d3ae48cb87ef51b977764.md) | 259 | `result-track:144d3ae48cb87ef51b977764586092b39c5a6b1c552a0012dce02c860c1ce2c4` |
| 18 | `def` | [projectObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/projectobj--8f3f9510ad73f97a49240749.md) | 268 | `declaration-track:8f3f9510ad73f97a492407498842baf4636003294f766be8a6f09dc0d6eb8539` |
| 19 | `def` | [projectMapAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/projectmapaux--88647d05163249a22e17c2e5.md) | 282 | `declaration-track:88647d05163249a22e17c2e5d79cab1f053c761df19eeb617e8738b643cae2cb` |
| 20 | `def` | [projectMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/projectmap--98ede5a3cb898cbf7cb76bbe.md) | 296 | `declaration-track:98ede5a3cb898cbf7cb76bbeea3dca852e11acbdea79fb69675ba7e4debf3e7d` |
| 21 | `def` | [project](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdedb4027fc52d3ed24f569dd43920663f10b047e8a5291662ad34ed12007795d.lean/declarations/project--36343355d674ff377c563043.md) | 335 | `declaration-track:36343355d674ff377c563043334a003c683b0ca203b135a25a6aab688f020002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
