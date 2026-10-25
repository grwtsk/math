# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GeneralizeProofs.Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d13bfa7a36083eb7d8578b038e9db071990e897",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d13bfa7a36083eb7d8578b038e9db071990e897`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean.json)

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
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/initialize--999f47d8f0e90a5d2a35b723.md) | 42 | `declaration-track:999f47d8f0e90a5d2a35b723f73b720b43f4e74ff7036368195b724423174005` |
| 2 | `structure` | [Config](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/config--d17b00aef2511c584f3afa77.md) | 49 | `declaration-track:d17b00aef2511c584f3afa77918a5a3d0ad89342dd179f31b0787d0f2ee7884b` |
| 3 | `structure` | [GState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/gstate--f0dfdbaaa189cb5b6b281151.md) | 64 | `declaration-track:f0dfdbaaa189cb5b6b28115160bab3a0b6bed9fc830d0f2b7e70859ba310688a` |
| 4 | `abbrev` | [MGen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/mgen--7a5857089f566dcbdbe40a15.md) | 70 | `declaration-track:7a5857089f566dcbdbe40a158919cc5604124f030c8c2671bdb988cf6c8eabd9` |
| 5 | `def` | [MGen.insertFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/mgen-insertfvar--328294cc2fb14f6c500fb6e2.md) | 73 | `declaration-track:328294cc2fb14f6c500fb6e20b5ad2ad23c2a4f4a4238d8bb2513600f455fec6` |
| 6 | `structure` | [AContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/acontext--b9b98cfef43959400317ba23.md) | 77 | `declaration-track:b9b98cfef43959400317ba231222b25774c14e65a86bd3b06c28c3ae4702b60c` |
| 7 | `structure` | [AState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/astate--7e3ae36b13e29ed922c921b7.md) | 91 | `declaration-track:7e3ae36b13e29ed922c921b7a5646c153fc606a7f748cd757837c35a82debac9` |
| 8 | `abbrev` | [MAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/mabs--f7b476cd6fe2b5e2ae526ffe.md) | 104 | `declaration-track:f7b476cd6fe2b5e2ae526ffeb95cafcf84735a54147188c278ef3a952bd1789b` |
| 9 | `def` | [MGen.runMAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/mgen-runmabs--9ae0c341c3945a089ecc64c6.md) | 107 | `declaration-track:9ae0c341c3945a089ecc64c66b17044e618c1d47ab4d30cae446d1cafc5c53a6` |
| 10 | `def` | [MAbs.findProof?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/mabs-findproof--6fee644d13fc31b4540ccdf5.md) | 117 | `declaration-track:6fee644d13fc31b4540ccdf57bb1ed124aeb12fc45f74dac62f0d84d761c4a65` |
| 11 | `def` | [MAbs.insertProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/mabs-insertproof--973b94bd15fc53ffcc7c4bbe.md) | 126 | `declaration-track:973b94bd15fc53ffcc7c4bbeb1e440133851ee4c689c4106d005c0d0de15fa39` |
| 12 | `def` | [MAbs.withLocal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/mabs-withlocal--088dbe45b621eb61484c40e4.md) | 142 | `declaration-track:088dbe45b621eb61484c40e4c8a7e992056b8dac1cfd86be12a406dfaa106d75` |
| 13 | `def` | [MAbs.withRecurse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/mabs-withrecurse--a5a86b29ab9bc573834b2f18.md) | 146 | `declaration-track:a5a86b29ab9bc573834b2f180432ebac158d6f7fe21e25a6ed65e0049e772b2e` |
| 14 | `def` | [appArgExpectedTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/appargexpectedtypes--5f5363794c2f344d7750780d.md) | 155 | `declaration-track:5f5363794c2f344d7750780d5bb3d5fc5e7edab1e4d59c810ef7ee439a65f76d` |
| 15 | `def` | [mkLambdaFVarsUsedOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/mklambdafvarsusedonly--f409eebe7ca84a2d90f434b8.md) | 197 | `declaration-track:f409eebe7ca84a2d90f434b8402e2a3770092a0abfca00748c6d84e4f0f0110a` |
| 16 | `def` | [abstractProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/abstractproofs--26f0592d838a4fdbbbed2298.md) | 228 | `declaration-track:26f0592d838a4fdbbbed2298c84d9fbdf8e9415476d69f292a53ef2499e00385` |
| 17 | `def` | [initialPropToFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/initialproptofvar--4307d3794562743e6e8343f4.md) | 331 | `declaration-track:4307d3794562743e6e8343f47c8dc025eb56e71806747420be8a599c00b55797` |
| 18 | `def` | [withGeneralizedProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/withgeneralizedproofs--3507cc54d5ca11ed5e8b52b1.md) | 350 | `declaration-track:3507cc54d5ca11ed5e8b52b11963bcb14cd200f435e108872030acac28041200` |
| 19 | `def` | [generalizeProofsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/generalizeproofscore--4114cdcc51fd5e9c44cf4c1c.md) | 383 | `declaration-track:4114cdcc51fd5e9c44cf4c1c7d4814b5a76656255598b757ff777317f8d017d8` |
| 20 | `def` | [_root_.Lean.MVarId.generalizeProofs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/root-lean-mvarid-generalizeproofs--ed6fc7614ae07803408b9b42.md) | 469 | `declaration-track:ed6fc7614ae07803408b9b423c01417ed50e6c18c21ff60725c932da305ae550` |
| 21 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GeneralizeProofs/Variant8220df6267b73aa1fa3221ae4aa481bf79a68b5251b160639dadc7d5f647da91.lean/declarations/elab--2db2bb7c613b232af1f13d56.md) | 510 | `declaration-track:2db2bb7c613b232af1f13d5645f92dec66ea584685abd41ce1cfdbc949a999bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
