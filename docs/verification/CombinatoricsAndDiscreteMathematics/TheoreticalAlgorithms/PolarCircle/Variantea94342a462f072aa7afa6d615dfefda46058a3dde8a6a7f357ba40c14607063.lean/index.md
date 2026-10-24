# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PolarCircle.Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9bedf135a5b69514794f0f686a8c563e969f202",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9bedf135a5b69514794f0f686a8c563e969f202`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Stream.EpsilonRelaxation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OneDimensionalPolarBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/declarations/onedimensionalpolarbase--a38ec17734b0ad749c2ff81e.md) | 7 | `declaration-track:a38ec17734b0ad749c2ff81e95e3be9e17f28172b0643800458d26098ec3e4a2` |
| 2 | `def` | [mkOneDimensionalPolarBase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/declarations/mkonedimensionalpolarbase--0c665907fd150802e4a92dbc.md) | 34 | `declaration-track:0c665907fd150802e4a92dbcb307816305909eefae41d22b05b47849e490124f` |
| 3 | `theorem` | [oneDimensional_base_split_symmetric](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/declarations/onedimensional-base-split-symmetric--e2a85a951bc1772e67a8eda7.md) | 63 | `result-track:e2a85a951bc1772e67a8eda780d515f4e503950effead9bbc51d8f9f0108750a` |
| 4 | `theorem` | [oneDimensional_base_inverse_is_1001](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/declarations/onedimensional-base-inverse-is-1001--d4cdfd7baf83efc74ecd160e.md) | 68 | `result-track:d4cdfd7baf83efc74ecd160e1a6f5f90b566d110852f01970d0917a8ad209752` |
| 5 | `inductive` | [XorNaturalityMode](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/declarations/xornaturalitymode--d8dcec7599661a40aafdf5b2.md) | 73 | `declaration-track:d8dcec7599661a40aafdf5b2ccc6980b3e6e6cc405de36a7a9580e9b99df5859` |
| 6 | `structure` | [PolarCircleSegment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/declarations/polarcirclesegment--2b796f6a97c16a7c56ea213d.md) | 81 | `declaration-track:2b796f6a97c16a7c56ea213dc4c4f58e7b2669faf06d2d7b9dea20b3d12d63c7` |
| 7 | `def` | [mkSplitCircleSegment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/declarations/mksplitcirclesegment--73c3fa686342cdd3cfd1fa1d.md) | 94 | `declaration-track:73c3fa686342cdd3cfd1fa1d14628a7225bae0d5c83d91ba83b9ba3bedb2e09f` |
| 8 | `def` | [mkInverseCircleSegment](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PolarCircle/Variantea94342a462f072aa7afa6d615dfefda46058a3dde8a6a7f357ba40c14607063.lean/declarations/mkinversecirclesegment--e0824121973fa2a03f47ebf3.md) | 114 | `declaration-track:e0824121973fa2a03f47ebf39b7496b3c6f0350e9485bd066334d0a81786e65c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
