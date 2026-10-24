# Verification target: GRWTSK.Algebra.LinearAlgebra.TransferInstance.Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5ea58515e39ba091b6b4b9224a81e3eb50bbd8a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5ea58515e39ba091b6b4b9224a81e3eb50bbd8a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean.json)

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
| 1 | `lemma` | [noZeroSMulDivisors](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/declarations/nozerosmuldivisors--6c9ebbc27dcd284a8ccfe6f0.md) | 31 | `result-track:6c9ebbc27dcd284a8ccfe6f05325b3ac6f1bcd554e8bb7ffa9c862a9f01327af` |
| 2 | `abbrev` | [module](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/declarations/module--2c7445aaa3f97c0e37512496.md) | 50 | `declaration-track:2c7445aaa3f97c0e37512496b7c04da14936fd816278836be7cb562b327da29d` |
| 3 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/declarations/linearequiv--72b6e05025d49d7300964395.md) | 58 | `declaration-track:72b6e05025d49d730096439523e1b9f4792f33138d4200c70c6c3794e036ebca` |
| 4 | `lemma` | [linearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/declarations/linearequiv-apply--8d61511b37651ce0cc356223.md) | 69 | `result-track:8d61511b37651ce0cc35622376d37ad7006ff19a9308aadfd472268b213a966c` |
| 5 | `lemma` | [linearEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/declarations/linearequiv-symm-apply--a0e39f306d1bb9318a14e6ef.md) | 72 | `result-track:a0e39f306d1bb9318a14e6ef81b888fd3599682c1dc42ea77d5679477cdfc2cb` |
| 6 | `lemma` | [moduleIsTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/declarations/moduleistorsionfree--390ddc2bbdb48cedad30002d.md) | 76 | `result-track:390ddc2bbdb48cedad30002dcf140cb7525ddfbbd6997d41ca0a38024aaad390` |
| 7 | `lemma` | [LinearEquiv.isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/TransferInstance/Variant93b8ce364f6efe58af78e34585a573ccc0739cd679fca18ea57d88049454e109.lean/declarations/linearequiv-isscalartower--ed7ba8bf94bec4995e67a2de.md) | 96 | `result-track:ed7ba8bf94bec4995e67a2de7d45acdfbfce703d87657af0bdc40df692f0d073` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
