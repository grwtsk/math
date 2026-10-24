# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variant3a55945448122adebc23556c31cd5e64f1ae555dc497b984b4c3c74d339a6841

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6727393f7bb83f75c26125924dfa650805fd6608",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant3a55945448122adebc23556c31cd5e64f1ae555dc497b984b4c3c74d339a6841.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant3a55945448122adebc23556c31cd5e64f1ae555dc497b984b4c3c74d339a6841.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant3a55945448122adebc23556c31cd5e64f1ae555dc497b984b4c3c74d339a6841.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6727393f7bb83f75c26125924dfa650805fd6608`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant3a55945448122adebc23556c31cd5e64f1ae555dc497b984b4c3c74d339a6841.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant3a55945448122adebc23556c31cd5e64f1ae555dc497b984b4c3c74d339a6841.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Distributive.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.MonoCoprod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Cartesian.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsCartesianDistributive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant3a55945448122adebc23556c31cd5e64f1ae555dc497b984b4c3c74d339a6841.lean/declarations/iscartesiandistributive--3a2280d7413d99f3f396f287.md) | 63 | `declaration-track:3a2280d7413d99f3f396f287615017b4d2b131decc21aa7b7bdf1805fc65b6f3` |
| 2 | `lemma` | [of_isMonoidalLeftDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant3a55945448122adebc23556c31cd5e64f1ae555dc497b984b4c3c74d339a6841.lean/declarations/of-ismonoidalleftdistrib--07bcb07b2a6aeac36e43b8a9.md) | 70 | `result-track:07bcb07b2a6aeac36e43b8a94123c5aa7e60511c31d57f7650f8e50cd4bfa67d` |
| 3 | `instance` | [monoCoprod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant3a55945448122adebc23556c31cd5e64f1ae555dc497b984b4c3c74d339a6841.lean/declarations/monocoprod--5bd31201d01fe63dfa27c312.md) | 75 | `declaration-track:5bd31201d01fe63dfa27c312d7dc3544153710d3cb46e0ebb7dbb0049ebf5794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
