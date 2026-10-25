# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b187c51fa197ee48c2fb9d26e023632493855e48",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b187c51fa197ee48c2fb9d26e023632493855e48`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundarySide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/boundaryside--0db0d302a2a709c91204be84.md) | 15 | `declaration-track:0db0d302a2a709c91204be84ffb53e82fd7e32e4d939ff9e77fba8394284526e` |
| 2 | `def` | [BoundarySide.polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/boundaryside-polarity--447764431417259e1a09f228.md) | 21 | `declaration-track:447764431417259e1a09f228a7547deb34bb950ae8aaa00a39a32b7980affedf` |
| 3 | `def` | [BoundarySide.isStable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/boundaryside-isstable--d3933eb36be2721084962c0d.md) | 26 | `declaration-track:d3933eb36be2721084962c0de532bc5505f882e5edfa9e156da87f535e55333b` |
| 4 | `theorem` | [inner_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/inner-polarity--618c066c34d1ab941a9f7318.md) | 30 | `result-track:618c066c34d1ab941a9f73187fa641078e27c38c8c3b481f982fa8df6a0f939c` |
| 5 | `theorem` | [bridge_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/bridge-polarity--849d8853682522ff7312006c.md) | 34 | `result-track:849d8853682522ff7312006c061bc3b43d2b69c36fd5b77c3fb54ba7b31d5f4e` |
| 6 | `theorem` | [outer_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/outer-polarity--3a9e08e30b25570f35c94b8b.md) | 38 | `result-track:3a9e08e30b25570f35c94b8becfcd01a1cdd301cff13979bc5d470231f848c18` |
| 7 | `inductive` | [BoundaryFlow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/boundaryflow--843faf554808396c99972878.md) | 42 | `declaration-track:843faf554808396c999728780651e6f6b815e8dc7a4a4bc6c5ccb9760a1dca40` |
| 8 | `structure` | [BoundaryFlowReport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/boundaryflowreport--9b8196b237147ca261b244e2.md) | 49 | `declaration-track:9b8196b237147ca261b244e25f57d922d650c4d318169e2ae87f1fc884388101` |
| 9 | `def` | [BoundaryFlowReport.residue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/boundaryflowreport-residue--a5ef163da2914a783c0243d3.md) | 55 | `declaration-track:a5ef163da2914a783c0243d3aa23639b09807f7c56ef31888d3dd19833867769` |
| 10 | `def` | [BoundaryFlowReport.closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/boundaryflowreport-closed--f0276c925c6884746e1b6f78.md) | 58 | `declaration-track:f0276c925c6884746e1b6f7851d5186e91addf5a9c4a6fe82508b19ebe5f06c5` |
| 11 | `def` | [BoundaryFlowReport.acceptable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/boundaryflowreport-acceptable--3b8785d92ae20bbf4109f22c.md) | 61 | `declaration-track:3b8785d92ae20bbf4109f22c620af7375f7bcb98c3975d10ca7626abd1a252ed` |
| 12 | `theorem` | [boundaryFlowReport_zero_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf148d3748d7fccc04bec1e020eeb2877c561427fbd4cd95c66c6665076003a39.lean/declarations/boundaryflowreport-zero-closed--650a7578c83b37aa429b9b7f.md) | 65 | `result-track:650a7578c83b37aa429b9b7f88160d2e57a30fc727e12c758ff380e067621eb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
