# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RequestCancellation.Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9b4f3730cfbeaf20054a2f9889c00c1aeafb207",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9b4f3730cfbeaf20054a2f9889c00c1aeafb207`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean.json)

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
| 1 | `structure` | [RequestCancellationToken](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/requestcancellationtoken--e7e810d97a32b78950a693d5.md) | 25 | `declaration-track:e7e810d97a32b78950a693d5df75d23ab7fa36d839bafc51f5f8e2f95d35495e` |
| 2 | `def` | [new](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/new--6486ba58ce04e7584be5c40d.md) | 33 | `declaration-track:6486ba58ce04e7584be5c40d216c9b23df236477b2f6b1bec2300293c7b48c9d` |
| 3 | `def` | [cancelByCancelRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/cancelbycancelrequest--6e56f151139b4ddcc9e193fb.md) | 41 | `declaration-track:6e56f151139b4ddcc9e193fbe9cd01d162da90471963bc0e3dd6237667a58719` |
| 4 | `def` | [cancelByEdit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/cancelbyedit--130a2a4aaa08068d78821fea.md) | 45 | `declaration-track:130a2a4aaa08068d78821feaea97f3cf255221ed6331b76630b1ae84f58f6d28` |
| 5 | `def` | [requestCancellationTask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/requestcancellationtask--3e9c44ba71161613fb063d83.md) | 49 | `declaration-track:3e9c44ba71161613fb063d83541537da6b5592e4d74b90ce69d46c7293813d6a` |
| 6 | `def` | [editCancellationTask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/editcancellationtask--f48ce9ba26b380791e4b1dee.md) | 52 | `declaration-track:f48ce9ba26b380791e4b1dee9d56b7b90ddd59fe76450ea2604dcbb2851c9343` |
| 7 | `def` | [cancellationTasks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/cancellationtasks--e19a95d75312b23306692112.md) | 55 | `declaration-track:e19a95d75312b233066921126d2fbf91c184fd725b432869859abab106cb8bf8` |
| 8 | `def` | [wasCancelledByCancelRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/wascancelledbycancelrequest--f6c0fb3fdb886275fdcaa47a.md) | 58 | `declaration-track:f6c0fb3fdb886275fdcaa47ad085de30ed4bd6c9250582344be3b45f7cd597de` |
| 9 | `def` | [wasCancelledByEdit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/wascancelledbyedit--8f2bd3267638f5a4ac8edd5c.md) | 61 | `declaration-track:8f2bd3267638f5a4ac8edd5c523dba436e04afeef45a6656b8285cdd766b72c2` |
| 10 | `def` | [wasCancelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/wascancelled--35309b6a6e527f4c3ffc5030.md) | 64 | `declaration-track:35309b6a6e527f4c3ffc50309be680e9db0619d802e8ac932bb3952364f29cff` |
| 11 | `structure` | [RequestCancellation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/requestcancellation--6d8aa9c154d5e4afada940dd.md) | 69 | `declaration-track:6d8aa9c154d5e4afada940ddc7e0d3364827e49725c846a95710155cf007b165` |
| 12 | `def` | [RequestCancellation.requestCancelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/requestcancellation-requestcancelled--1e765475108b997a79017b69.md) | 71 | `declaration-track:1e765475108b997a79017b69aea279efbe37f05a7962e65addc2ff2951fa3d48` |
| 13 | `abbrev` | [CancellableT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/cancellablet--07cf4a36fb60d59f4900876b.md) | 73 | `declaration-track:07cf4a36fb60d59f4900876b5720852eb02a1fd10afaf50feba66696ecebe185` |
| 14 | `abbrev` | [CancellableM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/cancellablem--1ba70e9748e71e1ee5ebf1a0.md) | 74 | `declaration-track:1ba70e9748e71e1ee5ebf1a048af734ca5d78a9fcaf51e2336184c4dcf6f0027` |
| 15 | `def` | [CancellableT.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/cancellablet-run--ed092b3bc29cf5ea564db33e.md) | 76 | `declaration-track:ed092b3bc29cf5ea564db33ea22b300466d79e368f54d150fb9a92ae2056cb29` |
| 16 | `def` | [CancellableM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/cancellablem-run--5302c83b334fb549d1083a2d.md) | 80 | `declaration-track:5302c83b334fb549d1083a2d710ced92269f82a1344247ed2e9683496be8c6a2` |
| 17 | `def` | [CancellableT.checkCancelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/cancellablet-checkcancelled--a83d786962179ab7e9fef453.md) | 84 | `declaration-track:a83d786962179ab7e9fef45353838bd26b21a11dc7d4b39993f7350561923976` |
| 18 | `def` | [CancellableM.checkCancelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/cancellablem-checkcancelled--06beea656a021c506555d459.md) | 89 | `declaration-track:06beea656a021c506555d459b2fab45e1b164736605c4784e79b2065acbd3689` |
| 19 | `class` | [MonadCancellable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/monadcancellable--8c0cc261985ed62a3aefe242.md) | 92 | `declaration-track:8c0cc261985ed62a3aefe2427fd317b2c43609769f5e7d8c858bb689f3d3300b` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/instance--96eb839948e213679d4ba648.md) | 95 | `declaration-track:96eb839948e213679d4ba6488a24dc8a5554ffae04ba28fed328e26d56d0b4a3` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/instance--852298ac7e4adb3cf52d5e49.md) | 98 | `declaration-track:852298ac7e4adb3cf52d5e4919c23f158a2525ad60c927a111be69525d63bd17` |
| 22 | `def` | [RequestCancellation.check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RequestCancellation/Variant8ab6ba46da98949f243409733c751607f5270a59d303179cce3a74522a6e3180.lean/declarations/requestcancellation-check--ddb7048855dce05186f532ec.md) | 101 | `declaration-track:ddb7048855dce05186f532ecdab3d72ee2c3691bc5971b7d5576074a93d635f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
