# Verification target: GRWTSK.Algebra.LinearAlgebra.Iteration.Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "357e7d9c4fb50cc877131e8a90775dc5f5fbc2ff",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `357e7d9c4fb50cc877131e8a90775dc5f5fbc2ff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Application.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iterate](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/declarations/iterate--4788d1e91982096677dff883.md) | 19 | `declaration-track:4788d1e91982096677dff8833c6eb8a54eb02439dab6b4f956e715a3f05819aa` |
| 2 | `theorem` | [iterate_zero](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/declarations/iterate-zero--4c5c499526fb8f4366e1e5f7.md) | 27 | `result-track:4c5c499526fb8f4366e1e5f7cc06455879d1f6183ed22ff6a1c805055220395d` |
| 3 | `theorem` | [iterate_succ](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/declarations/iterate-succ--7e976a934cddc4dca8c11fbb.md) | 34 | `result-track:7e976a934cddc4dca8c11fbb979313b5da020f118a2830afb943891c43298681` |
| 4 | `def` | [orbit](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/declarations/orbit--0dd3dfe4432b8f38299186f8.md) | 43 | `declaration-track:0dd3dfe4432b8f38299186f82ed294a7dbf368665c3370c489b5f4f99de6e8ca` |
| 5 | `theorem` | [orbit_zero](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/declarations/orbit-zero--ea06a0981e826c3e365629d0.md) | 50 | `result-track:ea06a0981e826c3e365629d00e83f61187f7fad868acca9720d67f34c865f63b` |
| 6 | `theorem` | [orbit_succ](../../../../../mathematics/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean/declarations/orbit-succ--bd99a73969b6c479ab95001f.md) | 57 | `result-track:bd99a73969b6c479ab95001ff7abb85c294ded58d3af320a78131612d27fa1af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
