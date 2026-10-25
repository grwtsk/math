# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalization.Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b1eeaca9e1d4819d4e4b88d8ce507358b683313",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b1eeaca9e1d4819d4e4b88d8ce507358b683313`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Span` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [UnicodeNormalization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/unicodenormalization--fe1d02057ee1de6cf6ff3c82.md) | 12 | `declaration-track:fe1d02057ee1de6cf6ff3c8263a065c108fed1a4b74f44be3fc356861c482891` |
| 2 | `inductive` | [CasePolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/casepolicy--28e730682253cdc4102b3b6a.md) | 20 | `declaration-track:28e730682253cdc4102b3b6a5641843f22d420a65d419434a09c733a1d1b1dc2` |
| 3 | `inductive` | [LineEndingPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/lineendingpolicy--7957dff45b8f9a1f94748b89.md) | 27 | `declaration-track:7957dff45b8f9a1f94748b89063a726feeb68d3578f8d1b6de56ba42d5b1adee` |
| 4 | `inductive` | [WhitespacePolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/whitespacepolicy--26686cef4d64d5b850c11105.md) | 32 | `declaration-track:26686cef4d64d5b850c11105854e73978270a0bcb96a74c70de716f8380466c8` |
| 5 | `inductive` | [ControlCharacterPolicy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/controlcharacterpolicy--a1c6cd36edf4180af5beb127.md) | 39 | `declaration-track:a1c6cd36edf4180af5beb127febf9db11b2ef2f6459c546b948aabc78c3213cc` |
| 6 | `structure` | [NormalizationSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/normalizationspec--21648404ce2c6f5130413a99.md) | 46 | `declaration-track:21648404ce2c6f5130413a99e3e7a20a1905b20c9991cee6f0d9d775f005f75e` |
| 7 | `def` | [hashNormalizedText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/hashnormalizedtext--cbf4f0a0529494d35f82fcad.md) | 57 | `declaration-track:cbf4f0a0529494d35f82fcadfa27128352df88b985b6a32aec2857ace6f939dc` |
| 8 | `structure` | [OffsetTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/offsettransport--5c2b0a757449fbb1adb6009f.md) | 66 | `declaration-track:5c2b0a757449fbb1adb6009f15b59f0b62fd9b21391de559d104ec50af04328b` |
| 9 | `structure` | [NormalizationCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/normalizationcertificate--45ced8489765707be72ea573.md) | 80 | `declaration-track:45ced8489765707be72ea5738f36db07a0873d1117cf073713b32cec45edf9c9` |
| 10 | `structure` | [OffsetSpanCertificate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/offsetspancertificate--87383df8d785545c7edd57ee.md) | 91 | `declaration-track:87383df8d785545c7edd57eeac5d375c295f8daea85578315557cafd164b0b38` |
| 11 | `theorem` | [offset_span_valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/offset-span-valid--3d798b75e6d3f9e3080b1ff5.md) | 111 | `result-track:3d798b75e6d3f9e3080b1ff5b688b284a7e4ed6d9c68029c53660258ed76f909` |
| 12 | `def` | [transportRawSpan](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/transportrawspan--29a45397c1cd4de1acf4f9a3.md) | 123 | `declaration-track:29a45397c1cd4de1acf4f9a33cea93c4f6bf61df56ffe60cf6b89416f7a03dc5` |
| 13 | `theorem` | [transportRawSpan_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/transportrawspan-sound--2bf698b6a0bd7b00dfbc0e11.md) | 156 | `result-track:2bf698b6a0bd7b00dfbc0e119d1deba9ed440c41ddd586f58e6819f67c4bff29` |
| 14 | `theorem` | [normalization_snapshot_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalization/Variant14d8352492c22a325644fd285f797785361a2d943ec5fbd53a2d16fefbca30d5.lean/declarations/normalization-snapshot-bound--e8de43a0527f634f0977fac9.md) | 172 | `result-track:e8de43a0527f634f0977fac995be53357d6ef062f673e5f49f2c00912aa559be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
