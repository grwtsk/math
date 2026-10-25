# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuleSet.Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aded577a0dad76b7a413b1a75ca6231b31d23e0b",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aded577a0dad76b7a413b1a75ca6231b31d23e0b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.PersistentHashMap` — import line 18; external provider; requires a separately pinned dependency.
- `Batteries.Lean.PersistentHashSet` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Attr` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BaseRuleSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/baseruleset--eb8ec6905c4c694f86f573c9.md) | 41 | `declaration-track:eb8ec6905c4c694f86f573c96996d8513d5d5cb06c9045b7b82224425752fe60` |
| 2 | `structure` | [GlobalRuleSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/globalruleset--61d136d17e4ceb68b0f51ac5.md) | 100 | `declaration-track:61d136d17e4ceb68b0f51ac5dd0f9eebf8af6b97d03ab450fadb3fc82aae84b5` |
| 3 | `structure` | [LocalRuleSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/localruleset--24c208f5df6364f3ab2cb92c.md) | 116 | `declaration-track:24c208f5df6364f3ab2cb92caa86a6005d027ad5d0c777c6ce87032dc51eb635` |
| 4 | `def` | [onBaseM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/onbasem--2acf435281a12b62fab92452.md) | 147 | `declaration-track:2acf435281a12b62fab9245251c583af1eee7963d4bae15c52e0515a15bed846` |
| 5 | `def` | [onBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/onbase--bac37fa2a40c31247105e8a7.md) | 154 | `declaration-track:bac37fa2a40c31247105e8a7b5d7631f031cfdc31ecceeaf866c9d514b8d823d` |
| 6 | `def` | [modifyBaseM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/modifybasem--299cde17123e199ceb788642.md) | 159 | `declaration-track:299cde17123e199ceb7886422783bc846c7ec07e706955d7a59cd0c5cdbde4a8` |
| 7 | `def` | [modifyBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/modifybase--35ee6521551ff42ea72b92dd.md) | 164 | `declaration-track:35ee6521551ff42ea72b92dd799635bafade790a3a67f3337727cccb2373171e` |
| 8 | `def` | [onBaseM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/onbasem--5ce4a33edd1f50138ecbc6e0.md) | 174 | `declaration-track:5ce4a33edd1f50138ecbc6e023832d453a393f63d868d254694514197190e1c5` |
| 9 | `def` | [onBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/onbase--c2b2551728baf9409c9a5ecc.md) | 180 | `declaration-track:c2b2551728baf9409c9a5eccd53e4f0108b797e2276c4523217c35cf7f631d95` |
| 10 | `def` | [modifyBaseM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/modifybasem--ea2f49f0f622cd1495fac488.md) | 184 | `declaration-track:ea2f49f0f622cd1495fac4884b8f8edb307a76faa773cd5bdcca042865afe2ba` |
| 11 | `def` | [modifyBase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/modifybase--aa1568bb15e2a0cc964317a6.md) | 188 | `declaration-track:aa1568bb15e2a0cc964317a62de2abe8c0e3f84c53c224315bd5318185efd0c1` |
| 12 | `def` | [BaseRuleSet.trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/baseruleset-trace--25e66ce3a7ed8467076c03e6.md) | 195 | `declaration-track:25e66ce3a7ed8467076c03e62319b210f38f9c5f963d7c0671c07506ccec8433` |
| 13 | `def` | [GlobalRuleSet.trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/globalruleset-trace--b09f4919442ae147b2bddf07.md) | 217 | `declaration-track:b09f4919442ae147b2bddf072ea349fcfe6e1c5d6cf981410d47a3735518c3d0` |
| 14 | `def` | [LocalRuleSet.trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/localruleset-trace--d7b09842c381e1deb3059453.md) | 226 | `declaration-track:d7b09842c381e1deb3059453fd0c912aabb633721f760c060d4e03f6095eda4a` |
| 15 | `def` | [BaseRuleSet.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/baseruleset-empty--91742c71c7a72b642c51e1db.md) | 243 | `declaration-track:91742c71c7a72b642c51e1db53bb561d75e8a62cd56084b690b8c627097181bb` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/instance--451c982189c3457ace3ea04a.md) | 246 | `declaration-track:451c982189c3457ace3ea04abe1872c53dfffccbd45aaddd305f95bd9973bbb1` |
| 17 | `def` | [GlobalRuleSet.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/globalruleset-empty--ea6292ce66d63e4396f8d6ee.md) | 249 | `declaration-track:ea6292ce66d63e4396f8d6ee184ad637482fceb84c9e021607fad1d6abf38529` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/instance--5589be8a6601eeb1e677e2ff.md) | 252 | `declaration-track:5589be8a6601eeb1e677e2ff4d393bc3271365115ffbe131c1d08d527e116550` |
| 19 | `def` | [LocalRuleSet.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/localruleset-empty--0dea4506cb971fa469973c8e.md) | 255 | `declaration-track:0dea4506cb971fa469973c8e0be1baebb94dbb6ab8ec6ccd6f7c74e2be934074` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/instance--59e028fb320920b406a52218.md) | 263 | `declaration-track:59e028fb320920b406a5221805aa9b3ca787fa984a423d7974551c62533c70fe` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/instance--c6a7020ff5481ae37de0fedc.md) | 266 | `declaration-track:c6a7020ff5481ae37de0fedc48404742413a4e1f95c52ddc0e73e868f16dc149` |
| 22 | `def` | [BaseRuleSet.isErased](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/baseruleset-iserased--0e8ecf8a64652fba7f6241c0.md) | 270 | `declaration-track:0e8ecf8a64652fba7f6241c061a6fc713df86a08d937e91906d0e031d6746f5b` |
| 23 | `def` | [BaseRuleSet.contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/baseruleset-contains--4f1b030e057c3ec2f809f7ad.md) | 273 | `declaration-track:4f1b030e057c3ec2f809f7ad6eacd4266b94dc56d00492415e1abbeaba9698dc` |
| 24 | `def` | [GlobalRuleSet.contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/globalruleset-contains--56c697ce80747a21f7f6fe94.md) | 280 | `declaration-track:56c697ce80747a21f7f6fe9491bb9f844aea0d4cce2c16c03605a40d166bcc18` |
| 25 | `def` | [LocalRuleSet.containsGlobalSimpTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/localruleset-containsglobalsimptheorem--e5ca59a3403866698b87c789.md) | 285 | `declaration-track:e5ca59a3403866698b87c789c86098f81cacf08a57e32afb0383598249d3c791` |
| 26 | `def` | [LocalRuleSet.contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/localruleset-contains--a224a92db4406c0110bdbbf8.md) | 290 | `declaration-track:a224a92db4406c0110bdbbf8245ec3dce16a3fceb118f5391d1dc95b3290510c` |
| 27 | `def` | [BaseRuleSet.merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/baseruleset-merge--2ab8fa76e656a0b98ca10593.md) | 298 | `declaration-track:2ab8fa76e656a0b98ca10593060aa56e3e60e2251a6bde7a92ca0f96eeedaa2e` |
| 28 | `def` | [BaseRuleSet.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/baseruleset-add--ab578d4428ef750e3e4bd043.md) | 322 | `declaration-track:ab578d4428ef750e3e4bd043484a387796e695c9e1be4707027fa144cbf65ea7` |
| 29 | `def` | [LocalRuleSet.add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/localruleset-add--5174cafdb932998fd397227f.md) | 374 | `declaration-track:5174cafdb932998fd397227f94c0a343e9a344f77a6f4491a702965264d4b0bb` |
| 30 | `def` | [BaseRuleSet.erase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/baseruleset-erase--ef84383673bceeb33dd74b5a.md) | 390 | `declaration-track:ef84383673bceeb33dd74b5a8d0e05d6211a5ef13495f70e2f39c91ebfedcd58` |
| 31 | `def` | [GlobalRuleSet.erase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/globalruleset-erase--e9f1daf8d863a48f9a15327d.md) | 416 | `declaration-track:e9f1daf8d863a48f9a15327d2a22e8ad2a473ecfeb05fd74d788cacebd5b084e` |
| 32 | `def` | [LocalRuleSet.erase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/localruleset-erase--21d4d97536b61c0cbef3f7f7.md) | 425 | `declaration-track:21d4d97536b61c0cbef3f7f7c8c5a1237a15badce3a4405b08807c04a4b27462` |
| 33 | `def` | [fwdRulePredicate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/fwdrulepredicate--d4cd5254b4d5798411332911.md) | 460 | `declaration-track:d4cd5254b4d5798411332911faf0ecbba1f0c2bc94f2550faee6f3323933c878` |
| 34 | `def` | [rulePredicate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/rulepredicate--1e49743d46b7122017a186a2.md) | 465 | `declaration-track:1e49743d46b7122017a186a24b596e0b69c2d33bcdc6f491311c8b202fedbd21` |
| 35 | `def` | [postprocessForwardMatchRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/postprocessforwardmatchrules--75a2f30398df02d2e4ad1b7d.md) | 475 | `declaration-track:75a2f30398df02d2e4ad1b7d613200644ef7429c1b0b6a47a5f8dd84ec9a297e` |
| 36 | `def` | [applicableNormalizationRulesWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/applicablenormalizationruleswith--962c38c55f70d7f641dab221.md) | 481 | `declaration-track:962c38c55f70d7f641dab2219d5de8b631ab755873b441ca44d438cb576be8f1` |
| 37 | `def` | [applicableNormalizationRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/applicablenormalizationrules--72ec660f35d6b0824aec7af3.md) | 491 | `declaration-track:72ec660f35d6b0824aec7af3e53e3aebee65fd2619c6dce092872f7dcbf6fb8a` |
| 38 | `def` | [applicableUnsafeRulesWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/applicableunsaferuleswith--dbeac3db6d701a344de9ed47.md) | 495 | `declaration-track:dbeac3db6d701a344de9ed47e013036afdad2a5c9d1a051a95f1361d5c938871` |
| 39 | `def` | [applicableUnsafeRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/applicableunsaferules--972df63db1366814391f0f70.md) | 505 | `declaration-track:972df63db1366814391f0f7068aaa091ac4da6d2efcfd1a43abf9ddc7fa44466` |
| 40 | `def` | [applicableSafeRulesWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/applicablesaferuleswith--40e6974ce6119c2a271b0930.md) | 509 | `declaration-track:40e6974ce6119c2a271b0930d6b711327be8e41695ae6eaa66c5890363714f00` |
| 41 | `def` | [applicableSafeRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/applicablesaferules--9471338b2a0f9e02a78c2492.md) | 519 | `declaration-track:9471338b2a0f9e02a78c249206ce068aa6757037423298da3b2074c5b4408f06` |
| 42 | `def` | [applicableForwardRulesWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/applicableforwardruleswith--9395af62b32b84dd1afd28c9.md) | 523 | `declaration-track:9395af62b32b84dd1afd28c9bf8157bee4b94d9421c19f0dc79ad7bf87bc1b59` |
| 43 | `def` | [applicableForwardRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/applicableforwardrules--bac4495e3edf526909ff9ade.md) | 538 | `declaration-track:bac4495e3edf526909ff9ade2bad952556043231d920bab1d16f37743ba65c33` |
| 44 | `def` | [constForwardRuleMatches](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/constforwardrulematches--879d2d99517d08256e6e3898.md) | 542 | `declaration-track:879d2d99517d08256e6e3898f416a6574dbd85b282299244eab10dc1ce99338e` |
| 45 | `def` | [postprocessPatSubstMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/postprocesspatsubstmap--0200225a2926b15d4cc917e4.md) | 547 | `declaration-track:0200225a2926b15d4cc917e42f05e49a6e9412b503ee3d83e061b7e31f164c75` |
| 46 | `def` | [forwardRulePatternSubstsInExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/forwardrulepatternsubstsinexpr--d899fa644a2ed3240dc277bc.md) | 552 | `declaration-track:d899fa644a2ed3240dc277bc1aa8fbbde3d8ac24b075b214cbb280541bd75866` |
| 47 | `def` | [forwardRulePatternSubstsInLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/forwardrulepatternsubstsinlocaldecl--b0c7f08e2a102c08a589c00b.md) | 562 | `declaration-track:b0c7f08e2a102c08a589c00b0e76af1e63cd117baaa89e52f8584d5e12e1f33a` |
| 48 | `def` | [unindex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/unindex--d44f0bb88bd51bc1b81149c8.md) | 575 | `declaration-track:d44f0bb88bd51bc1b81149c84a17a6fb3c7e26053d69e501c6240b292f3d44b5` |
| 49 | `def` | [unindexPredicate?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/unindexpredicate--5192537788f5b942b99812e3.md) | 586 | `declaration-track:5192537788f5b942b99812e3e64495d59f459357a101056bddf30a52640aba28` |
| 50 | `def` | [mkLocalRuleSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/declarations/mklocalruleset--354f7ec7a95ab0666ba45073.md) | 592 | `declaration-track:354f7ec7a95ab0666ba45073db5c4860deb993a653ed4127d42cc06cb7e7d14d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
