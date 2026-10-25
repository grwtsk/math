# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nat.Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "248c7877ed6ab21e0ebccef88d382f0621327822",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `248c7877ed6ab21e0ebccef88d382f0621327822`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.SafeExponentiation` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/fromexpr--bebb2349ca78832c393dbd86.md) | 19 | `declaration-track:bebb2349ca78832c393dbd8617884641969bb2626d4d24a186442bc2dbe814db` |
| 2 | `def` | [reduceUnary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/reduceunary--938a8accfb5a469e149f3041.md) | 27 | `declaration-track:938a8accfb5a469e149f3041dea8bc27e9ede9600c630d43185570184880cf85` |
| 3 | `def` | [reduceBin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/reducebin--9ce4a94bdeee722142aae3ca.md) | 32 | `declaration-track:9ce4a94bdeee722142aae3ca38f04ad197c99801a384b23ff0bcbbf9eb0a5cdc` |
| 4 | `def` | [reduceBinPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/reducebinpred--8e880b8e1bfd8bc1940f3c58.md) | 38 | `declaration-track:8e880b8e1bfd8bc1940f3c58304970bd8c5d15322ac1f5386c8459b3a68a9d25` |
| 5 | `def` | [reduceBoolPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/reduceboolpred--22229e5b3f662e71d58afc29.md) | 44 | `declaration-track:22229e5b3f662e71d58afc29260398e2ca41539d90f5ec02fe75329d39c55e18` |
| 6 | `inductive` | [NatOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/natoffset--a761ddba1bd58835250782c1.md) | 94 | `declaration-track:a761ddba1bd58835250782c15a57726f5026006d72eeb994e1fa214ce860b770` |
| 7 | `def` | [NatOffset.asOffset](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/natoffset-asoffset--827472708e6a813052aa26df.md) | 101 | `declaration-track:827472708e6a813052aa26df313b99e900d2b3fcc7175654a9a44a532187637e` |
| 8 | `def` | [NatOffset.fromExprAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/natoffset-fromexpraux--40149d2063b38f6de54c5c78.md) | 126 | `declaration-track:40149d2063b38f6de54c5c783df20cc5c48281bfb99b5993382dcf866aa33d38` |
| 9 | `def` | [NatOffset.fromExpr?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/natoffset-fromexpr--049fcc8696c0ebb25fb614ca.md) | 135 | `declaration-track:049fcc8696c0ebb25fb614ca2b894c813a353b9881ef09ace86eafcb4d4f093a` |
| 10 | `def` | [mkAddNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mkaddnat--9d73a0893afdc2f6230ba59f.md) | 143 | `declaration-track:9d73a0893afdc2f6230ba59ff62c0c4028e0803992b4fc94df1940f2ef9c197a` |
| 11 | `def` | [mkSubNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mksubnat--f3cb8ea6988760b96b9e7e2c.md) | 149 | `declaration-track:f3cb8ea6988760b96b9e7e2ceae2159b140ed264511885368d86d9aef10badbf` |
| 12 | `def` | [mkEqNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mkeqnat--2b2b36f1d40627b3aa7a22b2.md) | 156 | `declaration-track:2b2b36f1d40627b3aa7a22b27cd15c924114848664e468746840987b059ef6dd` |
| 13 | `def` | [mkBEqNatInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mkbeqnatinstance--1b5e838dd90d84d63c0b58ef.md) | 159 | `declaration-track:1b5e838dd90d84d63c0b58efb90452965205e0113b97e448a6dcd5b98bfd930f` |
| 14 | `def` | [mkBEqNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mkbeqnat--f535f773992de317ba100d8e.md) | 162 | `declaration-track:f535f773992de317ba100d8e08492f326c2e7cba155f267ac983d512520b8c38` |
| 15 | `def` | [mkBneNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mkbnenat--b1f3917f32c2f07e04545878.md) | 165 | `declaration-track:b1f3917f32c2f07e0454587858227beed7cf945bd84192ed2af94968ca4cd7d3` |
| 16 | `def` | [mkLENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mklenat--db382290210d196489a3610b.md) | 168 | `declaration-track:db382290210d196489a3610b511a48725c9cf0e94dbe7ca3ae9cf7c4724fb141` |
| 17 | `def` | [mkGENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mkgenat--d448b81e6937c7412273835c.md) | 171 | `declaration-track:d448b81e6937c7412273835c7a6799018765e8883e28e6037bf872e730d44154` |
| 18 | `def` | [mkLTNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mkltnat--ca9222966ba96235b391fab0.md) | 173 | `declaration-track:ca9222966ba96235b391fab0e704ffb3caa53d61b2287afc22d433a4670cef70` |
| 19 | `def` | [mkGTNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mkgtnat--ed17d38b9e9e06da28ed63b8.md) | 176 | `declaration-track:ed17d38b9e9e06da28ed63b8dd4a37109ebada5f8230505bb3c50fe31aa295f4` |
| 20 | `def` | [mkOfDecideEqTrue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/mkofdecideeqtrue--42676571b1f25bb57dfeb680.md) | 178 | `declaration-track:42676571b1f25bb57dfeb680df34ab3a7ccf4aa49698e35101f4aaaf68657c27` |
| 21 | `def` | [applySimprocConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/applysimprocconst--8de08b5c523e9310adb63c5a.md) | 182 | `declaration-track:8de08b5c523e9310adb63c5a6861e757046b6adb24007a2fc3130f2dd55d5bda` |
| 22 | `inductive` | [EqResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/eqresult--1e211580690e6c521282a5dd.md) | 187 | `declaration-track:1e211580690e6c521282a5ddf522c26b28a1f7b04da6dea301b62a114f53783b` |
| 23 | `def` | [applyEqLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/applyeqlemma--54fe7854094beb783f333e5b.md) | 192 | `declaration-track:54fe7854094beb783f333e5b753d2292f6599c21660c2c3a8223c86ea3920403` |
| 24 | `def` | [reduceNatEqExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/reducenateqexpr--eb19096af7007049eee4d4c2.md) | 197 | `declaration-track:eb19096af7007049eee4d4c21638a0bb76dfaa621632fa94f8e574a39f0f431e` |
| 25 | `def` | [reduceLTLE](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Nat/Variantc841f7f58673353be455cf627e83196f4254f3fe39b5d419da75d6ddad18f7b6.lean/declarations/reduceltle--b54e120c11bfa9a5296426ed.md) | 288 | `declaration-track:b54e120c11bfa9a5296426edc9e3c02c9e227e70b3ed289430c136bd88fed0f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
