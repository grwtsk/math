# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32edc9d8afd9de850b603a298bf28838281843e6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32edc9d8afd9de850b603a298bf28838281843e6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Opposites` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/const--9f00e68f3146a1187de71faf.md) | 33 | `declaration-track:9f00e68f3146a1187de71faf51c13347fdac7d23487f438afa3b53b104d4b6c1` |
| 2 | `def` | [opObjOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/opobjop--19ab070938f56ca4598c8df6.md) | 49 | `declaration-track:19ab070938f56ca4598c8df6f0b4d221524cb926b7b5b032812f64c63f5b4fde` |
| 3 | `def` | [opObjUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/opobjunop--4b8b76119882f5677809ae2d.md) | 57 | `declaration-track:4b8b76119882f5677809ae2db9ad663bf4b12d4bdd7920e2b6fd40f1db3b387f` |
| 4 | `theorem` | [opObjUnop_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/opobjunop-hom-app--b7c574946843f0415a56b74f.md) | 63 | `result-track:b7c574946843f0415a56b74f6150b5d9529f5064ad36f019bb0d7fc9295f6aa0` |
| 5 | `theorem` | [opObjUnop_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/opobjunop-inv-app--cb4a4b5877fcfc79166226f6.md) | 67 | `result-track:cb4a4b5877fcfc79166226f64f5892a529b3c908eef032f8a3ffd10a3e2f1e33` |
| 6 | `theorem` | [unop_functor_op_obj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/unop-functor-op-obj-map--f2092c7400463f827f9a3445.md) | 71 | `result-track:f2092c7400463f827f9a34450328cbbe33ef636aaab7b30cfc11d1b68ca6c16a` |
| 7 | `def` | [constComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/constcomp--e2178e9adc78b6e6647af4de.md) | 85 | `declaration-track:e2178e9adc78b6e6647af4de62d21ed37555a7ad7abb8b4235084c52573fe6a6` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/instance--8a9ed5518de6c5019f46c4ec.md) | 90 | `declaration-track:8a9ed5518de6c5019f46c4ec9ec204b9524e2777f5c832ee4fb4920ded2dfdfa` |
| 9 | `def` | [compConstIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/compconstiso--896a201cef720e8f6f07c00c.md) | 96 | `declaration-track:896a201cef720e8f6f07c00c42848bde071dfc9607f79f81c505b62bfb82f3aa` |
| 10 | `def` | [constCompWhiskeringLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantd50fed6a53be8fd9917b1a68b4bb0c5a78e2ad3b4ecba020d3fa8555c82627d3.lean/declarations/constcompwhiskeringleftiso--16d83791decc4753dada402f.md) | 105 | `declaration-track:16d83791decc4753dada402f650efefaa90a8d6a2d2a92b9d41205bd9df9f1e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
