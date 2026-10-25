# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Decoder.Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea28578cba3fe90a49780631cdefbcb169108c81",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea28578cba3fe90a49780631cdefbcb169108c81`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.Residue` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DecodeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean/declarations/decoderesult--b686af9ae435b36a7a2d9686.md) | 23 | `declaration-track:b686af9ae435b36a7a2d96863429b7a73a82808e2268be0511fbf8ba7c6dbaad` |
| 2 | `def` | [DecoderSound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean/declarations/decodersound--bdef47a639e3b51100f33e4e.md) | 28 | `declaration-track:bdef47a639e3b51100f33e4ed0f27859e52f1f147d4859ddf3173f8b95612afd` |
| 3 | `def` | [DecoderSurjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean/declarations/decodersurjective--7a430800efcc3995d7caf3ab.md) | 35 | `declaration-track:7a430800efcc3995d7caf3abf3aa03524e10ddaa4d1008acc80609f9a08a9286` |
| 4 | `def` | [TransitionComplete](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean/declarations/transitioncomplete--39e419c7e1cfdb09d4f20130.md) | 40 | `declaration-track:39e419c7e1cfdb09d4f20130c240c88263ba6e97afd613dffd4b69fe571dc1e9` |
| 5 | `def` | [LatentExact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean/declarations/latentexact--7c40f6c4523b69bf87694131.md) | 50 | `declaration-track:7c40f6c4523b69bf876941319d43d04fab00feb0e76c61ae82671c74fbd1d21f` |
| 6 | `structure` | [DecoderObligations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean/declarations/decoderobligations--49c771df4dfcdb17204ca39f.md) | 57 | `declaration-track:49c771df4dfcdb17204ca39f18bd91cb65127a70ae6d2080f859452f3a0e982f` |
| 7 | `theorem` | [decoder_sound_by_result_type](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Decoder/Variantc764dc1ad11efcb9b3b58409d82917c1cde53e910efb7db5e2682bd3bb9c84ef.lean/declarations/decoder-sound-by-result-type--6cae844653ffc2f2ca41bb3b.md) | 69 | `result-track:6cae844653ffc2f2ca41bb3b2be91d95f999d9906c361856ddc65c9beba273da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
