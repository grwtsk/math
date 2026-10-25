# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SpecificTactics.Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "635f6f292c602b3b900169fa0492029389fd2bc2",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `635f6f292c602b3b900169fa0492029389fd2bc2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.Inaccessible` — import line 18; external provider; requires a separately pinned dependency.
- `Aesop.Util.Tactic` — import line 19; external provider; requires a separately pinned dependency.
- `Aesop.Util.Tactic.Unfold` — import line 20; external provider; requires a separately pinned dependency.
- `Aesop.Util.Unfold` — import line 21; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RCases` — import line 23; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Simp` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Split` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tactic.skip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/tactic-skip--24200b55c81a164c711b2dc3.md) | 38 | `declaration-track:24200b55c81a164c711b2dc34e6c9ff922152748655fd73b5fef415e160bb12e` |
| 2 | `def` | [applyStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/applystx--84b5d36bcba132f164ff1d30.md) | 43 | `declaration-track:84b5d36bcba132f164ff1d30c816133ee88f820c73e0ea3b64aadbe593c65a17` |
| 3 | `def` | [apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/apply--526bedeb228e1eee1536fa7a.md) | 47 | `declaration-track:526bedeb228e1eee1536fa7a309bbd0549e08e66203899c2c5d84ab63dfbe275` |
| 4 | `def` | [exactFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/exactfvar--f9cf0f8dd7e14c462c2ca8c7.md) | 53 | `declaration-track:f9cf0f8dd7e14c462c2ca8c7be5b0ce2cf91d7489c1f57b380ffe573d958ae66` |
| 5 | `def` | [replace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/replace--b694f449f2c2cf3f1f351686.md) | 59 | `declaration-track:b694f449f2c2cf3f1f351686be54cfd929fa79fbdf81e384fc7cd4e2953b51d1` |
| 6 | `def` | [assertHypothesis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/asserthypothesis--4378ff389a9e1d7fcb2e6ba5.md) | 67 | `declaration-track:4378ff389a9e1d7fcb2e6ba5e230da1cb9c99c1bb70c71edbc42037096baedbf` |
| 7 | `def` | [clear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/clear--be2ae9b095f0db7774648039.md) | 73 | `declaration-track:be2ae9b095f0db7774648039f69a139fe3024b1d50da90cb08f91f12b496e78c` |
| 8 | `def` | [cases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/cases--3dc76a65c68d1d418fb7cb8b.md) | 78 | `declaration-track:3dc76a65c68d1d418fb7cb8b8bdfcfcb4703fe96ac1861bf7bb605216c7be153` |
| 9 | `def` | [obtain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/obtain--a0f2552ef577032d06f4fe15.md) | 93 | `declaration-track:a0f2552ef577032d06f4fe156b1ae70de4ccfafb95bb29d5cae8e3d0f1250095` |
| 10 | `def` | [casesOrObtain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/casesorobtain--55f120f8e75061c857369fab.md) | 98 | `declaration-track:55f120f8e75061c857369fab3257aa9499ab5ff3a838347ba2f4aba16ab6cc19` |
| 11 | `def` | [renameInaccessibleFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/renameinaccessiblefvars--aa20491b9a20a7d53a6ebab2.md) | 105 | `declaration-track:aa20491b9a20a7d53a6ebab2fbaa314636746ac418d28018f71446207a88e743` |
| 12 | `def` | [unfold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/unfold--f669e3115e1289e69e4106c4.md) | 116 | `declaration-track:f669e3115e1289e69e4106c480fda19ead35271933c542bd778e57de2d2199c0` |
| 13 | `def` | [unfoldAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/unfoldat--0f7f7738f42727fcecacfcca.md) | 125 | `declaration-track:0f7f7738f42727fcecacfccad359325be657311336c74c0f44dccce7d96005c6` |
| 14 | `def` | [extN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/extn--6aa4568456256a0d1cc3952a.md) | 138 | `declaration-track:6aa4568456256a0d1cc3952a88f010522025b8f5659c9e4c99db73bb01b391e6` |
| 15 | `def` | [simpAllOrSimpAtStarStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/simpallorsimpatstarstx--c0445e0d143dced0b28d2534.md) | 155 | `declaration-track:c0445e0d143dced0b28d2534d7da4b775a0732a2bdd83a600f64c048c79a3ddb` |
| 16 | `def` | [simpAllOrSimpAtStarOnlyStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/simpallorsimpatstaronlystx--e62ede50129260ad42b7825a.md) | 166 | `declaration-track:e62ede50129260ad42b7825a06042400525423ad4725312e82ae5100e667f633` |
| 17 | `def` | [simpAllOrSimpAtStarOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/simpallorsimpatstaronly--027a0d19640d392b22a951b1.md) | 174 | `declaration-track:027a0d19640d392b22a951b1fb634f5b95f0b9c9978eeba2a1fcaf50547f2325` |
| 18 | `def` | [isGlobalSimpTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/isglobalsimptheorem--0a9d1c2fb1d3c82a8399703f.md) | 180 | `declaration-track:0a9d1c2fb1d3c82a8399703fa92f608bbfd62f2670c77e654eb631c30ce1b404` |
| 19 | `def` | [simpAllOrSimpAtStar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/simpallorsimpatstar--9e41b2f9f2fc5e76e324a332.md) | 188 | `declaration-track:9e41b2f9f2fc5e76e324a33249983a946c352b6e3debf731e0c7a123de8d6a19` |
| 20 | `def` | [intros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/intros--26f12b84a95a692668dca641.md) | 212 | `declaration-track:26f12b84a95a692668dca6417d8b27c8273a0946d4e0ef24ba6a6c4ae09e40f2` |
| 21 | `def` | [splitTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/splittarget--8e0665a72db53d04cba7fa20.md) | 220 | `declaration-track:8e0665a72db53d04cba7fa20cc4a4e9e33498de556aa6ab8c9e1c871ddcfecb8` |
| 22 | `def` | [splitAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/splitat--317c83ce69af716cfb57b5e9.md) | 223 | `declaration-track:317c83ce69af716cfb57b5e994f7e393440b14c1bc7ec8b390340082824c11f2` |
| 23 | `def` | [substFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/substfvars--cd33c2fc264b1db6663f8513.md) | 228 | `declaration-track:cd33c2fc264b1db6663f8513d7480afc7ad32924b57a1213b051bc68d4214786` |
| 24 | `def` | [substFVars'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/substfvars--3f77cf63ca220baeeec4ff96.md) | 234 | `declaration-track:3f77cf63ca220baeeec4ff960cccc158748ad7e34a5c6a933fa814eff5fec829` |
| 25 | `def` | [assertHypothesisS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/asserthypothesiss--974660e6b3a9247708447916.md) | 243 | `declaration-track:974660e6b3a9247708447916c00deee0744198ba71a2bcfa607be219d7133d5b` |
| 26 | `def` | [applyS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/applys--4ca20f54011fad743a2c0a3f.md) | 251 | `declaration-track:4ca20f54011fad743a2c0a3f8b4fd2ecc00c69e9ff7d57a025b75e4fb61011d3` |
| 27 | `def` | [replaceFVarS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/replacefvars--0a8ec40b6cb1b6bfb87252d0.md) | 261 | `declaration-track:0a8ec40b6cb1b6bfb87252d0b5656073f675176542b59a9e4b6d3018a7fc8d66` |
| 28 | `def` | [clearS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/clears--b043efcd10af235ea8ab0d98.md) | 268 | `declaration-track:b043efcd10af235ea8ab0d98e6e7875624b363e1f7b927d6e3e2b603402426e5` |
| 29 | `def` | [tryClearS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/tryclears--61b328e3c0d2251b8d45f14a.md) | 274 | `declaration-track:61b328e3c0d2251b8d45f14ac96f76fe6d8fadb1258c390f68e9d6408561ec2b` |
| 30 | `def` | [tryClearManyS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/tryclearmanys--03441da8949c5485416a4d03.md) | 280 | `declaration-track:03441da8949c5485416a4d03d1f8b40a56b372b54c3dcbe42b4cf88d0e71e477` |
| 31 | `def` | [tryCasesS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/trycasess--c2d8c5b8b4d790ac653a84d1.md) | 287 | `declaration-track:c2d8c5b8b4d790ac653a84d198e7df055b1333cb088808fe2e3b5c55636c39a5` |
| 32 | `def` | [renameInaccessibleFVarsS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/renameinaccessiblefvarss--9cf6be7403c4665737ef40bf.md) | 302 | `declaration-track:9cf6be7403c4665737ef40bf7059070aa65af59dac0bc0fb93489123c91272b9` |
| 33 | `def` | [unfoldManyTargetS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/unfoldmanytargets--3b10ce5fbd236a1c813ea6ec.md) | 310 | `declaration-track:3b10ce5fbd236a1c813ea6eccdc18547b239625df74a43513707de37b2c2bf9a` |
| 34 | `def` | [unfoldManyAtS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/unfoldmanyats--6c35b5633f597edfaccb54ee.md) | 326 | `declaration-track:6c35b5633f597edfaccb54ee2be16d6bafb6e028947afc639dd33faaf40b0740` |
| 35 | `def` | [unfoldManyStarS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/unfoldmanystars--1a95b847977094f32d527c61.md) | 342 | `declaration-track:1a95b847977094f32d527c61a330605fe256b22e4278c1ce9fcff260f598c756` |
| 36 | `def` | [introsS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/intross--f50d6a7d634a9a709938dc9c.md) | 359 | `declaration-track:f50d6a7d634a9a709938dc9ca61ed1ef442e6d725109f3c66387703d9b5c1728` |
| 37 | `def` | [introsUnfoldingS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/introsunfoldings--c3453ef7f356e6c164306e3d.md) | 367 | `declaration-track:c3453ef7f356e6c164306e3d1f98670644f707127137cb6e19515060cac7ef2e` |
| 38 | `def` | [straightLineExtS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/straightlineexts--a3d0be87e5a1be94fdad3fcf.md) | 377 | `declaration-track:a3d0be87e5a1be94fdad3fcfaa36004d2344e7584a7f49f48fb1cca911db87b5` |
| 39 | `def` | [tryExactFVarS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/tryexactfvars--dae35c5d754ca4b5c76c904a.md) | 383 | `declaration-track:dae35c5d754ca4b5c76c904a70c3dde7e6d2f317d70904c310e5cb6c8f8e174a` |
| 40 | `def` | [renameInaccessibleFVarsS'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/renameinaccessiblefvarss--6dc875709fc3d427373f2f1a.md) | 402 | `declaration-track:6dc875709fc3d427373f2f1a077016096e4826dc83ef4201e1ec23e69ab8916d` |
| 41 | `def` | [splitTargetS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/splittargets--63790793cd25e3a5a44518ee.md) | 406 | `declaration-track:63790793cd25e3a5a44518ee05e73ec6c17d292d0ad2bbae552c0b29c26bcc26` |
| 42 | `def` | [splitFirstHypothesisS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant8a80db1f89f465d4a59bb6f3f24ea7c7712b658128b5c93e25539fce0cf60f9a.lean/declarations/splitfirsthypothesiss--284211b7aa63a26bbdf75f75.md) | 415 | `declaration-track:284211b7aa63a26bbdf75f756c110b27321c490485ab555f215179703ff485cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
