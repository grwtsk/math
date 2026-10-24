# Verification target: GRWTSK.Algebra.LinearAlgebra.AbsoluteValue.Variant2ff230bbc9e2f34f184774b78cafe3134dd2bc7072b7d6a8abae551b4c7e0eed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1b53a07986e5681e9d6186cdcb7bcd89fe6c53c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/AbsoluteValue/Variant2ff230bbc9e2f34f184774b78cafe3134dd2bc7072b7d6a8abae551b4c7e0eed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/AbsoluteValue/Variant2ff230bbc9e2f34f184774b78cafe3134dd2bc7072b7d6a8abae551b4c7e0eed.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/AbsoluteValue/Variant2ff230bbc9e2f34f184774b78cafe3134dd2bc7072b7d6a8abae551b4c7e0eed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1b53a07986e5681e9d6186cdcb7bcd89fe6c53c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/AbsoluteValue/Variant2ff230bbc9e2f34f184774b78cafe3134dd2bc7072b7d6a8abae551b4c7e0eed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/AbsoluteValue/Variant2ff230bbc9e2f34f184774b78cafe3134dd2bc7072b7d6a8abae551b4c7e0eed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.AbsoluteValue` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_le](../../../../../mathematics/Algebra/LinearAlgebra/AbsoluteValue/Variant2ff230bbc9e2f34f184774b78cafe3134dd2bc7072b7d6a8abae551b4c7e0eed.lean/declarations/det-le--22f1168939f78df55914c6b5.md) | 46 | `result-track:22f1168939f78df55914c6b503a9af3a4165106907d2c756f9f7384d9e32c11f` |
| 2 | `theorem` | [det_sum_le](../../../../../mathematics/Algebra/LinearAlgebra/AbsoluteValue/Variant2ff230bbc9e2f34f184774b78cafe3134dd2bc7072b7d6a8abae551b4c7e0eed.lean/declarations/det-sum-le--f11ee58f573cb379a7978655.md) | 56 | `result-track:f11ee58f573cb379a7978655a97090e836333d7e7955eda2cab870bbfd9b57fa` |
| 3 | `theorem` | [det_sum_smul_le](../../../../../mathematics/Algebra/LinearAlgebra/AbsoluteValue/Variant2ff230bbc9e2f34f184774b78cafe3134dd2bc7072b7d6a8abae551b4c7e0eed.lean/declarations/det-sum-smul-le--5073d7a838bda6afe1ab3d43.md) | 66 | `result-track:5073d7a838bda6afe1ab3d437bb25706d12bbf07e0e405c47bc6361a044f5c0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
