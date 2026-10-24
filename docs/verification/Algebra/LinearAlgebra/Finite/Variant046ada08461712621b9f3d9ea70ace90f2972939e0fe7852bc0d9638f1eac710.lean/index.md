# Verification target: GRWTSK.Algebra.LinearAlgebra.Finite.Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "333e5e979312298fdc66b0aeede4700465e35f4c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `333e5e979312298fdc66b0aeede4700465e35f4c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.FinitePresentation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean/declarations/finite--bc8106fd75979d589bae7f37.md) | 35 | `result-track:bc8106fd75979d589bae7f3742011783af639744eee58ea7b43a9ea6efabcbf9` |
| 2 | `lemma` | [finitePresentation](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean/declarations/finitepresentation--9bb0745c4ed8ed919d6db018.md) | 39 | `result-track:9bb0745c4ed8ed919d6db018c72aeea334149f9123664095f4a2ec6fa5884695` |
| 3 | `lemma` | [finitePresentation_iff_exists_presentation](../../../../../mathematics/Algebra/LinearAlgebra/Finite/Variant046ada08461712621b9f3d9ea70ace90f2972939e0fe7852bc0d9638f1eac710.lean/declarations/finitepresentation-iff-exists-presentation--207d3ad0d303783171345de4.md) | 47 | `result-track:207d3ad0d303783171345de4813db487ded0a4918f9863389c69fc92fd4657ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
