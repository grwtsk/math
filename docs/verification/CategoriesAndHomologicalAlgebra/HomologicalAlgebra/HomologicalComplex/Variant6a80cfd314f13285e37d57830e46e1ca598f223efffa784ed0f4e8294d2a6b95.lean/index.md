# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologicalComplex.Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6da48fb92d2fed648dba14dcb028a3860b6d7ff3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6da48fb92d2fed648dba14dcb028a3860b6d7ff3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Double` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplexLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [separatingFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95.lean/declarations/separatingfamily--f5c38bc6141273826507ff3b.md) | 46 | `declaration-track:f5c38bc6141273826507ff3b2d956e57034271371f49d310e66d9e9ea06676d9` |
| 2 | `lemma` | [isSeparating_separatingFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95.lean/declarations/isseparating-separatingfamily--eee59f33580da8e8ab54498f.md) | 50 | `result-track:eee59f33580da8e8ab54498f42af411f4bb0343dc169aef2fadfd0722455dac6` |
| 3 | `lemma` | [isSeparator_coproduct_separatingFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95.lean/declarations/isseparator-coproduct-separatingfamily--d8c9f894f5cbafc3ee764ac4.md) | 64 | `result-track:d8c9f894f5cbafc3ee764ac4b419191aea89031aef95f7b30c2b89d468f78c75` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplex/Variant6a80cfd314f13285e37d57830e46e1ca598f223efffa784ed0f4e8294d2a6b95.lean/declarations/instance--1810506a079e611a16d005f9.md) | 73 | `declaration-track:1810506a079e611a16d005f91a9fa5976ab85c06bc0969d8c37785fcb2691571` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
