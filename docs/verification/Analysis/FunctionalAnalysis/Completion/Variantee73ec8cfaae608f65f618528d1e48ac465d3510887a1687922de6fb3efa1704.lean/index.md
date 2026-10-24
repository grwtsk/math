# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Completion.Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b82fe874cb805d34f5cf276f1bf4aea940d7e469",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b82fe874cb805d34f5cf276f1bf4aea940d7e469`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.Quotient` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KernelSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean/declarations/kernelspace--8f8d1909ef9c0fa854f63190.md) | 30 | `declaration-track:8f8d1909ef9c0fa854f6319003b6b7ddb6db8469cbda4ca0d4287e0027d410e9` |
| 2 | `def` | [completePreKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean/declarations/completeprekernel--a98c5567d2a7cdc730cee5e0.md) | 35 | `declaration-track:a98c5567d2a7cdc730cee5e0f1d9662ace222a7890c9b96787c1cad005fe748d` |
| 3 | `def` | [kernelSpace_hilbertStructure](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean/declarations/kernelspace-hilbertstructure--5762784614059311eb15146d.md) | 40 | `declaration-track:5762784614059311eb15146d31ae08b5bd5b15b4754ab9307f4d18ca2c7a9709` |
| 4 | `theorem` | [kernelSpace_isHilbert](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean/declarations/kernelspace-ishilbert--7bd4d0b9df77854c260174ef.md) | 45 | `result-track:7bd4d0b9df77854c260174ef8403b32aba389dc0144d82d7c2b5cf4d61707ca9` |
| 5 | `theorem` | [inner_completePreKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean/declarations/inner-completeprekernel--ace49e28a947f2e20012e8ae.md) | 51 | `result-track:ace49e28a947f2e20012e8ae2e788305271e3ffda4bd2857fb716bf4d271ae51` |
| 6 | `theorem` | [completePreKernel_denseRange](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantee73ec8cfaae608f65f618528d1e48ac465d3510887a1687922de6fb3efa1704.lean/declarations/completeprekernel-denserange--be7829fd172ccd729eec2124.md) | 59 | `result-track:be7829fd172ccd729eec21243082b0aa9626514e553a8cb139e2b068fd6dddae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
