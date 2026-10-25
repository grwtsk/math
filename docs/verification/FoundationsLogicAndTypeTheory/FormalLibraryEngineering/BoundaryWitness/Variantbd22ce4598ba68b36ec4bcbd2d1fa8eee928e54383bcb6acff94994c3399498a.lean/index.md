# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundaryWitness.Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df1efcb3d4421b6bdeeb4ab266345c36572483a1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df1efcb3d4421b6bdeeb4ab266345c36572483a1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MemoryBoundaryRole](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean/declarations/memoryboundaryrole--05828a7fd2448b9f6e7950fb.md) | 5 | `declaration-track:05828a7fd2448b9f6e7950fb2855644933e226e33fbdbafc987febfef7b40195` |
| 2 | `def` | [MemoryBoundaryRole.claimsTruth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean/declarations/memoryboundaryrole-claimstruth--8545fdc6bf6599470d073d8f.md) | 17 | `declaration-track:8545fdc6bf6599470d073d8ff777406b26258d1c26148a80ba58794daaaa6311` |
| 3 | `def` | [MemoryBoundaryRole.canEmitResidue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean/declarations/memoryboundaryrole-canemitresidue--af5af75bd44915860965a5b9.md) | 21 | `declaration-track:af5af75bd44915860965a5b9cd97fe94555d29d621517df4ad9cf23f2abeaf9e` |
| 4 | `theorem` | [memoryBoundary_claims_no_truth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean/declarations/memoryboundary-claims-no-truth--256f386ed8d33e608e5cf1ee.md) | 25 | `result-track:256f386ed8d33e608e5cf1eed9d0099510d97a553d99103b942e3fa0a7d58c89` |
| 5 | `theorem` | [memoryBoundary_can_emit_residue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryWitness/Variantbd22ce4598ba68b36ec4bcbd2d1fa8eee928e54383bcb6acff94994c3399498a.lean/declarations/memoryboundary-can-emit-residue--81ed03535d7837cce654d6bb.md) | 30 | `result-track:81ed03535d7837cce654d6bbdba42cf0a7683a9d95ffd859f0abd7dc3994e87f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
