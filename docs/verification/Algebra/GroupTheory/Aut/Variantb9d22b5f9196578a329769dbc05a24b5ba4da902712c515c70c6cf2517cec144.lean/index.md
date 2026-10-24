# Verification target: GRWTSK.Algebra.GroupTheory.Aut.Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a768324d6bcba39d9a222d264514c98955f4da12",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a768324d6bcba39d9a222d264514c98955f4da12`.

Source path: `GRWTSK/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RingAut](../../../../../mathematics/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean/declarations/ringaut--07e237b1a3f574b7f192770a.md) | 36 | `declaration-track:07e237b1a3f574b7f192770a02048fe6fb94ca8d78c8b1dc0dbb057c64f54b11` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean/declarations/instance--6c1ec46b475e732282e9a7b3.md) | 43 | `declaration-track:6c1ec46b475e732282e9a7b37fab7fa07c03a0c49ec23fcccc7195fa6c76a12f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean/declarations/instance--c37084218fa46c187ecd651b.md) | 52 | `declaration-track:c37084218fa46c187ecd651b71e90db7880c7e01c4c07114a0a3153f0a89b36c` |
| 4 | `def` | [toAddAut](../../../../../mathematics/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean/declarations/toaddaut--5073cb4dd8d186cbd46921aa.md) | 56 | `declaration-track:5073cb4dd8d186cbd46921aa47def17ab27ff9f1af022bbbd5f946e8f0e81301` |
| 5 | `def` | [toMulAut](../../../../../mathematics/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean/declarations/tomulaut--6bde53f4dfa1361652f71b86.md) | 62 | `declaration-track:6bde53f4dfa1361652f71b864ea6db27931e4f88526d44a200dc2e5c8dd001f6` |
| 6 | `def` | [toPerm](../../../../../mathematics/Algebra/GroupTheory/Aut/Variantb9d22b5f9196578a329769dbc05a24b5ba4da902712c515c70c6cf2517cec144.lean/declarations/toperm--81eb06de4edc4fee0ad91b50.md) | 68 | `declaration-track:81eb06de4edc4fee0ad91b50e16e69e3f9d30e10b1f392f5b77c9f759bfefcda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
