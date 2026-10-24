# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Fractions.Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c62f1a390d971f6e97c9b50d265a9e9ebd7bf89",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c62f1a390d971f6e97c9b50d265a9e9ebd7bf89`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.HomologySequence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Embedding.CochainComplex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/declarations/instance--6667d358fe0bbc36c6b22003.md) | 30 | `declaration-track:6667d358fe0bbc36c6b22003e36f8cccb96b7953caae553f4674eb63e5ccaa6b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/declarations/instance--a850c3a8ff6912b00e48e04d.md) | 34 | `declaration-track:a850c3a8ff6912b00e48e04de09c6392d35773dc45590edec4497e73e3de053d` |
| 3 | `lemma` | [right_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/declarations/right-fac--f6aecfef10bde8d20fcdb385.md) | 40 | `result-track:f6aecfef10bde8d20fcdb385620c99fa26e01295203fba8f89dc4121af573fdc` |
| 4 | `lemma` | [left_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/declarations/left-fac--9a2496f7824dc72249122676.md) | 53 | `result-track:9a2496f7824dc7224912267637be15549fd86836d3a553a69486acf6e984e042` |
| 5 | `lemma` | [right_fac_of_isStrictlyLE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/declarations/right-fac-of-isstrictlyle--b97eb242c979d68d3873fb05.md) | 67 | `result-track:b97eb242c979d68d3873fb054ae2cc563dd6da548c046e2d9775d9fd1dc40bb3` |
| 6 | `lemma` | [left_fac_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/declarations/left-fac-of-isstrictlyge--147f1360dae9bc20cfcc3ece.md) | 89 | `result-track:147f1360dae9bc20cfcc3ece34f46d1d9e0ccec343a7773e4a6809cc6e378e6f` |
| 7 | `lemma` | [right_fac_of_isStrictlyLE_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/declarations/right-fac-of-isstrictlyle-of-isstrictlyge--4f72f77c20057819bb0fdc7c.md) | 113 | `result-track:4f72f77c20057819bb0fdc7c4766fa5dfca0a5d8671fb10849e805d24e8f1ec1` |
| 8 | `lemma` | [left_fac_of_isStrictlyLE_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/declarations/left-fac-of-isstrictlyle-of-isstrictlyge--cb7be8c40e6c215e447cdd8f.md) | 139 | `result-track:cb7be8c40e6c215e447cdd8ff9cb42242723e272bc2fb7e927d30cc1b1668242` |
| 9 | `lemma` | [subsingleton_hom_of_isStrictlyLE_of_isStrictlyGE](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variant0846ebcc6b4bb477082d8f626e3f9c8cd9be1a30173a642a0546a43ef4854a55.lean/declarations/subsingleton-hom-of-isstrictlyle-of-isstrictlyge--cdc19b26ee0222bf86491326.md) | 161 | `result-track:cdc19b26ee0222bf864913268b9f6174c2d67a2f5a574ebaa014c94eb8e42f68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
