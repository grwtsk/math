# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cancellable.Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37994657d4333e4fa4ecfc9f3cb87061131c664f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37994657d4333e4fa4ecfc9f3cb87061131c664f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RequestId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/declarations/requestid--7299a79f46688933b1e2acca.md) | 28 | `declaration-track:7299a79f46688933b1e2acca7e4acfa070f2598bb4307f250538f9015ac86cbd` |
| 2 | `structure` | [CancellableTask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/declarations/cancellabletask--a235aaa0980eebf93bbc488c.md) | 29 | `declaration-track:a235aaa0980eebf93bbc488c9fe51f7a83ab2cce0e4cc45c6672e6f039f3a000` |
| 3 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/declarations/initialize--c9b95bdff78dd64ca826451b.md) | 36 | `declaration-track:c9b95bdff78dd64ca826451b9667944af8dfce5fa79af76b7f4ec0be5e552299` |
| 4 | `def` | [mkCancellable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/declarations/mkcancellable--a567415fea24ceadca7ceb37.md) | 46 | `declaration-track:a567415fea24ceadca7ceb377e33e862fd510bd3444f2d626fa349cadc12876c` |
| 5 | `def` | [cancelRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/declarations/cancelrequest--0fae30d663110150b1b980e3.md) | 57 | `declaration-track:0fae30d663110150b1b980e35de7f36e4a27cc0c137859f77891db1be223d48b` |
| 6 | `inductive` | [CheckRequestResponse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/declarations/checkrequestresponse--b03a0a680b530e28de2534d5.md) | 64 | `declaration-track:b03a0a680b530e28de2534d54a5d8359abe3875505825aabfe3c4ea2fac44bbd` |
| 7 | `def` | [checkRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/declarations/checkrequest--b1095349fb3263954dd03b7d.md) | 79 | `declaration-track:b1095349fb3263954dd03b7db6356f1c07efdcf13d56ad43b852a69983d3daca` |
| 8 | `def` | [cancellableSuffix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/declarations/cancellablesuffix--cc752f775a7bed37d993131b.md) | 94 | `declaration-track:cc752f775a7bed37d993131b5fd3a19887463642b1189dc0b3604cb8ace1dc66` |
| 9 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/declarations/initialize--51a2d28109fa095799a89129.md) | 100 | `declaration-track:51a2d28109fa095799a891290ff4aca98412ddbe3b40c5c863ec92208014bb77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
