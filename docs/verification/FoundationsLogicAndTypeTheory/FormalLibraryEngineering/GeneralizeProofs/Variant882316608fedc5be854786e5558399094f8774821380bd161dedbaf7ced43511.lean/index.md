# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeProofs.Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f8dc5435860e6be36f24f1499f921045dbbf8cc",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f8dc5435860e6be36f24f1499f921045dbbf8cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Config` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Location` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Expr` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/initialize--d58bfb48bd05a83c3bc53f88.md) | 38 | `declaration-track:d58bfb48bd05a83c3bc53f88bfc4ba1c2cbc8d71b983219206def7c9111feedb` |
| 2 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/config--a38822a55f331a1f8bfe7ec5.md) | 45 | `declaration-track:a38822a55f331a1f8bfe7ec5307fc2340d283ef23e864be552f8d817b3b7e115` |
| 3 | `structure` | [GState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/gstate--f364ae967fb49a0c607f84c3.md) | 60 | `declaration-track:f364ae967fb49a0c607f84c3da18e4a9d829c157d98c7cb2d99833bdf0de3bd0` |
| 4 | `abbrev` | [MGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/mgen--d094bd3ea7c524983ae0576e.md) | 66 | `declaration-track:d094bd3ea7c524983ae0576eec0f00f365c9ec0281245bc3e7bb137622f79ccb` |
| 5 | `def` | [MGen.insertFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/mgen-insertfvar--4f94d23ac732c6d73b1d7998.md) | 69 | `declaration-track:4f94d23ac732c6d73b1d7998dd254a80df9adaf895e442430bab85dc2d824924` |
| 6 | `structure` | [AContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/acontext--ba5998d5f5c1d6cf836ff9fb.md) | 73 | `declaration-track:ba5998d5f5c1d6cf836ff9fbc766751b28c6e6c6668df816d0db59d509af3aa4` |
| 7 | `structure` | [AState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/astate--c5d14bab21c9ac90fc166978.md) | 87 | `declaration-track:c5d14bab21c9ac90fc166978c568f5f1414e6e12375dbe175a68c98b7556b8b8` |
| 8 | `abbrev` | [MAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/mabs--200087083da8f49d8ad4a329.md) | 100 | `declaration-track:200087083da8f49d8ad4a3295352a3fb67fe96a07bee296c671c61e04b3919a2` |
| 9 | `def` | [MGen.runMAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/mgen-runmabs--20c1e06cea2fadb1cac40d9f.md) | 103 | `declaration-track:20c1e06cea2fadb1cac40d9f5face6eaf27e76e317cd9fb0d607c9f780732f9b` |
| 10 | `def` | [MAbs.findProof?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/mabs-findproof--58ee3eea2cdc38b7699cb384.md) | 113 | `declaration-track:58ee3eea2cdc38b7699cb384240ddc06f3fb9832d37cb5d506f785e0acdf6313` |
| 11 | `def` | [MAbs.insertProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/mabs-insertproof--03892e24ff0a94cd25571053.md) | 122 | `declaration-track:03892e24ff0a94cd2557105334b8296ed24266bfbbd5bc32c4eff8336d7bd49e` |
| 12 | `def` | [MAbs.withLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/mabs-withlocal--d05555b6965e809c158e4c44.md) | 138 | `declaration-track:d05555b6965e809c158e4c4427bc32e55ccd0b9a102f7181d65623440f4d9b9c` |
| 13 | `def` | [MAbs.withRecurse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/mabs-withrecurse--691dbb195b1bb93844c51569.md) | 142 | `declaration-track:691dbb195b1bb93844c5156940924fe6b1e664a63fa125e93af9b3d0cc5c6b04` |
| 14 | `def` | [appArgExpectedTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/appargexpectedtypes--67ca2a38201c18b51c9d49e0.md) | 151 | `declaration-track:67ca2a38201c18b51c9d49e0a441f002d051fcf8e2df787e7c404a4b5fb43873` |
| 15 | `def` | [mkLambdaFVarsUsedOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/mklambdafvarsusedonly--8bbaa7568bc4245b4a56cd9e.md) | 193 | `declaration-track:8bbaa7568bc4245b4a56cd9e74b9079d01f3e1e7dcbc26aadf81cb3cfda75720` |
| 16 | `def` | [abstractProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/abstractproofs--292784ad5964abe5d8f2ce7e.md) | 224 | `declaration-track:292784ad5964abe5d8f2ce7eddcb489dd5995900db2277798b6750c7b8bbf3e4` |
| 17 | `def` | [initialPropToFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/initialproptofvar--427c1e29a04dfd212e11be6a.md) | 327 | `declaration-track:427c1e29a04dfd212e11be6a03f12b9d87e981e66775a004b7f313b8a23dba60` |
| 18 | `def` | [withGeneralizedProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/withgeneralizedproofs--14d0261131d5cd9775e00419.md) | 346 | `declaration-track:14d0261131d5cd9775e00419e299e6bc04b58ed5c84cddafb522c968e382fedb` |
| 19 | `def` | [generalizeProofsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/generalizeproofscore--09cc29955a4b86c067ac2986.md) | 379 | `declaration-track:09cc29955a4b86c067ac2986c6d633613e667d62eed86db681988c9951f1bfc4` |
| 20 | `def` | [_root_.Lean.MVarId.generalizeProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/root-lean-mvarid-generalizeproofs--bda54837e91a51c48b337eb7.md) | 465 | `declaration-track:bda54837e91a51c48b337eb793b356f10012c3b7d90e1662f738a5f551f3684d` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant882316608fedc5be854786e5558399094f8774821380bd161dedbaf7ced43511.lean/declarations/elab--56606caecd0674f2e2d7b4fe.md) | 506 | `declaration-track:56606caecd0674f2e2d7b4fea5b8704066e000b8152bac56bbeb1657eb3f2432` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
