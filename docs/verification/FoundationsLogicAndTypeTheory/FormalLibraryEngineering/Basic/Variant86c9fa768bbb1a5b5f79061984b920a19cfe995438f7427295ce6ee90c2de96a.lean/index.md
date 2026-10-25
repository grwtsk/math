# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b56b53d78e7b469cdbe87558755caa5eb859c0d0",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b56b53d78e7b469cdbe87558755caa5eb859c0d0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveCountable` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.DirectedInverseSystem` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.FixedPoints` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Fold` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Convert` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ext` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/expr--4a5790e6bb3d27dcf5fbe529.md) | 42 | `declaration-track:4a5790e6bb3d27dcf5fbe529c595cfed110df5af3dac332e19fd93022c927494` |
| 2 | `def` | [liftRen](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/liftren--5bb8c25a445e441b0073f0e8.md) | 55 | `declaration-track:5bb8c25a445e441b0073f0e879543e2933092751f1a7a69621fa92d7dd2f37ea` |
| 3 | `def` | [rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/rename--cc052cdd97fb4e90b0a8c007.md) | 60 | `declaration-track:cc052cdd97fb4e90b0a8c007aa5e63d0f8401d656a6ccba0abd5140354788abc` |
| 4 | `def` | [liftSub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/liftsub--320b20912514ffcf7ea24b68.md) | 68 | `declaration-track:320b20912514ffcf7ea24b68c1a10a8c5db3172cb034240ae591e726748eb01f` |
| 5 | `def` | [subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/subst--a18e2529d576efe338d7330b.md) | 73 | `declaration-track:a18e2529d576efe338d7330b1fa83257e525dc45772f302e1fbde5a99853d322` |
| 6 | `def` | [single](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/single--9b3a8b64fe3c939102be7399.md) | 81 | `declaration-track:9b3a8b64fe3c939102be73991a7a43b54d74b05ff6c8058cce0921644e5cbc8d` |
| 7 | `def` | [instantiate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/instantiate--a9deeaec59ab13b2d3f42094.md) | 86 | `declaration-track:a9deeaec59ab13b2d3f4209432b0180cd99b119f9a388cd0642d10b63586f99a` |
| 8 | `structure` | [Specification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/specification--32a8238336dedfea324595e6.md) | 91 | `declaration-track:32a8238336dedfea324595e658df98d0162b7b8991759bb00b744d0b75aca18c` |
| 9 | `axioms` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/axioms--eaaf31c35949135f4eebba1c.md) | 93 | `declaration-track:eaaf31c35949135f4eebba1c08c02e15a46ca8f441fa943ed67858d9174e55fb` |
| 10 | `inductive` | [Beta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/beta--7b7d496a275eee857bebe108.md) | 98 | `declaration-track:7b7d496a275eee857bebe1087a85b8737643129006fca35b1497547aca4a3b55` |
| 11 | `def` | [Converts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/converts--7d7a28c9ef770c6bcbac16b0.md) | 108 | `declaration-track:7d7a28c9ef770c6bcbac16b0476406fd69de5867bdefabfb839389c12e04039b` |
| 12 | `def` | [Normal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/normal--f90da52455a2100544dec0a0.md) | 111 | `declaration-track:f90da52455a2100544dec0a011f7f96b299c8b31600632096a297105a6b60e30` |
| 13 | `def` | [WeaklyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/weaklynormalizing--219a3776bc4d277e7a52f8d0.md) | 114 | `declaration-track:219a3776bc4d277e7a52f8d0e3308cbfe6af32af0581b805e34fff4de8435e0e` |
| 14 | `def` | [StronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/stronglynormalizing--842d3dc392246bc59ce46478.md) | 119 | `declaration-track:842d3dc392246bc59ce464783780f01ae194747641d7cbf3435b66238047b829` |
| 15 | `inductive` | [HasType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/hastype--1366af93a49155f039bf25a0.md) | 123 | `declaration-track:1366af93a49155f039bf25a01bcfd54b8386559c43d2e92d5e84aa08179e3ccc` |
| 16 | `inductive` | [ValidContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/validcontext--d5a49d0fffc3d336e0ab6c0e.md) | 142 | `declaration-track:d5a49d0fffc3d336e0ab6c0ee214b6776b0d52eb9c00f41c75c3fe4261a26a4a` |
| 17 | `def` | [Legal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/legal--de7e786a4da328b7d1d8b3d2.md) | 148 | `declaration-track:de7e786a4da328b7d1d8b3d2e5e21612b5d0c7869f59f8c787222c6abbf6e01c` |
| 18 | `def` | [SystemWeaklyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/systemweaklynormalizing--c0079ad6c18030432f64d558.md) | 152 | `declaration-track:c0079ad6c18030432f64d55866004418331c0a9517ac5359f6dcb604fd9db8eb` |
| 19 | `def` | [SystemStronglyNormalizing](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/systemstronglynormalizing--73a147e633f66801ba06ae04.md) | 156 | `declaration-track:73a147e633f66801ba06ae041a65edc0b3556d4fd7bd50d642dd1dd4cf53d137` |
| 20 | `theorem` | [valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/valid--9761865f8b7ae49619e18337.md) | 164 | `result-track:9761865f8b7ae49619e18337b1f0aca05bbc50ce84a9bf06ddb8e7d3be5d11af` |
| 21 | `theorem` | [liftRen_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/liftren-zero--5a57c679ee91db4a9e49147a.md) | 180 | `result-track:5a57c679ee91db4a9e49147a80ab9ca812fb8824181ee022852db334687179e1` |
| 22 | `theorem` | [liftRen_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/liftren-succ--94c3bb7da55405ca7da7fcb8.md) | 181 | `result-track:94c3bb7da55405ca7da7fcb899ca8eda21bdd1a9def768c89d7f2ffa9e96911d` |
| 23 | `theorem` | [liftRen_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/liftren-id--730ed18be6960f5f8e1849b3.md) | 184 | `result-track:730ed18be6960f5f8e1849b3526c12279d29de60d4d027766ae9566e28299f37` |
| 24 | `theorem` | [liftRen_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/liftren-comp--9517febd1718b316d060fa7e.md) | 188 | `result-track:9517febd1718b316d060fa7e9d6d1aa73af226d7192cd2eeebee1beaadc99c99` |
| 25 | `theorem` | [rename_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/rename-id--6908bf115cdc956027438cfd.md) | 192 | `result-track:6908bf115cdc956027438cfd07f8c747066afb8a721c102b4ef72e6364c07ebb` |
| 26 | `theorem` | [rename_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/rename-comp--a95a7898d76264d334c51fa9.md) | 200 | `result-track:a95a7898d76264d334c51fa9b7d9aef742a3b88d2539a79e99101fa288457bf6` |
| 27 | `theorem` | [liftSub_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/liftsub-zero--0dd2cb2b40f7f1f2b77f0eed.md) | 209 | `result-track:0dd2cb2b40f7f1f2b77f0eed1ca815c87033ef3ece0e8a25e8256f343f9d5ab3` |
| 28 | `theorem` | [liftSub_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/liftsub-succ--c33e99f0b49478da0917ee75.md) | 210 | `result-track:c33e99f0b49478da0917ee750ca0e00f3af96f45443022dfe8f9e154ce5785e7` |
| 29 | `theorem` | [liftSub_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/liftsub-var--41776d038cf5d8c5a127bc2c.md) | 213 | `result-track:41776d038cf5d8c5a127bc2c9a878aac81d27ffa38764dddf903f4780566ffab` |
| 30 | `theorem` | [subst_var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/subst-var--517acd824b65144b90ca393f.md) | 217 | `result-track:517acd824b65144b90ca393fa09b95c09075898eae806ce070c802cd97749307` |
| 31 | `theorem` | [subst_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/subst-rename--de98223d3ddef5f432fc849c.md) | 225 | `result-track:de98223d3ddef5f432fc849c22a7393e60d574d987fd39ffcefb5f0f010bc8f2` |
| 32 | `theorem` | [rename_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/rename-subst--396e7f5ece4ed003b818befa.md) | 239 | `result-track:396e7f5ece4ed003b818befa0391c698b3608877c26609a29d418825e8bb4f11` |
| 33 | `theorem` | [subst_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/subst-subst--f38d9a1ae86ccae7ea8870c0.md) | 258 | `result-track:f38d9a1ae86ccae7ea8870c0fc6a01ee8adcb5f92984bfef0a4ec660789ecf74` |
| 34 | `theorem` | [instantiate_rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/instantiate-rename--5796cb993a380c8e91a29f5a.md) | 277 | `result-track:5796cb993a380c8e91a29f5a5ceefb422a2244275b8867ed5b5c22bb05e35a50` |
| 35 | `theorem` | [instantiate_subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/instantiate-subst--072bc9fc7183ba0bdc38b25d.md) | 284 | `result-track:072bc9fc7183ba0bdc38b25d022954039841ce15131897a1f04250d68827a68a` |
| 36 | `theorem` | [rename](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/rename--c26006ea23fa4d788a9c35b0.md) | 301 | `result-track:c26006ea23fa4d788a9c35b0769b53e4758570d062eb1aec246ab369141e7927` |
| 37 | `theorem` | [subst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant86c9fa768bbb1a5b5f79061984b920a19cfe995438f7427295ce6ee90c2de96a.lean/declarations/subst--70fb5223da6390ec50b9df0b.md) | 313 | `result-track:70fb5223da6390ec50b9df0b27f81e8d1447c35d09bb6ae01be30ff9ef993dbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
