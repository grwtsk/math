# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Communication.Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12e3b9698dfab1266ed45c8f5db09dea1030cdb1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12e3b9698dfab1266ed45c8f5db09dea1030cdb1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Collect` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parseHeaderField](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/parseheaderfield--42b3cdadd8f0096841230447.md) | 27 | `declaration-track:42b3cdadd8f00968412304475eec2523e4fc3eba3ddbb9b408d7388b77bb5659` |
| 2 | `def` | [isLean3Request](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/islean3request--c172a7dbfac9574a121e1fe1.md) | 40 | `declaration-track:c172a7dbfac9574a121e1fe153e697265acf1baab2de25da945b0e21cd47a46c` |
| 3 | `def` | [readHeaderFields](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/readheaderfields--e36f1a421741f1068ebc05ab.md) | 49 | `declaration-track:e36f1a421741f1068ebc05abbb0d1869ded9711eec344552d0ffcb073f1d348f` |
| 4 | `def` | [readLspHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/readlspheader--b986ab1971cfc993ee22eff6.md) | 67 | `declaration-track:b986ab1971cfc993ee22eff6c8322969d8acee2935ae42f8735ea7130f5cb8bf` |
| 5 | `def` | [readLspMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/readlspmessage--fc257bd62a6152b9008c16c6.md) | 75 | `declaration-track:fc257bd62a6152b9008c16c607f7cf42165f92aa60b6cff2e0a5f32794cfaab4` |
| 6 | `def` | [readLspMessageAsString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/readlspmessageasstring--89d8d01753d725ebafc3e39c.md) | 82 | `declaration-track:89d8d01753d725ebafc3e39c8eecedd1b5f83832706ccfcf540459ead883759b` |
| 7 | `def` | [readLspRequestAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/readlsprequestas--0662963bbc7697dc22ddaa83.md) | 89 | `declaration-track:0662963bbc7697dc22ddaa83157b7f2cb1eba02121c8f8970c591a57e352db46` |
| 8 | `def` | [readLspNotificationAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/readlspnotificationas--2fd94316078d8838fe3fe995.md) | 96 | `declaration-track:2fd94316078d8838fe3fe99523dd79fa1ef8859f772e27581ed470b225b22012` |
| 9 | `def` | [readLspResponseAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/readlspresponseas--25938f6e4ca2e8024a6a0e2e.md) | 103 | `declaration-track:25938f6e4ca2e8024a6a0e2e4808e5c1b9f44950733c183cb7b5bfe8687c0301` |
| 10 | `def` | [writeSerializedLspMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/writeserializedlspmessage--0903c907f08fc408263bb907.md) | 114 | `declaration-track:0903c907f08fc408263bb90702f5b3049b97785672cdbdeb5ea0bd30d01d1bed` |
| 11 | `def` | [writeLspMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/writelspmessage--a4f292ec6cb0a1f188edf509.md) | 121 | `declaration-track:a4f292ec6cb0a1f188edf509070133c32360e7ba3f68aa528fcdc99c864a55c4` |
| 12 | `def` | [writeLspRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/writelsprequest--8802b90079725590bb9ca6e4.md) | 124 | `declaration-track:8802b90079725590bb9ca6e436e11f368ee0b4c11cafa84fa8fe33e8bdde6531` |
| 13 | `def` | [writeLspNotification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/writelspnotification--91560e93c9259eeb1179cdd5.md) | 127 | `declaration-track:91560e93c9259eeb1179cdd5512a6736f90732df67bbe475d1701bec0c008ed7` |
| 14 | `def` | [writeLspResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/writelspresponse--05bb09d332ba01c1de391a53.md) | 130 | `declaration-track:05bb09d332ba01c1de391a537e69e82f565dd45f60047afd67edade1064f4ada` |
| 15 | `def` | [writeLspResponseError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/writelspresponseerror--06b2ef91d2e70ec875642cfb.md) | 133 | `declaration-track:06b2ef91d2e70ec875642cfb432d7b49a303d9ddafb7ae8c0028f485978b3f4e` |
| 16 | `def` | [writeLspResponseErrorWithData](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Communication/Variant818d671529fe77f3726d851971aa427eec326ef779abc61e1510869501542f33.lean/declarations/writelspresponseerrorwithdata--dc408a04cb7083186895ef14.md) | 136 | `declaration-track:dc408a04cb7083186895ef14e82dfaef6a45346adb0ea226a1f1309e19613f70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
