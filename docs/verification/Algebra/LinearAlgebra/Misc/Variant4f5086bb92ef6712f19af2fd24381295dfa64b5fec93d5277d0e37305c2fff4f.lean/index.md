# Verification target: GRWTSK.Algebra.LinearAlgebra.Misc.Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "041831e8e0496e76a7102552663eb6caeb73884a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `041831e8e0496e76a7102552663eb6caeb73884a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.NegOnePow` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean/declarations/submatrix-succabove-det-eq-negonepow-submatrix-succabove-det--c023d78ce843dc2a633803a5.md) | 23 | `result-track:c023d78ce843dc2a633803a5961e0a88e48e36c648562398852830893817ad6f` |
| 2 | `theorem` | [submatrix_succAbove_det_eq_negOnePow_submatrix_succAbove_det'](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean/declarations/submatrix-succabove-det-eq-negonepow-submatrix-succabove-det--0fd764a9bd1b7d091a57b89a.md) | 53 | `result-track:0fd764a9bd1b7d091a57b89a9295468d43984cdccedc1b9a3b1d119134c75302` |
| 3 | `theorem` | [det_eq_sum_column_mul_submatrix_succAbove_succAbove_det](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean/declarations/det-eq-sum-column-mul-submatrix-succabove-succabove-det--69fe5da007fc1c643611b73b.md) | 66 | `result-track:69fe5da007fc1c643611b73b48aa97fe5c6e0994f5e328af1689de01155dfd20` |
| 4 | `theorem` | [det_eq_sum_row_mul_submatrix_succAbove_succAbove_det](../../../../../mathematics/Algebra/LinearAlgebra/Misc/Variant4f5086bb92ef6712f19af2fd24381295dfa64b5fec93d5277d0e37305c2fff4f.lean/declarations/det-eq-sum-row-mul-submatrix-succabove-succabove-det--9b15287c67c08c25b9bf1000.md) | 82 | `result-track:9b15287c67c08c25b9bf10003c2e32b78fcce91a64d33ce694fd5d9ca9f42f10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
