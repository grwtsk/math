# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Style.Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6baf969fc4e77d45b6ab36a3a2280f0c9ed5b30d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6baf969fc4e77d45b6ab36a3a2280f0c9ed5b30d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linter.Header` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeclarationNames` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.style.setOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-setoption--71f0028c12587d9f054cef5c.md) | 50 | `declaration-track:71f0028c12587d9f054cef5c59346ec77f07c2059818492f9a1d4554d6980609` |
| 2 | `def` | [parseSetOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/parsesetoption--89db89fc4475bc08808d1d43.md) | 59 | `declaration-track:89db89fc4475bc08808d1d431a02f508fff4152e7af1298687d94e1728159c03` |
| 3 | `def` | [parse_set_option](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/parse-set-option--345e442988ee318e0583ba88.md) | 68 | `declaration-track:345e442988ee318e0583ba885d4aa67a8c95009ecbf545f21a256a0e933895ab` |
| 4 | `def` | [isSetOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/issetoption--9fdbe3cb62470ca50ffeb393.md) | 71 | `declaration-track:9fdbe3cb62470ca50ffeb393f0cca85e06b470c3c801fe925874daeeb9a19ba8` |
| 5 | `def` | [is_set_option](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/is-set-option--61be4e08bdae037108d41002.md) | 76 | `declaration-track:61be4e08bdae037108d4100227066b7f23bff5897e02ca3dff9c1e0f84a8d1f5` |
| 6 | `def` | [setOptionLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/setoptionlinter--f1b3109441ed06d9faa275e4.md) | 96 | `declaration-track:f1b3109441ed06d9faa275e4d636b357043d910d0b71ed980881ca03763b82db` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/example--3f2a3eaadb3c22d9f77734de.md) | 114 | `declaration-track:3f2a3eaadb3c22d9f77734deaee1313813266efca6cd07eb70a82af756b11a59` |
| 8 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/initialize--223e154b86a447c414512d8c.md) | 116 | `declaration-track:223e154b86a447c414512d8c767538b27af4e08413b13938947c59cd6420e021` |
| 9 | `register_option` | [linter.style.missingEnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-missingend--6090adde7d3fbc3d2a340dce.md) | 132 | `declaration-track:6090adde7d3fbc3d2a340dcefadaed48b3ef101d5bd277d75d2b97e4cb008b27` |
| 10 | `def` | [missingEndLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/missingendlinter--8a94321edf2486dd82e9225b.md) | 140 | `declaration-track:8a94321edf2486dd82e9225b1046c4c09abbb5ce23761a88367c396025a8e884` |
| 11 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/initialize--b8ef0ee5926ed541cf96ad36.md) | 159 | `declaration-track:b8ef0ee5926ed541cf96ad36ee19716cc420b8051401bd318562a38a2102fec4` |
| 12 | `register_option` | [linter.style.cdot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-cdot--d24b6cc5cf487a73d4538470.md) | 177 | `declaration-track:d24b6cc5cf487a73d4538470d0e5749074695caf23300e7e97e133ca901e2683` |
| 13 | `def` | [isCDot?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/iscdot--349b1b8063013b577d66b21e.md) | 184 | `declaration-track:349b1b8063013b577d66b21e5a317982c50b3747a8a8e06434380f6cce59a5e4` |
| 14 | `def` | [findCDot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/findcdot--5eb86e39206cff7859c57a1f.md) | 193 | `declaration-track:5eb86e39206cff7859c57a1f50b9fb6380550cfb753fd69baa6bf801ad88ce35` |
| 15 | `def` | [unwanted_cdot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/unwanted-cdot--714183ae706f512b26fc55c7.md) | 205 | `declaration-track:714183ae706f512b26fc55c7da4267a34a9cd1b2ba68f1e3c2240c93f986741f` |
| 16 | `def` | [cdotLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/cdotlinter--e7b43ed7fd1b81bbf2bc2c73.md) | 211 | `declaration-track:e7b43ed7fd1b81bbf2bc2c734d68a4ae293c054b250e3b35cde01e5634023496` |
| 17 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/initialize--974303e04216cbfa0a917e98.md) | 228 | `declaration-track:974303e04216cbfa0a917e983946ac8b1a6bc4fd1383fe6c81afe2dfb6de8687` |
| 18 | `register_option` | [linter.style.dollarSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-dollarsyntax--d1e146bb568d931acecffd82.md) | 241 | `declaration-track:d1e146bb568d931acecffd8259fffcd412c16e0f3e01b42be73e6f394065d001` |
| 19 | `def` | [findDollarSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/finddollarsyntax--c0830438406607800de3e690.md) | 250 | `declaration-track:c0830438406607800de3e690fcbf2d73c245c50bd683286776fade244d95d493` |
| 20 | `def` | [dollarSyntaxLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/dollarsyntaxlinter--de1dd78da3d197ffb6517063.md) | 259 | `declaration-track:de1dd78da3d197ffb6517063387928ff5d628bd231d329cf13c54af6930989d1` |
| 21 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/initialize--c3caf147e7126a9752cae627.md) | 268 | `declaration-track:c3caf147e7126a9752cae62784c96b407c4d5e42f76bd0a128590c395b3f1e02` |
| 22 | `register_option` | [linter.style.lambdaSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-lambdasyntax--1bc306b2a57f5b2faec0eed1.md) | 284 | `declaration-track:1bc306b2a57f5b2faec0eed16043d087079bb45fe8706fd8c502114c13e14f1e` |
| 23 | `def` | [findLambdaSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/findlambdasyntax--e1dcccfeb2b7a76b50938717.md) | 294 | `declaration-track:e1dcccfeb2b7a76b50938717f3fbc10ba9a5ea259a6d89e8cd5835eddfd748ab` |
| 24 | `def` | [lambdaSyntaxLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/lambdasyntaxlinter--a28db3d88d473210f96610c3.md) | 303 | `declaration-track:a28db3d88d473210f96610c37070ca0afbe700f2b963f4b8b980e78065e78b81` |
| 25 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/initialize--af29313f137428e59dc92f32.md) | 314 | `declaration-track:af29313f137428e59dc92f321c0fa9009a5c6ab0b95f5f8ce4556b8b524bb086` |
| 26 | `register_option` | [linter.style.longFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-longfile--d530c25b407a50dc97c37779.md) | 331 | `declaration-track:d530c25b407a50dc97c37779d6e925719132505616c1ab9737078f1e8804c87c` |
| 27 | `register_option` | [linter.style.longFileDefValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-longfiledefvalue--d3f4fe46ed146e7f11bb6ff3.md) | 337 | `declaration-track:d3f4fe46ed146e7f11bb6ff313b3874269835f3c2df43ff8256afb2662db5460` |
| 28 | `def` | [longFileLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/longfilelinter--ff13453ddbb20d00f063a397.md) | 345 | `declaration-track:ff13453ddbb20d00f063a39752aab686a06d05f848073f7c93e2448e359562f5` |
| 29 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/initialize--ca0d8ac647b4c3acbbf2236a.md) | 400 | `declaration-track:ca0d8ac647b4c3acbbf2236a91046b358868b634478c0beffea57268730c2854` |
| 30 | `register_option` | [linter.style.longLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-longline--dff92f93d6f001b30e404379.md) | 408 | `declaration-track:dff92f93d6f001b30e40437975420c04c2342c7dad16b9985ddb6c2a2834d6a5` |
| 31 | `def` | [longLineLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/longlinelinter--f6542be6a8cdaf0966410dc4.md) | 416 | `declaration-track:f6542be6a8cdaf0966410dc47f57cb98eac92987150b0dbdc381d96e92108adb` |
| 32 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/initialize--9649d75274c3e40fdc7ab04e.md) | 447 | `declaration-track:9649d75274c3e40fdc7ab04ee9b2acad25c023e40dbfc58514e5969b522b2b36` |
| 33 | `register_option` | [linter.style.nameCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-namecheck--88cbcf73e76839ef819d3b10.md) | 459 | `declaration-track:88cbcf73e76839ef819d3b10e3f5d552d14c1b3482e63343e57319b2f3a561da` |
| 34 | `def` | [doubleUnderscore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/doubleunderscore--40d9b4ca6daf5845b1aa2271.md) | 467 | `declaration-track:40d9b4ca6daf5845b1aa22710d929bae8cb2690c9c56202a0f26f3a86b31a074` |
| 35 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/initialize--4b67aaa480c97e7c31b7d530.md) | 486 | `declaration-track:4b67aaa480c97e7c31b7d530b368fbac14088e7e673eeb35d00804fb846e0dad` |
| 36 | `register_option` | [linter.style.openClassical](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/linter-style-openclassical--55082548fc29df7be71cb2e2.md) | 496 | `declaration-track:55082548fc29df7be71cb2e2d9013359970d84e69be7ed3a4f618d0aee08c74f` |
| 37 | `def` | [extractOpenNames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/extractopennames--a8d558020e3a909aee4c67c8.md) | 510 | `declaration-track:a8d558020e3a909aee4c67c8006e161f8e726b03d3d2b88637796f119bc3d309` |
| 38 | `def` | [openClassicalLinter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/openclassicallinter--9993a354a3ecb5c3edc3cf2e.md) | 522 | `declaration-track:9993a354a3ecb5c3edc3cf2eed363a33ea32b59fb8a85dbb01fdaaa7f67079d4` |
| 39 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Style/Variant153f5de627686e12536dda3dc9e2f4b4500834edaf1c7f3581c91c75338f05a0.lean/declarations/initialize--489ffb0ac8a25031f552ea61.md) | 536 | `declaration-track:489ffb0ac8a25031f552ea61e135de059fee1efdbe1bdf322062f22362dd9d25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
