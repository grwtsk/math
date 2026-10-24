# Verification target: GRWTSK.Analysis.OperatorTheory.SpectralTheory.DirichletCut

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dd5f847a770a48d890f3869ad3ded07306dd5a7",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/DirichletCut.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dd5f847a770a48d890f3869ad3ded07306dd5a7`.

Source path: `GRWTSK/Analysis/OperatorTheory/SpectralTheory/DirichletCut.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OperatorTheory/SpectralTheory/DirichletCut.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume`](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/SturmianFiniteVolume__SourceOccurrence601e505310a970b18bd9abb2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [joiningEdge](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/joiningedge--31441a77a1e3550ae124475b.md) | 15 | `declaration-track:31441a77a1e3550ae124475b758ab6df14f8a6e4175cbb109be6d5b625ba8039` |
| 2 | `def` | [boundaryFunctional](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/boundaryfunctional--7afa8e600a090064d925f10c.md) | 19 | `declaration-track:7afa8e600a090064d925f10c183ca298de3161a65c9183929bbc8cb3488049c1` |
| 3 | `def` | [boundaryCoordinates](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/boundarycoordinates--218538e7c967231b157f4745.md) | 35 | `declaration-track:218538e7c967231b157f474571b7a1ac31fc3edbd306886fdd1361643cc6fc54` |
| 4 | `def` | [boundarySynthesis](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/boundarysynthesis--14eb05265c31430e04806a5f.md) | 38 | `declaration-track:14eb05265c31430e04806a5f708853293ae979e03f65011fa07e8d4259ad4c55` |
| 5 | `theorem` | [joiningEdge_isHermitian](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/joiningedge-ishermitian--2c35d8d3877e02f017b85090.md) | 53 | `result-track:2c35d8d3877e02f017b85090753ba22808eb5ff2142c4f084f517869f0dd8dd6` |
| 6 | `theorem` | [joiningEdge_mulVec](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/joiningedge-mulvec--ed01cb1c6b61faabd2e0b774.md) | 57 | `result-track:ed01cb1c6b61faabd2e0b7747a28a551b6a6d8258ccf80bb4e4dab40ee174869` |
| 7 | `theorem` | [joiningEdge_factor](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/joiningedge-factor--0f05701860c572b4aa6b39b4.md) | 65 | `result-track:0f05701860c572b4aa6b39b44ae37208a68a0838f412780e324a60810a304c8d` |
| 8 | `theorem` | [joiningEdge_rank_le_two](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/joiningedge-rank-le-two--e0cfdf892595efcf564228e8.md) | 72 | `result-track:e0cfdf892595efcf564228e830db0fca8b498990114049b796e2b62099ecb238` |
| 9 | `def` | [cutHamiltonian](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/cuthamiltonian--a575b0ee8fe8fa4d919e4831.md) | 80 | `declaration-track:a575b0ee8fe8fa4d919e4831b74a3724bb1c849ea7458de65bdee584ab3c1a77` |
| 10 | `theorem` | [cutHamiltonian_isHermitian](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/cuthamiltonian-ishermitian--65b522f9cf0683ad7070418e.md) | 83 | `result-track:65b522f9cf0683ad7070418e1f082462ec15117a9b096b8c7e9ec22fe45d7fd0` |
| 11 | `def` | [cutCount](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/cutcount--a838b250a187b9e930d73ae8.md) | 87 | `declaration-track:a838b250a187b9e930d73ae8d0feb335c746903bbb6fd50d392328aae070f673` |
| 12 | `theorem` | [cut_count_error](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/cut-count-error--1af4c4dbeb871caff4865430.md) | 90 | `result-track:1af4c4dbeb871caff48654309c40f88689a4aec888daa532c2b31c483cbb6fdd` |
| 13 | `theorem` | [cutHamiltonian_reindex](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/cuthamiltonian-reindex--474c13b461f00f6767037325.md) | 108 | `result-track:474c13b461f00f6767037325b7e7b28ec3ea8fcd66de5fafcd30496974c830ba` |
| 14 | `theorem` | [cut_charpoly](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/cut-charpoly--24e058365fc321a97515ee13.md) | 157 | `result-track:24e058365fc321a97515ee13c670fa117e16dd7fe8ff7b52d4b7dc549e695586` |
| 15 | `theorem` | [cutCount_eq_sum](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/cutcount-eq-sum--c2ff8b5e2b7cb2009be21a56.md) | 165 | `result-track:c2ff8b5e2b7cb2009be21a56abc218201f9d13f808a0a8df8c6bb7b1776f3167` |
| 16 | `theorem` | [adjacent_count_error](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/adjacent-count-error--216cfd83db63c56d89b76ae9.md) | 176 | `result-track:216cfd83db63c56d89b76ae91e517aa4180a935b7d63699fcd82c9d1a6801e0c` |
| 17 | `theorem` | [adjacent_normalized_count_error](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/DirichletCut__SourceOccurrence97076d1513a2eb42c0ad5903.lean/declarations/adjacent-normalized-count-error--85deef48b97d6d97fe9efdce.md) | 185 | `result-track:85deef48b97d6d97fe9efdce38169e952989b94f9a840dd1cea8d6e5102307f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
