# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sieves.Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2215de2b69071325c46dfe3e5efee47b34db0dec",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2215de2b69071325c46dfe3e5efee47b34db0dec`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subpresheaf.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.IsSheafFor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sieveOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean/declarations/sieveofsection--449c7326605a23a825db8e5b.md) | 37 | `declaration-track:449c7326605a23a825db8e5bcbba3f6ff9c9762a27cf17d7ea3965e970f3c2a5` |
| 2 | `def` | [familyOfElementsOfSection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean/declarations/familyofelementsofsection--d993cc4dbb77449cc2418f0a.md) | 45 | `declaration-track:d993cc4dbb77449cc2418f0abaf02543065816752dc5855f18285b2082b8f78a` |
| 3 | `theorem` | [family_of_elements_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sieves/Variant25c3abd995d3ea13f2a3c055a9d329f015b8b06c56e97898a8e22c4cfae0019d.lean/declarations/family-of-elements-compatible--919eca4074f8465cf9cbeaef.md) | 48 | `result-track:919eca4074f8465cf9cbeaef709c571acc57a0a711c2f9386bf82096553c3c2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
