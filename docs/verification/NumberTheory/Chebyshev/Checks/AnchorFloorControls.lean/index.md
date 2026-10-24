# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.AnchorFloorControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cb25d40c4f79e9494bb8f8c4c2d0c7f103b5b38",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cb25d40c4f79e9494bb8f8c4c2d0c7f103b5b38`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.AnchoredLocalJensen`](../../../../../mathematics/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_tail_term_nonzero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean/declarations/first-tail-term-nonzero--edced95cede138987d9d5633.md) | 24 | `result-track:edced95cede138987d9d56332d7bf8461d57141206491b91c7e8a0a1b93fe860` |
| 2 | `theorem` | [first_tail_comparison_gap](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean/declarations/first-tail-comparison-gap--f5df3bea9932e56058bd35df.md) | 28 | `result-track:f5df3bea9932e56058bd35df8cdcd1af0857afb54141e849052c1dcaeb81b1d6` |
| 3 | `theorem` | [telescope_at_one_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean/declarations/telescope-at-one-rejected--1c650a9148fa62cf04475028.md) | 32 | `result-track:1c650a9148fa62cf04475028e18b7bc851a62db8261ba24800ea716af4d51cf7` |
| 4 | `theorem` | [generic_disk_floor_attained](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean/declarations/generic-disk-floor-attained--c7fb78c5f5bcd8d28a6f7423.md) | 36 | `result-track:c7fb78c5f5bcd8d28a6f7423b7b03e1aedd0cbd7da43863969c66a319298ef96` |
| 5 | `theorem` | [unit_radius_allows_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean/declarations/unit-radius-allows-zero--26051a19f5259adda49a8e3f.md) | 41 | `result-track:26051a19f5259adda49a8e3f02dbdd3492193aed55ead5df0ac79b4e31ab68f3` |
| 6 | `theorem` | [center_value_not_circle_ceiling](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean/declarations/center-value-not-circle-ceiling--3fb4ec0a738ad82f61ee2799.md) | 45 | `result-track:3fb4ec0a738ad82f61ee279972050811a0c6c0e5f85f3976f029c84b008c20c0` |
| 7 | `theorem` | [low_stage_anchor_floor](../../../../../mathematics/NumberTheory/Chebyshev/Checks/AnchorFloorControls.lean/declarations/low-stage-anchor-floor--1532cb0b3923069ab731bce5.md) | 49 | `result-track:1532cb0b3923069ab731bce53f262da61fcc47150c2731e83307ed4e9b3b1b6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
