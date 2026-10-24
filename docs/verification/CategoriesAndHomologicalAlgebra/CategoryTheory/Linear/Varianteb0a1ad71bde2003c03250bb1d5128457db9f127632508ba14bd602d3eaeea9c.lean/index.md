# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Linear.Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a62eb2040d072444d7615b1f3acef008af5140eb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a62eb2040d072444d7615b1f3acef008af5140eb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Quotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean/declarations/smul--390d5a180136e03aab3b6b81.md) | 32 | `declaration-track:390d5a180136e03aab3b6b81ca665bae02ef2c242e7e359a9c88e9a05003fb57` |
| 2 | `lemma` | [smul_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean/declarations/smul-eq--c24e0ec360f3cb550c71427d.md) | 42 | `result-track:c24e0ec360f3cb550c71427dde5c81db4ae5094e61de838eafa950d0e1a2444e` |
| 3 | `def` | [module'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean/declarations/module--8797675f91eaa0e2ebe13784.md) | 49 | `declaration-track:8797675f91eaa0e2ebe1378418c71acaa26f7bfb20f890d921084ee28d0d40a1` |
| 4 | `def` | [module](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean/declarations/module--f6d707cc0466ac9a0ce48910.md) | 78 | `declaration-track:f6d707cc0466ac9a0ce489102f9014f8da05aceba6816dd0fcaa30e541552c9f` |
| 5 | `def` | [linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean/declarations/linear--db02dcf2366de6a268d4ad01.md) | 90 | `declaration-track:db02dcf2366de6a268d4ad011da632ce4ab6e115a41128ee4da3641269adb6f8` |
| 6 | `instance` | [linear_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Varianteb0a1ad71bde2003c03250bb1d5128457db9f127632508ba14bd602d3eaeea9c.lean/declarations/linear-functor--c70e3edf55ce6adab590970b.md) | 107 | `declaration-track:c70e3edf55ce6adab590970b600b90ede6f316833d51c58c2271f4a2fb43267c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
