# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simp.Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379beba19a25407004e5570bc892cf0e8327798b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379beba19a25407004e5570bc892cf0e8327798b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Check` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Elab.ConfigEval` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Meta.Simp.ConfigWithOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/meta-simp-configwithoptions--86c96017894ae80a673237d3.md) | 31 | `declaration-track:86c96017894ae80a673237d391d6a074ae61102d975887e601a7eb7aada727b2` |
| 2 | `structure` | [Meta.DSimp.ConfigWithOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/meta-dsimp-configwithoptions--3fa2904309e98094b8a486ea.md) | 39 | `declaration-track:3fa2904309e98094b8a486ea6c8b2c61d533e6be22c79de69bc6d01b5624ed2b` |
| 3 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/macro--14bddf1ad3ed3ffa8cb1ecfb.md) | 75 | `declaration-track:14bddf1ad3ed3ffa8cb1ecfb38f8e461d475e9f5110b943c87e3e1d45a8b9cbb` |
| 4 | `def` | [$fn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/fn--5cef7724411a52cdd4455504.md) | 80 | `declaration-track:5cef7724411a52cdd445550480aaf10c514372bff7519b621890925db5da0f27` |
| 5 | `inductive` | [SimpKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/simpkind--89e2b36c290adebe8975d351.md) | 134 | `declaration-track:89e2b36c290adebe8975d351df75eb79e390ae5169035ee457eae6bb78b5ca49` |
| 6 | `def` | [tacticToDischarge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/tactictodischarge--133d9cc5c0cef3ecf647a7cb.md) | 147 | `declaration-track:133d9cc5c0cef3ecf647a7cb129ac6d1e06de4f513c1fc6de48cf9d4b1ac391a` |
| 7 | `inductive` | [Simp.DischargeWrapper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/simp-dischargewrapper--15ef22e6839b41e611c95e11.md) | 174 | `declaration-track:15ef22e6839b41e611c95e1100cd8460e9d3c96670c8bedba38f2e98e11e648d` |
| 8 | `def` | [Simp.DischargeWrapper.with](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/simp-dischargewrapper-with--c01ef20e74efa62948955c9c.md) | 178 | `declaration-track:c01ef20e74efa62948955c9c49c2c0c350448c5f36d8d2e3a70d7bceef507391` |
| 9 | `def` | [mkDischargeWrapper](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/mkdischargewrapper--50c5b2ed23df23c582dab36d.md) | 189 | `declaration-track:50c5b2ed23df23c582dab36dd344759bc02a8eac7c0a8f1bc3ee8839bbc437b9` |
| 10 | `def` | [elabSimpConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/elabsimpconfig--d4793994c8511e411ba829a5.md) | 199 | `declaration-track:d4793994c8511e411ba829a50750cd3f816de5b3892638293e63a844ace550fa` |
| 11 | `inductive` | [ResolveSimpIdResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/resolvesimpidresult--bf395fb8e85fef0647fe5f15.md) | 205 | `declaration-track:bf395fb8e85fef0647fe5f15e5ded861323634ff6b39243ebf5e0bf3a70f251d` |
| 12 | `def` | [resolveSimpIdTheorem?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/resolvesimpidtheorem--736cd66e303ba488074ce232.md) | 218 | `declaration-track:736cd66e303ba488074ce232f7874ee0eafbf9cd66172fdc6ed3cd8b33cb7c66` |
| 13 | `inductive` | [ElabSimpArgResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/elabsimpargresult--beef91ea18949987ec0325e0.md) | 257 | `declaration-track:beef91ea18949987ec0325e00be35bf3c69d7fd7fb25beb93bda7c3672f3acca` |
| 14 | `def` | [ElabSimpArgResult.simpTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/elabsimpargresult-simptheorems--9830998407a44ca468a98d6c.md) | 267 | `declaration-track:9830998407a44ca468a98d6cdac1e833d1ddb60f2575569b34a10edd2eca9cc6` |
| 15 | `def` | [elabDeclToUnfoldOrTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/elabdecltounfoldortheorem--51889bd1735916cd7868d096.md) | 276 | `declaration-track:51889bd1735916cd7868d096a89827b3f2de1e3fa924d56e47cc81765be80b1b` |
| 16 | `def` | [elabSimpTheorem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/elabsimptheorem--4dcc80bc547bd15fddb04ed0.md) | 310 | `declaration-track:4dcc80bc547bd15fddb04ed0f54bf4409f731155aa73a868fd20b4aead258b50` |
| 17 | `def` | [elabSimpArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/elabsimparg--d12ca166864b0ae212567c54.md) | 330 | `declaration-track:d12ca166864b0ae212567c5423180912bf9058210179ce2288d3766b79f39373` |
| 18 | `structure` | [ElabSimpArgsResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/elabsimpargsresult--989508be241583981618c718.md) | 393 | `declaration-track:989508be241583981618c7187abf3a33b3a9281b5ce8229694ee131f56be15b3` |
| 19 | `def` | [applyStarArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/applystararg--ae807bbd2d6d5256744f64ef.md) | 400 | `declaration-track:ae807bbd2d6d5256744f64ef28e52d9bb608743f9a086afcc4e5313bead903e4` |
| 20 | `def` | [elabSimpArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/elabsimpargs--3bca9bdf7bb2fafc5ad57dfb.md) | 419 | `declaration-track:3bca9bdf7bb2fafc5ad57dfb519d590793ae0f1dd766f26c1b142c192464d0ac` |
| 21 | `def` | [simpParamsPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/simpparamspos--03926596e522efaec97d5ccf.md) | 502 | `declaration-track:03926596e522efaec97d5ccf2f6042a1e7566eca26926755863ea25448e81c7a` |
| 22 | `def` | [simpOnlyPos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/simponlypos--c92a9e7f84f8a215ecfc71a2.md) | 505 | `declaration-track:c92a9e7f84f8a215ecfc71a2c213c6107ee9283ef2b884b6f061060891c0fb78` |
| 23 | `def` | [isSimpOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/issimponly--ffae81cb5fd9b67fab9b495d.md) | 507 | `declaration-track:ffae81cb5fd9b67fab9b495df39461e6693a8add9abb93c5e4f763e96d31b87f` |
| 24 | `def` | [getSimpParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/getsimpparams--5daea5678b372af9488be5ec.md) | 510 | `declaration-track:5daea5678b372af9488be5ec608595db41ab4edb6f1a4bbdb4813babd7aafc9e` |
| 25 | `def` | [setSimpParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/setsimpparams--ae6ba849744bea0d5c029a0a.md) | 513 | `declaration-track:ae6ba849744bea0d5c029a0a366b9ff1afbe834273570ee40915c59384259485` |
| 26 | `def` | [simpOnlyBuiltins](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/simponlybuiltins--d67884734101d7fb8d097daf.md) | 520 | `declaration-track:d67884734101d7fb8d097daf490f314a85d257f8ca402d99aa1b4dde24e78c49` |
| 27 | `structure` | [MkSimpContextResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/mksimpcontextresult--25170c96b22711839d84511f.md) | 522 | `declaration-track:25170c96b22711839d84511f98d5b07ea050f63a868514d3e39b5818eae925de` |
| 28 | `def` | [elabSimpLocals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/elabsimplocals--b531262fa8f6e71fa6f385d3.md) | 530 | `declaration-track:b531262fa8f6e71fa6f385d3e3aed67e0873c78af5104b55e7fdbe7155222d63` |
| 29 | `def` | [mkSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/mksimpcontext--55cd8beb451bd748fd1e32d0.md) | 562 | `declaration-track:55cd8beb451bd748fd1e32d0e599607ddcc147d6d9eec8b0f7fbee41f83a3edf` |
| 30 | `def` | [withLoopChecking](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/withloopchecking--1ad32dd063570adddf965057.md) | 595 | `declaration-track:1ad32dd063570adddf9650570b4b67a382dea65034e90467b37680780f79de21` |
| 31 | `def` | [mkSimpOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/mksimponly--eecb3ebeada0bf201c91d01f.md) | 626 | `declaration-track:eecb3ebeada0bf201c91d01fd2c262045e903440d44fd97533bb2cc01b784757` |
| 32 | `def` | [traceSimpCall](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/tracesimpcall--50e830f1fce559281b5509d9.md) | 679 | `declaration-track:50e830f1fce559281b5509d9e53a7008f0b3bfb72f280d122c7162be07394b95` |
| 33 | `structure` | [UnusedSimpArgsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/unusedsimpargsinfo--854fdeb3e80e921a9aa99f04.md) | 698 | `declaration-track:854fdeb3e80e921a9aa99f043fd030b644225c7ff537e4b9d4e375985bba8b16` |
| 34 | `def` | [pushUnusedSimpArgsInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/pushunusedsimpargsinfo--5e6304dbda8948415bba11a6.md) | 702 | `declaration-track:5e6304dbda8948415bba11a6b585013f1955671845cf4875ace86f77b186899a` |
| 35 | `def` | [warnUnusedSimpArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/warnunusedsimpargs--761395f723d0eb4d280aadbe.md) | 713 | `declaration-track:761395f723d0eb4d280aadbedee6fccaf0e990fbb6ace37ac97c4ac64d588df3` |
| 36 | `def` | [simpLocation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/simplocation--f819894355eafa9f12c4689f.md) | 769 | `declaration-track:f819894355eafa9f12c4689f7c6bc454b668adfe01e1e2c5936bba962c214269` |
| 37 | `def` | [withSimpDiagnostics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/withsimpdiagnostics--afad56edd9e168ea5ea24b94.md) | 788 | `declaration-track:afad56edd9e168ea5ea24b94f7f9792ee23b78f72990fbafa8859772fa918c0a` |
| 38 | `def` | [evalSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/evalsimp--0b7660a63ba2b11342eccdfd.md) | 796 | `declaration-track:0b7660a63ba2b11342eccdfd06f01390d6e43bed1a400513ee1af81ab2aa3cc0` |
| 39 | `def` | [evalSimpAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/evalsimpall--de5cd1f3e8f4334dc777d170.md) | 810 | `declaration-track:de5cd1f3e8f4334dc777d1709e14c17682295d6da06477b7973a39728e3f24f8` |
| 40 | `def` | [dsimpLocation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/dsimplocation--a7bb6885e79e91d8f38e7c6e.md) | 828 | `declaration-track:a7bb6885e79e91d8f38e7c6e865f93cb79322cfb365c74fc7fa81c7838eef06f` |
| 41 | `def` | [evalDSimp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/evaldsimp--8959594c7d5588c2e63da7af.md) | 849 | `declaration-track:8959594c7d5588c2e63da7af655b20eeb64e5cd23828898b842448b021a146f1` |
| 42 | `def` | [getSimpArgs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/getsimpargs--126b1bb3440f8b3bcc2cdcc5.md) | 863 | `declaration-track:126b1bb3440f8b3bcc2cdcc566ae15c4cb637fb39bd1d7fabe55e424da55270c` |
| 43 | `def` | [getDSimpArgs?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Varianted10a2b638b1a079a946213dbd0a2f432ca538d739b6639095d9cf8c6a2e58ac.lean/declarations/getdsimpargs--ed12355693fe7a03b5c4e527.md) | 868 | `declaration-track:ed12355693fe7a03b5c4e52712e166e998441e7f017d343e900272867133ee4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
