# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rewrite.Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7823621f1509570174669a50ff380557ce014052",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7823621f1509570174669a50ff380557ce014052`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.WHNF` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DischargeResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/dischargeresult--d131b3d475a26ebb8e4e5d6a.md) | 21 | `declaration-track:d131b3d475a26ebb8e4e5d6a43060d8d0d8dfdee59daeaea06adcac6f5246a23` |
| 2 | `def` | [discharge?'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/discharge--e70228c8720f2e61ad8380c0.md) | 32 | `declaration-track:e70228c8720f2e61ad8380c0c345a685633938c7cdc63d39ba24d83c6ae5a0cc` |
| 3 | `def` | [synthesizeArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/synthesizeargs--5808d07aa08c163a5dc9e06f.md) | 58 | `declaration-track:5808d07aa08c163a5dc9e06f863797643c7511d8f6daf66ce994891a9b1c2d93` |
| 4 | `def` | [useImplicitDefEqProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/useimplicitdefeqproof--b9902ef366defda9700a936a.md) | 109 | `declaration-track:b9902ef366defda9700a936a88956a5ead8650ec854afbb40b98a7fe5a7018be` |
| 5 | `def` | [tryTheoremCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/trytheoremcore--0a2f0e70d8c44a9fcc26b3ee.md) | 115 | `declaration-track:0a2f0e70d8c44a9fcc26b3ee2400cb31f87e4da15f98752bb7c15ea678b83bcd` |
| 6 | `def` | [tryTheoremWithExtraArgs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/trytheoremwithextraargs--0099d96b0e48ceb40a3eb647.md) | 178 | `declaration-track:0099d96b0e48ceb40a3eb64735e9feffde4bb4491456ca9f3488cb3b407f7f7e` |
| 7 | `def` | [tryTheorem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/trytheorem--72beea3aa2264bc221135ca4.md) | 187 | `declaration-track:72beea3aa2264bc221135ca4b3069d87e353434379c220567cdbf70215e108b7` |
| 8 | `def` | [rewrite?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/rewrite--d5bee537d8b78f7c7e312935.md) | 207 | `declaration-track:d5bee537d8b78f7c7e3129350c885ed304989ca62f03f829a0f233eda44aad2a` |
| 9 | `def` | [simpUsingDecide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/simpusingdecide--22d62255cbd750bedbbd2d0a.md) | 286 | `declaration-track:22d62255cbd750bedbbd2d0ae8e8c88e8dfc9c84b7d0a2d88839f8f36c167f38` |
| 10 | `def` | [simpArith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/simparith--f6889e4fcfba68ec289503f2.md) | 303 | `declaration-track:f6889e4fcfba68ec289503f28650057fd18713858748a2b265269312c5ec8d67` |
| 11 | `def` | [simpMatchDiscrs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/simpmatchdiscrs--f857cb0dbed94350295fc873.md) | 336 | `declaration-track:f857cb0dbed94350295fc873533ded3de902a55cc4bc2e1a6819a0bdb0fe8a89` |
| 12 | `def` | [simpMatchCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/simpmatchcore--64bdc6baa81a0fd311ab1864.md) | 368 | `declaration-track:64bdc6baa81a0fd311ab18648bc29c9137942ac71d0e184ba230d37b0d0c4db3` |
| 13 | `def` | [simpMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/simpmatch--7e828296443df73d3be9b541.md) | 376 | `declaration-track:7e828296443df73d3be9b541e869eebc4ab274e195c585b220d40c994fd6192e` |
| 14 | `def` | [rewritePre](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/rewritepre--626219afc816ce9c1325d92c.md) | 389 | `declaration-track:626219afc816ce9c1325d92c69254180dd3075a0ddea8eccb28ed2d3bc08af56` |
| 15 | `def` | [rewritePost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/rewritepost--20c69d596a9cc7dcd815cf8e.md) | 395 | `declaration-track:20c69d596a9cc7dcd815cf8ecefbdecf4c98423487ccbd68ad9edcdaab8318de` |
| 16 | `def` | [drewritePre](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/drewritepre--9684bb5f29f3002e583bb32c.md) | 401 | `declaration-track:9684bb5f29f3002e583bb32c195fc83f50462220db8d0a8a75d6678f1ef58d98` |
| 17 | `def` | [drewritePost](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/drewritepost--c3718925109f6e9785d603be.md) | 407 | `declaration-track:c3718925109f6e9785d603be190d232d649e4835e6380cb91ea6c1ef9f2c0211` |
| 18 | `def` | [dpreDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/dpredefault--a9f670050c0eaeb9c45bf29c.md) | 413 | `declaration-track:a9f670050c0eaeb9c45bf29cb2072aea78dd67517b954de5abc681aa95e9a660` |
| 19 | `def` | [dpostDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/dpostdefault--bee2176e0906297b0ba6e536.md) | 417 | `declaration-track:bee2176e0906297b0ba6e536ba19a9f927562074efa541cc0e6c7a00cccbf082` |
| 20 | `def` | [dischargeGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/dischargeground--bd1618aa9c0e2d9805aca037.md) | 424 | `declaration-track:bd1618aa9c0e2d9805aca037a0381fe4cd1d7f0ae2f2c3022babfb9ad3aa2235` |
| 21 | `def` | [sevalGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/sevalground--9b58533a1616b7e14a3ac815.md) | 437 | `declaration-track:9b58533a1616b7e14a3ac815631454f8e12f85eedadfce08054c94c48efe62ea` |
| 22 | `def` | [preSEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/preseval--fcaff95158ab077aeb36f157.md) | 468 | `declaration-track:fcaff95158ab077aeb36f157454ffdcaf5870f2b4954ce2a562da93766621810` |
| 23 | `def` | [postSEval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/postseval--efbfd8caf79289ef7582c9a3.md) | 473 | `declaration-track:efbfd8caf79289ef7582c9a321c1d4781b9aa19d0e6c8d567a27df1f7c5b1b20` |
| 24 | `def` | [mkSEvalMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/mksevalmethods--d8e0571e41b2e34f71dd181c.md) | 478 | `declaration-track:d8e0571e41b2e34f71dd181c1c1f054ae183cf4a383c33465f019736df367733` |
| 25 | `def` | [mkSEvalContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/mksevalcontext--6d805b4e51ea21a118758e34.md) | 489 | `declaration-track:6d805b4e51ea21a118758e34bb5b57e5d12dde5cced0f74deb22dcb8e44e8a85` |
| 26 | `def` | [seval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/seval--6afe1694af17fbaf6db4ee1e.md) | 501 | `declaration-track:6afe1694af17fbaf6db4ee1eca7457dc11dc4c7e0c301f1e7d48e539be6569df` |
| 27 | `def` | [simpGround](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/simpground--1cb5c55647034504b420b89a.md) | 517 | `declaration-track:1cb5c55647034504b420b89aab47c38031a045da52959207b30c094b89eb6102` |
| 28 | `def` | [preDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/predefault--cc69f9eda08558bd697eec86.md) | 536 | `declaration-track:cc69f9eda08558bd697eec861c06a99eff72cff4bee1fcc1eceaa421dc8bf826` |
| 29 | `def` | [postDefault](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/postdefault--4fed944a01e723aec25f988f.md) | 542 | `declaration-track:4fed944a01e723aec25f988fb7462e0bd6a5cea1b2e60ac9bc06901fb13282d8` |
| 30 | `def` | [isEqnThmHypothesis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/iseqnthmhypothesis--4861f8c7c54642915b3d846e.md) | 568 | `declaration-track:4861f8c7c54642915b3d846eb34a757c5f93e6d6baacc49717343cfb0b244210` |
| 31 | `def` | [dischargeUsingAssumption?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/dischargeusingassumption--bebdf353065dabff2cf3a004.md) | 576 | `declaration-track:bebdf353065dabff2cf3a0044a4357718a888e9ef30de6b2dacd09d143a46bce` |
| 32 | `def` | [dischargeEqnThmHypothesis?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/dischargeeqnthmhypothesis--6e7711c6b68e201e26ecf8df.md) | 595 | `declaration-track:6e7711c6b68e201e26ecf8df83b144b009f58a99270287b4f71f23e4a53b32c6` |
| 33 | `def` | [dischargeRfl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/dischargerfl--896906825c99744beaa8a1cc.md) | 624 | `declaration-track:896906825c99744beaa8a1cc82b94f7852b9e2a84ccfc024ca01fc4baaa66d46` |
| 34 | `def` | [dischargeDefault?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/dischargedefault--323b78453a027e8c20b599ed.md) | 637 | `declaration-track:323b78453a027e8c20b599edd9269c2b3d3abbc008d4022c1e819ec96f48c380` |
| 35 | `abbrev` | [Discharge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/discharge--ac998600de571e6c962a8ec6.md) | 650 | `declaration-track:ac998600de571e6c962a8ec6b280ab4eb3a5c75a7a7a8fb8016fd73666006d38` |
| 36 | `def` | [mkMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/mkmethods--d9f75a2536861c61c5e8b035.md) | 652 | `declaration-track:d9f75a2536861c61c5e8b035aeb313856853202ea9316c7119913327c6518351` |
| 37 | `def` | [mkDefaultMethodsCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/mkdefaultmethodscore--4a7bc3763dbfaa834d2a425d.md) | 661 | `declaration-track:4a7bc3763dbfaa834d2a425daa537f4925a3744e116a89882fd1fa8877488962` |
| 38 | `def` | [mkDefaultMethods](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rewrite/Variant232c1bf17adc086ce3812361d98886740c81894b117525dd270fa68c5bee5a4a.lean/declarations/mkdefaultmethods--1a83bc8a098ed313ae17cfd5.md) | 664 | `declaration-track:1a83bc8a098ed313ae17cfd5367839e847af707e254d69e465e93ecfc83352f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
