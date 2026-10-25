# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Html.Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c832b8ab4b2ddbf1bd5a7b02bb9846db88981249",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c832b8ab4b2ddbf1bd5a7b02bb9846db88981249`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.Json.FromToJson` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Parser` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.PrettyPrinter.Delaborator.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Server.Rpc.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [THtml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/thtml--04dd3367dbb7164db0aacb3a.md) | 27 | `declaration-track:04dd3367dbb7164db0aacb3af4db4c25f4e645963451a349298af83433f71d6e` |
| 2 | `inductive` | [Html](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/html--52f140417cffdbe366ae3666.md) | 42 | `declaration-track:52f140417cffdbe366ae3666bb6cc31f3c86ad148133dc3e7bbb02045ccc158f` |
| 3 | `def` | [Html.ofTHtml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/html-ofthtml--f064412614e2c9af7ba234c6.md) | 55 | `declaration-track:f064412614e2c9af7ba234c6eac609d1af4c4e89ca65b61afea15cd90606e715` |
| 4 | `inductive` | [LayoutKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/layoutkind--e2f8522b817b9c8a0eef17cc.md) | 62 | `declaration-track:e2f8522b817b9c8a0eef17cc1df58943082397ac79dc5d9ee61bd00b15b2f20e` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/syntax--e7282bf8871d7dd6a5983025.md) | 76 | `declaration-track:e7282bf8871d7dd6a59830253537ff81a9f02c94f10bd3c616b0c024c186edeb` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/syntax--7cd7c7c58731caa60959eda1.md) | 77 | `declaration-track:7cd7c7c58731caa60959eda1277c33f7180c293efae589dc5dd6a90234ea2911` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/syntax--10fe18be5ef3ece2e5523990.md) | 78 | `declaration-track:10fe18be5ef3ece2e5523990216a5a37ec88473b8c20aee196ba3736c9fce514` |
| 8 | `def` | [jsxText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/jsxtext--950b33e0943ed59f33b178da.md) | 81 | `declaration-track:950b33e0943ed59f33b178dad0d2f83d4eb7b7a9c104a72e070b633efaef9599` |
| 9 | `def` | [getJsxText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/getjsxtext--a3382e1fe3e235f18f5cea27.md) | 88 | `declaration-track:a3382e1fe3e235f18f5cea278857f023fd1232d020a4cbac39eda514baa060a1` |
| 10 | `def` | [jsxText.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/jsxtext-formatter--54a882d7b0ea9160b8258e80.md) | 92 | `declaration-track:54a882d7b0ea9160b8258e8023fa8dcac083f6ea8c9079d4f84edb4e7d0652f6` |
| 11 | `def` | [jsxText.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/jsxtext-parenthesizer--f37de35aec9828267b8bd15f.md) | 95 | `declaration-track:f37de35aec9828267b8bd15fb69e207bb6a6f191db0c4bc8b611365eba3bf83e` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/syntax--bec3c05a9e2bd4ed345d2c48.md) | 98 | `declaration-track:bec3c05a9e2bd4ed345d2c48aa78b43f410a03eb1811c1bbefbb6770b46ba39a` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/syntax--1ba71665f46a4faa6b273f03.md) | 99 | `declaration-track:1ba71665f46a4faa6b273f0389ebdd9fecdee9365343ebff568a75b8d1878e9a` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/syntax--35f86131e90de6537a183fef.md) | 101 | `declaration-track:35f86131e90de6537a183fef93c4e05fa54a822344f375cbfd327b2f4aad25fd` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/syntax--0920ca763a3dce73521653e3.md) | 103 | `declaration-track:0920ca763a3dce73521653e3ceaabca7467179258499efece1b2a354e74ad09d` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/syntax--042b0b1179e89223f178de8f.md) | 104 | `declaration-track:042b0b1179e89223f178de8f8da67d0afa0149e6ad47d7f9f00fcbeb487a8327` |
| 17 | `def` | [transformTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/transformtag--0971bce37ee59d983edc27cd.md) | 108 | `declaration-track:0971bce37ee59d983edc27cdbc43e832f8a3e9aae57111c7a5c783a1d4f5995e` |
| 18 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/macro-rules--207f1ffaee922a2d456a9c4d.md) | 137 | `declaration-track:207f1ffaee922a2d456a9c4ddd32fe7b8728ecbc3670b615ce10a8d1c2282d35` |
| 19 | `def` | [delabTHtmlText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/delabthtmltext--bea16587b97c68c7ff6efaac.md) | 144 | `declaration-track:bea16587b97c68c7ff6efaac74e6720b30cf95f4f46bfe6af20a961c524c5aff` |
| 20 | `def` | [delabTHtmlElement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant23ec9e7b43685a857429e841613ff84dce1ba816457d8843c2b1de826a7b8449.lean/declarations/delabthtmlelement--87cf00fb9e1813032df435b7.md) | 148 | `declaration-track:87cf00fb9e1813032df435b761eefb886aa5aa5cb15c178f88a2d740b61cf0fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
