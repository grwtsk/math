# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Search.Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c050938a5134c7c12942150d1c4136f35332e88",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c050938a5134c7c12942150d1c4136f35332e88`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Arith.Int.Simp` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.DvdCnstr` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.ReorderVars` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Proof` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Util` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CooperSplit.assert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/coopersplit-assert--11102f9e11f4aa9bd23c6012.md) | 26 | `declaration-track:11102f9e11f4aa9bd23c6012cafeacec38d6e814e0794f8016850507c471dd50` |
| 2 | `def` | [checkIsNextVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/checkisnextvar--adbb0aa1c899282364dbf7c0.md) | 62 | `declaration-track:adbb0aa1c899282364dbf7c08b35d657dc80f635f3a4526e5495d78e5c5bdb9f` |
| 3 | `def` | [traceAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/traceassignment--a7a55800f0149ddfd2a57b2d.md) | 66 | `declaration-track:a7a55800f0149ddfd2a57b2d645e6b540d7008302c8458aa5095488651419f88` |
| 4 | `def` | [setAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/setassignment--bd49d2cedcaa125f5d091d6f.md) | 69 | `declaration-track:bd49d2cedcaa125f5d091d6fca49d335606c286169540eca5ebebf3cbc57506a` |
| 5 | `def` | [skipAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/skipassignment--d7122a5a6cdb2eeb8195b5fe.md) | 74 | `declaration-track:d7122a5a6cdb2eeb8195b5fe456a825f3debc39d413cf03ebc563921ec790490` |
| 6 | `def` | [assignElimVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/assignelimvars--512f3806e7c18a0a36e1e403.md) | 79 | `declaration-track:512f3806e7c18a0a36e1e4039dc5a2890439a717cd70bad8feb4f7b7445d40e2` |
| 7 | `def` | [eqCoeffs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/eqcoeffs--999f24eb4e6ddc7b92cfde45.md) | 100 | `declaration-track:999f24eb4e6ddc7b92cfde458d594cd85ab803cf2d1e1e55ce9b3a36bee398a0` |
| 8 | `def` | [tightUsingDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/tightusingdvd--ec9b6d49dd6df3e0a5c26142.md) | 107 | `declaration-track:ec9b6d49dd6df3e0a5c26142111806f2184efef7c4a1a43afaff87c35d72eda7` |
| 9 | `def` | [getBestLower?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/getbestlower--70acea7f20987f60a5eb0302.md) | 131 | `declaration-track:70acea7f20987f60a5eb03022a4dafeda50fb0453209f0bf3ff084375fcd6dcb` |
| 10 | `def` | [getBestUpper?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/getbestupper--a1b3afd2503ae9df10774e83.md) | 151 | `declaration-track:a1b3afd2503ae9df10774e83c2efcf10cbeb88b2189e8e8d3b96f0df6aa25874` |
| 11 | `def` | [getDiseqValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/getdiseqvalues--04b344c5cf95630f5e64176c.md) | 167 | `declaration-track:04b344c5cf95630f5e64176c5919ee61f315fa798eb6a14ed785866c6ba9da12` |
| 12 | `structure` | [DvdSolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/dvdsolution--2bd38a0a03259103f0f126aa.md) | 187 | `declaration-track:2bd38a0a03259103f0f126aa990935521e053e10a7f32add881e684de57ca3b7` |
| 13 | `def` | [DvdCnstr.getSolutions?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/dvdcnstr-getsolutions--6682386193061d719c575baa.md) | 191 | `declaration-track:6682386193061d719c575baad44552124fe0f7d1485f8cf031d42b0aa1a10220` |
| 14 | `def` | [resolveDvdConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resolvedvdconflict--67ade53179717f14ce42e05c.md) | 217 | `declaration-track:67ade53179717f14ce42e05c70377b36da97bcd24f32538400ebe3c4bdfea8f3` |
| 15 | `def` | [DvdSolution.ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/dvdsolution-ge--8df4782384db0be36a8e978a.md) | 232 | `declaration-track:8df4782384db0be36a8e978a13e842f5876c24c5c939a96b4a53b93a197bb34a` |
| 16 | `def` | [DvdSolution.le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/dvdsolution-le--9648d7f1d2c034b65fa0e476.md) | 244 | `declaration-track:9648d7f1d2c034b65fa0e47678a0e5a09bbeb198e5110ca4a7891e54123d0910` |
| 17 | `def` | [findDiseq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/finddiseq--d61f916ec3274ddbab1ba57b.md) | 247 | `declaration-track:d61f916ec3274ddbab1ba57ba55db971ee1e4c3e559886b379b68395bfaaef88` |
| 18 | `def` | [inDiseqValues](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/indiseqvalues--e610ab5fd692f35bc16cf2f4.md) | 251 | `declaration-track:e610ab5fd692f35bc16cf2f4acfe9ec4b76c6d7b954189187dd1de4818278555` |
| 19 | `def` | [findRatDiseq?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/findratdiseq--f578e6c4a1f4a6d9a676dd57.md) | 254 | `declaration-track:f578e6c4a1f4a6d9a676dd57723250848e0ac817e796b8a6e996f7363ae10636` |
| 20 | `def` | [DvdSolution.geAvoiding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/dvdsolution-geavoiding--9360c3285725b0e35cf0e688.md) | 257 | `declaration-track:9360c3285725b0e35cf0e6886c28b937593fac5fa57a7c8790d7dad0e9069f91` |
| 21 | `def` | [DvdSolution.leAvoiding](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/dvdsolution-leavoiding--eff256a6ba82fea9fbd28546.md) | 264 | `declaration-track:eff256a6ba82fea9fbd28546bfafe0c3f3340e6305f8e2d629ea66831ddde94b` |
| 22 | `inductive` | [FindIntValResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/findintvalresult--e798eadf4174b38b5adfea94.md) | 271 | `declaration-track:e798eadf4174b38b5adfea9447cba828db5670ca89ae99fe6ce37224ae2f96e2` |
| 23 | `def` | [findIntVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/findintval--bc925fe8c7e262b482e49b31.md) | 282 | `declaration-track:bc925fe8c7e262b482e49b318ccf59711bf3ca10ef3af7d1912aed1d0138f064` |
| 24 | `def` | [findRatVal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/findratval--999c5a984ef4f9c556f0bbd8.md) | 296 | `declaration-track:999c5a984ef4f9c556f0bbd80359ba2d3e26bf028ed0143902ea5b4a06ec2622` |
| 25 | `def` | [resolveRealLowerUpperConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resolvereallowerupperconflict--31fa068c320119068788323b.md) | 303 | `declaration-track:31fa068c320119068788323b4010b099212936bda6e73620d52dddf80ee70ae6` |
| 26 | `def` | [resolveCooperUnary](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resolvecooperunary--a7de135048dd89370719b98f.md) | 321 | `declaration-track:a7de135048dd89370719b98f2084ca670bccc7bd43682bcc8c061f9716575101` |
| 27 | `def` | [resolveCooperPred](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resolvecooperpred--ac9b1e6070719454d772c91d.md) | 333 | `declaration-track:ac9b1e6070719454d772c91d54ef90c999442f48789dced84d0033e958a15a4a` |
| 28 | `def` | [resolveCooper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resolvecooper--0bd9de73e26261f79074778a.md) | 341 | `declaration-track:0bd9de73e26261f79074778ac72aff1d221ee7ea751672c79620e3121bb1c6ee` |
| 29 | `def` | [resolveCooperDvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resolvecooperdvd--63b14325aeb02ae98b1244ac.md) | 345 | `declaration-track:63b14325aeb02ae98b1244ac902720857424b506214ccbbb3f0cdc78d449cd19` |
| 30 | `def` | [DiseqCnstr.split](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/diseqcnstr-split--71a14fa3f00fa31059cc56a9.md) | 349 | `declaration-track:71a14fa3f00fa31059cc56a99dc947187ede078317ed513a2650bfc738f14ded` |
| 31 | `def` | [resolveCooperDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resolvecooperdiseq--cfb91c59b62ed23bfa9edc7a.md) | 365 | `declaration-track:cfb91c59b62ed23bfa9edc7a4b4d64232283e1910a068e6be052af2e6038f7d3` |
| 32 | `def` | [resolveRatDiseq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resolveratdiseq--d2f5fe8a96ef8ccccbd8c1b4.md) | 384 | `declaration-track:d2f5fe8a96ef8ccccbd8c1b4dca97df6a03741f308c443db73f0d6ed4ed1a1a8` |
| 33 | `def` | [processVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/processvar--af74bc3e2ebb0ab9195674f1.md) | 393 | `declaration-track:af74bc3e2ebb0ab9195674f10aff5cc067942327221b8186a2a0268eea599955` |
| 34 | `def` | [hasAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/hasassignment--152cec86b243774c7b64bbf9.md) | 463 | `declaration-track:152cec86b243774c7b64bbf980ffb6c8d697b4b6d596725b14e95cd97816b9cd` |
| 35 | `def` | [findCase](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/findcase--5dde87b2b4d56d75f31b65f3.md) | 466 | `declaration-track:5dde87b2b4d56d75f31b65f3c2fbfa960cc94a4811fd68934f0a7d7200a4125c` |
| 36 | `def` | [resolveConflict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resolveconflict--5ec534914609d9432d13beb3.md) | 478 | `declaration-track:5ec534914609d9432d13beb30368a1bd5a83fddcc83fa380937ac1c27c0b2d61` |
| 37 | `def` | [searchAssignmentMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/searchassignmentmain--31a5f8d15037fa5928ea88e9.md) | 512 | `declaration-track:31a5f8d15037fa5928ea88e9274aa43484f9573c6f218444edacbc901e672dc9` |
| 38 | `def` | [resetDecisionStack](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/resetdecisionstack--1bc01d55c28e2741c6a040bd.md) | 534 | `declaration-track:1bc01d55c28e2741c6a040bd064d6d77517e4ec6fac4a7b1945fec9e9b20ec7b` |
| 39 | `def` | [searchQLiaAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/searchqliaassignment--58289fc66949e4883c136530.md) | 542 | `declaration-track:58289fc66949e4883c136530dd70c23ce9c4e8a7bbe2ef90eed4118986bf10a6` |
| 40 | `def` | [traceActiveCnstrs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/traceactivecnstrs--ebcf236b6b9cb82f124bc349.md) | 551 | `declaration-track:ebcf236b6b9cb82f124bc3497db546bcf7614bc0fa9ad3f1be2f20ff65a17866` |
| 41 | `def` | [searchLiaAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/searchliaassignment--1a2b37531bb3c6bf4a8e88c4.md) | 565 | `declaration-track:1a2b37531bb3c6bf4a8e88c444ef608f09cceec8eed03c48b44321d764e5f087` |
| 42 | `def` | [searchAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/searchassignment--1c33fd222841e31510b6b9ed.md) | 575 | `declaration-track:1c33fd222841e31510b6b9ed1a28e47818971a1e83fbfc339739501ef83b6382` |
| 43 | `def` | [check](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Varianta2ef553eab7fe93b06d9c39239c1b543c6849d0fe27a7cc77a235a044fd0603c.lean/declarations/check--61545b1cc01a76ba1324c641.md) | 598 | `declaration-track:61545b1cc01a76ba1324c641ccda731023e5e51813707be6dd602d2fbf62f5e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
