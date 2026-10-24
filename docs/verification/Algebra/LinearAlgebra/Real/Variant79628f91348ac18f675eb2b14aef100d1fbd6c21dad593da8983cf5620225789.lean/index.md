# Verification target: GRWTSK.Algebra.LinearAlgebra.Real.Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c61d0a4c2ebb082de1e67fa2f892ff09c7798b56",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c61d0a4c2ebb082de1e67fa2f892ff09c7798b56`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sign` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isometryEquivSignWeightedSumSquares](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean/declarations/isometryequivsignweightedsumsquares--e6359826a5e81f8946e76286.md) | 35 | `declaration-track:e6359826a5e81f8946e762869813a7089ddb9f89500d9933c269520389443398` |
| 2 | `theorem` | [equivalent_one_neg_one_weighted_sum_squared](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean/declarations/equivalent-one-neg-one-weighted-sum-squared--a527ab8451345ed7ab4822a6.md) | 80 | `result-track:a527ab8451345ed7ab4822a6b451ef714dbdaeba1f9d018f4938740ee4c2b57e` |
| 3 | `theorem` | [equivalent_one_zero_neg_one_weighted_sum_squared](../../../../../mathematics/Algebra/LinearAlgebra/Real/Variant79628f91348ac18f675eb2b14aef100d1fbd6c21dad593da8983cf5620225789.lean/declarations/equivalent-one-zero-neg-one-weighted-sum-squared--82754d5dfb393cc45fbec20e.md) | 91 | `result-track:82754d5dfb393cc45fbec20eef75e3f7c77e1a0eac5013e6df91ecf5539a2568` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
