# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UInt.Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdc744cabad9751fe03744970cc0a63ac51da188",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdc744cabad9751fe03744970cc0a63ac51da188`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Ring.ToInt` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ofNat_mod_size'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/ofnat-mod-size--66ac7f709be2ce2b771900c7.md) | 29 | `result-track:66ac7f709be2ce2b771900c78b80b06cf90d6fd014afe130d29e552d5f483778` |
| 2 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/natcast--a31dcfad3e4370023816f170.md) | 32 | `declaration-track:a31dcfad3e4370023816f170df35a33f1e9d165b55acf18b26e5ba950f140de6` |
| 3 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast--da309d7f5152abf3e96510e2.md) | 36 | `declaration-track:da309d7f5152abf3e96510e29b4deb9b4a11398f7e3534b50aa4292c28516669` |
| 4 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-neg--e4e8e1d192daf9d7c106e646.md) | 41 | `result-track:e4e8e1d192daf9d7c106e646515ab4183cd8d40020c363f0731eda4438c923db` |
| 5 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-ofnat--096e67ec7e21ed6080040a6e.md) | 44 | `result-track:096e67ec7e21ed6080040a6e7e3ac8cb27bb9f456bd24fa2ed9699a094691130` |
| 6 | `theorem` | [ofNat_mod_size'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/ofnat-mod-size--a3b8bec950206299e9dcb31d.md) | 60 | `result-track:a3b8bec950206299e9dcb31d3cfcd601d2e6d3bf87ace7e9aac493bafcdcce6c` |
| 7 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/natcast--63533908fcec50075c40a7c8.md) | 63 | `declaration-track:63533908fcec50075c40a7c88b9d21fe524be912947d519245f6abf22f6b43e1` |
| 8 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast--eb42d8a1d4ed26b9540b2274.md) | 67 | `declaration-track:eb42d8a1d4ed26b9540b227473ce1dc7249ae93d2f9bfeba06fcdc7c648c19ae` |
| 9 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-neg--912e9049f10e8eb2d6ec5935.md) | 72 | `result-track:912e9049f10e8eb2d6ec59351e428cfb6c45ae3901d3aa76bae161d4af2c461e` |
| 10 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-ofnat--8dd44f2b86a7372a0f06a8d6.md) | 75 | `result-track:8dd44f2b86a7372a0f06a8d68df40f9dc1f05ed51f2bf41fb2bae9de305bac56` |
| 11 | `theorem` | [ofNat_mod_size'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/ofnat-mod-size--893550a305120b987fd8ed81.md) | 91 | `result-track:893550a305120b987fd8ed817595740f3994a2db84841204c8b6c4ed1ce39605` |
| 12 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/natcast--14f39fa202a01da84aeb27ec.md) | 94 | `declaration-track:14f39fa202a01da84aeb27ec6469ed79090712f154624c7514a1440466ce0dc7` |
| 13 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast--dcfe81c3d79bc424db469f95.md) | 98 | `declaration-track:dcfe81c3d79bc424db469f95745fbe1ed9f0f36a3fe3dc7de949a6f393db53ef` |
| 14 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-neg--89af923a46df12eb5a7a8c69.md) | 103 | `result-track:89af923a46df12eb5a7a8c6936c4bb16009bf153d93d0c72ed7dcdb1761d9605` |
| 15 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-ofnat--50691145990f32b8ab31934a.md) | 106 | `result-track:50691145990f32b8ab31934a92498a568ebed57ac0f3c88f9274bf4cb3d2f363` |
| 16 | `theorem` | [ofNat_mod_size'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/ofnat-mod-size--0d99edd518cd49e289cdd2cc.md) | 122 | `result-track:0d99edd518cd49e289cdd2cccb45b98fc72b02daa0af97b6dd0e5783d3ef88b4` |
| 17 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/natcast--e10ce353dfb2f9aeabaaf432.md) | 125 | `declaration-track:e10ce353dfb2f9aeabaaf43244e5499842221b973e4812c3744e404adbff7618` |
| 18 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast--de6609c4f65cfb529397542c.md) | 129 | `declaration-track:de6609c4f65cfb529397542ca88f26a648fe61951d78c67394ab84f815fa68bb` |
| 19 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-neg--7d38d0a1a72c125543630591.md) | 134 | `result-track:7d38d0a1a72c1255436305918c360ad4dbfb744b78d7ffdcb837014639377e29` |
| 20 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-ofnat--cf25b4983fed438f62106014.md) | 137 | `result-track:cf25b4983fed438f621060149ba332a0724476af273881535d931cb95c3370c8` |
| 21 | `def` | [natCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/natcast--ebaeffa29987c46ce3cabf68.md) | 153 | `declaration-track:ebaeffa29987c46ce3cabf6879411dbc3cc74be2f82e6ca2a8f0b9a1689601ee` |
| 22 | `def` | [intCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast--c250afac164d0e5b13582381.md) | 157 | `declaration-track:c250afac164d0e5b1358238149d3015f9c93181040fb965baacb1111b2bb98e7` |
| 23 | `theorem` | [intCast_neg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-neg--c586704ab8c80ddb4d282874.md) | 162 | `result-track:c586704ab8c80ddb4d282874a3b720109f0faf10be2575c435172c58a308c798` |
| 24 | `theorem` | [intCast_ofNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/intcast-ofnat--9e30e96c9c7f4bdfa47e8478.md) | 165 | `result-track:9e30e96c9c7f4bdfa47e84788e9a90b30d7cfdf029d110a5cab29dd62f8e532f` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--9f6f961a70e1155c9b98384f.md) | 181 | `declaration-track:9f6f961a70e1155c9b98384fe022ca0134176629279d5217f488f2e5179bda49` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--eef6012329da6d42399c4dae.md) | 207 | `declaration-track:eef6012329da6d42399c4dae3a015d0a3b83f92c77d069cc8e0bd9454c05cd2c` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--1cf08cfeb6ee06db4d0b22f9.md) | 213 | `declaration-track:1cf08cfeb6ee06db4d0b22f9b09aeca1641b1c431a79bde9ed87b7e7ae574956` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--89a58b2e530193ca95f058f2.md) | 214 | `declaration-track:89a58b2e530193ca95f058f228243701760ea0178311096fc1268a7452a8e4f8` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--6f6cfad55a92627b126f6312.md) | 215 | `declaration-track:6f6cfad55a92627b126f6312efeebef2b89b065d17293d264e578ddf258f002e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--6c01c27833d2dc65657a6239.md) | 217 | `declaration-track:6c01c27833d2dc65657a623911ded385a710863b552b379a19e7150c3ab88e7c` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--4aecac84c25e83d00a1fc58a.md) | 220 | `declaration-track:4aecac84c25e83d00a1fc58a8164309d4634491b8268eea65c83f89fb2c56a7c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--858310452b957487b490d5df.md) | 246 | `declaration-track:858310452b957487b490d5dfa73a319ef3a742e52fd7606ed1e59d389fd58542` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--d19bf9388f348db97d540b44.md) | 252 | `declaration-track:d19bf9388f348db97d540b441c6dc539c0266293c80d8448155c44bd75252a7d` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--7305781caf971c1cd603ed11.md) | 253 | `declaration-track:7305781caf971c1cd603ed11c80f1bcf062c08f6cefcc68d71ed00b895d84f44` |
| 35 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--f0ff87e0a8a0b1699bfb3629.md) | 254 | `declaration-track:f0ff87e0a8a0b1699bfb36292ca3f9a540a988955ce88ce74bfc678a369d7798` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--a7defd57df2b5154228592a5.md) | 256 | `declaration-track:a7defd57df2b5154228592a5083eedeadcac9df4f0e572fd207ba9fe3849411e` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--92cd1936a58d5b75e2415feb.md) | 259 | `declaration-track:92cd1936a58d5b75e2415feb9a6bc6a9d37fb1876922e7d01f7006fa44a1d363` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--a269dbe24a5b2edf63f88bcf.md) | 285 | `declaration-track:a269dbe24a5b2edf63f88bcf7aad91609b2b5b20a4279a1c7960192733d5f295` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--41c87538392a9fc3e42b7330.md) | 291 | `declaration-track:41c87538392a9fc3e42b7330859a08fa256fcffc4f44a7c2ac8f790c9784d043` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--7a67c41e422980d27ca7b050.md) | 292 | `declaration-track:7a67c41e422980d27ca7b050b4b9c0cf862120baaa2cdcfeb59e380f911f8d64` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--a1f98f94d28b6ed9035afa2c.md) | 293 | `declaration-track:a1f98f94d28b6ed9035afa2cbdfc941fc85c7b1e676f275130e6bc8333e78b5e` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--bba9d1d033c7cd8617a5d8d4.md) | 295 | `declaration-track:bba9d1d033c7cd8617a5d8d4697d52cddbad3bd486469c4ca825cc02ed753c49` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--0f933ce0b46077ab020eedec.md) | 298 | `declaration-track:0f933ce0b46077ab020eedece1d0cfd2d2a825eef2731e0c7c5483ed68029ab3` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--9b0c089a75f137dc4b58bb7c.md) | 324 | `declaration-track:9b0c089a75f137dc4b58bb7cf020889a66dfa1b6eff5ec7cd86c8f6be1017301` |
| 45 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--c5474679fc16a097b973fa09.md) | 330 | `declaration-track:c5474679fc16a097b973fa092c9687ae75caad93b069443bd13945b1796e7498` |
| 46 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--12fa723cdd1b4e103ece73c9.md) | 331 | `declaration-track:12fa723cdd1b4e103ece73c9742a0bc0cefc9c2509ff14f087b43354f90dd89b` |
| 47 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--3935618e77c4253d7162bead.md) | 332 | `declaration-track:3935618e77c4253d7162beadf44d62cd0329adaba09389693b372bdd02f12e33` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--c0a0925b3882a15746accfd5.md) | 334 | `declaration-track:c0a0925b3882a15746accfd5a13f1ae86e2a52fce1fdca81a0e9dfcacdba4fe4` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--a760b38bc04afc4f38bd3c11.md) | 337 | `declaration-track:a760b38bc04afc4f38bd3c1104ce489ef0bad2fa70c5a4966b0838479983c565` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--4f8500c0a59fcfd2db6c3a1f.md) | 365 | `declaration-track:4f8500c0a59fcfd2db6c3a1f43d62a10a80febfe576315a104dcecbe2404432c` |
| 51 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--c887a263146f83a3d2f6d412.md) | 371 | `declaration-track:c887a263146f83a3d2f6d412c6487e6f825e4a72bf6ba0ac437fc7cb4191c2e9` |
| 52 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--194bc10115ae3941aaa9c6b4.md) | 372 | `declaration-track:194bc10115ae3941aaa9c6b4d71ce84491e7b7714fa6824926a86a5f1b104d08` |
| 53 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/example--2ccbcef655a910dcf1e5cb14.md) | 373 | `declaration-track:2ccbcef655a910dcf1e5cb140259dfe1e307fd310c60df20b79977653b3a08ea` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant3ccd1640f15b42bc5b145a46f75bb5b5675845efab66f6183ad4c3e3cd9d879e.lean/declarations/instance--294687546ff58979aa67f3b5.md) | 375 | `declaration-track:294687546ff58979aa67f3b54638e04e7cb222542bb4f204d664f66313f10082` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
