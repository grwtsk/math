# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad68e7bbfab7b6c92494a38aecbbd5fe62522247",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad68e7bbfab7b6c92494a38aecbbd5fe62522247`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.NormCast.Ext` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Tactic.CoeExt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SudoSetOption` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.Simp` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Defs` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Defs` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/initialize--e86266994b3ef2789b49dfe6.md) | 28 | `declaration-track:e86266994b3ef2789b49dfe683687a3c41c75b68186aa4f86397883e9e881707` |
| 2 | `def` | [proveEqUsing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/proveequsing--da33da00541850302769824b.md) | 31 | `declaration-track:da33da00541850302769824be284e4a4f1c1ec70b93ba88c56e8ad533f3532dc` |
| 3 | `def` | [proveEqUsingDown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/proveequsingdown--12450b374271fd1fe017e9f3.md) | 42 | `declaration-track:12450b374271fd1fe017e9f3fcf2ede80649a98de699642da3d8a6cbab14e51d` |
| 4 | `def` | [mkCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/mkcoe--d46dd569bd4a97f055afd4f1.md) | 46 | `declaration-track:d46dd569bd4a97f055afd4f11c297bd26ba67059a01184be0cce6c79f8f3d636` |
| 5 | `def` | [isCoeOf?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/iscoeof--093a9f770d876fd641027633.md) | 50 | `declaration-track:093a9f770d876fd641027633b397966b997e57d270860ba6ac3edc651029ed27` |
| 6 | `def` | [isNumeral?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/isnumeral--c368bbce1b513c8cb2768ab7.md) | 57 | `declaration-track:c368bbce1b513c8cb2768ab75d1155bb0fd863fcb030892032c60b82d22ece42` |
| 7 | `def` | [splittingProcedure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/splittingprocedure--fdcb22b337dbef1c3dfc76d4.md) | 73 | `declaration-track:fdcb22b337dbef1c3dfc76d4721d38c0ae8afd5631add28b7b16c594643fe704` |
| 8 | `def` | [prove](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/prove--baf6ddc76518929b36c01634.md) | 125 | `declaration-track:baf6ddc76518929b36c01634275be6d82e696af926b49162917fe5dc33312baf` |
| 9 | `def` | [upwardAndElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/upwardandelim--f5f7d2a76de4a962cbf06335.md) | 136 | `declaration-track:f5f7d2a76de4a962cbf063350db60ddd7c0bcef77971cffeb93f41fd51f93a9f` |
| 10 | `def` | [numeralToCoe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/numeraltocoe--c3f75e2c929e1c76f6d38d74.md) | 147 | `declaration-track:c3f75e2c929e1c76f6d38d74b5be683f0e8622cf2a6986f1efd71ff3220d374b` |
| 11 | `def` | [derive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/derive--cfe143196327eadf9121b79b.md) | 157 | `declaration-track:cfe143196327eadf9121b79b8dc674411954f2383c1f11e0cec2b6bf6581e8b9` |
| 12 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/elab--547be7f77defbe4928ac7743.md) | 194 | `declaration-track:547be7f77defbe4928ac7743c8840c70c66fcc4e0f02b12afd3b757511bb329f` |
| 13 | `def` | [normCastTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/normcasttarget--92f3f2ec5063eee98a67c199.md) | 209 | `declaration-track:92f3f2ec5063eee98a67c199e075f210b1533a9f0cd2c1e9f6aa5a2aa9841ef7` |
| 14 | `def` | [normCastHyp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/normcasthyp--5b5329e3b9dfb7377358ab1d.md) | 215 | `declaration-track:5b5329e3b9dfb7377358ab1d79e61893feb3c47bbdee34a24a86b73d30ebaa22` |
| 15 | `elab` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/elab--a8b01d981fc818d21b8552b7.md) | 221 | `declaration-track:a8b01d981fc818d21b8552b77ce334b082b73a17428bc87ea70bfd9f71ee1ac0` |
| 16 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/macro--11b277c71b716f9137d9401c.md) | 233 | `declaration-track:11b277c71b716f9137d9401c9596dd48ec77b3ea975e582d19e93436b92bb251` |
| 17 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/macro--98d31d7a3a85ad44375f35d0.md) | 238 | `declaration-track:98d31d7a3a85ad44375f35d07a8ce801ef2d7f2d08ab380a4c8b6dd8aebac04d` |
| 18 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/syntax--90675612923dc44475da2738.md) | 244 | `declaration-track:90675612923dc44475da2738ef6190f6ad668cc26e9668f36ae6e4922379642f` |
| 19 | `macro_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/macro-rules--21b1e79473704db38738a692.md) | 245 | `declaration-track:21b1e79473704db38738a6924ab97e53af3701d899298b9230203496f45ee748` |
| 20 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/macro--08cc3e8df04790903b29d28c.md) | 254 | `declaration-track:08cc3e8df04790903b29d28c281a4c896abebbfbddbbfe0834b7fb1963658bc7` |
| 21 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/macro--2e83092306063a7017b5bd25.md) | 259 | `declaration-track:2e83092306063a7017b5bd258daafaed53c0e270cd164adf3821bc8d871e285b` |
| 22 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/syntax--db539294abec3495460550d6.md) | 261 | `declaration-track:db539294abec3495460550d60d86dec019242fe567623ce5a567508d0c3c2c76` |
| 23 | `def` | [evalConvNormCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/evalconvnormcast--79b953ebb3e28eaeee1e3ab9.md) | 262 | `declaration-track:79b953ebb3e28eaeee1e3ab9d73943312fb240fbd4a56972258f20514c32d1d0` |
| 24 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/syntax--bedfc8d29d5a5eb513977505.md) | 266 | `declaration-track:bedfc8d29d5a5eb513977505a7f9e14cdc6a77c265aaab47a6d9f85e4726a6de` |
| 25 | `def` | [evalPushCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant8fa67cec8f53e0ad8a4e0b2d7606dfa49b51685499750734eae631113b38063c.lean/declarations/evalpushcast--0c30557cd8e838b64bb9f58f.md) | 268 | `declaration-track:0c30557cd8e838b64bb9f58f79bdf29aeda74995901e28a6d03f1f005b13fd54` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
