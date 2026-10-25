# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Quantization.Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62b907fffc56c66e75ac598592fc271a152fa7d6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62b907fffc56c66e75ac598592fc271a152fa7d6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Quantization.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SampleCfg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/samplecfg--8c4b6121fb1bacbdd1821ffe.md) | 12 | `declaration-track:8c4b6121fb1bacbdd1821ffe6e99285cd3cec45b9b107982f3a54682c4cca5da` |
| 2 | `def` | [sampleRows](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/samplerows--bda3f806616c0e5060240ae7.md) | 19 | `declaration-track:bda3f806616c0e5060240ae7999fe29862d72bf43239e9983daa443b85a564ce` |
| 3 | `def` | [sampleCols](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/samplecols--e1ac9a7207e9fef7901d98a4.md) | 21 | `declaration-track:e1ac9a7207e9fef7901d98a4708dcf8598993451a85d89d9da5a08c3723c939b` |
| 4 | `def` | [sampleEncode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/sampleencode--3828ce2051e80d38cb63e165.md) | 24 | `declaration-track:3828ce2051e80d38cb63e165dbdadf0a795bc0d18fd2c73a1ea841daaaeecd30` |
| 5 | `def` | [sampleQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/sampleq--34e9c3cf1c910e4ba8ca772a.md) | 30 | `declaration-track:34e9c3cf1c910e4ba8ca772a25c3cca4d2cef9c89e6a755e1bc985cac7328cfd` |
| 6 | `def` | [sampleEncodeArrayBacked](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/sampleencodearraybacked--e786643a9ad7fcbf55258590.md) | 35 | `declaration-track:e786643a9ad7fcbf552585900ff840113e1f76b53425c5e17a0f446cecfb5374` |
| 7 | `def` | [sampleArrayBackedQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/samplearraybackedq--3fec1ed77bdc12434814d6ad.md) | 41 | `declaration-track:3fec1ed77bdc12434814d6ad94911d8f5d15c693d6c0daeb03cda9bbad32fe21` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/example--12fa08a4f66721f60dba8b15.md) | 45 | `declaration-track:12fa08a4f66721f60dba8b156eef0856cfaa16f1778f2fb6a79479748ea77fdf` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/example--4771fa603aa298c17b62978c.md) | 49 | `declaration-track:4771fa603aa298c17b62978c8506191e2c32ffe71322a931ddc4d02bcd32c4c3` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/example--c799e835370899e9d3f9be6e.md) | 59 | `declaration-track:c799e835370899e9d3f9be6e213f9446275deb6b099f0d46424f409f4d906f9d` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/example--eac314cc5d0efe6708fbf73b.md) | 63 | `declaration-track:eac314cc5d0efe6708fbf73b3a6476356a4b507c37871ed17f1a26b9ebe38cfe` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/example--54502c6b77c98bd73763674d.md) | 68 | `declaration-track:54502c6b77c98bd73763674dd8218f3b43c5fb375017850599310ae880fc89ef` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/example--948d8219a241b18801bf177c.md) | 73 | `declaration-track:948d8219a241b18801bf177cec631cae4d6e37654b77f507af8c252330de87f7` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Quantization/Variant81de7ac4c2ffe3c80c1f93caa2b68ab2a427832879b5b998aa597706628d1ef1.lean/declarations/example--00e76155f4cbf4bde0698d9e.md) | 79 | `declaration-track:00e76155f4cbf4bde0698d9eb1362a79ecd6bbdef96be73670ce725a98cb7424` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
