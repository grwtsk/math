# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.BifunctorFlip.Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ec57a6bc948946755e676b27abb80e478c8c8ac",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ec57a6bc948946755e676b27abb80e478c8c8ac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Bifunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.TotalComplexSymmetry` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasMapBifunctor_flip_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean/declarations/hasmapbifunctor-flip-iff--45db6e968b55fc2cb1c685e0.md) | 41 | `result-track:45db6e968b55fc2cb1c685e06fadc830c9b061eb46fd7df7097072f4e70a66b9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean/declarations/instance--a1d2dc4cff3d0cbdc494412f.md) | 47 | `declaration-track:a1d2dc4cff3d0cbdc494412f1d608b8617eee0d6c56361a805869f4f3ad8e0b0` |
| 3 | `def` | [mapBifunctorFlipIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean/declarations/mapbifunctorflipiso--bcce633eddd552e3acc55690.md) | 52 | `declaration-track:bcce633eddd552e3acc55690a616a37c30284b54bbd3257b2e7c7a665a7798aa` |
| 4 | `lemma` | [mapBifunctorFlipIso_flip](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/BifunctorFlip/Variantabfa46b628730bf59156151ada22b425393fffcbe47184694d0a652b58cfdbbb.lean/declarations/mapbifunctorflipiso-flip--1cbcb7081c6d75e8b44037ad.md) | 56 | `result-track:1cbcb7081c6d75e8b44037ad9b33ee065986622142c3e99ea5e468ccc772e23a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
