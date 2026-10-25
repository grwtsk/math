# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedTensorBridge.Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa0f33a2490f532e2c1679c80c3e6f7e61e60cad",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa0f33a2490f532e2c1679c80c3e6f7e61e60cad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.FixedPointTranscendency` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FixedTensor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac.lean/declarations/fixedtensor--08272debdef8a7eac1fd3f53.md) | 19 | `declaration-track:08272debdef8a7eac1fd3f534c98ec15c66dc37fb1470ffd3d4d8f694823dfe8` |
| 2 | `structure` | [FixedTensorBridge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac.lean/declarations/fixedtensorbridge--19fb0e84e2b589dd7fa86e7f.md) | 23 | `declaration-track:19fb0e84e2b589dd7fa86e7fdf60c9e79ecc40ccc3d61536b32706d4eae2a644` |
| 3 | `theorem` | [fixed_tensor_controls_spectral_trace_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac.lean/declarations/fixed-tensor-controls-spectral-trace-if-supplied--7e6b4452f83d814303d8ca76.md) | 35 | `result-track:7e6b4452f83d814303d8ca76ab26544de7a2a2731edb14276aa44783a2f6d159` |
| 4 | `theorem` | [fixed_tensor_transport_invariant_if_supplied](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensorBridge/Variant87ecd520a6f52c2eb8685793e96a4d5ead1d5f09c559ef1315b62c017e6bbcac.lean/declarations/fixed-tensor-transport-invariant-if-supplied--a5022bbf07f4e4680427923d.md) | 40 | `result-track:a5022bbf07f4e4680427923dc71abad3a031f2c6971c72d5f98a9b0d0f26959a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
