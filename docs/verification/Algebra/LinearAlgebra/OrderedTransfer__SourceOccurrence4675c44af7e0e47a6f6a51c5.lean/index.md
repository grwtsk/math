# Verification target: GRWTSK.LinearAlgebra.OrderedTransfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdabc1e226f546262f22490b005222cfe50ee4a4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/LinearAlgebra/OrderedTransfer.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence4675c44af7e0e47a6f6a51c5.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence4675c44af7e0e47a6f6a51c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdabc1e226f546262f22490b005222cfe50ee4a4`.

Source path: `GRWTSK/LinearAlgebra/OrderedTransfer.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/LinearAlgebra/OrderedTransfer.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.OrderedProduct`](../../../../mathematics/Algebra/OrderedProduct.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.LinearAlgebra.JacobiTransfer`](../../../../mathematics/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedTransfer](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence4675c44af7e0e47a6f6a51c5.lean/declarations/orderedtransfer--9f5e62bdeae86224faba5940.md) | 44 | `declaration-track:9f5e62bdeae86224faba5940a7b9c92e3da61b87b3fc728d3e084648788aab26` |
| 2 | `theorem` | [state_eq_orderedProduct_mulVec](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence4675c44af7e0e47a6f6a51c5.lean/declarations/state-eq-orderedproduct-mulvec--899f1e11ef213b55255e1f5f.md) | 50 | `result-track:899f1e11ef213b55255e1f5f98971bbdc82c491babc97f9609be8d5b1978d5e7` |
| 3 | `theorem` | [state_eq_orderedTransfer_mulVec](../../../../mathematics/Algebra/LinearAlgebra/OrderedTransfer__SourceOccurrence4675c44af7e0e47a6f6a51c5.lean/declarations/state-eq-orderedtransfer-mulvec--34ca5a8d26d8c0a508ff81e5.md) | 63 | `result-track:34ca5a8d26d8c0a508ff81e56edb20d46e8a1404aedd53f98af178ab2f86c602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
