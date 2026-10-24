# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.ConnectedComponents.FiniteRasterGraphProfile.Variant9d8d6b4b14ac34b9.ForegroundComponentsAndCycleRank

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f97b992b752b6c3609843df7c76bd6629db465f8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f97b992b752b6c3609843df7c76bd6629db465f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Surgery.Digital` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity.Finite` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ForegroundCell](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/declarations/foregroundcell--a036436dc40d5dbf422c6050.md) | 48 | `declaration-track:a036436dc40d5dbf422c6050bef8c0629b15166b19e278a8fc32e47f2e229116` |
| 2 | `def` | [foregroundGraph](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/declarations/foregroundgraph--975a39d348755e934355854a.md) | 52 | `declaration-track:975a39d348755e934355854a12cf58830dbad9e8ee721dd474470472181e56ff` |
| 3 | `instance` | [foregroundGraphAdjacencyDecidable](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/declarations/foregroundgraphadjacencydecidable--27c56886a99d46017d799e33.md) | 60 | `declaration-track:27c56886a99d46017d799e33cdbdcf983c4315aec4a8a7be9ea8537fef36f5ab` |
| 4 | `def` | [betaZero](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/declarations/betazero--765b62e93ef0c10770e8f29b.md) | 66 | `declaration-track:765b62e93ef0c10770e8f29b06d1e5a9031de6f52a521ea0cae82548bcbeeecd` |
| 5 | `def` | [betaOne](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/declarations/betaone--7f4399edd095627b9dd2d5a1.md) | 71 | `declaration-track:7f4399edd095627b9dd2d5a18c88875aead54462ff97a6402d52dd8495be19c8` |
| 6 | `def` | [fullTwoByTwo](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/declarations/fulltwobytwo--3efa0f3c27236e67466e8b3b.md) | 77 | `declaration-track:3efa0f3c27236e67466e8b3b6dffcf0cf7fcb693c40c8d964cf05b381b3e7a95` |
| 7 | `theorem` | [fullTwoByTwo_betaZero](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/declarations/fulltwobytwo-betazero--7c21fd02b569b28a9232f4ff.md) | 80 | `result-track:7c21fd02b569b28a9232f4ff77169ded86faa3db51503e67512cccee1ad12255` |
| 8 | `theorem` | [fullTwoByTwo_betaOne](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/declarations/fulltwobytwo-betaone--8acf41d4141fdbe39b767aa5.md) | 86 | `result-track:8acf41d4141fdbe39b767aa5ca6eb40d32de3fe5b57d72f3b50e5884a882b9ac` |
| 9 | `def` | [graphBetti](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/ConnectedComponents/FiniteRasterGraphProfile/Variant9d8d6b4b14ac34b9/ForegroundComponentsAndCycleRank.lean/declarations/graphbetti--ce41b669409631a059344efd.md) | 91 | `declaration-track:ce41b669409631a059344efdeaaa6b031481afbad8dd7969f3597bf0e8e8d22e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
