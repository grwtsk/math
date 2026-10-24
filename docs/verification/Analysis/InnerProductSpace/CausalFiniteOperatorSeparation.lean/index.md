# Verification target: GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ecfdd3f3215db9705b35ee485d249da2e3b34b5",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ecfdd3f3215db9705b35ee485d249da2e3b34b5`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.LinearMap.FiniteMixingObstruction`](../../../../mathematics/Algebra/LinearAlgebra/LinearMap/FiniteMixingObstruction__SourceOccurrence25972bc8cedf16b58496cf3e.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation`](../../../../mathematics/Analysis/InnerProductSpace/CausalContactHilbertSeparation.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.CompactSourceGramPositiveDefinite`](../../../../mathematics/Analysis/InnerProductSpace/CompactSourceGramPositiveDefinite.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [window_response_memLp](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/declarations/window-response-memlp--51563bb6a844a356519e8110.md) | 46 | `result-track:51563bb6a844a356519e811096b3c9f49b2bb6127a227cb494455d84d228441c` |
| 2 | `def` | [originalWindowL2](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/declarations/originalwindowl2--edde6d0b10c4d4b17bfa3903.md) | 55 | `declaration-track:edde6d0b10c4d4b17bfa390375f793678f1135f3b513b1b93907ba880ea07a43` |
| 3 | `theorem` | [original_window_L2_contact_zero](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/declarations/original-window-l2-contact-zero--5951aebf759bfd1d2f346ba3.md) | 58 | `result-track:5951aebf759bfd1d2f346ba38cec0b9380ec87503f45c6d6e860e37811178497` |
| 4 | `theorem` | [finite_source_L2_combination_ae](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/declarations/finite-source-l2-combination-ae--8f85a3cbcfe3bb2cd44ed733.md) | 66 | `result-track:8f85a3cbcfe3bb2cd44ed7332111dcaad92d68e47d1bba02b393526c95748487` |
| 5 | `theorem` | [distinct_source_L2_linearIndependent](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/declarations/distinct-source-l2-linearindependent--60246d77918dd4202053486c.md) | 90 | `result-track:60246d77918dd4202053486c228a4b6ccc2b9265ad5270cd8f335a55da74454f` |
| 6 | `theorem` | [finite_contact_functions_no_linear_mix](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/declarations/finite-contact-functions-no-linear-mix--3daa4f792344e2ddbd5a9c0c.md) | 115 | `result-track:3daa4f792344e2ddbd5a9c0c7b088576a13a198eaf7f36ecc7f04c7413d49751` |
| 7 | `theorem` | [finite_contact_L2_no_linear_mix](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/declarations/finite-contact-l2-no-linear-mix--2279688f5117b87fd2572966.md) | 126 | `result-track:2279688f5117b87fd257296645f331f15bf64d829c628d2999e6f27533398fb5` |
| 8 | `theorem` | [original_inventory_L2_no_linear_mix](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/declarations/original-inventory-l2-no-linear-mix--ac27a37c94bdfad3b3e85e04.md) | 139 | `result-track:ac27a37c94bdfad3b3e85e0477e9246dc1d6499f2ec30c8921b0671917d75395` |
| 9 | `theorem` | [prescribed_horizon_L2_linear_mix_obstruction](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/declarations/prescribed-horizon-l2-linear-mix-obstruction--4dc1d04472c1edcd7128b5d7.md) | 153 | `result-track:4dc1d04472c1edcd7128b5d7e58b2ec2ab92e6d75ed5506c11628823430843bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
