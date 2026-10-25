# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Norm.Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4c199528916edf72b76d44e1050733b11a0399e",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4c199528916edf72b76d44e1050733b11a0399e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.HashSet` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.Forward.State.ApplyGoalDiff` — import line 18; external provider; requires a separately pinned dependency.
- `Aesop.RuleTac` — import line 19; external provider; requires a separately pinned dependency.
- `Aesop.Search.Expansion.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Aesop.Search.Expansion.Simp` — import line 21; external provider; requires a separately pinned dependency.
- `Aesop.Search.RuleSelection` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/context--4c6c750904c3ff1f7813fc64.md) | 35 | `declaration-track:4c6c750904c3ff1f7813fc64e718e85353d5dea0ba44931f09a589985151479d` |
| 2 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/state--c9337f2d4024208eca1f8d59.md) | 40 | `declaration-track:c9337f2d4024208eca1f8d595518db7914dc34b14eba88503806069abecd171d` |
| 3 | `abbrev` | [NormM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normm--398fa1d872eaa72c8ca5299b.md) | 47 | `declaration-track:398fa1d872eaa72c8ca5299b515b106072467c2d75b3f236bf096f7cb93ecdd7` |
| 4 | `def` | [getForwardState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/getforwardstate--62842aa183fb5d93db6742ef.md) | 49 | `declaration-track:62842aa183fb5d93db6742ef716a4d9d8250f2b892d511d6af319589c06bb9a0` |
| 5 | `def` | [getResetForwardState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/getresetforwardstate--2c5ca04e438faf449d320559.md) | 52 | `declaration-track:2c5ca04e438faf449d32055944b8c1418b0b08fe680c837a7345cca6821e6717` |
| 6 | `def` | [modifyForwardState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/modifyforwardstate--019784ffb46d68df3659eccb.md) | 55 | `declaration-track:019784ffb46d68df3659eccb9a69a70b98e493311aab6214aaa12ad529c7bcc8` |
| 7 | `def` | [updateForwardState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/updateforwardstate--e3cbd7d3087621170a312ebb.md) | 64 | `declaration-track:e3cbd7d3087621170a312ebb4d6b178140b4e14975d9935799417f29a96de139` |
| 8 | `def` | [eraseForwardRuleMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/eraseforwardrulematch--796a427eb5073f2ba1d4810e.md) | 69 | `declaration-track:796a427eb5073f2ba1d4810eb1fcc3ef6ba884666777530c722292ef58a80d83` |
| 9 | `def` | [applyDiffToForwardState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/applydifftoforwardstate--0dd85e08168add01bb604299.md) | 72 | `declaration-track:0dd85e08168add01bb604299b8e8b77f7c5dde36aef592b71e1ed0272a043614` |
| 10 | `inductive` | [NormRuleResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normruleresult--21acdd88042604cc6acffd94.md) | 77 | `declaration-track:21acdd88042604cc6acffd94401ff2b5ca4b9a1513701c390c8b516f72a27b83` |
| 11 | `def` | [newGoal?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/newgoal--2dda72b1570ffa6d0846f102.md) | 83 | `declaration-track:2dda72b1570ffa6d0846f1020482dfdd227f3550cca3dc19bb135f92e89b8004` |
| 12 | `def` | [steps?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/steps--9aa9f59854da6bd0480c3047.md) | 87 | `declaration-track:9aa9f59854da6bd0480c304782181b426aab2f80065fe0bf587b6fedbf2b0f74` |
| 13 | `def` | [optNormRuleResultEmoji](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/optnormruleresultemoji--149e0059baca7613a1c7167d.md) | 92 | `declaration-track:149e0059baca7613a1c7167d4ebc1c07c33a19aebba4d653f5fedaae611dc60c` |
| 14 | `def` | [withNormTraceNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/withnormtracenode--61b998b2b1ab5f47fd545a16.md) | 98 | `declaration-track:61b998b2b1ab5f47fd545a1675ce8146e33683982c6c829fbf717f9b74e287b1` |
| 15 | `def` | [runNormRuleTac](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/runnormruletac--4bb4aef41eaca3a93b3a662e.md) | 113 | `declaration-track:4bb4aef41eaca3a93b3a662e526a69146b7a7e22bf7784227ba0b96c695132be` |
| 16 | `def` | [runNormRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/runnormrule--dfd5dc6c8f914a6a058c5891.md) | 146 | `declaration-track:dfd5dc6c8f914a6a058c5891d3c40ecad0fcfdb44150fdf6687aa06d8e7283c5` |
| 17 | `def` | [runFirstNormRule](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/runfirstnormrule--0ece1bed27e0474195136295.md) | 166 | `declaration-track:0ece1bed27e04741951362955edf28ffdd037b2ca95a26a86176d7d3300b5977` |
| 18 | `def` | [mkNormSimpScriptStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/mknormsimpscriptstep--a3d1e4a7151327b6e69f05c9.md) | 175 | `declaration-track:a3d1e4a7151327b6e69f05c9719c52a19501ddc5fa0e7b6e951ab66508cceeb1` |
| 19 | `def` | [normSimpCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normsimpcore--e068d7dba8c667a839606efd.md) | 198 | `declaration-track:e068d7dba8c667a839606efdb8ece749428603b7edb742cb8024d5875ff3b93e` |
| 20 | `def` | [checkSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/checksimp--7af8aa9826f13d190699e41b.md) | 257 | `declaration-track:7af8aa9826f13d190699e41bd1d59178c5dee380e3b871bd6746c2882bbf4cd9` |
| 21 | `def` | [normSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normsimp--fa657b51999ec724631cf558.md) | 279 | `declaration-track:fa657b51999ec724631cf558459bcae66dc3de65a524819b0590d2bd063901a4` |
| 22 | `def` | [normUnfoldCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normunfoldcore--15e8e1e96eefe968c4b5a2e1.md) | 289 | `declaration-track:15e8e1e96eefe968c4b5a2e1f656f85859d8f72b16db9e25ffdfd086c622577b` |
| 23 | `def` | [normUnfold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normunfold--db8f6cb67523ae2d4509fef2.md) | 300 | `declaration-track:db8f6cb67523ae2d4509fef2b8fdebdcec280d59a7868083dcf2ede521f482ff` |
| 24 | `inductive` | [NormSeqResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normseqresult--91d7aa5c7ab7f9d307b463f5.md) | 309 | `declaration-track:91d7aa5c7ab7f9d307b463f53bac89bfd4e8c42852febb565b68b17602d31c6c` |
| 25 | `def` | [NormRuleResult.toNormSeqResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normruleresult-tonormseqresult--5e8958eb81380b0aa1156419.md) | 315 | `declaration-track:5e8958eb81380b0aa1156419db37214a0a2dac8abeb59dea3f2ca6b02b7c4cf2` |
| 26 | `def` | [optNormRuleResultToNormSeqResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/optnormruleresulttonormseqresult--b84cac791131d3c91c9fe559.md) | 320 | `declaration-track:b84cac791131d3c91c9fe5593921615cd37f1efb28429308aaa3dd9a1f7f887d` |
| 27 | `abbrev` | [NormStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normstep--c8a595cb5416c136222321b6.md) | 325 | `declaration-track:c8a595cb5416c136222321b61aabb8a263ad69049406061d77629b38189ff914` |
| 28 | `def` | [runNormSteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/runnormsteps--66143503d76929720277cda9.md) | 329 | `declaration-track:66143503d76929720277cda9411a59fd425be11df7145576a6f84dbbf87c3991` |
| 29 | `def` | [runPreSimpRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/runpresimprules--a6a8144807f5c8c9de29a7c7.md) | 372 | `declaration-track:a6a8144807f5c8c9de29a7c717f5ff1727ae3c30f9bca6e4e27f2f0ebedf3254` |
| 30 | `def` | [runPostSimpRules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/runpostsimprules--298d0a744dae48aad2237efb.md) | 377 | `declaration-track:298d0a744dae48aad2237efb173d54e8c35a992edd84e4fde35fefc65aa5ebbb` |
| 31 | `def` | [unfold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/unfold--cbd5346cf27e79f5b792e706.md) | 382 | `declaration-track:cbd5346cf27e79f5b792e7062aa07107d925da983f5ff31cc8f6652ca1d81e77` |
| 32 | `def` | [simp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/simp--b52beda952fb0764dd4e5f9d.md) | 390 | `declaration-track:b52beda952fb0764dd4e5f9dd50bb1f83d5c3495cfb931fe36c5e3071e8c0858` |
| 33 | `def` | [normalizeGoalMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normalizegoalmvar--9c662fb9da9378eb966d2f7e.md) | 400 | `declaration-track:9c662fb9da9378eb966d2f7ed5186fa3f94174584cd22893c9047f325e3104ac` |
| 34 | `def` | [normalizeGoalIfNecessary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variant604cefbbdacc4e21d9ed222fe37c834f197656a4e38775e4a787615b7650fc34.lean/declarations/normalizegoalifnecessary--7da008676c11440d488895d7.md) | 413 | `declaration-track:7da008676c11440d488895d7853d6f857fb6c534fc96dbefebdbb2df4701811f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
