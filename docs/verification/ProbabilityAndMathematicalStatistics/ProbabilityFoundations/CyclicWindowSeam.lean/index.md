# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.CyclicWindowSeam

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ef96a3daddc50181c397ae3a4f2751180140e04",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ef96a3daddc50181c397ae3a4f2751180140e04`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternBoundaryTV`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FinitePatternBoundaryTV.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicSeam](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/declarations/cyclicseam--120c59af05999c32ee95d31f.md) | 43 | `declaration-track:120c59af05999c32ee95d31f24be48e7a1ede0c3bba05e4eb7d819686ab37bb8` |
| 2 | `theorem` | [cyclicSeam_subset_range](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/declarations/cyclicseam-subset-range--0b80de663823618406350b35.md) | 47 | `result-track:0b80de663823618406350b3556fdcfde89c56110a8331ae81b90ba2c08ed1503` |
| 3 | `theorem` | [cyclicSeam_card](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/declarations/cyclicseam-card--581bd88a419349f2b9404d73.md) | 55 | `result-track:581bd88a419349f2b9404d73d7b7bec3bd5e4de52bdab240d534b707045b38bd` |
| 4 | `theorem` | [cyclicSeam_zero](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/declarations/cyclicseam-zero--96669ddfece0ea5bfa541f1f.md) | 61 | `result-track:96669ddfece0ea5bfa541f1f5600db30c9ec896963ac944e937304cfd63999ec` |
| 5 | `theorem` | [root_lt_cutoff_of_not_mem_seam](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/declarations/root-lt-cutoff-of-not-mem-seam--16ee177ffd9b7fad5a8b4479.md) | 67 | `result-track:16ee177ffd9b7fad5a8b4479e98a985caed3c0521befae03d655822d7478a708` |
| 6 | `def` | [ordinaryWindow](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/declarations/ordinarywindow--bd3c2f8fbd2a3fda556a0f45.md) | 79 | `declaration-track:bd3c2f8fbd2a3fda556a0f45a023927eab917cf4a875b8716455f05613fbb050` |
| 7 | `def` | [cyclicWindow](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/declarations/cyclicwindow--52bc7f9cab2479db98f99628.md) | 84 | `declaration-track:52bc7f9cab2479db98f99628bdb4b21503782f66ccd2b74ad55c0353dafbf4e5` |
| 8 | `theorem` | [ordinaryWindow_eq_cyclic_off](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/declarations/ordinarywindow-eq-cyclic-off--f18ce69cf6a52361de727103.md) | 89 | `result-track:f18ce69cf6a52361de727103fc86b26df8bf29d98a6fa1b8357ce9749f9b81c2` |
| 9 | `theorem` | [finiteTV_ordinary_cyclicWindow_le](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/CyclicWindowSeam.lean/declarations/finitetv-ordinary-cyclicwindow-le--244fabc83c07ff7ecb55a1e9.md) | 107 | `result-track:244fabc83c07ff7ecb55a1e9748da1aeff09ea219854a53b684a918d5228ad01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
