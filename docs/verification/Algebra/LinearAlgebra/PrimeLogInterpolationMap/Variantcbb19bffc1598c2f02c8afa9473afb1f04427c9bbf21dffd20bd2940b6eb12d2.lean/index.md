# Verification target: GRWTSK.Algebra.LinearAlgebra.PrimeLogInterpolationMap.Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "314ee81f4a1455fef5a0c2e263544c9f4de9b23c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `314ee81f4a1455fef5a0c2e263544c9f4de9b23c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Span.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeLogs](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/primelogs--ecef200486cb836ef18366ac.md) | 27 | `declaration-track:ecef200486cb836ef18366ace17971399bb7565e82ed2e9f724ba0663637e03a` |
| 2 | `def` | [quotientMap](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/quotientmap--f4d52bea6e337daea12b8396.md) | 35 | `declaration-track:f4d52bea6e337daea12b839619903d24a4e20a8384a9893a8e545f0bb840ade6` |
| 3 | `def` | [primeMap](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/primemap--cdecf38316770886cc398bcd.md) | 44 | `declaration-track:cdecf38316770886cc398bcd61d2cc9c6bc215ccc8b321e613839d04ae88f227` |
| 4 | `theorem` | [quotientMap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/quotientmap-surjective--b926349cc143ac37b784413f.md) | 46 | `result-track:b926349cc143ac37b784413fc19bcb51c07cfa4def2216af220d75950e85fd29` |
| 5 | `theorem` | [quotientMap_kernel](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/quotientmap-kernel--81475a72f7f5ba115b4a90b3.md) | 52 | `result-track:81475a72f7f5ba115b4a90b3006a3b5b55b7f875fe64e6fa01ffff3bbd0e315e` |
| 6 | `theorem` | [prime_log_two_nonzero](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/prime-log-two-nonzero--4c423fdf08b1692656e1b876.md) | 71 | `result-track:4c423fdf08b1692656e1b876c481370d00ca41dee7997815b43067007749918b` |
| 7 | `theorem` | [primeMap_surjective](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/primemap-surjective--07ae95c996f43fdc90fcf6ba.md) | 75 | `result-track:07ae95c996f43fdc90fcf6ba1ccc88b636822c52b977037af5293a034669e2de` |
| 8 | `theorem` | [primeMap_kernel](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/primemap-kernel--c32cdbaea36b37948cc83503.md) | 77 | `result-track:c32cdbaea36b37948cc83503dcb46021fa61559fef5ebc3126422b53e46bac52` |
| 9 | `def` | [degreeBudget](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/degreebudget--2311379f886f87189c068a53.md) | 84 | `declaration-track:2311379f886f87189c068a53b16f00af1110145b0ffbbaf907d2e26fd4cf2bac` |
| 10 | `theorem` | [degreeBudget_lower](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/degreebudget-lower--cc26dc3ef29bfa18a0ef87ef.md) | 86 | `result-track:cc26dc3ef29bfa18a0ef87ef3fcdd3686c674502d40a5e58327b87cc98d699e6` |
| 11 | `theorem` | [degreeBudget_exact](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/degreebudget-exact--a02693f7cd2af5028fe4a64a.md) | 90 | `result-track:a02693f7cd2af5028fe4a64a1afdeb52b8be9b83a916143e009952d986416234` |
| 12 | `theorem` | [degreeBudget_strict](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/degreebudget-strict--5d05c52c5db4660f05840e2a.md) | 95 | `result-track:5d05c52c5db4660f05840e2ad9fe763d28e3ab141c4c536144d83cc1311f6138` |
| 13 | `theorem` | [scaling_example_budget](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/scaling-example-budget--34b3157eacb2582532182575.md) | 105 | `result-track:34b3157eacb2582532182575fe231ed192e39e89da126930728c31bd3a29c6a5` |
| 14 | `theorem` | [nonzero_scaling_preserves_kernel](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/nonzero-scaling-preserves-kernel--a4d37279f06ae541d9756bd4.md) | 108 | `result-track:a4d37279f06ae541d9756bd47a34bdaeb5022df9fcd00997dff85af28ec96276` |
| 15 | `theorem` | [nonzero_scaling_preserves_surjectivity](../../../../../mathematics/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variantcbb19bffc1598c2f02c8afa9473afb1f04427c9bbf21dffd20bd2940b6eb12d2.lean/declarations/nonzero-scaling-preserves-surjectivity--a0708b6075fe81d01c10cc68.md) | 113 | `result-track:a0708b6075fe81d01c10cc68301a8fba443bef9e9bd1608b94db28ab4a989d03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
