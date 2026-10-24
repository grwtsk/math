# Verification target: GRWTSK.Algebra.LinearAlgebra.EngelSubalgebra.Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e64b7597d68f1b47b612b73b0b291b73156aaec3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e64b7597d68f1b47b612b73b0b291b73156aaec3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/declarations/engel--f87979a8567f412aeaceaa69.md) | 52 | `declaration-track:f87979a8567f412aeaceaa69517ff8170d3385f1ca50cc1785b4233656b0e56c` |
| 2 | `lemma` | [mem_engel_iff](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/declarations/mem-engel-iff--a213c9d1f56116472db701a1.md) | 66 | `result-track:a213c9d1f56116472db701a15814dea607343aa09eaa2b77aa66f6896fff982d` |
| 3 | `lemma` | [self_mem_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/declarations/self-mem-engel--86b63a5adea96769e42e5934.md) | 70 | `result-track:86b63a5adea96769e42e5934674eb359d6691bd0a71891918b4da72d86175900` |
| 4 | `lemma` | [engel_zero](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/declarations/engel-zero--b4d7e7a37fb9eb88b8c382fe.md) | 75 | `result-track:b4d7e7a37fb9eb88b8c382fe7f23c0a594341bddc9683c1b2bf5bb6abc689543` |
| 5 | `lemma` | [normalizer_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/declarations/normalizer-engel--5e7fb396340d73edbf7525ec.md) | 87 | `result-track:5e7fb396340d73edbf7525ece0b6547be1f4830dedddd563bb73eb20b005a218` |
| 6 | `lemma` | [normalizer_eq_self_of_engel_le](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/declarations/normalizer-eq-self-of-engel-le--bf110e91df8441aa6ccff54f.md) | 106 | `result-track:bf110e91df8441aa6ccff54fec6e702d1157d11e3b507b3c7b52cacfdebb2d23` |
| 7 | `lemma` | [isNilpotent_of_forall_le_engel](../../../../../mathematics/Algebra/LinearAlgebra/EngelSubalgebra/Varianta5bcb29495d21fe82133371220acb3909f539698dd721fdfb32f8e662a2984c8.lean/declarations/isnilpotent-of-forall-le-engel--4a2572efc7881e7c0d92c3f9.md) | 149 | `result-track:4a2572efc7881e7c0d92c3f90dd3fd5dcea64f29119d76584f0763fa167a1514` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
