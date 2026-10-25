# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ControlledPlaneConditionalCompleteness.Variant7d9e72a56b26eec1d010de077bc5fea5d247b990abd0e726a1ba1dcdce111b58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbde68d97d6a5f4f44fd7810c3db47893317b740",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variant7d9e72a56b26eec1d010de077bc5fea5d247b990abd0e726a1ba1dcdce111b58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variant7d9e72a56b26eec1d010de077bc5fea5d247b990abd0e726a1ba1dcdce111b58.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variant7d9e72a56b26eec1d010de077bc5fea5d247b990abd0e726a1ba1dcdce111b58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbde68d97d6a5f4f44fd7810c3db47893317b740`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variant7d9e72a56b26eec1d010de077bc5fea5d247b990abd0e726a1ba1dcdce111b58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variant7d9e72a56b26eec1d010de077bc5fea5d247b990abd0e726a1ba1dcdce111b58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledPlane.Theorems.CF01_ClosedCoordinateFixation` — import line 6; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF02_DesignatedConeCompatibility` — import line 7; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF03_SieveAdmissibility` — import line 8; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF04_TraversalPreservation` — import line 9; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF05_ControlledSeparation` — import line 10; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF06_ControlNormalization` — import line 11; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF07_LosslessDecoder` — import line 12; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF08_OperationHomomorphism` — import line 13; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF09_ClosedCoordinateSeparation` — import line 14; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF10_CoordinateCompleteness` — import line 15; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF11_RefinementCoherence` — import line 16; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF12_ControlledPresentationExistence` — import line 17; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF13_CompactCarrier` — import line 18; external provider; requires a separately pinned dependency.
- `FCRS.ControlledPlane.Theorems.CF14_NoEmbeddingObligation` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [controlledPlane_scoped_conditional_completeness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ControlledPlaneConditionalCompleteness/Variant7d9e72a56b26eec1d010de077bc5fea5d247b990abd0e726a1ba1dcdce111b58.lean/declarations/controlledplane-scoped-conditional-completeness--f9b56dceb30eb9c2aedb84c2.md) | 41 | `result-track:f9b56dceb30eb9c2aedb84c20f6efa307a9a7fb86c2f4b38ef5a98fb90487246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
