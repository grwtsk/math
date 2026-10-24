# Verification target: GRWTSK.Algebra.LinearAlgebra.PresentationRule.Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b94cf9c6c676f866659a9254b9c149265066571b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PresentationRule/Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PresentationRule/Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PresentationRule/Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b94cf9c6c676f866659a9254b9c149265066571b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PresentationRule/Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PresentationRule/Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Carrier.BinaryMatrix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresentationRule](../../../../../mathematics/Algebra/LinearAlgebra/PresentationRule/Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32.lean/declarations/presentationrule--5e41b70bfeec53a59eaea35d.md) | 18 | `declaration-track:5e41b70bfeec53a59eaea35d0ec54c86392971a3adbdb95f956a7935e2e38a33` |
| 2 | `def` | [IsFixedBy](../../../../../mathematics/Algebra/LinearAlgebra/PresentationRule/Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32.lean/declarations/isfixedby--578c046b8f6b18a8fc0ec89d.md) | 22 | `declaration-track:578c046b8f6b18a8fc0ec89daad1c1f1a96214e94f280ed6c982f359c368b35c` |
| 3 | `def` | [copyRule](../../../../../mathematics/Algebra/LinearAlgebra/PresentationRule/Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32.lean/declarations/copyrule--ea2d422870a0cd5ea8ddeb47.md) | 27 | `declaration-track:ea2d422870a0cd5ea8ddeb47004c10d6dd3fd1e2bb51ab90bdaeb35ccce6f7b3` |
| 4 | `theorem` | [copyRule_fixed](../../../../../mathematics/Algebra/LinearAlgebra/PresentationRule/Variant2e0be18b5a4ace73a760a2570dc56add1ae872297e6b26179d613f7fb0d6dd32.lean/declarations/copyrule-fixed--3ebbe35bc64e931d472612bc.md) | 31 | `result-track:3ebbe35bc64e931d472612bc44c9494204d25e585cfa1ce61c4995a03eec641f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
