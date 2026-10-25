# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Encode.Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2409f656aa3e890785ae04694e94f248ee565da8",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2409f656aa3e890785ae04694e94f248ee565da8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Meta.RefinedDiscrTree.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.RefinedDiscrTree.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.StateList` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DTExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/dtexpr--c106046f046e47f88725b702.md) | 29 | `declaration-track:c106046f046e47f88725b702de6eeae90ac62aa8168211912c9bcba8663d89ab` |
| 2 | `def` | [DTExpr.format](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/dtexpr-format--7f073edbbbceebdfa82c405a.md) | 52 | `declaration-track:7f073edbbbceebdfa82c405a7d05f997d505c0c65148bf6e622378775ea451f4` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/instance--0c52bd7e4bd3645665515793.md) | 70 | `declaration-track:0c52bd7e4bd3645665515793513ac4cba17f8155a0626acf7173e544d61291c1` |
| 4 | `def` | [DTExpr.size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/dtexpr-size--e4657fad92be7ecc87ca58c2.md) | 76 | `declaration-track:e4657fad92be7ecc87ca58c2eb06c642d5fd3b3f80384ce3f6f707680e17d88c` |
| 5 | `def` | [DTExpr.eqv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/dtexpr-eqv--d8115e819d8d02296ed3bc33.md) | 85 | `declaration-track:d8115e819d8d02296ed3bc33e9553ce2c406c3d39bce231e3a573446530758d0` |
| 6 | `structure` | [Flatten.State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/flatten-state--41788c00532a3129bc4efb05.md) | 121 | `declaration-track:41788c00532a3129bc4efb05c5547522d294482678d899216ba2292deed9312e` |
| 7 | `def` | [getStar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/getstar--c9fe7a9e5f172352db3f0a08.md) | 124 | `declaration-track:c9fe7a9e5f172352db3f0a08432d7141a04194f021f47f8c39a02d430dde693b` |
| 8 | `def` | [DTExpr.flattenAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/dtexpr-flattenaux--87bb256b2e164624bd69b93e.md) | 132 | `declaration-track:87bb256b2e164624bd69b93e20fe6d395d361441a56e694bf0ffdfc9586b8f40` |
| 9 | `def` | [DTExpr.flatten](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/dtexpr-flatten--4e86e42deafcc80b7544bd92.md) | 146 | `declaration-track:4e86e42deafcc80b7544bd9217ab69812ed1128a3dd23b0e6e90f9e52cfe5ed2` |
| 10 | `def` | [isNumeral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/isnumeral--d924f16499dd2919370f4233.md) | 156 | `declaration-track:d924f16499dd2919370f4233e3b8fbe0871f7de9eebaea6ce12543c47cc2bee0` |
| 11 | `def` | [toNatLit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/tonatlit--2f65936d8abbe500cb888311.md) | 169 | `declaration-track:2f65936d8abbe500cb888311d3342bd1947000d1d545e4b402f38004fb7ec9ca` |
| 12 | `def` | [reduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/reduce--dfbf89dc4f77e032b8cb965c.md) | 195 | `declaration-track:dfbf89dc4f77e032b8cb965cc510ff156f011f7a45842fcde34d94118e290dae` |
| 13 | `def` | [lambdaTelescopeReduce](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/lambdatelescopereduce--062db7c5bc9439461c1600d9.md) | 205 | `declaration-track:062db7c5bc9439461c1600d93ad9634828b5f768825f573b945b8b4b0ce861d2` |
| 14 | `def` | [isStar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/isstar--ffc48650e10d9ca133a5d481.md) | 217 | `declaration-track:ffc48650e10d9ca133a5d4818a04d62a7c9a9095766d9cd92bb384b1e6a07231` |
| 15 | `def` | [isStarWithArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/isstarwitharg--fb3ccaeb6aa80ec78caafd46.md) | 223 | `declaration-track:fb3ccaeb6aa80ec78caafd46932e242c8f38e388ed067b8e1e4d9ec23e8e309e` |
| 16 | `def` | [DTExpr.hasLooseBVarsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/dtexpr-hasloosebvarsaux--17f0e85770d2a0f966c7ed38.md) | 227 | `declaration-track:17f0e85770d2a0f966c7ed3831053054ec1a41578039988d191110aa1750b4bd` |
| 17 | `def` | [DTExpr.hasLooseBVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/dtexpr-hasloosebvars--d0f4d7dbb108114eaa4066b0.md) | 237 | `declaration-track:d0f4d7dbb108114eaa4066b0ce38954a981e36d903e68c9700082a9c19bebd89` |
| 18 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/context--038a8deb1457ce1b1dd65788.md) | 243 | `declaration-track:038a8deb1457ce1b1dd6578852c225831e99a90d80b059ad96452f80b100ec15` |
| 19 | `def` | [getIgnores](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/getignores--7fda336b9afae6138566cc5c.md) | 252 | `declaration-track:7fda336b9afae6138566cc5c8f12059b1fdb3c57f601e510bdd436bb3a59fbdb` |
| 20 | `def` | [withLams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/withlams--792e6a8cb763d69aad9ddf1e.md) | 277 | `declaration-track:792e6a8cb763d69aad9ddf1e34c6469e4871c2b7026d7b10a0033ef98f85c8c4` |
| 21 | `def` | [mkDTExprAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/mkdtexpraux--d157321f5f6fb477944481a9.md) | 288 | `declaration-track:d157321f5f6fb477944481a973aa6d0ae0e1818be5b1639a6fbc61dc8f4239b0` |
| 22 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/m--2e642fe6b27b6b894e433c13.md) | 362 | `declaration-track:2e642fe6b27b6b894e433c137752e576403cb78af663cb2eb8927db7a210fa5e` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/instance--e2a84a2d37ab079d1293e505.md) | 369 | `declaration-track:e2a84a2d37ab079d1293e505c1e9ff0c1f1679d1be80a96e25dea7e8ef239721` |
| 24 | `def` | [etaPossibilities](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/etapossibilities--63a53fba455e3101b04b29d6.md) | 381 | `declaration-track:63a53fba455e3101b04b29d65b9abf7bde97dd53958966735e0aeadba16a522d` |
| 25 | `def` | [cacheEtaPossibilities](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/cacheetapossibilities--3394e7d14b684550abb76798.md) | 395 | `declaration-track:3394e7d14b684550abb7679865bc8bc35e0d2acb075314783f188cf2833a4230` |
| 26 | `def` | [mkDTExprsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/mkdtexprsaux--46240c91556cfa356bb3d95e.md) | 409 | `declaration-track:46240c91556cfa356bb3d95e6f710b5ad4f27942f7abb2f7bed86c1172644b26` |
| 27 | `def` | [DTExpr.isSpecific](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/dtexpr-isspecific--2c75180504bf59fe5da8c298.md) | 492 | `declaration-track:2c75180504bf59fe5da8c298b7a7ff88fc422baf3ee2d4fee9ac45e08b69c9a7` |
| 28 | `def` | [mkDTExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/mkdtexpr--62f43c598625c16fc9510ee7.md) | 504 | `declaration-track:62f43c598625c16fc9510ee7e386d4fb9dccbb79e56216ac1ce3328773dbd7bf` |
| 29 | `def` | [mkDTExprs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Encode/Variant7d1150920764925dd12afd6bd4bc25cf26928e2b7b7860120996ce6dbbd4484c.lean/declarations/mkdtexprs--452d6615373ed7512cba1f80.md) | 510 | `declaration-track:452d6615373ed7512cba1f80785e6afe69d953cbae420f4251134c6abe81e35d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
