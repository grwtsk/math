# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PostconditionMonad.Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93361a83e8c3cacad91d1e90687ef4732e90cf2f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93361a83e8c3cacad91d1e90687ef4732e90cf2f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Subtype.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Init.PropLemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PostconditionT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont--7fe7efe2ccd60aa7d4a067c9.md) | 34 | `declaration-track:7fe7efe2ccd60aa7d4a067c92e2cd293d019140dc3589fae99ab06ada9528dd9` |
| 2 | `def` | [PostconditionT.lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-lift--b00332cc08d6bac593b9169a.md) | 54 | `declaration-track:b00332cc08d6bac593b9169a14a67905757010b580fbd996eeff3681ebd1c665` |
| 3 | `def` | [PostconditionT.attachLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-attachlift--1cd8223c9100534abfd7eda8.md) | 59 | `declaration-track:1cd8223c9100534abfd7eda88da3c211edce237c3de26e1d262ec9f335d3e448` |
| 4 | `def` | [PostconditionT.pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-pure--f76897ce784fc0b773ccb341.md) | 64 | `declaration-track:f76897ce784fc0b773ccb3414003a78ad6c9903a2c0a67a7abdc85ff759f8d16` |
| 5 | `def` | [PostconditionT.liftWithProperty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-liftwithproperty--5d19212857b6a613ce10002b.md) | 72 | `declaration-track:5d19212857b6a613ce10002bd0900a580a9d1f95b19b5b2c5984fa9d57318f40` |
| 6 | `def` | [PostconditionT.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-map--2a7f835b879fcc3492f6962a.md) | 84 | `declaration-track:2a7f835b879fcc3492f6962a06548be3ef2795f6a808b6d502a4448e82092148` |
| 7 | `def` | [PostconditionT.bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-bind--b4369afdbe1a688b79b01ab8.md) | 94 | `declaration-track:b4369afdbe1a688b79b01ab8c850e25561cacbfca5aec5418f1df60a69674f33` |
| 8 | `def` | [PostconditionT.pbind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-pbind--8bdbbd5c055e1fc22676d560.md) | 105 | `declaration-track:8bdbbd5c055e1fc22676d560a33c04e9bb415be330f7c7e302a2553588bc51f1` |
| 9 | `def` | [PostconditionT.liftMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-liftmap--5b303d74cf342f4b755ac721.md) | 114 | `declaration-track:5b303d74cf342f4b755ac72105dc7c4acc9c3797a14c4f729c69403139deab59` |
| 10 | `def` | [PostconditionT.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-run--ebf6ce3aacb0d1450e6d8f70.md) | 122 | `declaration-track:ebf6ce3aacb0d1450e6d8f704aa1db216d28ec8b2a48401373251960bc21a99f` |
| 11 | `theorem` | [PostconditionT.run_eq_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-run-eq-map--c101009c46c7b78b0df00a0e.md) | 126 | `result-track:c101009c46c7b78b0df00a0ea7e459713229b2cb47380727999c4f61c1bbfdaa` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/instance--937d5070b942d80bf4abc72c.md) | 131 | `declaration-track:937d5070b942d80bf4abc72c3dbc1647513a12d3f50b6a7f75b2d064aacef175` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/instance--ce58eaa60e74b15b278a35a4.md) | 134 | `declaration-track:ce58eaa60e74b15b278a35a4517ae75b26c468939d3b502c6f3c6ba54bc4320b` |
| 14 | `theorem` | [PostconditionT.pure_eq_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-pure-eq-pure--75a87da508f1cd624b9c7857.md) | 138 | `result-track:75a87da508f1cd624b9c7857831fdb30b800d821085558f5db29012b2905b000` |
| 15 | `theorem` | [PostconditionT.property_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-property-pure--5d34db4ec072da756e33aec9.md) | 143 | `result-track:5d34db4ec072da756e33aec9b82cce754eac74dbd7022ebceb4c7a16aa6f9954` |
| 16 | `theorem` | [PostconditionT.operation_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-operation-pure--9053544df6681a06773852e9.md) | 149 | `result-track:9053544df6681a06773852e98c577481af54fcfde070c35dfad3e3fa422a0148` |
| 17 | `theorem` | [PostconditionT.ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-ext--ce6cdac3b2afcaa4cee6d5ca.md) | 154 | `result-track:ce6cdac3b2afcaa4cee6d5cab4715a549df97278ed5ef6d988278d97b4eeb847` |
| 18 | `theorem` | [PostconditionT.ext_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-ext-iff--8327fde42f36926e655a9218.md) | 161 | `result-track:8327fde42f36926e655a92189850cde18903bc1ca64e219a1139b5de36ce13da` |
| 19 | `theorem` | [PostconditionT.map_eq_pure_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-map-eq-pure-bind--f829c02231212e2c96b42e7a.md) | 171 | `result-track:f829c02231212e2c96b42e7a610f866eae9eff2d031d0a4183898fbcbe3ff919` |
| 20 | `theorem` | [PostconditionT.pure_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-pure-bind--d9a8398ea6a15855b2816faf.md) | 177 | `result-track:d9a8398ea6a15855b2816faf377b9fd84bec2c9993d757846d8caee227b270c0` |
| 21 | `theorem` | [PostconditionT.bind_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-bind-pure--c9207e6f4a9b99f4eb9038da.md) | 183 | `result-track:c9207e6f4a9b99f4eb9038dabac4df833521656e26ccc21deb6f51cf9c22ed04` |
| 22 | `theorem` | [PostconditionT.bind_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-bind-assoc--050395fe24b2c50ddef18277.md) | 189 | `result-track:050395fe24b2c50ddef18277f607b5c537594349d28054fab62e808868e71df3` |
| 23 | `theorem` | [PostconditionT.map_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-map-pure--9dc58603a3d4e30e4b3ea4c1.md) | 203 | `result-track:9dc58603a3d4e30e4b3ea4c1e77c672ca57512006a7548fdd7891c0dd853eb9a` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/instance--53dfcb8337dcb0c9bb377ceb.md) | 208 | `declaration-track:53dfcb8337dcb0c9bb377ceb6346842e929f81df9c0afd0b1a823a81a33a2f2d` |
| 25 | `theorem` | [PostconditionT.property_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-property-map--7acd3ea859c613b87cf1cd27.md) | 221 | `result-track:7acd3ea859c613b87cf1cd279afbc58e69590a8970a921821aca0a1d28cab72d` |
| 26 | `theorem` | [PostconditionT.operation_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-operation-map--8a1357b0fb7e56977346129d.md) | 232 | `result-track:8a1357b0fb7e56977346129d568cb355d6748c47ebc49ac1911b101ff1b39ca0` |
| 27 | `theorem` | [PostconditionT.operation_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-operation-bind--a51bb89abc38a0abd29cdad4.md) | 239 | `result-track:a51bb89abc38a0abd29cdad4086fd86a7aeed7bc14a6d6eec5a6f744dbbf4e1c` |
| 28 | `theorem` | [PostconditionT.operation_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-operation-bind--a1f7258e555ad253e6aeb79b.md) | 246 | `result-track:a1f7258e555ad253e6aeb79b0012cf2801c497b730df9e508636fe570cbdac3a` |
| 29 | `theorem` | [PostconditionT.operation_eq_map_mk_operation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-operation-eq-map-mk-operation--40428f8ede7af65ed38f8be3.md) | 253 | `result-track:40428f8ede7af65ed38f8be3b08ea104342776f92260f88d7ebea6d0830a4f1d` |
| 30 | `theorem` | [PostconditionT.operation_bind_eq_operation_bind_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-operation-bind-eq-operation-bind-mk--d8e18a6c0885d46ea60290ea.md) | 258 | `result-track:d8e18a6c0885d46ea60290ea8e8caa31977f563ee00cf9948a855b5626083a4c` |
| 31 | `theorem` | [PostconditionT.run_bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-run-bind--ed1bb22ecceaad593d35010a.md) | 264 | `result-track:ed1bb22ecceaad593d35010a8bb15a2cf41463d20c3a87c4a18f85f3739823a8` |
| 32 | `theorem` | [PostconditionT.run_bind'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-run-bind--691eba7cd244576585369003.md) | 270 | `result-track:691eba7cd244576585369003a221ed8b42b1ed6fc2e7686ae53d189d1bf75d5c` |
| 33 | `theorem` | [PostconditionT.run_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-run-pure--948a59adb790fc6f96bc5834.md) | 276 | `result-track:948a59adb790fc6f96bc58344a64246fc283336316902f2864fed2000f237463` |
| 34 | `theorem` | [PostconditionT.property_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-property-lift--e78d6e6a52793f85984cd2e1.md) | 282 | `result-track:e78d6e6a52793f85984cd2e1f63d5d7cd22017ce0c3801ec3e24988947f6525b` |
| 35 | `theorem` | [PostconditionT.operation_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-operation-lift--14710482486555f570efebf6.md) | 287 | `result-track:14710482486555f570efebf6d82ef1c0324d3dc932934d998406a8f9a01bcdd0` |
| 36 | `theorem` | [PostconditionT.run_attachLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-run-attachlift--88e552d4944afaf9ee02c873.md) | 293 | `result-track:88e552d4944afaf9ee02c8732297d1e6c2b3ffc8bdcbf3aa359746985e19a6b9` |
| 37 | `theorem` | [PostconditionT.operation_attachLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-operation-attachlift--e221c7d6f618b2317ef9f186.md) | 299 | `result-track:e221c7d6f618b2317ef9f186ab6e51691e6ce677ea5e50c3e59f004278716dfd` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/instance--927b3bb326837624e6de066d.md) | 304 | `declaration-track:927b3bb326837624e6de066d932379d62a0b4d0f0e23fdda053328ba5bc0c102` |
| 39 | `instance` | [PostconditionT.instLawfulMonadLift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean/declarations/postconditiont-instlawfulmonadlift--fd952542e48bb746cfbd0acb.md) | 308 | `declaration-track:fd952542e48bb746cfbd0acbccb23068614c0cb45caafa1fb307552008a8a54e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
