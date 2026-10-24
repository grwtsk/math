# Verification target: GRWTSK.Algebra.UniversalAlgebra.Upto.Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "beb3e9c1fa1f9ddf63b1664b6bcde0f66d389fed",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `beb3e9c1fa1f9ddf63b1664b6bcde0f66d389fed`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Upto](../../../../../mathematics/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean/declarations/upto--92a5cb4ccbbd1094abffa142.md) | 41 | `declaration-track:92a5cb4ccbbd1094abffa1429badee521f2398f118828166edf1661775836672` |
| 2 | `def` | [GT](../../../../../mathematics/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean/declarations/gt--53494716cf1e74c40c0646ec.md) | 49 | `declaration-track:53494716cf1e74c40c0646ec04dc54d7c02ac2a44c63fccf553c131660f88c69` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean/declarations/instance--3c42208bbd63889ab4a9e99c.md) | 52 | `declaration-track:3c42208bbd63889ab4a9e99cce13e50427dac0022530ef51b3381fc7326f602c` |
| 4 | `theorem` | [wf](../../../../../mathematics/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean/declarations/wf--d96baed078a6915dfdff0807.md) | 57 | `result-track:d96baed078a6915dfdff08077c5b1bb0d3c8637b99d164d193b16bc0bc596fb7` |
| 5 | `def` | [zero](../../../../../mathematics/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean/declarations/zero--7f03684701af6ea69b4eb414.md) | 67 | `declaration-track:7f03684701af6ea69b4eb414ddea9728c3c85ad8a337b11d721d6f87ccca7919` |
| 6 | `def` | [succ](../../../../../mathematics/Algebra/UniversalAlgebra/Upto/Variante48eb083ddc062a2c8f26ec0ddc322479f62a2575e368c4454e9f095db1da68e.lean/declarations/succ--aa09c1704d2621be44bc87a0.md) | 71 | `declaration-track:aa09c1704d2621be44bc87a0f8df5b717c9e0e4039cedd25e0a1d402195db07b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
