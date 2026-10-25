# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PostconditionMonad.Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93361a83e8c3cacad91d1e90687ef4732e90cf2f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PostconditionT](declarations/postconditiont--7fe7efe2ccd60aa7d4a067c9.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [PostconditionT.lift](declarations/postconditiont-lift--b00332cc08d6bac593b9169a.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [PostconditionT.attachLift](declarations/postconditiont-attachlift--1cd8223c9100534abfd7eda8.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [PostconditionT.pure](declarations/postconditiont-pure--f76897ce784fc0b773ccb341.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [PostconditionT.liftWithProperty](declarations/postconditiont-liftwithproperty--5d19212857b6a613ce10002b.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [PostconditionT.map](declarations/postconditiont-map--2a7f835b879fcc3492f6962a.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [PostconditionT.bind](declarations/postconditiont-bind--b4369afdbe1a688b79b01ab8.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [PostconditionT.pbind](declarations/postconditiont-pbind--8bdbbd5c055e1fc22676d560.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [PostconditionT.liftMap](declarations/postconditiont-liftmap--5b303d74cf342f4b755ac721.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [PostconditionT.run](declarations/postconditiont-run--ebf6ce3aacb0d1450e6d8f70.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [PostconditionT.run_eq_map](declarations/postconditiont-run-eq-map--c101009c46c7b78b0df00a0e.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance--937d5070b942d80bf4abc72c.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--ce58eaa60e74b15b278a35a4.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [PostconditionT.pure_eq_pure](declarations/postconditiont-pure-eq-pure--75a87da508f1cd624b9c7857.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [PostconditionT.property_pure](declarations/postconditiont-property-pure--5d34db4ec072da756e33aec9.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [PostconditionT.operation_pure](declarations/postconditiont-operation-pure--9053544df6681a06773852e9.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [PostconditionT.ext](declarations/postconditiont-ext--ce6cdac3b2afcaa4cee6d5ca.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [PostconditionT.ext_iff](declarations/postconditiont-ext-iff--8327fde42f36926e655a9218.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [PostconditionT.map_eq_pure_bind](declarations/postconditiont-map-eq-pure-bind--f829c02231212e2c96b42e7a.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [PostconditionT.pure_bind](declarations/postconditiont-pure-bind--d9a8398ea6a15855b2816faf.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [PostconditionT.bind_pure](declarations/postconditiont-bind-pure--c9207e6f4a9b99f4eb9038da.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [PostconditionT.bind_assoc](declarations/postconditiont-bind-assoc--050395fe24b2c50ddef18277.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [PostconditionT.map_pure](declarations/postconditiont-map-pure--9dc58603a3d4e30e4b3ea4c1.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance--53dfcb8337dcb0c9bb377ceb.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [PostconditionT.property_map](declarations/postconditiont-property-map--7acd3ea859c613b87cf1cd27.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [PostconditionT.operation_map](declarations/postconditiont-operation-map--8a1357b0fb7e56977346129d.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [PostconditionT.operation_bind](declarations/postconditiont-operation-bind--a51bb89abc38a0abd29cdad4.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [PostconditionT.operation_bind'](declarations/postconditiont-operation-bind--a1f7258e555ad253e6aeb79b.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [PostconditionT.operation_eq_map_mk_operation](declarations/postconditiont-operation-eq-map-mk-operation--40428f8ede7af65ed38f8be3.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [PostconditionT.operation_bind_eq_operation_bind_mk](declarations/postconditiont-operation-bind-eq-operation-bind-mk--d8e18a6c0885d46ea60290ea.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [PostconditionT.run_bind](declarations/postconditiont-run-bind--ed1bb22ecceaad593d35010a.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [PostconditionT.run_bind'](declarations/postconditiont-run-bind--691eba7cd244576585369003.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [PostconditionT.run_pure](declarations/postconditiont-run-pure--948a59adb790fc6f96bc5834.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [PostconditionT.property_lift](declarations/postconditiont-property-lift--e78d6e6a52793f85984cd2e1.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [PostconditionT.operation_lift](declarations/postconditiont-operation-lift--14710482486555f570efebf6.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [PostconditionT.run_attachLift](declarations/postconditiont-run-attachlift--88e552d4944afaf9ee02c873.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [PostconditionT.operation_attachLift](declarations/postconditiont-operation-attachlift--e221c7d6f618b2317ef9f186.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance--927b3bb326837624e6de066d.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [PostconditionT.instLawfulMonadLift](declarations/postconditiont-instlawfulmonadlift--fd952542e48bb746cfbd0acb.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
