# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DerivingCountable.Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b0e421ae24ba8075bb7d96eb2294c071267edac",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b0e421ae24ba8075bb7d96eb2294c071267edac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DeriveCountable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [S](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/s--e834d6d703999d7f1b52a694.md) | 22 | `declaration-track:e834d6d703999d7f1b52a694b9371cd7e3a6497322330428a3773f14da07b946` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/example--b6b86c54bbc622d6f73a1a2b.md) | 27 | `declaration-track:b6b86c54bbc622d6f73a1a2b13797aaee26c3d66a85de3bd405bf0a8cc6c90bf` |
| 3 | `inductive` | [T](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/t--0772b88cec06d29e0321a0f8.md) | 32 | `declaration-track:0772b88cec06d29e0321a0f888f48bfe8bfa695b62a073135699f309d9f1ea81` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/example--0f50c66bcb3b2e85d3834cb9.md) | 38 | `declaration-track:0f50c66bcb3b2e85d3834cb93171e81967c687bd17a84726527756d38cb011d3` |
| 5 | `inductive` | [PreCantor'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/precantor--13320f4790c3e28fa3159101.md) | 43 | `declaration-track:13320f4790c3e28fa3159101c73c3761103cb2b3fcbc441cd8767e7a5601d6e7` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/example--9597a7fac05ef1377a05a672.md) | 48 | `declaration-track:9597a7fac05ef1377a05a672434026e807d91e3ff909e8de1024664e0cf726eb` |
| 7 | `inductive` | [PList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/plist--493180c01f104cfc22f17286.md) | 53 | `declaration-track:493180c01f104cfc22f172865f7fc13cb2b353f1c910958c03e48fc812bf514d` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/example--8de21ae72e8f636f590441bf.md) | 58 | `declaration-track:8de21ae72e8f636f590441bff7ddb0d5e08d5dafc4acf04a1e48735ce9138135` |
| 9 | `inductive` | [I](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/i--02ddaac81689d3da223508cc.md) | 64 | `declaration-track:02ddaac81689d3da223508ccf95d2dffeea4fb0045db778914ac2760a955ef71` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/example--10bd9276bbb0059696445ce8.md) | 69 | `declaration-track:10bd9276bbb0059696445ce8de7a5b8ae025ff3041ae729e62b79406de5217c0` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/example--14fdb59da876c1c1ce528d84.md) | 70 | `declaration-track:14fdb59da876c1c1ce528d844fc826dadfcbcace60291306dd178dd707581330` |
| 12 | `inductive` | [T1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/t1--c6b605cd9a020e2216d762f2.md) | 76 | `declaration-track:c6b605cd9a020e2216d762f21f62ffc9bcb322b38a41365e160de3481a1067e8` |
| 13 | `inductive` | [T2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/t2--2f0a2541999c0318778530fd.md) | 80 | `declaration-track:2f0a2541999c0318778530fd77ccf390b654170f0934531baa506014790493bb` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/example--e5901ae274d623b4d5d02876.md) | 86 | `declaration-track:e5901ae274d623b4d5d02876b259bd44442201e8f64e8b86c855703d5650e65b` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/example--0cef353128f6c3737887a0f7.md) | 87 | `declaration-track:0cef353128f6c3737887a0f7d22a788ca4ff8d0927b7a74b8c3fad1bc927d18f` |
| 16 | `inductive` | [Nested](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/nested--af60ca811222204e49cee877.md) | 97 | `declaration-track:af60ca811222204e49cee877cdbddd52c591266c340f2443e28d6082c7c16c21` |
| 17 | `inductive` | [Reflex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DerivingCountable/Varianta31d7da667a3b22f988909efc050205636d6810f3fccedc2195ca2bcb2af3670.lean/declarations/reflex--54e54831ac4c3bad364fd73a.md) | 108 | `declaration-track:54e54831ac4c3bad364fd73ae3ffcc28c1043aae93d4658d2540b34044381af0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
