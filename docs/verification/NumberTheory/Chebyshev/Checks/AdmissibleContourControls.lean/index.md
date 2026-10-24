# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.AdmissibleContourControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b847cf9f847174feec7fa7d65627a7f2348fb750",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b847cf9f847174feec7fa7d65627a7f2348fb750`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.TentAdmissibleContours`](../../../../../mathematics/NumberTheory/Chebyshev/TentAdmissibleContours.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [stage_zero_inventory](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/declarations/stage-zero-inventory--2450d5755483caebbfe57153.md) | 21 | `result-track:2450d5755483caebbfe571530b307388997ef75c7fecab0c4ab0e82e45310a65` |
| 2 | `theorem` | [stage_one_trivial_inventory](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/declarations/stage-one-trivial-inventory--c7b4da0a49c12067aca0f206.md) | 26 | `result-track:c7b4da0a49c12067aca0f206243ae56f692ebd6f77e4237da1a8bfff984bfc0c` |
| 3 | `theorem` | [own_height_not_admissible](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/declarations/own-height-not-admissible--5a8e2520a2184ff4833020f2.md) | 32 | `result-track:5a8e2520a2184ff4833020f289cb8bd67ce92220a5061c1757af75326899a1e0` |
| 4 | `theorem` | [boundary_safe_not_interior_pole_free](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/declarations/boundary-safe-not-interior-pole-free--7904377807e790f3c37f2cc0.md) | 37 | `result-track:7904377807e790f3c37f2cc094497f017c7ac100d971723c062762fdd1c155fc` |
| 5 | `theorem` | [right_edge_not_interior](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/declarations/right-edge-not-interior--60d3f6fff64273fb7af5fcab.md) | 43 | `result-track:60d3f6fff64273fb7af5fcabbaf841bc5ef255a040acb4ee08a53444efc99843` |
| 6 | `theorem` | [upper_left_corner_nonzero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/declarations/upper-left-corner-nonzero--ede2e405f7fd35adcd7c06f3.md) | 50 | `result-track:ede2e405f7fd35adcd7c06f3c218fa076a7864cb8e749398517eed42830854e8` |
| 7 | `theorem` | [constant_vertical_nonzero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/declarations/constant-vertical-nonzero--6a9e3e89f0febc1fdfa34136.md) | 58 | `result-track:6a9e3e89f0febc1fdfa34136e109fba6a655e5ad3ce7f6c976cf6e283cb33a65` |
| 8 | `theorem` | [constant_closed_contour_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/declarations/constant-closed-contour-zero--d108116c1547dc4093b38182.md) | 64 | `result-track:d108116c1547dc4093b3818216a129944b8545c525fcedd368dc92c70b345800` |
| 9 | `theorem` | [bounded_schedule_misses_height](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AdmissibleContourControls.lean/declarations/bounded-schedule-misses-height--23eb129dcc054875420b0a01.md) | 69 | `result-track:23eb129dcc054875420b0a0157e320aa3fd664aa5c5c1be8eda5b598abacfae7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
