# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SpecificTactics.Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ca53b0f315c2a00b100c90a0cac0c7a65d935d3",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ca53b0f315c2a00b100c90a0cac0c7a65d935d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.Meta.Inaccessible` — import line 13; external provider; requires a separately pinned dependency.
- `Aesop.Util.Tactic` — import line 14; external provider; requires a separately pinned dependency.
- `Aesop.Util.Tactic.Unfold` — import line 15; external provider; requires a separately pinned dependency.
- `Aesop.Util.Unfold` — import line 16; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RCases` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Simp` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Split` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Tactic.skip](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/tactic-skip--461ba11df3803ec3431877a9.md) | 30 | `declaration-track:461ba11df3803ec3431877a96ff4c29a0851a87f0a3fe67a7b0fb9dce6c39625` |
| 2 | `def` | [applyStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/applystx--3d09b61c2604fba8650e79b0.md) | 35 | `declaration-track:3d09b61c2604fba8650e79b0f9b2c55eca589cdce0e2595ec7d222f714ae4089` |
| 3 | `def` | [apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/apply--19a3703d24ef37c36470bcf9.md) | 39 | `declaration-track:19a3703d24ef37c36470bcf9887cb102cfb2f81fa217c7393339324b5ce28ba0` |
| 4 | `def` | [exactFVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/exactfvar--0713c8b502b0d295b5c858c2.md) | 45 | `declaration-track:0713c8b502b0d295b5c858c28287f2d8bef9398092e87cbf2c0e0532758e1686` |
| 5 | `def` | [replace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/replace--96aa7edb12c21033e8eb6a1b.md) | 51 | `declaration-track:96aa7edb12c21033e8eb6a1b215b289baf0ebd5beacc12fe62600cc5aa62e3f5` |
| 6 | `def` | [assertHypothesis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/asserthypothesis--9834939a7e37f43245f107e6.md) | 59 | `declaration-track:9834939a7e37f43245f107e657dfbda7ebd27358bac7a7fd726efbcbe0d0ad3a` |
| 7 | `def` | [clear](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/clear--85f9b7b75b8bceb1d97e90fe.md) | 65 | `declaration-track:85f9b7b75b8bceb1d97e90fe4e017c004e88f3640f00903991c7fb75e0b2d27e` |
| 8 | `def` | [cases](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/cases--e185841212b5ea0b70c0c9ed.md) | 70 | `declaration-track:e185841212b5ea0b70c0c9ed6683bfa3218c47ebe94b4706a16a30a10f9c0904` |
| 9 | `def` | [obtain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/obtain--6f2bfb4a8997a7168d76647b.md) | 85 | `declaration-track:6f2bfb4a8997a7168d76647bf783d672ffa6a05bb596f86b94fa6fea7e2831ee` |
| 10 | `def` | [casesOrObtain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/casesorobtain--13f8b7d26984ed6d86087f74.md) | 90 | `declaration-track:13f8b7d26984ed6d86087f74b115b137f94beb08e18cdf5c287d3c94cad9a553` |
| 11 | `def` | [renameInaccessibleFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/renameinaccessiblefvars--9a018d6661dbc2543e68951b.md) | 97 | `declaration-track:9a018d6661dbc2543e68951b43f5261cc89db08909ea96c0ea9aaeecd01c52e2` |
| 12 | `def` | [unfold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/unfold--3c1d2be5376a8ce91f55de44.md) | 108 | `declaration-track:3c1d2be5376a8ce91f55de44098c4f2a8228a89b10b6dcd009d59a135193866f` |
| 13 | `def` | [unfoldAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/unfoldat--695731f0113407c4861e5f5a.md) | 117 | `declaration-track:695731f0113407c4861e5f5acdbbb2c230feebeed2e98eedc72181535e047ecc` |
| 14 | `def` | [extN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/extn--a459049bcedd3b4c62ddf1ac.md) | 130 | `declaration-track:a459049bcedd3b4c62ddf1ac377d9e9a7d4bd9c62bc59d8e5dfcdb39ec60600a` |
| 15 | `def` | [simpAllOrSimpAtStarStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/simpallorsimpatstarstx--c833d5821f8ebd28871ad434.md) | 147 | `declaration-track:c833d5821f8ebd28871ad434d8a966635caaa421ca30f178f57cfc2c54faf954` |
| 16 | `def` | [simpAllOrSimpAtStarOnlyStx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/simpallorsimpatstaronlystx--db24c04015c794e2f4944443.md) | 158 | `declaration-track:db24c04015c794e2f49444431ea46fe27adfbd2894027dcafb7088f97f4527ff` |
| 17 | `def` | [simpAllOrSimpAtStarOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/simpallorsimpatstaronly--d5bd8f9174696f44d5e994b4.md) | 166 | `declaration-track:d5bd8f9174696f44d5e994b43cdf7560d5dd402969286db43d1bd953a6192601` |
| 18 | `def` | [isGlobalSimpTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/isglobalsimptheorem--c682c7bf954b9b3c8f788f25.md) | 172 | `declaration-track:c682c7bf954b9b3c8f788f25913eed659bb200225043c31ba66dc2ae0d811c1f` |
| 19 | `def` | [simpAllOrSimpAtStar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/simpallorsimpatstar--c4d1dcffeeed1cf1bba0c1fa.md) | 180 | `declaration-track:c4d1dcffeeed1cf1bba0c1fac975203df7e93d9a2513ba68db7aa1019157f45b` |
| 20 | `def` | [intros](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/intros--00b6de730df1444a69f0196f.md) | 204 | `declaration-track:00b6de730df1444a69f0196fd5b44f778825963d7d512e3a786a515a81d5cd60` |
| 21 | `def` | [splitTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/splittarget--a786b1906f731f687672b7d4.md) | 212 | `declaration-track:a786b1906f731f687672b7d4377c42fdb938320b2679529c2087470ed8718705` |
| 22 | `def` | [splitAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/splitat--a1628071a55f135b79d24bea.md) | 215 | `declaration-track:a1628071a55f135b79d24bea0921edbe46bfff2ffac1320ce93b7f90bdbee859` |
| 23 | `def` | [substFVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/substfvars--134c5b9e882336281997df09.md) | 220 | `declaration-track:134c5b9e882336281997df09b9c4e81da19588b565519b34f5eb50a6ccd440a9` |
| 24 | `def` | [substFVars'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/substfvars--f106cc7fa29c028fef470aa9.md) | 226 | `declaration-track:f106cc7fa29c028fef470aa90257bd4cfb0594299347718616b722d791a16063` |
| 25 | `def` | [assertHypothesisS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/asserthypothesiss--6261e2de95732eaa95fd0528.md) | 235 | `declaration-track:6261e2de95732eaa95fd05286aa155b01c1a143bde4a460185619dc30e903ce4` |
| 26 | `def` | [applyS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/applys--7bec4bfff3a8720237095b1f.md) | 243 | `declaration-track:7bec4bfff3a8720237095b1f8c68aa6d51a109a4fde04809896f65c15f472e9c` |
| 27 | `def` | [replaceFVarS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/replacefvars--8c4c145d561fa09691fa3183.md) | 253 | `declaration-track:8c4c145d561fa09691fa3183e302e42f2dccccf888d76186a1cb0bd47353c322` |
| 28 | `def` | [clearS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/clears--bd61f61354844c366d50279c.md) | 260 | `declaration-track:bd61f61354844c366d50279cd2876ad5aaa1a4e8660b804f51a5f8213f04e676` |
| 29 | `def` | [tryClearS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/tryclears--85cb3f820d6e2f265f5dafc4.md) | 266 | `declaration-track:85cb3f820d6e2f265f5dafc4ce3dc2cc28713b0922372478e32c38732993e147` |
| 30 | `def` | [tryClearManyS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/tryclearmanys--64b1b0c0c4bf91ed2c855b6f.md) | 272 | `declaration-track:64b1b0c0c4bf91ed2c855b6f6157d245d323045a8ffbb20beaac0a9f5aaf1ba9` |
| 31 | `def` | [tryCasesS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/trycasess--65cfaafcfacf7c9cf0f61dee.md) | 279 | `declaration-track:65cfaafcfacf7c9cf0f61deeb9c9374b64951d3b2ca6aa7a35b48f184aa1b159` |
| 32 | `def` | [renameInaccessibleFVarsS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/renameinaccessiblefvarss--a45d9565b71a6ae14f1d2356.md) | 294 | `declaration-track:a45d9565b71a6ae14f1d2356890ad58ec8304bb8eea8f0c5366afeb3fa016a9d` |
| 33 | `def` | [unfoldManyTargetS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/unfoldmanytargets--401b18665b1b7d786cccfc15.md) | 302 | `declaration-track:401b18665b1b7d786cccfc1552a9addbff295ce9cde46529d62101b92b378dac` |
| 34 | `def` | [unfoldManyAtS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/unfoldmanyats--a6e0db11e1d102c1d5994ca5.md) | 318 | `declaration-track:a6e0db11e1d102c1d5994ca5333687d92e3eab6e245fb82e61c34c53d9054cc3` |
| 35 | `def` | [unfoldManyStarS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/unfoldmanystars--2e7741c38c4ca743ce6af7d6.md) | 334 | `declaration-track:2e7741c38c4ca743ce6af7d66c2b969cb45d2f3bf89def13375a62ea59c3873e` |
| 36 | `def` | [introsS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/intross--17274d47d43776dd70c9d6b9.md) | 351 | `declaration-track:17274d47d43776dd70c9d6b9476562d2603e5b1ea252e3cad71ba3d35fce1182` |
| 37 | `def` | [introsUnfoldingS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/introsunfoldings--1e60dfda8e4066a53df7d05d.md) | 359 | `declaration-track:1e60dfda8e4066a53df7d05d28776ca59216864c24c78ca535407b6588d7fae1` |
| 38 | `def` | [straightLineExtS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/straightlineexts--64de0875ce43cd2fa5a7bf37.md) | 369 | `declaration-track:64de0875ce43cd2fa5a7bf37d894b17bdd777f91e50021b34584f8a28ce3ef88` |
| 39 | `def` | [tryExactFVarS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/tryexactfvars--b5c46709e50f481e3294c0b1.md) | 375 | `declaration-track:b5c46709e50f481e3294c0b118fe7ee52bf7b0082203e1daea50232fe65e0265` |
| 40 | `def` | [renameInaccessibleFVarsS'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/renameinaccessiblefvarss--9ef8ed97d908c2280ad8e2ed.md) | 394 | `declaration-track:9ef8ed97d908c2280ad8e2ed9923d2a23e1e4bb0868f7142f1e3123dd37d2019` |
| 41 | `def` | [splitTargetS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/splittargets--d4fbc5bc2b7ddbe2d4417cd6.md) | 398 | `declaration-track:d4fbc5bc2b7ddbe2d4417cd694681e80ee583c7a7222401439a8a7d8bc8ad7b3` |
| 42 | `def` | [splitFirstHypothesisS?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpecificTactics/Variant26118ff575de646a61e88195c1b59c0e1fde2fab68052a25b9a68f79e5e5133e.lean/declarations/splitfirsthypothesiss--44ca7210602a9ccbe9d05381.md) | 407 | `declaration-track:44ca7210602a9ccbe9d05381eaac2c3bb143f08d0875c8a739692fa539b1ad5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
