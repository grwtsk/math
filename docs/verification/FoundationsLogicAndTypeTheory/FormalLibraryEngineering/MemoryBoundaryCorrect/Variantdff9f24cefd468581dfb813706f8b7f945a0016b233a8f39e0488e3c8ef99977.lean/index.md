# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemoryBoundaryCorrect.Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cb2fdff5940200829c800bd2280652adac233d0",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cb2fdff5940200829c800bd2280652adac233d0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.Center.InnerOuterHeatflow` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_boundary_has_negative_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977.lean/declarations/inner-boundary-has-negative-polarity--cfe6e4421f82f22cd99cf13e.md) | 7 | `result-track:cfe6e4421f82f22cd99cf13eb543cd892892fe58e8a5f9dd60dec8f4251dd646` |
| 2 | `theorem` | [bridge_boundary_has_zero_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977.lean/declarations/bridge-boundary-has-zero-polarity--c797816ea262c4b767db4bff.md) | 11 | `result-track:c797816ea262c4b767db4bff4aac3e34cd4a9dc66df4daa2ca433f7fffab9c89` |
| 3 | `theorem` | [outer_boundary_has_positive_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977.lean/declarations/outer-boundary-has-positive-polarity--20af75c7424559e7a60f4240.md) | 15 | `result-track:20af75c7424559e7a60f4240e5a29ccfbd0eb5a064b58a9148ffe8407c6896fe` |
| 4 | `theorem` | [default_boundary_memory_witness_has_residue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBoundaryCorrect/Variantdff9f24cefd468581dfb813706f8b7f945a0016b233a8f39e0488e3c8ef99977.lean/declarations/default-boundary-memory-witness-has-residue--19b2a5f9ed0a6fc149a1f63d.md) | 19 | `result-track:19b2a5f9ed0a6fc149a1f63df3e06f16a42adeb655bcaabb88f3ad344296a775` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
