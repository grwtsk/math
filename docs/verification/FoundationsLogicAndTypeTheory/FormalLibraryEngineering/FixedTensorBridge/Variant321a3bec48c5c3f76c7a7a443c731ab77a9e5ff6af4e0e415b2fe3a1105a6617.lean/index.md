# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensorBridge.Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca002197b82fb15e2a24c339805ab2599afa019c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca002197b82fb15e2a24c339805ab2599afa019c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.FixedPointTranscendency` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FixedTensor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617.lean/declarations/fixedtensor--1408df2ed17edf5bc69f0b9a.md) | 27 | `declaration-track:1408df2ed17edf5bc69f0b9aa6eba583a076c684e64fc0f9c88065bac25c062c` |
| 2 | `structure` | [FixedTensorBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617.lean/declarations/fixedtensorbridge--1522fcef190cb65e7a6f86dc.md) | 31 | `declaration-track:1522fcef190cb65e7a6f86dcca11b969b904d8497eb628be9974e6e226a312ec` |
| 3 | `theorem` | [fixed_tensor_controls_spectral_trace_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617.lean/declarations/fixed-tensor-controls-spectral-trace-if-supplied--48f8fa74bd217ac7c22e17be.md) | 43 | `result-track:48f8fa74bd217ac7c22e17bee21b23c9fec4c42d5abe719845252256afdda7e4` |
| 4 | `theorem` | [fixed_tensor_transport_invariant_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant321a3bec48c5c3f76c7a7a443c731ab77a9e5ff6af4e0e415b2fe3a1105a6617.lean/declarations/fixed-tensor-transport-invariant-if-supplied--8492c9451b7a70cf3d228c3a.md) | 48 | `result-track:8492c9451b7a70cf3d228c3a4f8c219fdd0df386d9cd7ab77dc48e6296f8c8ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
