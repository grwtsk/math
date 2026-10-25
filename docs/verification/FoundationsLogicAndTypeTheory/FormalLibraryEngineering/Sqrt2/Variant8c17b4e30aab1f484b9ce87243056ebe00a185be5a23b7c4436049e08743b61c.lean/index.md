# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sqrt2.Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac918157a4775b9323a881d45c3989f429278833",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac918157a4775b9323a881d45c3989f429278833`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [I12](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/i12--ede8c94db39e4441edcd8c0d.md) | 12 | `declaration-track:ede8c94db39e4441edcd8c0d0458737458897348eef0b227b261d62531d7a42d` |
| 2 | `theorem` | [sqrt2_exists](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/sqrt2-exists--f4ec1d14799a0f2ea4d1ee7b.md) | 19 | `result-track:f4ec1d14799a0f2ea4d1ee7ba4490d86007a84f9f0fbd6641e3139113d9248b0` |
| 3 | `theorem` | [sqrt2_exists_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/sqrt2-exists-native--9a580389eaf7af230b2f47b7.md) | 25 | `result-track:9a580389eaf7af230b2f47b78ff5205864efa448786fe7aa97608e855d99a0d2` |
| 4 | `theorem` | [sqrt2_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/sqrt2-unique--7fded65439b2314fb698448b.md) | 33 | `result-track:7fded65439b2314fb698448b4e8809d8490e159de9876d88a9388e44b080b625` |
| 5 | `theorem` | [sqrt2_unique_native](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/sqrt2-unique-native--f71b24f3ccad2d2084988852.md) | 39 | `result-track:f71b24f3ccad2d208498885223bd703052ccf75e82d771180e2ccac5e2fdd797` |
| 6 | `def` | [I_sqrt2_tight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/i-sqrt2-tight--7c2f53a15657d25521ce655b.md) | 48 | `declaration-track:7c2f53a15657d25521ce655be8f892f07a738532115bd20cb0b492d36fbdcf28` |
| 7 | `theorem` | [sqrt2_in_tight_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/sqrt2-in-tight-interval--21fbc8497897b36ceaf50f88.md) | 51 | `result-track:21fbc8497897b36ceaf50f88a218a46002c5c7234dc04165aec6c4e2f32c87ec` |
| 8 | `def` | [I_sqrt2_tighter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/i-sqrt2-tighter--b5d8f322d173fdcaf33ad8c4.md) | 57 | `declaration-track:b5d8f322d173fdcaf33ad8c4c90edf4a3d238675e4b160a22b46f887a9c336f6` |
| 9 | `theorem` | [sqrt2_in_tighter_interval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/sqrt2-in-tighter-interval--b9c0d3b34092a25ff9198d9f.md) | 59 | `result-track:b9c0d3b34092a25ff9198d9f5cac16a8bfbbcfa00170c20fc70be9486ac0c405` |
| 10 | `def` | [I_sqrt2_9decimals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/i-sqrt2-9decimals--5148b9af22a2b1c7a0e58c69.md) | 65 | `declaration-track:5148b9af22a2b1c7a0e58c6962d7ebd0de82c208661879b16b3f607d3c18edf2` |
| 11 | `theorem` | [sqrt2_9_decimals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sqrt2/Variant8c17b4e30aab1f484b9ce87243056ebe00a185be5a23b7c4436049e08743b61c.lean/declarations/sqrt2-9-decimals--f0f70ebf8a9324534fa24137.md) | 67 | `result-track:f0f70ebf8a9324534fa24137edfde3acbbc4026b4ed9eaf8c3662fd9f020fb04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
