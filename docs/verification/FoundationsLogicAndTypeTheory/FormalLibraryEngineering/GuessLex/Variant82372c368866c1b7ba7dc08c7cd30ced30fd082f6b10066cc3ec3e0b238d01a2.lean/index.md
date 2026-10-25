# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuessLex.Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8655cf0708eda72c2b5d9dd51524ab5abee9098b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8655cf0708eda72c2b5d9dd51524ab5abee9098b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Refl` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.Prod` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [originalVarNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/originalvarnames--55d960ae12cb74b2c8bb068f.md) | 101 | `declaration-track:55d960ae12cb74b2c8bb068fd08a5464ae6f434c621b9e785f51d1eadb4b402a` |
| 2 | `def` | [naryVarNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/naryvarnames--5e572b905336daf657cdfc08.md) | 118 | `declaration-track:5e572b905336daf657cdfc08baf51932d7e2d2ab7722a5f9b1552c6cf4aa7a30` |
| 3 | `structure` | [BasicMeasure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/basicmeasure--01ddab2cac9f369c80a3bb34.md) | 136 | `declaration-track:01ddab2cac9f369c80a3bb34458621bb15b95d48fba146d7ef7994919d736cc8` |
| 4 | `def` | [BasicMeasure.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/basicmeasure-tostring--51a87cabc0faf03920d18b86.md) | 145 | `declaration-track:51a87cabc0faf03920d18b86ef0d3212b1545209e236bdbe5c173c94de7ead98` |
| 5 | `def` | [mayOmitSizeOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/mayomitsizeof--235de2605e666c95560e773f.md) | 160 | `declaration-track:235de2605e666c95560e773f5dab66243c4464fcbcb732bb4fac651469549b57` |
| 6 | `def` | [withUserNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/withusernames--fc6af19ae030580f13eff9b9.md) | 178 | `declaration-track:fc6af19ae030580f13eff9b95271368c3a5cb28a13d9a6e1793bdbcc80886e09` |
| 7 | `def` | [simpleMeasures](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/simplemeasures--d8d02ce8bdc8cd427deae697.md) | 184 | `declaration-track:d8d02ce8bdc8cd427deae6972c2dc80a4e029dd3b8c74175f209a6d7992033b6` |
| 8 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/m--2875f195da1dbe22fbf1e56a.md) | 208 | `declaration-track:2875f195da1dbe22fbf1e56a482cba0c02854a6efcb2d3571ff0be4913171a9d` |
| 9 | `def` | [withRecApps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/withrecapps--844d399857d759f69a33680e.md) | 218 | `declaration-track:844d399857d759f69a33680e7a2c0f4900b80be493fc63c2a0c4e315ebbe87a9` |
| 10 | `structure` | [SavedLocalContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/savedlocalcontext--b4cbcaa266096b90ef760b79.md) | 288 | `declaration-track:b4cbcaa266096b90ef760b7972892a171348860f79d91d8dbdac3dcfa6a6cb3d` |
| 11 | `def` | [SavedLocalContext.create](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/savedlocalcontext-create--940c460bfa617e916dcd2cd2.md) | 294 | `declaration-track:940c460bfa617e916dcd2cd20e5b22862bedf3d8c2a7489336f646ac8eaa49da` |
| 12 | `def` | [SavedLocalContext.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/savedlocalcontext-run--5c387b2ab9411092109e794b.md) | 301 | `declaration-track:5c387b2ab9411092109e794bbac0e1e98806fff04dddae8b1cd343b18ef7f458` |
| 13 | `structure` | [RecCallWithContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/reccallwithcontext--9e98ea49657c63b66adbfe3f.md) | 310 | `declaration-track:9e98ea49657c63b66adbfe3fb77cfb655601c4c6e60d77fb522ef7f330902aea` |
| 14 | `def` | [RecCallWithContext.create](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/reccallwithcontext-create--394873f2fd3fb292bc17d00c.md) | 324 | `declaration-track:394873f2fd3fb292bc17d00cebbc680e8237ace36c211fca27f0786c5808c24b` |
| 15 | `def` | [filterSubsumed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/filtersubsumed--07faef2ca1ce98960185dca8.md) | 336 | `declaration-track:07faef2ca1ce98960185dca8152e24c1ea01f09006e8edb8398ddfc3e0dd31d2` |
| 16 | `def` | [collectRecCalls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/collectreccalls--2bbf1dd6361644abe5f51879.md) | 355 | `declaration-track:2bbf1dd6361644abe5f518791cc5fc395f25217a30fc5a273cfbf2f50058f93e` |
| 17 | `def` | [isNatCmp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/isnatcmp--6eb77ada713be70272d76645.md) | 377 | `declaration-track:6eb77ada713be70272d7664540df3177dc658972506d46bc586a9d7d90c63a56` |
| 18 | `def` | [complexMeasures](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/complexmeasures--2c0e5a19cf706701cf48e6a3.md) | 394 | `declaration-track:2c0e5a19cf706701cf48e6a351a0f7ad0a565fd163f05bfec0cbac4f0f3f7315` |
| 19 | `inductive` | [GuessLexRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/guesslexrel--966252f0aa3c7c5b4996a3b7.md) | 431 | `declaration-track:966252f0aa3c7c5b4996a3b76f0958a21520301f886eff52beccf8b36fe787ac` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/instance--2a2018d37610f816986db8de.md) | 434 | `declaration-track:2a2018d37610f816986db8dee3691dc1889b5512cbd880e66b695601e6867312` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/instance--7e8d03c073405cf2ac64d9c7.md) | 440 | `declaration-track:7e8d03c073405cf2ac64d9c7549a473d0925e6cfe0c40d5b036daf481b63b149` |
| 22 | `def` | [GuessLexRel.toNatRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/guesslexrel-tonatrel--888fa79e009cb08b684229fc.md) | 444 | `declaration-track:888fa79e009cb08b684229fcf700e1a5ff76fa2f31405c830bfd84a78322d5bf` |
| 23 | `def` | [evalRecCall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/evalreccall--79852c1137449f73d61ff3b6.md) | 454 | `declaration-track:79852c1137449f73d61ff3b652c667c3a76f96736c05ddaa4dc79bb794e0676c` |
| 24 | `structure` | [RecCallCache](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/reccallcache--2811dde5cc3f19fa2a28f007.md) | 494 | `declaration-track:2811dde5cc3f19fa2a28f0073fa5385b30165e1e290ed3524752380045a614a8` |
| 25 | `def` | [RecCallCache.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/reccallcache-mk--2291ae11df6d1cc61d9ab286.md) | 503 | `declaration-track:2291ae11df6d1cc61d9ab28687450a1707c18dd9d1395f1f97500c98bcab1b71` |
| 26 | `def` | [RecCallCache.eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/reccallcache-eval--591d38337bc18083c9ff48ef.md) | 514 | `declaration-track:591d38337bc18083c9ff48efaf27f022cff9154f98fa178f49e2f593318f382c` |
| 27 | `def` | [RecCallCache.prettyEntry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/reccallcache-prettyentry--2177b495777190e14a852b6a.md) | 524 | `declaration-track:2177b495777190e14a852b6abb47345b42e76788bf8bc22d88c0982caae4f09a` |
| 28 | `inductive` | [MutualMeasure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/mutualmeasure--783a0c0ad904e86b907a6ded.md) | 532 | `declaration-track:783a0c0ad904e86b907a6dedbdbbd43a597cd09fcb0f3dfe87f25d85840cf1e8` |
| 29 | `def` | [inspectCall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/inspectcall--54bf28c31200015efc12e10e.md) | 539 | `declaration-track:54bf28c31200015efc12e10e136ecac1e55bec76ffc6257a01e2f8363138e96b` |
| 30 | `def` | [generateCombinations?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/generatecombinations--0c3a006d25eff7c3a4aa80c7.md) | 560 | `declaration-track:0c3a006d25eff7c3a4aa80c7380fecf8b03c935c240d70f09b93be558057387f` |
| 31 | `def` | [generateMeasures](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/generatemeasures--0c9c0ca506c8e24055fb4c46.md) | 588 | `declaration-track:0c9c0ca506c8e24055fb4c466bdfa60afaae67b9526454d9b7049767ffa63b9e` |
| 32 | `def` | [solve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/solve--daedf8b18e1c493875addf6f.md) | 609 | `declaration-track:daedf8b18e1c493875addf6f46a4c467a1c87f8e789773d6486ea68bb7d705fc` |
| 33 | `def` | [formatTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/formattable--f1ab5fd74a3880a71e95ff8f.md) | 644 | `declaration-track:f1ab5fd74a3880a71e95ff8f985ca06dd64b07b28d036ab700c2451163d9d7d4` |
| 34 | `def` | [RecCallWithContext.posString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/reccallwithcontext-posstring--3a11245d1943ce394c3392cf.md) | 668 | `declaration-track:3a11245d1943ce394c3392cf6b684a5251a891606cf02d45cc1bd7901d21f1f1` |
| 35 | `def` | [measureHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/measureheader--a24bc7c2b25719158c39b7be.md) | 684 | `declaration-track:a24bc7c2b25719158c39b7be3458ae4d2562d1a6ab21b2c0082cebbf68c37f58` |
| 36 | `def` | [collectHeaders](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/collectheaders--6724e1bef7b442e058557bfd.md) | 695 | `declaration-track:6724e1bef7b442e058557bfddcff7f3e023dee6f83951cd5a5522de55e4094d4` |
| 37 | `def` | [explainNonMutualFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/explainnonmutualfailure--b2a81143e60e9e9d76c616e4.md) | 701 | `declaration-track:b2a81143e60e9e9d76c616e415488c5529bd266ba8b77955c7ca50ef91802777` |
| 38 | `def` | [explainMutualFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/explainmutualfailure--034fd642f72c644fc3d1ee88.md) | 716 | `declaration-track:034fd642f72c644fc3d1ee8839de0dd8c8043205786e2a694058ee71ebffc879` |
| 39 | `def` | [explainFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/explainfailure--91df4c945f691f3c433e8e01.md) | 749 | `declaration-track:91df4c945f691f3c433e8e01135e37b16867c53afd5f5fa209314951552f2624` |
| 40 | `def` | [mkProdElem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/mkprodelem--9bf3241322baf58396ce141f.md) | 762 | `declaration-track:9bf3241322baf58396ce141ffde3c0b1e1118f4b1cdda433d5f54425080ef67e` |
| 41 | `def` | [toTerminationMeasures](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/toterminationmeasures--896e77ba98bc96c0e36f4663.md) | 770 | `declaration-track:896e77ba98bc96c0e36f46636bb8ff993f6917fdffb3e61273bb252355317609` |
| 42 | `def` | [reportTerminationMeasures](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/reportterminationmeasures--2c7f920bda9d7f8dbef2cad6.md) | 787 | `declaration-track:2c7f920bda9d7f8dbef2cad6002e6fce1f8aba51bcdafac7e44006c3ec6a8f44` |
| 43 | `def` | [guessLex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant82372c368866c1b7ba7dc08c7cd30ced30fd082f6b10066cc3ec3e0b238d01a2.lean/declarations/guesslex--5e083d5ec90bb6c29bcd0ed7.md) | 808 | `declaration-track:5e083d5ec90bb6c29bcd0ed72110e9aa828b28756b4ace60aa3fefbe49e141e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
