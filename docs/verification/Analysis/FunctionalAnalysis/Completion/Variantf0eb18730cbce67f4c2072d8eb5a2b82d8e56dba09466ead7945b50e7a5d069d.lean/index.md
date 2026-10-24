# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Completion.Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa91e0ae2d0df00b0c4cf875c3e1ce61179e41a0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa91e0ae2d0df00b0c4cf875c3e1ce61179e41a0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Hilbert.Quotient` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KernelSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean/declarations/kernelspace--ed088c45254c8d8066586934.md) | 22 | `declaration-track:ed088c45254c8d80665869340b8d7c0bec1240f5c45354fee8b465ab4171ecac` |
| 2 | `def` | [completePreKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean/declarations/completeprekernel--144c9b17e8a6abdb5a593816.md) | 27 | `declaration-track:144c9b17e8a6abdb5a59381692dae26827280b81db836e6f4936f3b9a71ba4bf` |
| 3 | `def` | [kernelSpace_hilbertStructure](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean/declarations/kernelspace-hilbertstructure--1bb52b9063a3dc23d96fa961.md) | 32 | `declaration-track:1bb52b9063a3dc23d96fa9611ee2cf926301f1d4b3fcc1450481b9de63ebd0f4` |
| 4 | `theorem` | [kernelSpace_isHilbert](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean/declarations/kernelspace-ishilbert--9775a39bde5d6e182c7babae.md) | 37 | `result-track:9775a39bde5d6e182c7babae634d77c88f669e46854f251d64f6cb031d41c5a0` |
| 5 | `theorem` | [inner_completePreKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean/declarations/inner-completeprekernel--6c0168104dd756516f59ead0.md) | 43 | `result-track:6c0168104dd756516f59ead069a1695e63ec45f8e06c57e68d3e9132dac2f09e` |
| 6 | `theorem` | [completePreKernel_denseRange](../../../../../mathematics/Analysis/FunctionalAnalysis/Completion/Variantf0eb18730cbce67f4c2072d8eb5a2b82d8e56dba09466ead7945b50e7a5d069d.lean/declarations/completeprekernel-denserange--8120128d7370792a62a00c6a.md) | 51 | `result-track:8120128d7370792a62a00c6af77b889ff97b5c277e1f451a4cf5396b7cc1a4a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
