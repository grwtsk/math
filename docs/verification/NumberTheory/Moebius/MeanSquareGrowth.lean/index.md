# Verification target: GRWTSK.NumberTheory.Moebius.MeanSquareGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae06ec7db95b70972ecac2e41a8346334988a802",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/MeanSquareGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae06ec7db95b70972ecac2e41a8346334988a802`.

Source path: `GRWTSK/NumberTheory/Moebius/MeanSquareGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/MeanSquareGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.EnergyGrowthEquivalences`](../../../../mathematics/NumberTheory/Moebius/EnergyGrowthEquivalences.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EnergyPoly](../../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/declarations/energypoly--d2d73b4b808fa29fb65f601d.md) | 23 | `declaration-track:d2d73b4b808fa29fb65f601dcf441c46c7b872b6b47b53b6ae4b6297d7444507` |
| 2 | `theorem` | [energy_bound_of_cross_bound](../../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/declarations/energy-bound-of-cross-bound--f17e51dfaec51522634273a9.md) | 27 | `result-track:f17e51dfaec51522634273a91c48db1e0eb8bcbee652c6443aa0d74e868feb8e` |
| 3 | `theorem` | [cross_poly_implies_energy_poly](../../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/declarations/cross-poly-implies-energy-poly--94bdb3a391274abe4b6343d4.md) | 46 | `result-track:94bdb3a391274abe4b6343d4a36c2119273ef7365e76fbe4d548c72595221bd9` |
| 4 | `theorem` | [energy_poly_implies_cross_poly](../../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/declarations/energy-poly-implies-cross-poly--84208305a0aac32e3f6858d5.md) | 52 | `result-track:84208305a0aac32e3f6858d55a21ef849b755108cac2433e79a85c31d67eb336` |
| 5 | `theorem` | [cross_poly_iff_energy_poly](../../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/declarations/cross-poly-iff-energy-poly--753f5d3470dfb09d5f204d84.md) | 60 | `result-track:753f5d3470dfb09d5f204d84b3f4706df7a20c9bec39ee23e91f18d036cd3f09` |
| 6 | `theorem` | [whole_pickup_poly_implies_energy_poly](../../../../mathematics/NumberTheory/Moebius/MeanSquareGrowth.lean/declarations/whole-pickup-poly-implies-energy-poly--6232bf4c481a1e203e60892c.md) | 63 | `result-track:6232bf4c481a1e203e60892cec9060baafa44ba64fbbc02c0a74fb12b04bda9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
