# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Bifunctor.Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5891d3d63769a570101308175eee7ae74f1d5d4a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5891d3d63769a570101308175eee7ae74f1d5d4a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Products.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean/declarations/map-id--b9e607dd4157eeed80a8aac5.md) | 31 | `result-track:b9e607dd4157eeed80a8aac5075e256902a6d856ad0004c09e243c4315f495ec` |
| 2 | `theorem` | [map_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean/declarations/map-id-comp--5147117b892643f1eac99e5f.md) | 36 | `result-track:5147117b892643f1eac99e5fca1804caad315fa0b576012f6bbb3290c2bc9032` |
| 3 | `theorem` | [map_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean/declarations/map-comp-id--a51ac36ec5e644f31ebe127e.md) | 42 | `result-track:a51ac36ec5e644f31ebe127ed0a6186f0b1dda9a4cad325b2c61624131e0d344` |
| 4 | `theorem` | [diagonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean/declarations/diagonal--da0f130acf7d4636e65113ca.md) | 48 | `result-track:da0f130acf7d4636e65113caa0259545c58ce960a883457781b58df03f05b920` |
| 5 | `theorem` | [diagonal'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant72585486fb4914d54ccdbc4f81de1fc77b513a3e660727056d21cdf192c77883.lean/declarations/diagonal--460796ff8b758619db3be0b7.md) | 54 | `result-track:460796ff8b758619db3be0b7ac9dc4e7d45bbadfac1dcfd2896266177fc8b054` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
