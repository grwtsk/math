# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeProofs.Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c730ebe2c90cb2baa004a1490c471fdf4edf303f",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c730ebe2c90cb2baa004a1490c471fdf4edf303f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean.json)

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
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/initialize--c54c6a25fb7c4423a726ed25.md) | 50 | `declaration-track:c54c6a25fb7c4423a726ed254a84843a98f91dff5744210333b2b5b92a53e1d6` |
| 2 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/config--1d7dcf9350b0ffa8217ac59b.md) | 57 | `declaration-track:1d7dcf9350b0ffa8217ac59b937a64c0a3b56310e594d5fc443bfdae523956ea` |
| 3 | `structure` | [GState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/gstate--9dc29a0f21e467888ecf61fe.md) | 72 | `declaration-track:9dc29a0f21e467888ecf61fea994acfd2ac740dab921922fa95092bece1b0a0a` |
| 4 | `abbrev` | [MGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/mgen--e60fc8de74c4fe8397817830.md) | 78 | `declaration-track:e60fc8de74c4fe83978178303791c83cc556dcfc6628adcc291626b57f4a1114` |
| 5 | `def` | [MGen.insertFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/mgen-insertfvar--30e7f2ded19f1c9f4af4d078.md) | 81 | `declaration-track:30e7f2ded19f1c9f4af4d07811adaf0a2a8586f3fcf1eb3f5de00dfb9c7d6f21` |
| 6 | `structure` | [AContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/acontext--45c2595a266d32d70781a94f.md) | 85 | `declaration-track:45c2595a266d32d70781a94fafdb91ddb024ae2d31a3cc30c89eca1239b99dac` |
| 7 | `structure` | [AState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/astate--e5cb678e4b0f7a9cd4de24b1.md) | 99 | `declaration-track:e5cb678e4b0f7a9cd4de24b191a36b663c5074ab679c8224af33a88c0ea700d7` |
| 8 | `abbrev` | [MAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/mabs--22bac07f622b5f95e3b28922.md) | 112 | `declaration-track:22bac07f622b5f95e3b28922f6ceb7c77e0163d946bc634a6366d2dbea28b504` |
| 9 | `def` | [MGen.runMAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/mgen-runmabs--731c3e66a28dfbe684c7dc3d.md) | 115 | `declaration-track:731c3e66a28dfbe684c7dc3da6b6c848aa07c849a6203b832cfcc36766a953a7` |
| 10 | `def` | [MAbs.findProof?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/mabs-findproof--515d4982f51a6fe9596e0136.md) | 125 | `declaration-track:515d4982f51a6fe9596e01363c014435d9415e6e1640d30d9e4590a98f27195f` |
| 11 | `def` | [MAbs.insertProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/mabs-insertproof--55f4a19d2c2d83db2f68fc11.md) | 134 | `declaration-track:55f4a19d2c2d83db2f68fc110c1ec9622993b7678b2e51e957a8c3cdeb3f1077` |
| 12 | `def` | [MAbs.withLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/mabs-withlocal--2be856d466c686fea33e2ba9.md) | 150 | `declaration-track:2be856d466c686fea33e2ba9de9af639fec00b1584e2e650a86424326b1c0fc6` |
| 13 | `def` | [MAbs.withRecurse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/mabs-withrecurse--5f51ec19966ada399100e621.md) | 154 | `declaration-track:5f51ec19966ada399100e621f8f3ff86871677c4a80d627b85ddb8bcdd924d25` |
| 14 | `def` | [appArgExpectedTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/appargexpectedtypes--17b93407781b177611d566cd.md) | 163 | `declaration-track:17b93407781b177611d566cd310e4f2112648821f9f6834ed9b6654708987e45` |
| 15 | `def` | [mkLambdaFVarsUsedOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/mklambdafvarsusedonly--11f73a8be4101bc5414ce9ea.md) | 205 | `declaration-track:11f73a8be4101bc5414ce9eafb1ed9d2a6bf9871d2fdd8972378c8194ee2b84a` |
| 16 | `def` | [abstractProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/abstractproofs--9d949efd88a4af9683839a50.md) | 236 | `declaration-track:9d949efd88a4af9683839a506b3f5a2044d41d5448c3a4df9dfeb96d33ae0aad` |
| 17 | `def` | [initialPropToFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/initialproptofvar--00ee06cfe31a2cbd1b833c9c.md) | 339 | `declaration-track:00ee06cfe31a2cbd1b833c9c68d4c06fdbd43009f9a56fa6da476884bc204a95` |
| 18 | `def` | [withGeneralizedProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/withgeneralizedproofs--d7d4bacb0864581d8a3c7338.md) | 358 | `declaration-track:d7d4bacb0864581d8a3c7338ecf176fd6c9ef69cf03fae554bbf3c787c088e86` |
| 19 | `def` | [generalizeProofsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/generalizeproofscore--dc07529334899610f8dceef0.md) | 391 | `declaration-track:dc07529334899610f8dceef0e310ea8696064863d100091efa806296ab6cb444` |
| 20 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.Lean.MVarId.generalizeProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-confi--a1c55a603016b7f979c9a132.md) | 477 | `declaration-track:a1c55a603016b7f979c9a132ce236b89901ad5d66e72d2313630ddfe710eeabe` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant876f6d16eca7a322e80d05272358d3ad935f809be3e78c47c49d15c0c66d317c.lean/declarations/elab--9a3242cb75200f2c329fed65.md) | 518 | `declaration-track:9a3242cb75200f2c329fed65f9c4831473af37fa3a53a4f8925fef879562e583` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
