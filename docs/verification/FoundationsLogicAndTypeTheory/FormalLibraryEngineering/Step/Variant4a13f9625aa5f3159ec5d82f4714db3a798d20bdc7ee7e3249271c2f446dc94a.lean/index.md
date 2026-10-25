# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Step.Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f23c54fcbf932cf6fdb1985b4556186fa2293073",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f23c54fcbf932cf6fdb1985b4556186fa2293073`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.PermuteGoals` — import line 16; external provider; requires a separately pinned dependency.
- `Batteries.Lean.Meta.SavedState` — import line 17; external provider; requires a separately pinned dependency.
- `Aesop.Script.Util` — import line 18; external provider; requires a separately pinned dependency.
- `Aesop.Util.EqualUpToIds` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkOneBasedNumLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/mkonebasednumlit--2a59f980d15e2bffe3959217.md) | 33 | `declaration-track:2a59f980d15e2bffe39592179f35e7e34243e530273dba4d50442385a42716f0` |
| 2 | `def` | [mkOnGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/mkongoal--e7786e3fee5ead99e5426510.md) | 36 | `declaration-track:e7786e3fee5ead99e5426510bed276913fcf023a357f5f0b8d89d3e4b224594d` |
| 3 | `structure` | [Step](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/step--d31f3b51954ada7f271971ce.md) | 43 | `declaration-track:d31f3b51954ada7f271971ce5691eff8949ef230e528bc0a0a604bf1a19e5a22` |
| 4 | `def` | [TacticState.applyStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/tacticstate-applystep--c1c38b8f03a82ae079cb58d2.md) | 50 | `declaration-track:c1c38b8f03a82ae079cb58d2443e616c85b10b2327c3ba397bd7f56182b434fe` |
| 5 | `def` | [uTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/utactic--d0111bf91f9f0cfa0190a5df.md) | 57 | `declaration-track:d0111bf91f9f0cfa0190a5df7db67fcd3245e51307fa0da445bce29ebab708fd` |
| 6 | `def` | [sTactic?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/stactic--2475c4a968df6cc578ec17db.md) | 60 | `declaration-track:2475c4a968df6cc578ec17dbe581bf7c261918e16c8fff17f9da04fa8e87108b` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/instance--5788bca238f1669853a584da.md) | 63 | `declaration-track:5788bca238f1669853a584dae3ab527193e5bf20c31fe6e97be3f9ab8cc99901` |
| 8 | `def` | [mkSorry](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/mksorry--bcd91534b824dd8f1d2350ab.md) | 67 | `declaration-track:bcd91534b824dd8f1d2350ab99d36069e3aa1cd42b9d219f43d3a560c76d9b8e` |
| 9 | `def` | [render](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/render--92108940e73ead43491eb9f1.md) | 76 | `declaration-track:92108940e73ead43491eb9f1137d786fa07b356f968c0d176ba5fd74c4be6c83` |
| 10 | `def` | [validate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/validate--f5cbc8617eb18b5ff190e1ec.md) | 84 | `declaration-track:f5cbc8617eb18b5ff190e1ecdafa05463d13015d3ffd25c707c85c2751a6720e` |
| 11 | `structure` | [LazyStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/lazystep--d041bb6fff8c33e94c60cb14.md) | 107 | `declaration-track:d041bb6fff8c33e94c60cb14e5db32a202115df53978f83c24783261fd75f6a1` |
| 12 | `def` | [runFirstSuccessfulTacticBuilder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/runfirstsuccessfultacticbuilder--0c4064f4b243d67a95ac1a5e.md) | 124 | `declaration-track:0c4064f4b243d67a95ac1a5e3c150493d1c6dce4ecc94cd304dbc64e4e4620d9` |
| 13 | `def` | [toStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/tostep--6aa6e24f9c90b2d226db3dfd.md) | 149 | `declaration-track:6aa6e24f9c90b2d226db3dfdb7d50758b8b8bee4febd349b85d910f6595f6078` |
| 14 | `structure` | [BuildInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/buildinput--fe33200a134656971f010d2a.md) | 157 | `declaration-track:fe33200a134656971f010d2aaec5b00b08a144ee0600942b39d6455306650bc0` |
| 15 | `def` | [build](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/build--57bcf85f6ca84e5a8b381dec.md) | 163 | `declaration-track:57bcf85f6ca84e5a8b381dec8850d30ceeacbfbfb26432b08cd3573052fec8f6` |
| 16 | `def` | [erasePostStateAssignments](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Step/Variant4a13f9625aa5f3159ec5d82f4714db3a798d20bdc7ee7e3249271c2f446dc94a.lean/declarations/erasepoststateassignments--7a7738ea06ee00ee6ae20223.md) | 174 | `declaration-track:7a7738ea06ee00ee6ae202234ede0c689b29285453f8d57cf7a9e565905c9b63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
