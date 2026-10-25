# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DeriveArbitrary.Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fe444d412c8e9c16973008d5f25354b084ccfa4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fe444d412c8e9c16973008d5f25354b084ccfa4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Plausible.ArbitraryFueled` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getCtorArgsNamesAndTypes](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/getctorargsnamesandtypes--dbeadaaf3f52a0b07dc081cf.md) | 85 | `declaration-track:dbeadaaf3f52a0b07dc081cf21a41fa495cd43b3414e749632852eb6ae20f143` |
| 2 | `def` | [mkHeaderWithOnlyImplicitBinders](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/mkheaderwithonlyimplicitbinders--84f034dcbbe4cd03a1415ddc.md) | 109 | `declaration-track:84f034dcbbe4cd03a1415ddc15b09714169b28adc8e6d4a0fb08b19ef0743f76` |
| 3 | `def` | [mkArbitraryFueledInstanceCmds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/mkarbitraryfueledinstancecmds--9ff3d46a0f4a11d5f352c17f.md) | 130 | `declaration-track:9ff3d46a0f4a11d5f352c17f85112fa4f56a5da31f2d4cb15c0a8ecf4397a06d` |
| 4 | `def` | [mkArbitraryHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/mkarbitraryheader--45111a935dc07433d8982998.md) | 149 | `declaration-track:45111a935dc07433d89829983fa810fec736718f5d15ff7df451a62d294534ad` |
| 5 | `def` | [mkBody](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/mkbody--ae44f5f91f1df06d8a99e257.md) | 153 | `declaration-track:ae44f5f91f1df06d8a99e257a9b7e04eb1ac5f106d4b806a7c727f0dd8daaa06` |
| 6 | `def` | [mkAuxFunction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/mkauxfunction--3d93d1467c66c3d70ade39ed.md) | 267 | `declaration-track:3d93d1467c66c3d70ade39ed79fe3b48a6a589cc7bbeb749957ee1853367713c` |
| 7 | `def` | [mkMutualBlock](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/mkmutualblock--276130c4772b7ca0c3234817.md) | 297 | `declaration-track:276130c4772b7ca0c32348173488fd8a8c079656a6fb9d368ddc3bfeb6d2cf8e` |
| 8 | `def` | [mkArbitraryFueledInstanceCmd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/mkarbitraryfueledinstancecmd--d849367535a57f39479cd4f9.md) | 306 | `declaration-track:d849367535a57f39479cd4f96fc362e6d54634a98a8544320bdc769faac50d30` |
| 9 | `def` | [mkArbitraryInstanceHandler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/mkarbitraryinstancehandler--966654094c98d7b2de0fb4d7.md) | 314 | `declaration-track:966654094c98d7b2de0fb4d70fd3a879f94bb43f763af4ed026c49c77212a485` |
| 10 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/declarations/initialize--a39a8c25eabd04e22e58e841.md) | 326 | `declaration-track:a39a8c25eabd04e22e58e841fb8c5f09963be5f09290eda0d3ae45c00ca88750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
