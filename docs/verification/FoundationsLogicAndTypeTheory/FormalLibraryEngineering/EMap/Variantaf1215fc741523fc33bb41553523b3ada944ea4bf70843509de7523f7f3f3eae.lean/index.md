# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMap.Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3a875c63ae58a558b9a7d73e2e4ed58aead4beb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3a875c63ae58a558b9a7d73e2e4ed58aead4beb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean.json)

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
| 1 | `structure` | [EMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/emap--db47f28712228bf0ad0f5f25.md) | 20 | `declaration-track:db47f28712228bf0ad0f5f2512ab75fc2f06684bd9a67f12fe1117535ab2d69e` |
| 2 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/empty--fdf83bf88a5ab62f26d56a93.md) | 35 | `declaration-track:fdf83bf88a5ab62f26d56a934f7fcfad68f66679bb19be0e2c43c90479218ff0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/instance--421a539cece5aa5a99a01641.md) | 39 | `declaration-track:421a539cece5aa5a99a01641fe0ca5b4c6814f905042e48552aca149d001eb16` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/instance--ab5b005cb7a81f5f5b08ffa5.md) | 44 | `declaration-track:ab5b005cb7a81f5f5b08ffa5c05af242f4db88417688182c56dc4b765fb725ef` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/instance--4fcdcea5278e2b836749b8f2.md) | 49 | `declaration-track:4fcdcea5278e2b836749b8f2b9b4fdc4681dbae2a02567df71939ba2532f0cf0` |
| 6 | `def` | [foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/foldlm--7f3debd0c181e96c316915d3.md) | 54 | `declaration-track:7f3debd0c181e96c316915d31a3f2c022f1431fbf0a16542463e75bc51776496` |
| 7 | `def` | [foldl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/foldl--3d4ea006085af11ac1100258.md) | 59 | `declaration-track:3d4ea006085af11ac11002583a25e16d8bd038e03e7f674c6c038d3c4da60958` |
| 8 | `def` | [getCandidates](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/getcandidates--ac02416a0dfa92468d30234a.md) | 62 | `declaration-track:ac02416a0dfa92468d30234af818f7e89ca94188ff504b9bf5cb7d0ee7c8c087` |
| 9 | `def` | [alterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/alterm--63d025ea544b3e4874362fd5.md) | 66 | `declaration-track:63d025ea544b3e4874362fd5b7554a0cf987a806f45456c2d28ed306358fa71a` |
| 10 | `def` | [alter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/alter--4c577536db57e00a0546291f.md) | 82 | `declaration-track:4c577536db57e00a0546291f687e7c3d940fa3a14ef7ca7ed2d2a4bf791e8b75` |
| 11 | `def` | [insertNew](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/insertnew--a75c36fadc304d4d7ad5248a.md) | 87 | `declaration-track:a75c36fadc304d4d7ad5248a0a0b372bce85431d5fe145ff0fb97718f238207b` |
| 12 | `def` | [insertWithM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/insertwithm--9631658b1cc5fbdbeefc30c2.md) | 94 | `declaration-track:9631658b1cc5fbdbeefc30c2f9595fe4d8a46079af6a6168b600308e9e4dc2d2` |
| 13 | `def` | [insertWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/insertwith--4547cf4eb3b213c6b740c7aa.md) | 106 | `declaration-track:4547cf4eb3b213c6b740c7aacaac5c0829f70cc4f623bff61c57c1a5280c0c37` |
| 14 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/insert--7e16efeae14ffd4c729cfcb2.md) | 110 | `declaration-track:7e16efeae14ffd4c729cfcb201336c62ad382e99ebf469959ce92b7a118f3921` |
| 15 | `def` | [singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/singleton--4f991f18acee446ee39126c0.md) | 113 | `declaration-track:4f991f18acee446ee39126c097ec69962ee44b66dc9194421dafd86ead1479f0` |
| 16 | `def` | [findWithKey?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/findwithkey--ae394f2784b894c4b3be9d78.md) | 116 | `declaration-track:ae394f2784b894c4b3be9d7809e501e168129bace6bb1546e53781a86fbd343a` |
| 17 | `def` | [find?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/find--2923a602fb28c1b0a9636406.md) | 127 | `declaration-track:2923a602fb28c1b0a963640668a9fe8e82ccd65035aaac0565ddc875a194304d` |
| 18 | `def` | [mapM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/mapm--488973d91937f57b8fc39867.md) | 131 | `declaration-track:488973d91937f57b8fc39867885c0c4f24594a4516a8067444b69058f7273716` |
| 19 | `def` | [map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMap/Variantaf1215fc741523fc33bb41553523b3ada944ea4bf70843509de7523f7f3f3eae.lean/declarations/map--cf5f1637d0d27e2fea638cfa.md) | 135 | `declaration-track:cf5f1637d0d27e2fea638cfad08fef8cef9810f28043170c3a578d77adad4ad4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
