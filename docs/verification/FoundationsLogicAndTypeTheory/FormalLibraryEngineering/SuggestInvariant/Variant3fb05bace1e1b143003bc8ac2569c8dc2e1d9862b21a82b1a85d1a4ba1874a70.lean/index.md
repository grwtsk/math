# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SuggestInvariant.Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a9f71310b5b8aa8cddc2ce4000cba3b2c13583a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a9f71310b5b8aa8cddc2ce4000cba3b2c13583a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Do.ProofMode.MGoal` — import line 17; external provider; requires a separately pinned dependency.
- `Std.Tactic.Do` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Mem` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getSPredGoalHypsAndTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/getspredgoalhypsandtarget--fb0ec5467d3cb42e6b6c2db5.md) | 37 | `declaration-track:fb0ec5467d3cb42e6b6c2db53021b92a20b43306eef5835d555411855c6944de` |
| 2 | `structure` | [InvariantUse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/invariantuse--b12c8a46b66099cbd75217d7.md) | 55 | `declaration-track:b12c8a46b66099cbd75217d74e0b3f0d57ea9e5f0a51230197baafd0f22425cd` |
| 3 | `inductive` | [ClassifyInvariantUseResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/classifyinvariantuseresult--d707e262c44055d8c8aa711a.md) | 67 | `declaration-track:d707e262c44055d8c8aa711adf3094ab8c72e069ee5d5bbaae50b543b623608d` |
| 4 | `def` | [classifyInvariantUse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/classifyinvariantuse--69798161fcdc28850d83dd47.md) | 72 | `declaration-track:69798161fcdc28850d83dd470193073e925ee5da33109d6fa72cd8bcf1129df0` |
| 5 | `def` | [hasEarlyReturn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/hasearlyreturn--db6e5aaba6922cfc163c2fbc.md) | 115 | `declaration-track:db6e5aaba6922cfc163c2fbc49b42dfcbed5abf5ee6c9f187776a00ca7839568` |
| 6 | `def` | [collectFVarsToRevert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/collectfvarstorevert--217bbd6581d3dba4fb917cdb.md) | 169 | `declaration-track:217bbd6581d3dba4fb917cdba19dc19be3f1781f1a67f8a293a97c63d5a235f5` |
| 7 | `def` | [revertFVarsInTypeExcept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/revertfvarsintypeexcept--46511503d9d93a6860656b2a.md) | 183 | `declaration-track:46511503d9d93a6860656b2a61633d9c23450b8df3ef961b5c547d30990c2c2b` |
| 8 | `structure` | [SuccessPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/successpoint--abb35a15d8a511a15a5e5c35.md) | 210 | `declaration-track:abb35a15d8a511a15a5e5c356f1fefbb63830527fd0c737afd0e42141e784f06` |
| 9 | `def` | [SPredNil.mkAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/sprednil-mkand--2c70927136044f764cdc97dc.md) | 218 | `declaration-track:2c70927136044f764cdc97dc779c2d0329dd5593d8924ca5b08d752e91658b1e` |
| 10 | `def` | [SPredNil.mkOr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/sprednil-mkor--3b7d3cdb3a5faab4de1f8a60.md) | 221 | `declaration-track:3b7d3cdb3a5faab4de1f8a6015550c396441e0f5dc3f5d070695404505cb458e` |
| 11 | `def` | [SuccessPoint.clause](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/successpoint-clause--00b0b0f89fed4560cb7d359f.md) | 224 | `declaration-track:00b0b0f89fed4560cb7d359f59160421d0ccc5a159beb182f4f420759f2bc23f` |
| 12 | `inductive` | [ExceptCondsDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/exceptcondsdefault--81e408dae319a5a3fbd88d4b.md) | 228 | `declaration-track:81e408dae319a5a3fbd88d4ba51d34ee579afc70016e28b50d047577376c524f` |
| 13 | `structure` | [FailureCondHints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/failurecondhints--322f0192888d9d93fb6b4014.md) | 247 | `declaration-track:322f0192888d9d93fb6b4014d2c0d7adceca313cfed55ecd4f5a5fedd0c93f51` |
| 14 | `def` | [collectInvariantHints](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/collectinvarianthints--1c404e1d79d54c267a6e50c0.md) | 259 | `declaration-track:1c404e1d79d54c267a6e50c0690dd6caa4781418c771cdd0d097378f74b05e01` |
| 15 | `def` | [duplicateMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/duplicatemvar--de8ce04f36ee1c4a20bda74d.md) | 324 | `declaration-track:de8ce04f36ee1c4a20bda74d5689f81b0825e70fb847c8b04dd0f339933a2285` |
| 16 | `def` | [eraseQuoteMacroScopesFromSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/erasequotemacroscopesfromsyntax--46a8cfee6e298d6e1a6a566a.md) | 330 | `declaration-track:46a8cfee6e298d6e1a6a566a8a78dc36888d6f52ccaf330785d9d79271d59526` |
| 17 | `def` | [eraseQuoteMacroScopesFromTSyntax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/erasequotemacroscopesfromtsyntax--9d2389fbb6953004d6dae68f.md) | 348 | `declaration-track:9d2389fbb6953004d6dae68f43b2d7c39a09f1145236b225a90e9a89b5b8c061` |
| 18 | `def` | [tryHoistPure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/tryhoistpure--4ab65945fcec3baa1a1748a7.md) | 356 | `declaration-track:4ab65945fcec3baa1a1748a7d64dcdf3b9d7a2ac04c3342cf0e98e1b426fb781` |
| 19 | `def` | [suggestInvariant](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuggestInvariant/Variant3fb05bace1e1b143003bc8ac2569c8dc2e1d9862b21a82b1a85d1a4ba1874a70.lean/declarations/suggestinvariant--663ea110c764185441c87e07.md) | 384 | `declaration-track:663ea110c764185441c87e07d26a371a94e54fc339e38ba827d5059dba6b26d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
