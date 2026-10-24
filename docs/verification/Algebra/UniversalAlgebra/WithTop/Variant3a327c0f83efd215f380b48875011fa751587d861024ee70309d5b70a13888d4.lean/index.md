# Verification target: GRWTSK.Algebra.UniversalAlgebra.WithTop.Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f01aa9105ed70647209e08a7f0ad978430043d6",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f01aa9105ed70647209e08a7f0ad978430043d6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean/declarations/instance--27e5ac70decc0446599ff6d9.md) | 24 | `declaration-track:27e5ac70decc0446599ff6d95692693a7f25606ca6c1af48203ef7e7c15c806c` |
| 2 | `theorem` | [Nat.cast_withTop](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean/declarations/nat-cast-withtop--112880d900985ebb67401d1f.md) | 28 | `result-track:112880d900985ebb67401d1fbc5e882fe72939bb26ea2f7bddef5ad74318a4e7` |
| 3 | `theorem` | [Nat.cast_withBot](../../../../../mathematics/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean/declarations/nat-cast-withbot--7f1b22a484c2da78805bccf0.md) | 31 | `result-track:7f1b22a484c2da78805bccf02cbff58ef31febd559e543299c5841fbe2abc2d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
