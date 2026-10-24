# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grp.Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b65155c9a8c74090b1322ab16aac148a547d742",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b65155c9a8c74090b1322ab16aac148a547d742`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Grp_` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Grp_Class.ofRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/grp-class-ofrepresentableby--c174774d218a492abe9dddfa.md) | 33 | `declaration-track:c174774d218a492abe9dddfae4b692170fe61eb4a669e793e7a4fc6538cc086b` |
| 2 | `abbrev` | [Hom.group](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/hom-group--797c3780ab74c3e24e61ab96.md) | 57 | `declaration-track:797c3780ab74c3e24e61ab96491cb1f0683c3874918880b70fcecf704607e2aa` |
| 3 | `lemma` | [Hom.inv_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/hom-inv-def--ae643a10f62c0e4c59fc07c4.md) | 67 | `result-track:ae643a10f62c0e4c59fc07c4f19a23693a3feee1b3f24d6d38a7da00bade31e2` |
| 4 | `def` | [yonedaGrpObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/yonedagrpobj--eac13ee520b79ab105fcebfb.md) | 72 | `declaration-track:eac13ee520b79ab105fcebfbf938e84aad5267c3edac3413be44cf0357b9795a` |
| 5 | `def` | [yonedaGrpObjRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/yonedagrpobjrepresentableby--43b81c09a8c04e7bce473e91.md) | 78 | `declaration-track:43b81c09a8c04e7bce473e91c35fe77e916eeb55c1bf89e7025674d3ef6eae3b` |
| 6 | `lemma` | [Grp_Class.ofRepresentableBy_yonedaGrpObjRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/grp-class-ofrepresentableby-yonedagrpobjrepresentableby--4a5647249649dbcab5156df1.md) | 82 | `result-track:4a5647249649dbcab5156df1863d98181b994780190c2361ecc4ff1a9e5ae71b` |
| 7 | `def` | [yonedaGrpObjIsoOfRepresentableBy](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/yonedagrpobjisoofrepresentableby--f38f66f5ef279336ace2459e.md) | 90 | `declaration-track:f38f66f5ef279336ace2459e2b965fc4b4535332b568edacdb9f474688ac6b21` |
| 8 | `def` | [yonedaGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/yonedagrp--db62110007c0d845b4b03c36.md) | 102 | `declaration-track:db62110007c0d845b4b03c367de44d6933dbf40b24b6015554591d8a4173e64f` |
| 9 | `lemma` | [yonedaGrp_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/yonedagrp-naturality--306991265855f310ab0b6305.md) | 107 | `result-track:306991265855f310ab0b6305cc9899a00b19b512828663c066d7ac74c0b86608` |
| 10 | `def` | [yonedaGrpFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/yonedagrpfullyfaithful--57aea9939c9b17ef525d4b3b.md) | 111 | `declaration-track:57aea9939c9b17ef525d4b3b5b62f118dc6cbb7588dce2a55d402df363e10749` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/instance--7cf0362f9f3a2d34634a3473.md) | 119 | `declaration-track:7cf0362f9f3a2d34634a34732a34f317ea6b79c632720ec72000d5eecf19d7b4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/instance--c24d569011e9426deb2361a6.md) | 120 | `declaration-track:c24d569011e9426deb2361a6e435b3ddd62dfcf35ccea4130c3d924389cbcce5` |
| 13 | `lemma` | [essImage_yonedaGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/essimage-yonedagrp--42952393a6484fd92cb228a9.md) | 122 | `result-track:42952393a6484fd92cb228a944ac1944befd09f8b8cccac3e9e0eecbf6a43f79` |
| 14 | `lemma` | [Grp_Class.comp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/grp-class-comp-inv--c0829da5087df5e54cd14932.md) | 133 | `result-track:c0829da5087df5e54cd14932961fb9f9b5b352c0e9746b2dafaf88ec16fc871a` |
| 15 | `lemma` | [Grp_Class.inv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/grp-class-inv-comp--d26dc11dd499a8b9f8abdfd7.md) | 137 | `result-track:d26dc11dd499a8b9f8abdfd75bd19e543057698d508660cdaa66fbb26a6178c6` |
| 16 | `lemma` | [Grp_Class.inv_eq_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant94d1a02910a2a12a25b75e2965e30ba6aef86bea22bc87c7a583f9fd2fd5fc4f.lean/declarations/grp-class-inv-eq-inv--8d6e13c0bd044a001aeda11d.md) | 140 | `result-track:8d6e13c0bd044a001aeda11df11cfa1c31bdc9ae90650021efb0d8806e83face` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
