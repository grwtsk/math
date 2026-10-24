# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Inductions.Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c0abab282378c9516f4cf690d2719477ecc599c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c0abab282378c9516f4cf690d2719477ecc599c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.MonoidAlgebra.Division` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Interval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Definitions` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Induction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [divX](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/divx--825419daed413b5b9a8fd9ef.md) | 46 | `declaration-track:825419daed413b5b9a8fd9efef52078b285d6470a0ad9386d37bcc62b01880c2` |
| 2 | `theorem` | [coeff_divX](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/coeff-divx--fd43245be2c039312f5de817.md) | 52 | `result-track:fd43245be2c039312f5de81719c07ab6993aa13f3dc7b5b6dccb849c78f24b34` |
| 3 | `theorem` | [divX_mul_X_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/divx-mul-x-add--693bc08258d46ba7bff14cfa.md) | 57 | `result-track:693bc08258d46ba7bff14cfa4ca949c33e5c911c6f744b9c986f8b1d791b0208` |
| 4 | `theorem` | [divX_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/divx-c--9cd6eabc1f5a9ba6f9f77a64.md) | 63 | `result-track:9cd6eabc1f5a9ba6f9f77a64ff3b70947997fa24f4cbdbfcf503bed50dff2575` |
| 5 | `theorem` | [divX_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/divx-eq-zero-iff--318f258302c8122ef093290c.md) | 68 | `result-track:318f258302c8122ef093290c6c20465046ef4c3fcb9883c5d1856befa90ffa2d` |
| 6 | `theorem` | [divX_add](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/divx-add--7efa0024fdbe2612abc8aef2.md) | 73 | `result-track:7efa0024fdbe2612abc8aef20b81f41a8c3eaf8da0409bc21a0017607a02a85c` |
| 7 | `theorem` | [degree_divX_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/degree-divx-lt--ec94cfeff43d62be8f7be102.md) | 78 | `result-track:ec94cfeff43d62be8f7be10250ffe42bc73634deeee2283e1ae6d52794bf5b20` |
| 8 | `def` | [recOnHorner](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/reconhorner--f9a42420f1d64906016eaf25.md) | 108 | `declaration-track:f9a42420f1d64906016eaf2558613546b5d0d59d7901a85316a2f7a0aeb4602c` |
| 9 | `theorem` | [degree_pos_induction_on](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/degree-pos-induction-on--1693911091ecd499b4bad829.md) | 137 | `result-track:1693911091ecd499b4bad8293bc244dd3c8c3bff0bf5a4cfcc2408e1bb9f36eb` |
| 10 | `theorem` | [natDegree_ne_zero_induction_on](../../../../../mathematics/Algebra/CommutativeAlgebra/Inductions/Variantf914cbd372b53fd63165cc625c009485f3a6c5ee1f83d79a59f578e97010816e.lean/declarations/natdegree-ne-zero-induction-on--513352c6d29ce5ef78dadf12.md) | 165 | `result-track:513352c6d29ce5ef78dadf1261cbfc07a72eba969c3611dc7f5941e277b4cb86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
