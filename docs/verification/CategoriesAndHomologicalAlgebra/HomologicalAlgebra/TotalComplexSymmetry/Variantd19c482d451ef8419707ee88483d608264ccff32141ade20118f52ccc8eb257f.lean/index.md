# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TotalComplexSymmetry.Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "055aafaffef7841a260aa6b466291349e483d268",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `055aafaffef7841a260aa6b466291349e483d268`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.TotalComplex` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/instance--f63e3208e0b67f908c768e3a.md) | 34 | `declaration-track:f63e3208e0b67f908c768e3a5e52788b3226b773098a2c32ada23722016f6c80` |
| 2 | `lemma` | [flip_hasTotal_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/flip-hastotal-iff--53a83a313f29f3dbe19e51d6.md) | 38 | `result-track:53a83a313f29f3dbe19e51d6b8438f27d57c96edf8f3c36d5b30f349b944d157` |
| 3 | `def` | [totalFlipIsoX](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/totalflipisox--335754f5af5f958bcd1beda7.md) | 52 | `declaration-track:335754f5af5f958bcd1beda720db9204c8167e3f3a911ad40bcfb5d2a840da8f` |
| 4 | `lemma` | [totalFlipIsoX_hom_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/totalflipisox-hom-d--95c510caad3adba94af0adc3.md) | 61 | `result-track:95c510caad3adba94af0adc331bf22f7479504c78d3ae5b990ce0efdce3f0fea` |
| 5 | `lemma` | [totalFlipIsoX_hom_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/totalflipisox-hom-d--a7d537cb83735646449c6847.md) | 82 | `result-track:a7d537cb83735646449c68474ff31c4fdd8431999fceb8bcfd03e70850dde407` |
| 6 | `def` | [totalFlipIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/totalflipiso--538dc1b852033474bddcf699.md) | 104 | `declaration-track:538dc1b852033474bddcf699032ec681975eefb0773c8c8b953ae8a0d9ca877a` |
| 7 | `lemma` | [totalFlipIso_hom_f_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/totalflipiso-hom-f-d--c751149490400231d815678b.md) | 111 | `result-track:c751149490400231d815678b9fbe765b0628154643bc3b12fdcd72daf2d4773a` |
| 8 | `lemma` | [totalFlipIso_hom_f_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/totalflipiso-hom-f-d--104b84ad3f82200c8f945d42.md) | 117 | `result-track:104b84ad3f82200c8f945d42fc5fd08856158830b6f2c8d53f1af60fbf43ffcf` |
| 9 | `lemma` | [ιTotal_totalFlipIso_f_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/total-totalflipiso-f-hom--bf1a5cc1b076794157db416d.md) | 123 | `result-track:bf1a5cc1b076794157db416d6f6b605802cc14124842d92be4b35e2f889592a7` |
| 10 | `lemma` | [ιTotal_totalFlipIso_f_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/total-totalflipiso-f-inv--dd74e54e05005d7b713ce83f.md) | 131 | `result-track:dd74e54e05005d7b713ce83f30fcb0503866cdf1100dc2bbe1c30f6815c5dc94` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/instance--de9f2be0e9e7c83df9e630e7.md) | 138 | `declaration-track:de9f2be0e9e7c83df9e630e775af6ebee3553850cf6f9a02d0eead25bb07ee96` |
| 12 | `lemma` | [flip_totalFlipIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variantd19c482d451ef8419707ee88483d608264ccff32141ade20118f52ccc8eb257f.lean/declarations/flip-totalflipiso--66273332056b8011e800dade.md) | 144 | `result-track:66273332056b8011e800dade59b6c92b935e5496c28c6c72a9ccb811bbb5a746` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
