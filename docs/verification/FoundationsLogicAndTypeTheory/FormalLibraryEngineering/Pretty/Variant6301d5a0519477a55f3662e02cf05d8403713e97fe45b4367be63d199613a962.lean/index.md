# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Pretty.Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df54fdcc122f7e059adaf9cbb095a25050d3da6a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df54fdcc122f7e059adaf9cbb095a25050d3da6a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ImportGraph.Lean.Syntax` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Hint` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ImportRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/importref--7458c618d62020fed0198292.md) | 49 | `declaration-track:7458c618d62020fed0198292897c4f28c637b30cc9618794dfa76f9d7f14bb95` |
| 2 | `def` | [ImportRef.getIdent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/importref-getident--b898b04d35b2a692cd57a969.md) | 56 | `declaration-track:b898b04d35b2a692cd57a96905e15728e0f39ba6470d1aab89b6b22b7f671c92` |
| 3 | `def` | [headerToImportStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/headertoimportstx--3e16fac1875fe08dc94be923.md) | 64 | `declaration-track:3e16fac1875fe08dc94be923e687ce06e3544600c81fcf343b74ae8c197af686` |
| 4 | `def` | [getModule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/getmodule--473af5820d54dd9da8aaa80d.md) | 73 | `declaration-track:473af5820d54dd9da8aaa80dd1ffc71577b181eec0cb341942e31e8593b8e6b1` |
| 5 | `def` | [headerToImportRefs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/headertoimportrefs--635ce0178fc30c992dafd9ec.md) | 80 | `declaration-track:635ce0178fc30c992dafd9ec091cec384e4beec09f540f368cd29912610d7488` |
| 6 | `def` | [comparePretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/comparepretty--acfdce0a772b4529afb9b280.md) | 98 | `declaration-track:acfdce0a772b4529afb9b2801c50edef95d75b8b375eea7a27a400a921778595` |
| 7 | `def` | [_root_.ImportGraph.Lean.ImportRef.comparePretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/root-importgraph-lean-importref-comparepretty--a56defc8bb6cd99e3381d96a.md) | 107 | `declaration-track:a56defc8bb6cd99e3381d96aa649d87b5e2b7f7758bc0523b3eca6bd589af759` |
| 8 | `instance` | [instImportOrdPretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/instimportordpretty--71cf3e91d673cf4c5b115d3b.md) | 111 | `declaration-track:71cf3e91d673cf4c5b115d3b93bafcab3d92e266f6d821007618f385e9da0496` |
| 9 | `instance` | [instImportRefOrdPretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/instimportrefordpretty--fb7d8a741e9959eb45e86be5.md) | 115 | `declaration-track:fb7d8a741e9959eb45e86be55adc4f624577dddd1eb9c169c5883a207b9137a9` |
| 10 | `def` | [beqUpToOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/bequptoorder--e95e572bb04ae47567d481e9.md) | 119 | `declaration-track:e95e572bb04ae47567d481e9fc887dc5c9e9d0e7c7010a4f6144ce375640d341` |
| 11 | `structure` | [Whitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/whitespace--8de058b94b3b057a979334be.md) | 126 | `declaration-track:8de058b94b3b057a979334bee31f18fd51e5d2d55d9fed1f3cadd8f1f30311b4` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/instance--12386c0c9953813e37b65810.md) | 146 | `declaration-track:12386c0c9953813e37b658103654be15370ac73140596363e85c150f1b766a9f` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/instance--8e4c0e7aac66b4dfba6b962c.md) | 153 | `declaration-track:8e4c0e7aac66b4dfba6b962c151d0283d40b073ca6114a0934c88bb90ab3c3a1` |
| 14 | `def` | [around](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/around--c6edc594c9485a000cc9eadf.md) | 158 | `declaration-track:c6edc594c9485a000cc9eadf8294dfc09d8a2cb51a6056f7ff7505b05f3d1048` |
| 15 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/empty--41cdb839ee99df1ddc45cd2d.md) | 162 | `declaration-track:41cdb839ee99df1ddc45cd2daeb181ac24074c34e68e80da42faeba4d783af40` |
| 16 | `def` | [isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/isempty--a1d4335228942ba369e0c5fa.md) | 167 | `declaration-track:a1d4335228942ba369e0c5fa66d00ab8d3997d95b062a68a87ce583cf7616be3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/instance--0f17109026dda2a70b2edcf3.md) | 171 | `declaration-track:0f17109026dda2a70b2edcf397d449f7bf53d19da07f81b74663c2148b7ee6f6` |
| 18 | `def` | [_root_.ImportGraph.headerToImportRefsWithWhitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/root-importgraph-headertoimportrefswithwhitespace--650de5d11c9d0979de8281bc.md) | 202 | `declaration-track:650de5d11c9d0979de8281bc23d3dcb1e76ae56cbc58f576d562c145049b94b9` |
| 19 | `inductive` | [FormatBehavior](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/formatbehavior--7e0899e79662caec5da3cbb8.md) | 215 | `declaration-track:7e0899e79662caec5da3cbb8259e68eccc7b3b1cd1ba0fb29b342100c71c2717` |
| 20 | `def` | [sortPretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/sortpretty--b402c4f1f474ed0584acd48d.md) | 228 | `declaration-track:b402c4f1f474ed0584acd48dce6866975925c5491c30f0a5dffeb6d1d25c62d9` |
| 21 | `def` | [_root_.ImportGraph.Lean.ImportRef.sortPretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/root-importgraph-lean-importref-sortpretty--570c5a069672368fc64a4d80.md) | 231 | `declaration-track:570c5a069672368fc64a4d803a92881320af416b068c079a3f34d446289bb807` |
| 22 | `def` | [pretty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/pretty--bdc46c46402ed347522563b7.md) | 240 | `declaration-track:bdc46c46402ed347522563b75d5400231c3bd1da67e864c17bcc329109ba92cf` |
| 23 | `def` | [prettyHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/prettyheader--3cbe8a7b1c6c4b569eb5f5bb.md) | 255 | `declaration-track:3cbe8a7b1c6c4b569eb5f5bb051cefb69cb8945e25d5d9e3c98bd82ada9afb79` |
| 24 | `structure` | [FormatErrors](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/formaterrors--a51b877e5809dca76791bbe7.md) | 264 | `declaration-track:a51b877e5809dca76791bbe772d3f293958a698b7121c6af47ccb24bee03bed5` |
| 25 | `def` | [FormatErrors.isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/formaterrors-isempty--6c19c712e14b82b93ea64bb9.md) | 279 | `declaration-track:6c19c712e14b82b93ea64bb9fec618db02edd514c9e03a157fc80de38250bf83` |
| 26 | `def` | [collectWithWhitespaceFromSource](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/collectwithwhitespacefromsource--c80f8c03d576a1e8a33b0756.md) | 283 | `declaration-track:c80f8c03d576a1e8a33b0756f59d451d0272721f486b14b9633b2f696b5c491e` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/instance--938ed3e8930c1d7dcd81c0c6.md) | 338 | `declaration-track:938ed3e8930c1d7dcd81c0c6fb0e38c2896e30f243836289bfdb54141550689f` |
| 28 | `def` | [prettyWithWhitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/prettywithwhitespace--f45498db52523214b47bc6d6.md) | 378 | `declaration-track:f45498db52523214b47bc6d620d2d7db66a9b8df2c68f16c4708b7096b962e25` |
| 29 | `def` | [prettyWithSourceWhitespace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/prettywithsourcewhitespace--736e73f8514b0708f8624042.md) | 397 | `declaration-track:736e73f8514b0708f86240426c1faffacd912dce14454ebb34595992a6f1b045` |
| 30 | `def` | [mkImportSuggestionMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pretty/Variant6301d5a0519477a55f3662e02cf05d8403713e97fe45b4367be63d199613a962.lean/declarations/mkimportsuggestionmessage--63f89897e3ac30a26a899467.md) | 422 | `declaration-track:63f89897e3ac30a26a89946794d3061604fa151e08c1cf54b9216c3b40dd7402` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
