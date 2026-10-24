# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ReflectionMultiplicityBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3495264419428f4bb2423bb2c2596f40b972688",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3495264419428f4bb2423bb2c2596f40b972688`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.WeightedPairBudget`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedPairBudget.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalZeroDivisor.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.BoundedHeightCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/BoundedHeightCriterion.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reflected](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/reflected--063f2db11340585ddb3ebb8a.md) | 40 | `declaration-track:063f2db11340585ddb3ebb8abe3b7f5811e1f04ec272c0da2e1a99363fdb2f2d` |
| 2 | `theorem` | [height_reflected](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/height-reflected--040d91c8267c93a1c223969f.md) | 44 | `result-track:040d91c8267c93a1c223969fcea8c1be50d12d54b527c097ad004c3ec9aa59e2` |
| 3 | `theorem` | [on_line_of_eq_reflected](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/on-line-of-eq-reflected--873e95b2dc3001a676618c27.md) | 48 | `result-track:873e95b2dc3001a676618c270339b34c60945af6264aaa8ed5c799e80ee8fc3b` |
| 4 | `theorem` | [distinct_of_off_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/distinct-of-off-line--f52255489e5cfb3eebed1233.md) | 55 | `result-track:f52255489e5cfb3eebed1233bfce62e57c8795dad4d49919725f438dbc31eebc` |
| 5 | `theorem` | [critical_line_of_finite_pair_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/critical-line-of-finite-pair-bounds--b02f760aead1b6d2f9e719b3.md) | 60 | `result-track:b02f760aead1b6d2f9e719b384eb5c727458916d336fa6c85a2d78b2193e4c2f` |
| 6 | `def` | [regionHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/regionhead--6584ab6b636452f71de8dd11.md) | 71 | `declaration-track:6584ab6b636452f71de8dd116152677c992b3785120321cccae85581d241cd21` |
| 7 | `theorem` | [mem_regionHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/mem-regionhead--75d8a8163ca1095e43a2f580.md) | 76 | `result-track:75d8a8163ca1095e43a2f58095542eaa52bfbc74ad91ef63fbc6f687df8d462b` |
| 8 | `def` | [regionCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/regioncount--4f11ce95ea2dd8c8847686d6.md) | 82 | `declaration-track:4f11ce95ea2dd8c8847686d67681a5d00a2b2b70c962993cfa3888185c51fe83` |
| 9 | `theorem` | [regionHead_univ](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/regionhead-univ--1f3b31616db5646510568952.md) | 85 | `result-track:1f3b31616db564651056895259c65d6c4b6f2352b734560b681487d2712f6a36` |
| 10 | `theorem` | [regionCount_univ](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/regioncount-univ--29956252555b6a5c425ae602.md) | 90 | `result-track:29956252555b6a5c425ae602de401a3684d49e8fcd7f69b2fd8f58d8f40a1ee2` |
| 11 | `theorem` | [regionCount_le_heightCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/regioncount-le-heightcount--4959ac7196ae1c7f491d3347.md) | 94 | `result-track:4959ac7196ae1c7f491d3347b7b5a919e962db78cc05b173f029f5cfe5ab95f3` |
| 12 | `theorem` | [reflected_mem_regionHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/reflected-mem-regionhead--3abd4afe991d4767e0e86029.md) | 104 | `result-track:3abd4afe991d4767e0e86029173e841e97bf029c36afd1be8b4e2e044c0e752b` |
| 13 | `theorem` | [critical_line_of_region_pair_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/critical-line-of-region-pair-bounds--51b8f036c3b6c8bf1addc2f4.md) | 113 | `result-track:51b8f036c3b6c8bf1addc2f478f7392e8be065e2eafc5861b7931a2915ece651` |
| 14 | `theorem` | [critical_line_of_region_common_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/critical-line-of-region-common-lower--7d390a0db11251463529f0d6.md) | 123 | `result-track:7d390a0db11251463529f0d6fed92a9648ac3388fbee1487167023908b09b4d2` |
| 15 | `theorem` | [critical_line_of_region_preserved_multiplicity](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/critical-line-of-region-preserved-multiplicity--c12fd25ff2a51f4b8c9431a2.md) | 134 | `result-track:c12fd25ff2a51f4b8c9431a2b5b18910748df4f1fff7901598ce821d19e2a9c6` |
| 16 | `theorem` | [off_line_pair_mass_le_regionCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/off-line-pair-mass-le-regioncount--0220caffad992c7c806162d2.md) | 147 | `result-track:0220caffad992c7c806162d2ee8c0af8627834bd4bad75eb3f31962936f77c6a` |
| 17 | `theorem` | [rhThrough_of_region_pair_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectionMultiplicityBudget.lean/declarations/rhthrough-of-region-pair-cover--df463b76aafbea9bbde9afd8.md) | 157 | `result-track:df463b76aafbea9bbde9afd8e44db292b8765f29c95b99ff0dadb08235323a9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
