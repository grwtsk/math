# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Unit.Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd2b22135bd4c9e073f27364110b5129516be4b5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd2b22135bd4c9e073f27364110b5129516be4b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.PUnit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [punitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean/declarations/punitcone--f21991cc9ea3c7399641bb38.md) | 37 | `declaration-track:f21991cc9ea3c7399641bb38cbf1006c5eed41e7ee309c62ed2842fe0c09d96d` |
| 2 | `def` | [punitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean/declarations/punitcocone--965eae3de245617778395984.md) | 42 | `declaration-track:965eae3de24561777839598440125256bf866aab83544220c9408e61bb299aac` |
| 3 | `def` | [punitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean/declarations/punitconeislimit--688e78e3eba88059d4f16572.md) | 48 | `declaration-track:688e78e3eba88059d4f16572297c755cef043da92e78d094ec2d55e4d2270842` |
| 4 | `def` | [punitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean/declarations/punitcoconeiscolimit--47f1fdf33640ac2f4cb9e1da.md) | 54 | `declaration-track:47f1fdf33640ac2f4cb9e1da9951494a133c36f435d10f33f719e6fbe6d10b34` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean/declarations/instance--0545d6b3e6ec4f176411c81c.md) | 58 | `declaration-track:0545d6b3e6ec4f176411c81cd1dc80b5bb952414d1083464acbdcc71bc6a57e6` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Unit/Variantb06f3d3931ee6186f2d618cdfd8134a8f8fc515370a454e0ebba111a3bd078f3.lean/declarations/instance--b8f4183b2cefed3205369b63.md) | 61 | `declaration-track:b8f4183b2cefed3205369b63bc847321b25b35dd3f9a915b3caeb51ca88b9ea1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
