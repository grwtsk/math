# Verification target: GRWTSK.Algebra.UniversalAlgebra.Symmetric.Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "974e90d9ecd5b878dd36d81124cec11f6ac94c40",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Symmetric/Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Symmetric/Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Symmetric/Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `974e90d9ecd5b878dd36d81124cec11f6ac94c40`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Symmetric/Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Symmetric/Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.QuadraticModuleCat.Monoidal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Symmetric/Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5.lean/declarations/instance--1d9c70c4817c802c09fdc893.md) | 41 | `declaration-track:1d9c70c4817c802c09fdc89319d309d1a52d59225b27b1dfefd6a4f29fda7b7d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Symmetric/Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5.lean/declarations/instance--f3e0bfd3ef44714eec99dd53.md) | 47 | `declaration-track:f3e0bfd3ef44714eec99dd53b72f83f091077288d4adde03902060ae9e812a13` |
| 3 | `instance` | [instSymmetricCategory](../../../../../mathematics/Algebra/UniversalAlgebra/Symmetric/Variant2eb7453bf4fab6caedc496a7c47a340b2bc6b90199e3b09d675540fe0ba7b9a5.lean/declarations/instsymmetriccategory--049c8c0ce5cc223b61a68379.md) | 49 | `declaration-track:049c8c0ce5cc223b61a68379eda91f3a98fd4d11ccc7924c69692cd1eacbe875` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
