# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ContourCountDeficit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0935c7c7a7fc5102dc5ed713b2e9103fa401b380",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0935c7c7a7fc5102dc5ed713b2e9103fa401b380`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.WeightedInventoryDeficit`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedInventoryDeficit.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLocalZeroContour`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalLocalZeroContour.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [off_line_pair_missing](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/declarations/off-line-pair-missing--77ef8263a01f1240a04b8b87.md) | 43 | `result-track:77ef8263a01f1240a04b8b876214e522cbf07f47917e228598137482a4bbee0c` |
| 2 | `theorem` | [all_on_line_of_region_credit](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/declarations/all-on-line-of-region-credit--7b74fb0eea9f1c24b0e58c82.md) | 58 | `result-track:7b74fb0eea9f1c24b0e58c829b35d016c5f30b49f1bc369f351c0c4394ebf0e5` |
| 3 | `theorem` | [rhThrough_of_height_credit](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/declarations/rhthrough-of-height-credit--2bd3d4ff5f966a4ffc5cb0e1.md) | 79 | `result-track:2bd3d4ff5f966a4ffc5cb0e1e86fc2f0d0c6b621978d19f0f2ce135d47edb095` |
| 4 | `theorem` | [rhThrough_of_weighted_inventory](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/declarations/rhthrough-of-weighted-inventory--1a69478ee484488c04b2a494.md) | 99 | `result-track:1a69478ee484488c04b2a494f16341cd7f65c3d160e44b9ecd8e7341d812e1e5` |
| 5 | `theorem` | [contour_credit_le_multiplicity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/declarations/contour-credit-le-multiplicity--a6f00530bad3d75b869c574d.md) | 112 | `result-track:a6f00530bad3d75b869c574d2719177ae7d6f6d6e88e7e65b20f26f9238fcb24` |
| 6 | `theorem` | [rhThrough_of_local_contour_credit](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/declarations/rhthrough-of-local-contour-credit--e703c98f443684ea4ead1de1.md) | 128 | `result-track:e703c98f443684ea4ead1de1debbce6d5caa3c3aa6545584fc9687e381b125a1` |
| 7 | `theorem` | [riemannHypothesis_of_all_height_credits](../../../../../mathematics/NumberTheory/Zeta/Riemann/ContourCountDeficit.lean/declarations/riemannhypothesis-of-all-height-credits--eb7334e83e115c1be3289ce6.md) | 152 | `result-track:eb7334e83e115c1be3289ce6215367f4f3c35b6a207aa9ef91f3e5f4b9cdf584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
