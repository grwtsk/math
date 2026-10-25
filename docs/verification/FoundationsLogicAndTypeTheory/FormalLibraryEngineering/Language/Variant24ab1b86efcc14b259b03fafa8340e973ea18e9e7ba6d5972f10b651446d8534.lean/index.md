# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Language.Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38cd109cb3a2b9a0105378c06a645c9c668cbb38",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38cd109cb3a2b9a0105378c06a645c9c668cbb38`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean.json)

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
| 1 | `inductive` | [LanguageId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/languageid--95e734f8e8ae9f98f1c91a2d.md) | 20 | `declaration-track:95e734f8e8ae9f98f1c91a2d062fa332755d9fdb94cc7a6b60fd313c07b89eaf` |
| 2 | `def` | [LanguageId.code](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/languageid-code--0588bc03c0ed79dc2e6fa048.md) | 27 | `declaration-track:0588bc03c0ed79dc2e6fa048d22f474d6d013a612904f18e513784f2e345dc41` |
| 3 | `def` | [LanguageId.ofCode?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/languageid-ofcode--31b5becdaa87fd9567f001d7.md) | 33 | `declaration-track:31b5becdaa87fd9567f001d7da6ef56b2e44be662e0858dc9349af05a2aa2981` |
| 4 | `theorem` | [languageCode_roundtrip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/languagecode-roundtrip--d5651a3d7bb6f1138f8e963e.md) | 41 | `result-track:d5651a3d7bb6f1138f8e963e0b9f91811d6a5bec11042d844528fe4dd4fe84d1` |
| 5 | `theorem` | [unknown_language_code_fails_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/unknown-language-code-fails-closed--7ec86fb741ba31a891a1e3ee.md) | 46 | `result-track:7ec86fb741ba31a891a1e3ee8c3860a626840801813553de6a0c31d8ce2c8f52` |
| 6 | `structure` | [ParserFingerprint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/parserfingerprint--f2772d87f78f39508775ae64.md) | 53 | `declaration-track:f2772d87f78f39508775ae64ce044dc2ea9d9176d14a74c0ea6a54671e832f4d` |
| 7 | `def` | [ParserFingerprint.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/parserfingerprint-valid--5ca6e626f7ae660e372067b2.md) | 62 | `declaration-track:5ca6e626f7ae660e372067b288566d6e1643379b478e5058050d65f66c5f561b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/instance--709761e682bb8435134fd75a.md) | 69 | `declaration-track:709761e682bb8435134fd75af75d0655ed0e99b0855e7a468e19e0233c4e1e7f` |
| 9 | `inductive` | [ParserAuthority](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/parserauthority--a2d1840916a9aaee2a15ef7f.md) | 74 | `declaration-track:a2d1840916a9aaee2a15ef7f2d1005583c51438adcb75a4c1b0c381ebc1c04c9` |
| 10 | `def` | [ParserAuthority.isCanonicalCompilerObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/parserauthority-iscanonicalcompilerobservation--ff4edd04533b3f48781c4094.md) | 81 | `declaration-track:ff4edd04533b3f48781c40946f5787df65173fa2cb33ba34050985c06850e953` |
| 11 | `theorem` | [recoveredPreview_is_not_canonical](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/recoveredpreview-is-not-canonical--b4bd71fe644dd5252907c3fe.md) | 86 | `result-track:b4bd71fe644dd5252907c3fe949eeaa39479b84707d2b56f6996beb758f31db6` |
| 12 | `theorem` | [structuralParserObservation_is_not_canonical](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/structuralparserobservation-is-not-canonical--2e69bccba4f715bd41f57bb9.md) | 91 | `result-track:2e69bccba4f715bd41f57bb9eec480b86134ca2e81caae41960a1fac6bb661c2` |
| 13 | `structure` | [SourceFileIdentity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/sourcefileidentity--95944e79b5bc6b50b7fc4c06.md) | 96 | `declaration-track:95944e79b5bc6b50b7fc4c06281de37e96e9ccad7da0727e5dfcf9bc937487c8` |
| 14 | `structure` | [SourceSnapshotId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/sourcesnapshotid--0e6559137b51b5ed647cc587.md) | 103 | `declaration-track:0e6559137b51b5ed647cc587b342c367dfb6ba8bf75c3742556b80bfc35751e2` |
| 15 | `structure` | [BuildTargetIdentity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Language/Variant24ab1b86efcc14b259b03fafa8340e973ea18e9e7ba6d5972f10b651446d8534.lean/declarations/buildtargetidentity--a3fb13a390a2516801732aa7.md) | 109 | `declaration-track:a3fb13a390a2516801732aa7ec82ce9eee90f700c5308b68e4ca4fd7a4d251fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
