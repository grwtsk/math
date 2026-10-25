# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMatchAction.Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df0be615599db85624cb413aa4503aa7e779e553",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df0be615599db85624cb413aa4503aa7e779e553`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.ParamMinimizer` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatch` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatchTheoremParam` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.EMatchTheoremPtr` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkNestedSubsingletons` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CollectState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/collectstate--f4d9e6b89751051366979cf4.md) | 45 | `declaration-track:f4d9e6b89751051366979cf49f1832d81d4cda0cdc824577caedc1b177c837d9` |
| 2 | `def` | [collect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/collect--5ebc580726a51bcd928fd769.md) | 50 | `declaration-track:5ebc580726a51bcd928fd7696aa32db7416be5b34614e34c2ca4ef4d2dd42687` |
| 3 | `def` | [mkInstantiateTactic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/mkinstantiatetactic--eea230cc092392d71d1e83ad.md) | 81 | `declaration-track:eea230cc092392d71d1e83ad6683049113beed943d3977c0a776cf014c7d66cd` |
| 4 | `def` | [mkNewSeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/mknewseq--7dbf573758500c5ca7c746ce.md) | 118 | `declaration-track:7dbf573758500c5ca7c746ce3c46e6a9f4732d89404b8b5a68a15223794abcc5` |
| 5 | `abbrev` | [EMatchTheoremIds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/ematchtheoremids--5b854b4dfa57e81e41fe4404.md) | 124 | `declaration-track:5b854b4dfa57e81e41fe4404d089ab096aac9a217bf32efca8e9495ef87dddf7` |
| 6 | `def` | [getAllTheorems](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/getalltheorems--f7d236e9eb0d0ef3f302f11e.md) | 126 | `declaration-track:f7d236e9eb0d0ef3f302f11ecf579fa652b56d17b2a3f18563c7e56dbee497f2` |
| 7 | `def` | [mkMask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/mkmask--0071f7a01b5d6358c133fd8e.md) | 138 | `declaration-track:0071f7a01b5d6358c133fd8ef26db391f753c5d8076201ae9c5871cbfa48f751` |
| 8 | `def` | [maskToThms](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/masktothms--571effd7d6ca4d5843e77da4.md) | 145 | `declaration-track:571effd7d6ca4d5843e77da45bfc500f25d45f3d3856f02a19fbecdc7838487b` |
| 9 | `def` | [instantiate'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/instantiate--bdf2ecbe242b3d8170d76cbd.md) | 152 | `declaration-track:bdf2ecbe242b3d8170d76cbd42fb0643cde8e2c969f21b002af14f593d214097` |
| 10 | `def` | [instantiate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchAction/Variant371d4c5453cdc8414eb45fa4d1f8c31432426d54eea179f020c303009b553766.lean/declarations/instantiate--e6d9673505c04ac5525d7a6d.md) | 181 | `declaration-track:e6d9673505c04ac5525d7a6db5a4e80a041b89fe876fb1cc2aa2c8a3e5547534` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
