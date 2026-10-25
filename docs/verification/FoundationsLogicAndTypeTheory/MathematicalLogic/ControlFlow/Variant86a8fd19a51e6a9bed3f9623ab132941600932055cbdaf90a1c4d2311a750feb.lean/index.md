# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ControlFlow.Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "638b27269bcce232d6c9cdff393ab48f7bb039a4",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `638b27269bcce232d6c9cdff393ab48f7bb039a4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Simp.Result` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Rewrite` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.ControlFlow` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.AlphaShareBuilder` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InstantiateS` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.InferType` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.App` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.SynthInstance` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Sym.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.TheoremsLookup` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.Opaque` — import line 21; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.CbvEvalExt` — import line 22; external provider; requires a separately pinned dependency.
- `Lean.Compiler.NoncomputableAttr` — import line 23; external provider; requires a separately pinned dependency.
- `Init.CbvSimproc` — import line 24; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cbv.CbvSimproc` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isCbvNoncomputable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/iscbvnoncomputable--14c47828159e26f5f925a47e.md) | 42 | `declaration-track:14c47828159e26f5f925a47e884c8a70798d47e8ac088b6d9e2b73e1b28669fe` |
| 2 | `def` | [trySynthComputableInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/trysynthcomputableinstance--63eba3db778897026e7ed63c.md) | 49 | `declaration-track:63eba3db778897026e7ed63cbedbcdf7dacdedc9f26eb3d91f37d6a574f4b20d` |
| 3 | `def` | [matchIteDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/matchitedecidable--fef566b8326c0419f106858a.md) | 55 | `declaration-track:fef566b8326c0419f106858a187871680b23269c356bcc82e949e9ece65e6849` |
| 4 | `def` | [matchIteDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/matchitedecidablecongr--823abfdb5aeedd3e24c7696c.md) | 64 | `declaration-track:823abfdb5aeedd3e24c7696cff487448884e82448ec3bd8f9e14c070eea7fa85` |
| 5 | `def` | [simpAndMatchIteDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/simpandmatchitedecidable--d99194a3a8d5dcbe69c59d87.md) | 73 | `declaration-track:d99194a3a8d5dcbe69c59d87cd08f656a207e5fa9e245fddf376ad831da0a5eb` |
| 6 | `def` | [simpAndMatchIteDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/simpandmatchitedecidablecongr--bee9dbccfc2b8985476a4510.md) | 84 | `declaration-track:bee9dbccfc2b8985476a451059ab89732121cadbc4652c25853c106a5e30520f` |
| 7 | `def` | [matchDIteDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/matchditedecidable--117203fe9a4528dd655bbb36.md) | 127 | `declaration-track:117203fe9a4528dd655bbb36913e510e982226c0c335dbaed827da1f116a80f1` |
| 8 | `def` | [matchDIteDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/matchditedecidablecongr--4a323a3bf4a7b8a30e4f766f.md) | 138 | `declaration-track:4a323a3bf4a7b8a30e4f766f0e70dd4606db31f616645b981cb957fc586d546b` |
| 9 | `def` | [simpAndMatchDIteDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/simpandmatchditedecidable--801fbaa6c933a55471b38db1.md) | 151 | `declaration-track:801fbaa6c933a55471b38db1685a957b0940554a40396264d0a6d5dc26fc15c1` |
| 10 | `def` | [simpAndMatchDIteDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/simpandmatchditedecidablecongr--d6253237af64168e0b4fb96a.md) | 161 | `declaration-track:d6253237af64168e0b4fb96a2d5286dee57330c3dd600cc0d7d99d627e7abf58` |
| 11 | `def` | [matchDecideDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/matchdecidedecidable--5a773d795a4255dfa186dc5e.md) | 211 | `declaration-track:5a773d795a4255dfa186dc5e512d3db2fe409294ff42d1c8a28506a40a55f389` |
| 12 | `def` | [matchDecideDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/matchdecidedecidablecongr--5a6c3edfb6bc73f03a8e6b13.md) | 220 | `declaration-track:5a6c3edfb6bc73f03a8e6b13c5eb67a9c455f9fd98d74129b6dbebd778f7c6c2` |
| 13 | `def` | [simpAndMatchDecideDecidable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/simpandmatchdecidedecidable--f460d38aa0495b1bc05477d6.md) | 229 | `declaration-track:f460d38aa0495b1bc05477d680c8d5a7d22d49b989f4294a659c1e1609ca9488` |
| 14 | `def` | [simpAndMatchDecideDecidableCongr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/simpandmatchdecidedecidablecongr--14ad076c73424676b83604b3.md) | 239 | `declaration-track:14ad076c73424676b83604b348f61d1e000271c53d058957441359ba06ca6f86` |
| 15 | `def` | [withCbvOpaqueGuard](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/withcbvopaqueguard--4973131a9ce249329c99e3d2.md) | 292 | `declaration-track:4973131a9ce249329c99e3d24bfc18d98e7186e59d7d9391a9dce6312920945e` |
| 16 | `def` | [reduceRecMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/reducerecmatcher--c7c2b9490e6138b321757463.md) | 314 | `declaration-track:c7c2b9490e6138b3217574637c9e5568d45e22421a0c7cff07c5248cc5449f1c` |
| 17 | `def` | [tryMatchEquations](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/trymatchequations--50bbb386effed0552e0782e1.md) | 324 | `declaration-track:50bbb386effed0552e0782e161b05cc3005abd38bbd30caaae7d20f48085e928` |
| 18 | `def` | [tryMatcher](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ControlFlow/Variant86a8fd19a51e6a9bed3f9623ab132941600932055cbdaf90a1c4d2311a750feb.lean/declarations/trymatcher--c938a5900c225ad6d7bd56f1.md) | 330 | `declaration-track:c938a5900c225ad6d7bd56f1a69f92947e41ebd5a0c846900a0204bf1c05b693` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
