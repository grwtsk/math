# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Forget.Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b04becac2393c1831d27df0b0f7f6842d1449961",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b04becac2393c1831d27df0b0f7f6842d1449961`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/forget--25742357a9502d7afec092a0.md) | 56 | `declaration-track:25742357a9502d7afec092a0dac5436b0c7063112eb4addc7036f13d5a1b4385` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/instance--98af5f13f8f6f56bfeddc304.md) | 60 | `declaration-track:98af5f13f8f6f56bfeddc30471b65e805c005766b7ad67196e852bbd0482c1a0` |
| 3 | `lemma` | [ConcreteCategory.forget_map_eq_ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/concretecategory-forget-map-eq-ofhom--9ce883d1a96470f49d8f489d.md) | 66 | `result-track:9ce883d1a96470f49d8f489d590d1e50d201de74508b5bba89624f865b88544b` |
| 4 | `theorem` | [forget_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/forget-obj--448fb390d3a2e1605680b958.md) | 73 | `result-track:448fb390d3a2e1605680b958db3aff95cab037ac911e434d653353afcccd919b` |
| 5 | `theorem` | [congr_fun](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/congr-fun--2f6b4334adfbdda2850a20e7.md) | 78 | `result-track:2f6b4334adfbdda2850a20e7c6922ab808769dc7bae2f1dd85f0712094dca367` |
| 6 | `theorem` | [congr_arg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/congr-arg--33f309290f2a558106078dc6.md) | 84 | `result-track:33f309290f2a558106078dc6a995441bbeb1a523b964dc6a5766f875ff2022b4` |
| 7 | `class` | [HasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/hasforget--dc3b94d269c8e034f7d8d918.md) | 96 | `declaration-track:dc3b94d269c8e034f7d8d9180715faae590e98739a01df7703680a426cf7e40b` |
| 8 | `abbrev` | [forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/forget--2721fd3e491e70e17bcd20b3.md) | 104 | `declaration-track:2721fd3e491e70e17bcd20b3b7f25fbce9388d59c3c200125be25d90d2a96896` |
| 9 | `lemma` | [forget₂_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/forget-comp-apply--216a340f7ed92745360410c9.md) | 109 | `result-track:216a340f7ed92745360410c904f82bca67697f23e428be895c08f3398f3f3839` |
| 10 | `instance` | [forget₂_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/forget-faithful--1a52e1e1dbddaa3c0a5f73f3.md) | 114 | `declaration-track:1a52e1e1dbddaa3c0a5f73f3702772b3af519ef76a8b0354649055e0bd7d2ee5` |
| 11 | `instance` | [InducedCategory.hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/inducedcategory-hasforget--68b8bf4c0ccec59054f690f3.md) | 117 | `declaration-track:68b8bf4c0ccec59054f690f384e6ee93e52bba92c019e099d9cf4dba20ed8673` |
| 12 | `instance` | [ObjectProperty.FullSubcategory.hasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/objectproperty-fullsubcategory-hasforget--0e592b95883ce716399af51e.md) | 121 | `declaration-track:0e592b95883ce716399af51e6e23ff1cbf592a39de057a81626a2819b6bd4143` |
| 13 | `def` | [HasForget₂.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/hasforget-mk--6bf157eef11aa1beb5841ce9.md) | 133 | `declaration-track:6bf157eef11aa1beb5841ce9be12ad7eb8c25b3934efcea79085bd7c3dec86d0` |
| 14 | `def` | [HasForget₂.trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/hasforget-trans--2bd076cc494827ffb33a8b6d.md) | 144 | `declaration-track:2bd076cc494827ffb33a8b6da2488b44069edf05b7590bd71e6549b1f82bcf15` |
| 15 | `lemma` | [ConcreteCategory.forget₂_comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/concretecategory-forget-comp-apply--cb8eb02af6a2d2ae393651ca.md) | 153 | `result-track:cb8eb02af6a2d2ae393651cacb9c9f845b4cb5db0c86181d400358e82bf2d0f1` |
| 16 | `instance` | [hom_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variantf4dba36cb2159150e5909c0757088986cfcf81a3e68d176f9cf2e254ecc2547c.lean/declarations/hom-isiso--944d30d2076668297a0113db.md) | 159 | `declaration-track:944d30d2076668297a0113db3125bd864145df90f6bb64e1f29e7947c8e68eef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
