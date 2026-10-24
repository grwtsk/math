# Verification target: GRWTSK.Algebra.LinearAlgebra.PositiveQuantization.Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "114a694df322dc342d88400097c0f057863a75a3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `114a694df322dc342d88400097c0f057863a75a3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveCone](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/declarations/positivecone--78e3c0a79dcaad471d5886fb.md) | 28 | `declaration-track:78e3c0a79dcaad471d5886fb594c8027a6e112900042b45c57058b3f826f48c0` |
| 2 | `def` | [PositivityPreserving](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/declarations/positivitypreserving--0eed966f207ce68e32e15246.md) | 40 | `declaration-track:0eed966f207ce68e32e15246350ee488b01b5d246d06dea74b6f2a9471dc7734` |
| 3 | `theorem` | [id_preserves](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/declarations/id-preserves--e3594928819d182689312891.md) | 53 | `result-track:e3594928819d182689312891a9f1884f4b37b777f16db66488f93d725dfada32` |
| 4 | `theorem` | [comp_preserves](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/declarations/comp-preserves--d7047f1e9a0cbc21c8edc919.md) | 60 | `result-track:d7047f1e9a0cbc21c8edc91927d40bb5623a47bc9b4108b90b48ca2d7111046e` |
| 5 | `theorem` | [nonnegativeCombination_preserves](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/declarations/nonnegativecombination-preserves--3bd331ec3370e8904c741b6e.md) | 73 | `result-track:3bd331ec3370e8904c741b6e0e2bd1f945c6b440a7688914b89914256f9d163c` |
| 6 | `def` | [pointwiseNonnegative](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/declarations/pointwisenonnegative--5672e421a4633927aa7f9281.md) | 90 | `declaration-track:5672e421a4633927aa7f928109568adaa9f0dcc7c28b35027a8ad29134f8a1bb` |
| 7 | `theorem` | [mem_pointwiseNonnegative_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/declarations/mem-pointwisenonnegative-iff--ec97330607a8430d81b90398.md) | 102 | `result-track:ec97330607a8430d81b903981cf993bbd193afb353500718fa8e4f131f77974a` |
| 8 | `def` | [pointwiseNonnegativeMatrix](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/declarations/pointwisenonnegativematrix--cb1c7b033ef3b0ffdf523348.md) | 110 | `declaration-track:cb1c7b033ef3b0ffdf5233489d5caf2e4d8d8486a1284852a680d7da12c4c0f6` |
| 9 | `theorem` | [mem_pointwiseNonnegativeMatrix_iff](../../../../../mathematics/Algebra/LinearAlgebra/PositiveQuantization/Variantac1d7121949fe65aa0e2e93bfb2019a1835280a9957d795ba2d7a03046638ea0.lean/declarations/mem-pointwisenonnegativematrix-iff--a02f886fc07bf294bc8aeeaf.md) | 123 | `result-track:a02f886fc07bf294bc8aeeafaf4757fe80f0f05b2aebe11637fcab7c21b60a7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
