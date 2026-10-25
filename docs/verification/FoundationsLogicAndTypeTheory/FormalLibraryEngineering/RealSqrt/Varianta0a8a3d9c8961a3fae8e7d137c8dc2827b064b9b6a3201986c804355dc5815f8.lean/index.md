# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RealSqrt.Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c547180fd43a1ff55d7022dff099929d8f9cf8c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c547180fd43a1ff55d7022dff099929d8f9cf8c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Sqrt` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNat_realSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/declarations/isnat-realsqrt--bab582a08fbacf6cc19bfb10.md) | 23 | `result-track:bab582a08fbacf6cc19bfb10e330efc02465be51867b0aec4be1f5e6e061b27b` |
| 2 | `lemma` | [isNat_nnrealSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/declarations/isnat-nnrealsqrt--8de50b7818081a1693652d7c.md) | 26 | `result-track:8de50b7818081a1693652d7ce1cc671e1dfd3f49728e75e1f80a46df82d8e329` |
| 3 | `lemma` | [isNat_realSqrt_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/declarations/isnat-realsqrt-neg--03c7467cb598fe2bcdc5ca94.md) | 29 | `result-track:03c7467cb598fe2bcdc5ca94eea3c65174f9e909f4e83e0c65797074f71ddbcf` |
| 4 | `lemma` | [isNat_realSqrt_of_isRat_negOfNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/declarations/isnat-realsqrt-of-israt-negofnat--b6a2b6893f7989fc13cd94a9.md) | 32 | `result-track:b6a2b6893f7989fc13cd94a97a7dff2b6199d276acb09b62692ed67f54a6b1e7` |
| 5 | `lemma` | [isRat_realSqrt_of_isRat_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/declarations/israt-realsqrt-of-israt-ofnat--bb61cbd813cf6889b5c8dcd8.md) | 40 | `result-track:bb61cbd813cf6889b5c8dcd88d4366096cefed127a557f2a69a62d1b2283d496` |
| 6 | `def` | [evalRealSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/declarations/evalrealsqrt--2e5055986670937219ba2189.md) | 52 | `declaration-track:2e5055986670937219ba2189f9bbf20959644bb2d392d7484b137a6b2f0ef65f` |
| 7 | `def` | [evalNNRealSqrt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RealSqrt/Varianta0a8a3d9c8961a3fae8e7d137c8dc2827b064b9b6a3201986c804355dc5815f8.lean/declarations/evalnnrealsqrt--e6bf8f76143a3cedf893d978.md) | 91 | `declaration-track:e6bf8f76143a3cedf893d97818e370ea8415b7c4c3bdc7d032c1a47656e13f06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
