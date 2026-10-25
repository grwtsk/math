# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemoryBoundaryCorrect.Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0b17dd20d88c117634ed68db3b7c9c1def2514f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0b17dd20d88c117634ed68db3b7c9c1def2514f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.Center.InnerOuterHeatflow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_boundary_has_negative_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b.lean/declarations/inner-boundary-has-negative-polarity--fa3ab191cf48d86a1d586563.md) | 15 | `result-track:fa3ab191cf48d86a1d58656363c08741c8d2f94260e2527e2f2540995264eadb` |
| 2 | `theorem` | [bridge_boundary_has_zero_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b.lean/declarations/bridge-boundary-has-zero-polarity--d0c797d3be83862e4484e90d.md) | 19 | `result-track:d0c797d3be83862e4484e90d695d4e73e8a11259bad8314bc3fc5972cd1fe15a` |
| 3 | `theorem` | [outer_boundary_has_positive_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b.lean/declarations/outer-boundary-has-positive-polarity--68110ae0e011030cf6a2685e.md) | 23 | `result-track:68110ae0e011030cf6a2685efebdc9ad1f0ea2007c4b8b170a4983d05d21b617` |
| 4 | `theorem` | [default_boundary_memory_witness_has_residue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variant89035e6beda2048433cf71f64bb41080e19a0bba5a81a09eb280642e9f3beb2b.lean/declarations/default-boundary-memory-witness-has-residue--951cf1cccbd2852271bf8453.md) | 27 | `result-track:951cf1cccbd2852271bf8453bf97714fff72025ee44032a31216b57c4308375b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
