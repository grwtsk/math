# Verification target: GRWTSK.Spectral.SturmianFiniteVolume

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b231e7ce39eb2cb0196d56e7ad9190fd8326d34a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Spectral/SturmianFiniteVolume.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b231e7ce39eb2cb0196d56e7ad9190fd8326d34a`.

Source path: `GRWTSK/Spectral/SturmianFiniteVolume.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Spectral/SturmianFiniteVolume.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.Sturmian`](../../../../../mathematics/Algebra/LinearAlgebra/Sturmian__SourceOccurrence0a9093d676606a11db510ee6.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Spectral.MatrixCountComparison`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/MatrixCountComparison__SourceOccurrence82da9873f1aa12ee1872f119.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Spectral.GapTransport`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrence4ed3f77355832fb166b0d318.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Topology.Order.OrderClosed` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeDirichlet](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/freedirichlet--5064df3a751cbe9930c814c5.md) | 22 | `declaration-track:5064df3a751cbe9930c814c5aa7327986a302ba2dcf8dd1dba11cd6d02d8eb83` |
| 2 | `def` | [hamiltonian](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/hamiltonian--f9b15f32a7a80aad0f4c7bb1.md) | 26 | `declaration-track:f9b15f32a7a80aad0f4c7bb14d02195b202c7073f0d1f60edf78a265e1654a3d` |
| 3 | `theorem` | [freeDirichlet_isHermitian](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/freedirichlet-ishermitian--5090cee08e71d9c6f357e25d.md) | 29 | `result-track:5090cee08e71d9c6f357e25d55a2cb505e9765669c74deba27f66349a150c180` |
| 4 | `theorem` | [hamiltonian_isHermitian](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/hamiltonian-ishermitian--2bf7bf276d17cda79a1ee447.md) | 33 | `result-track:2bf7bf276d17cda79a1ee44720923c2eb3cc89a5d6888da8198d8f830e3c564d` |
| 5 | `theorem` | [hamiltonian_zero](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/hamiltonian-zero--aba0cc42e14aa42ddbaa1f3a.md) | 37 | `result-track:aba0cc42e14aa42ddbaa1f3a8a5d47d16d49b5f7d857bda16f57a95c1536fbad` |
| 6 | `theorem` | [lower_difference_posSemidef](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/lower-difference-possemidef--3157156ffe54a21ea0e65ba2.md) | 41 | `result-track:3157156ffe54a21ea0e65ba237418397a4dbef9aa68383aa33c6d1bfb8309d70` |
| 7 | `theorem` | [upper_difference_posSemidef](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/upper-difference-possemidef--ebf2bedbab03795329c7f194.md) | 53 | `result-track:ebf2bedbab03795329c7f1949ef651f85cee5eec2b0992882c8dc8c274a11d8a` |
| 8 | `theorem` | [diagonal_quadratic](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/diagonal-quadratic--07ba0ed03a9edcedabaa521e.md) | 65 | `result-track:07ba0ed03a9edcedabaa521e28da3d5be99dd125befe5ed5379d04a89bc748d3` |
| 9 | `theorem` | [coordinate_norm](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/coordinate-norm--d6d4f7651862d05211806628.md) | 74 | `result-track:d6d4f7651862d052118066280b7882b025788c4bd24bf7b832c18669235a8899` |
| 10 | `theorem` | [hamiltonian_quadratic_bounds](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/hamiltonian-quadratic-bounds--cd007b52105b25df74a1efbf.md) | 78 | `result-track:cd007b52105b25df74a1efbfae7ce437fe54bff0ec3a43be1a7b14562e48691a` |
| 11 | `def` | [freeCount](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/freecount--16030ecbc780be3069b16e56.md) | 100 | `declaration-track:16030ecbc780be3069b16e5638feaab962cf09a0f746c3b5efc3f981a577152b` |
| 12 | `def` | [sturmianCount](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/sturmiancount--601eb3fd7e9ff6832270f2a1.md) | 102 | `declaration-track:601eb3fd7e9ff6832270f2a14be3812d810aa79d7b9fc30bf0a10dbb1ed73392` |
| 13 | `theorem` | [finite_count_comparison](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/finite-count-comparison--da62050247940b048735ace4.md) | 106 | `result-track:da62050247940b048735ace49d9503534aa8b87bdd89b0bb31d622000ee7684e` |
| 14 | `def` | [freeNormalizedCount](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/freenormalizedcount--ab1af0ff02eda349f895a71c.md) | 122 | `declaration-track:ab1af0ff02eda349f895a71cf0ac16bc1e4e4ed1da4eeeb7e6a619255ac76fe8` |
| 15 | `def` | [sturmianNormalizedCount](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/sturmiannormalizedcount--f099dca1e3b63423cf390d32.md) | 124 | `declaration-track:f099dca1e3b63423cf390d32dfa81d3430c9d99198f25f5d97e4d21f08758f2e` |
| 16 | `theorem` | [finite_normalized_comparison](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/finite-normalized-comparison--c5772676ef12260a4a7d6ff6.md) | 127 | `result-track:c5772676ef12260a4a7d6ff6c7097ead2eba80c2ef2d30d4a5eba3eefd775501` |
| 17 | `theorem` | [ids_comparison_of_count_limits](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/ids-comparison-of-count-limits--d9bbbca5231514f1b718530a.md) | 137 | `result-track:d9bbbca5231514f1b718530a6bf786a464aa95a7913cb4698d3bdace97467122` |
| 18 | `theorem` | [gap_width_le_abs_coupling_of_count_limits](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence0eaf5f3ed7013eca5a2410e5.lean/declarations/gap-width-le-abs-coupling-of-count-limits--1eb334970ab8a1113fdc5c1e.md) | 150 | `result-track:1eb334970ab8a1113fdc5c1e14954b49792c9f69d64449122d14784ec7b7d3af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
