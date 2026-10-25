# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pretty.Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "140f205e95cdd514d5146d8eb762221c32590ecb",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `140f205e95cdd514d5146d8eb762221c32590ecb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ImportGraph.Lean.Syntax` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Hint` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ImportRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/importref--c08a6ab278f3110aed256dd9.md) | 57 | `declaration-track:c08a6ab278f3110aed256dd9d2275fe86e78515adb3dfe979cf0c9a424806d8e` |
| 2 | `def` | [ImportRef.getIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/importref-getident--0e5f3e98dfe7f50381955650.md) | 64 | `declaration-track:0e5f3e98dfe7f50381955650dc1564b02327c18b931ff4ec4a3d32e93fbb68ab` |
| 3 | `def` | [headerToImportStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/headertoimportstx--ac3874b8a725df5a16805e0b.md) | 72 | `declaration-track:ac3874b8a725df5a16805e0baf6006c35fea5f2554ba25250401a86946dbf52c` |
| 4 | `def` | [getModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/getmodule--cfaa07863c988682c74bf6db.md) | 81 | `declaration-track:cfaa07863c988682c74bf6db64de989e90b20f00c08a37d0545a96d5fa75dc90` |
| 5 | `def` | [headerToImportRefs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/headertoimportrefs--c17cbbc5798f182ad4ca3021.md) | 88 | `declaration-track:c17cbbc5798f182ad4ca30212fff218cf0a1756a1c1c77d597d4418c24384490` |
| 6 | `def` | [comparePretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/comparepretty--d8cceb9a70281e5bc65d3b66.md) | 106 | `declaration-track:d8cceb9a70281e5bc65d3b6648216c3073fcb27f5827d8768a95e7d4334ad47f` |
| 7 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportRef.Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.ImportGraph.Lean.ImportRef.comparePretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-impor--a994fe36be71968425213512.md) | 115 | `declaration-track:a994fe36be7196842521351297d0c6c1620c5462cd1f03ded206b73f8f7721b0` |
| 8 | `instance` | [instImportOrdPretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/instimportordpretty--9aef357e8faba295e4ac5e43.md) | 119 | `declaration-track:9aef357e8faba295e4ac5e43a5e42fdb62675f77ef6cec12a385159c207d0c47` |
| 9 | `instance` | [instImportRefOrdPretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/instimportrefordpretty--69a6cfb751c8a15c8bdea1d8.md) | 123 | `declaration-track:69a6cfb751c8a15c8bdea1d87e8235ed1c30a74756327a99e7fc8009474282ad` |
| 10 | `def` | [beqUpToOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/bequptoorder--c903a7f318ccb1a9c5d25f5c.md) | 127 | `declaration-track:c903a7f318ccb1a9c5d25f5ce773af14c7cffcebec8f64e8bac2a37457d3f99c` |
| 11 | `structure` | [Whitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/whitespace--01f51c0f24906294ddbaa955.md) | 134 | `declaration-track:01f51c0f24906294ddbaa95573eca3f5581f022458f4914aef22a2ce7d00fe06` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/instance--f6bb319fb6d18ac61d204826.md) | 154 | `declaration-track:f6bb319fb6d18ac61d2048261705b43c524b0fc52aa518b607f4735dccda27b1` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/instance--53c809f236d3ef19b521b6c9.md) | 161 | `declaration-track:53c809f236d3ef19b521b6c9971624db352a160dca27e515557afd5920556ef1` |
| 14 | `def` | [around](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/around--1fecad4c070b1082a1d01dda.md) | 166 | `declaration-track:1fecad4c070b1082a1d01dda4aa3b2135196e88d73f26113f30d6e2fde2c3b9c` |
| 15 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/empty--3f6f9239ff2a0092d247a17f.md) | 170 | `declaration-track:3f6f9239ff2a0092d247a17fd805569fe099dfc365bb60d726414b4e479a5d34` |
| 16 | `def` | [isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/isempty--702ba88b11c49e31378a7b37.md) | 175 | `declaration-track:702ba88b11c49e31378a7b370c4cc10f103b33689a29e09d0f696a8652a95b63` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/instance--ff26c93655a5da4f24c88672.md) | 179 | `declaration-track:ff26c93655a5da4f24c886727f22b11be50bb0e2781710ed5b7a059175d1618f` |
| 18 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportRef.Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.ImportGraph.headerToImportRefsWithWhitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-impor--32c5481a9811bc6cf939e0c3.md) | 210 | `declaration-track:32c5481a9811bc6cf939e0c37afc9a8278b5a08270ece44a9611bc44a9b51e83` |
| 19 | `inductive` | [FormatBehavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/formatbehavior--996b339f12af1ac894e0cc01.md) | 223 | `declaration-track:996b339f12af1ac894e0cc014e098f690182e3950f30b6fe914a9f408276fe83` |
| 20 | `def` | [sortPretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/sortpretty--ee1ff54ceebff970c78c9f8b.md) | 236 | `declaration-track:ee1ff54ceebff970c78c9f8b41d398f2a6059d4f5e24ea36640e2cc7fbf2472b` |
| 21 | `def` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ImportRef.Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.ImportGraph.Lean.ImportRef.sortPretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-impor--2fbf155693475c989cee7f70.md) | 239 | `declaration-track:2fbf155693475c989cee7f70bf9240fd69547a3e7e87e945b9075c0ddb9b7fa3` |
| 22 | `def` | [pretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/pretty--1f7ff6325a7f98d7fa18fc19.md) | 248 | `declaration-track:1f7ff6325a7f98d7fa18fc19a23f2e2bad7efc4c44e05c9b5651391a9bad259c` |
| 23 | `def` | [prettyHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/prettyheader--5798c35782b75798741de101.md) | 263 | `declaration-track:5798c35782b75798741de1019cf43b9dfaaa4639b8191fcb79eaa56eafd2b2f7` |
| 24 | `structure` | [FormatErrors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/formaterrors--6d68227b109b50e938b81fa3.md) | 272 | `declaration-track:6d68227b109b50e938b81fa3ef5af6e36616bb655bd3c6a9beed0892e37dbd8b` |
| 25 | `def` | [FormatErrors.isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/formaterrors-isempty--a8ca2db7bfbd5ce0481f8635.md) | 287 | `declaration-track:a8ca2db7bfbd5ce0481f8635d99c05b6b6d03c7a05178c9d5a5d5a832252cf0a` |
| 26 | `def` | [collectWithWhitespaceFromSource](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/collectwithwhitespacefromsource--b95b8d2d81fb83250c08a61d.md) | 291 | `declaration-track:b95b8d2d81fb83250c08a61df058b196bb98b62b34a320103be83578202b3cfc` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/instance--1a978ac9f1d98ccf076becac.md) | 346 | `declaration-track:1a978ac9f1d98ccf076becac63686877ad6aedff75f4652d9837985865441ba1` |
| 28 | `def` | [prettyWithWhitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/prettywithwhitespace--4508ed5405a03bde8dbcf85b.md) | 386 | `declaration-track:4508ed5405a03bde8dbcf85be2d408b0eb4e9837baf49de6664dfa574c7de2cc` |
| 29 | `def` | [prettyWithSourceWhitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/prettywithsourcewhitespace--5ebefb2f8df44082252de7f3.md) | 405 | `declaration-track:5ebefb2f8df44082252de7f3bace8baac652367ab429fadfdc414b97d5759d0c` |
| 30 | `def` | [mkImportSuggestionMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant0ceb1cafe351649c1f63bf733b2c26f0711c5e8fb2cec4f0b3940930def69655.lean/declarations/mkimportsuggestionmessage--64418bf6326bb88f753ebc52.md) | 430 | `declaration-track:64418bf6326bb88f753ebc52196abdd584011ec410fd1a6041000cdc5fb886f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
