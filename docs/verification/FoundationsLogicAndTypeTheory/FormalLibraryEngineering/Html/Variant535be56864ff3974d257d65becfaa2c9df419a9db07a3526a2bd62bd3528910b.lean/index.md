# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Html.Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c64eed7b6eb74ba893823d04f39b0f35c3dcab2",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c64eed7b6eb74ba893823d04f39b0f35c3dcab2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Data.Json.FromToJson` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Parser` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.PrettyPrinter.Delaborator.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Server.Rpc.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [THtml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/thtml--b988a6112af367025d614481.md) | 19 | `declaration-track:b988a6112af367025d6144814569ebb260c6a2c299b900730ad4cb0274034383` |
| 2 | `inductive` | [Html](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/html--a240e7cc31db3d8070375ed1.md) | 34 | `declaration-track:a240e7cc31db3d8070375ed108b9c819ab4d3c406d9b6e740fd61b35501a3e16` |
| 3 | `def` | [Html.ofTHtml](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/html-ofthtml--5454bee6ef21aba068252863.md) | 47 | `declaration-track:5454bee6ef21aba0682528638a7cd2b21ddea47602a89bc05a2e1f28c22592b4` |
| 4 | `inductive` | [LayoutKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/layoutkind--032d43df806d4da8f09c6cd6.md) | 54 | `declaration-track:032d43df806d4da8f09c6cd63dd2429acfd37cee61261f58f7ff35a07a551a64` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/syntax--72f4d6219d21ac8922dde86d.md) | 68 | `declaration-track:72f4d6219d21ac8922dde86d6a8469217c50ee3b7a22ec7cac02282d828966bd` |
| 6 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/syntax--be5201c01016f74bfcabfa0e.md) | 69 | `declaration-track:be5201c01016f74bfcabfa0e0d115d70919e325ecadf6983d934fc3bcd098546` |
| 7 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/syntax--564f1cf063c0ace7d5e4bbc6.md) | 70 | `declaration-track:564f1cf063c0ace7d5e4bbc6d77c18fabc691454f23f7ef39cb44c104c0958eb` |
| 8 | `def` | [jsxText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/jsxtext--6f2e325dda6596ee06e52ad9.md) | 73 | `declaration-track:6f2e325dda6596ee06e52ad98163ae2c96316e1fd107aafb7d1d7d5f72cfe646` |
| 9 | `def` | [getJsxText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/getjsxtext--655cb369db1965cf37833146.md) | 80 | `declaration-track:655cb369db1965cf37833146af635f4bff235db7c00341a0d301ab482e1c9510` |
| 10 | `def` | [jsxText.formatter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/jsxtext-formatter--7a0d708ad06f010856f9db0a.md) | 84 | `declaration-track:7a0d708ad06f010856f9db0a6f1afef6ca02cc22cc3d834f84aa55128c05fad5` |
| 11 | `def` | [jsxText.parenthesizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/jsxtext-parenthesizer--2994ea504028bf020bfa4f0a.md) | 87 | `declaration-track:2994ea504028bf020bfa4f0a86a604580558a7b374964ba943c4285f2af70f43` |
| 12 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/syntax--ffe0ed50f350438036b12af2.md) | 90 | `declaration-track:ffe0ed50f350438036b12af2c42238b7ef29c9386e1aaf784d34abaafdd1806c` |
| 13 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/syntax--61e18d30c77aea7b56f8165c.md) | 91 | `declaration-track:61e18d30c77aea7b56f8165cb5783f0279375b5f131a13bcf1f5a569e5eb4c9f` |
| 14 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/syntax--22c97be4d5ca4dabcaddbb24.md) | 93 | `declaration-track:22c97be4d5ca4dabcaddbb2403ef39381aca5097c72798a229df048b9b7fa251` |
| 15 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/syntax--d69825593f7c8ce6597ba070.md) | 95 | `declaration-track:d69825593f7c8ce6597ba070e1c649cff1e937c2b631c668b10314261972aa55` |
| 16 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/syntax--e92162da46990d3f69f9ea61.md) | 96 | `declaration-track:e92162da46990d3f69f9ea6130501e75882541b5e807c8bde4ab19f5f4647375` |
| 17 | `def` | [transformTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/transformtag--a86109f43ab9f5916cc6a9aa.md) | 100 | `declaration-track:a86109f43ab9f5916cc6a9aa16ef104c95f4fe0d35790d3ccb68206558714689` |
| 18 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/macro-rules--2eb64d5092d6184592b88bd9.md) | 129 | `declaration-track:2eb64d5092d6184592b88bd9e0cf5b9e29ab15faa9d4820724c0db294ccd7d87` |
| 19 | `def` | [delabTHtmlText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/delabthtmltext--b483bdbbc319da7224cb18ff.md) | 136 | `declaration-track:b483bdbbc319da7224cb18ffa6ad2fa29e0b65420c9e0b7dd9c3a39679e20def` |
| 20 | `def` | [delabTHtmlElement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Html/Variant535be56864ff3974d257d65becfaa2c9df419a9db07a3526a2bd62bd3528910b.lean/declarations/delabthtmlelement--63210bddb8c63fb8b203b306.md) | 140 | `declaration-track:63210bddb8c63fb8b203b30699f5debb97158cbd1014cdab709ba216132d40c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
