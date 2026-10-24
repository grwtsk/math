# Verification target: GRWTSK.Algebra.GroupTheory.Hom.Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c21848c556ce937bfc9332580bb4cc5bae45721",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c21848c556ce937bfc9332580bb4cc5bae45721`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUnit.eq_on_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/isunit-eq-on-inv--aeb1e85ba762487e9d13817c.md) | 47 | `result-track:aeb1e85ba762487e9d13817c77dd191dcc21914015b0efecfc428fc9d065528a` |
| 2 | `theorem` | [eq_on_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/eq-on-inv--c64edec1ac43bdf51ed2ae15.md) | 56 | `result-track:c64edec1ac43bdf51ed2ae152d65898a93c5f821087c65f1bca750652ee3b00e` |
| 3 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/map--067e6494d921e5e497e5bd16.md) | 68 | `declaration-track:067e6494d921e5e497e5bd16a94434e7b9a2bcf5c214ea24c8ce776e36ec6312` |
| 4 | `theorem` | [coe_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/coe-map--40d8a655e66aa416a89875a8.md) | 76 | `result-track:40d8a655e66aa416a89875a8cb2893103fb6e7a6a038585522271ae0426baee6` |
| 5 | `theorem` | [coe_map_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/coe-map-inv--26c8857395fdf71fd09cda5f.md) | 79 | `result-track:26c8857395fdf71fd09cda5fccbd946d03b5931aaea71f4b9fd6b5383a972266` |
| 6 | `lemma` | [map_mk](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/map-mk--9151ea515ffc85f43527290c.md) | 82 | `result-track:9151ea515ffc85f43527290c5d0eb8aff6599938c9834a0202249534d1e554b7` |
| 7 | `theorem` | [map_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/map-comp--144af9a1427dc9fc64574f7a.md) | 87 | `result-track:144af9a1427dc9fc64574f7add0edee7c3cbe21fef56feecba3666732ca73a32` |
| 8 | `lemma` | [map_injective](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/map-injective--370e00ad800722405bb4c9d7.md) | 90 | `result-track:370e00ad800722405bb4c9d7678997a742233869f4ac3f7693d55643c5d608c5` |
| 9 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/map-id--a35a7dbccb7988e4be509934.md) | 96 | `result-track:a35a7dbccb7988e4be5099343648d909e98bb7716ba16af73493a7661a326ee2` |
| 10 | `def` | [coeHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/coehom--a15a59f9ff7dd5a23498527c.md) | 100 | `declaration-track:a15a59f9ff7dd5a23498527c2aafbeada3cbe833b0e110c5392d9f2de5b6e688` |
| 11 | `theorem` | [coeHom_apply](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/coehom-apply--94fcc0fa2f1e37e4e84581e7.md) | 106 | `result-track:94fcc0fa2f1e37e4e84581e7b34e76b004061f6a251581f0504cbd54c1bb4621` |
| 12 | `theorem` | [val_zpow_eq_zpow_val](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/val-zpow-eq-zpow-val--142534de8a2bf961a0050042.md) | 113 | `result-track:142534de8a2bf961a0050042b486f7d9db39eab21e97171512adb57cb05ea2f2` |
| 13 | `theorem` | [_root_.map_units_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/root-map-units-inv--c814d5eec6c8063bbf5672d8.md) | 117 | `result-track:c814d5eec6c8063bbf5672d824b464af3fe64d02543c20285a8232c724a144f1` |
| 14 | `def` | [liftRight](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/liftright--8083a575473a50b8f4763dc9.md) | 128 | `declaration-track:8083a575473a50b8f4763dc9f10cd3db696b68261d45e79b898cf5dbfb645915` |
| 15 | `theorem` | [coe_liftRight](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/coe-liftright--075bf314c920d6e2dc17664f.md) | 134 | `result-track:075bf314c920d6e2dc17664fbb35e1413fed28cf001fa7b10563817938b07605` |
| 16 | `theorem` | [mul_liftRight_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/mul-liftright-inv--dd1f58e02707dc7e28393e1b.md) | 138 | `result-track:dd1f58e02707dc7e28393e1bb73d25011bbcc9ad99ce0b9365121c27ab798555` |
| 17 | `theorem` | [liftRight_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/liftright-inv-mul--1a4d6a731e2df5edc977013d.md) | 143 | `result-track:1a4d6a731e2df5edc977013d8305b2466a7d74de6e508cb4f30a83131d8085dc` |
| 18 | `def` | [toHomUnits](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/tohomunits--4a9169234ffb212ef50e8c0d.md) | 158 | `declaration-track:4a9169234ffb212ef50e8c0d8fb6573ec81683b8e23343d5a5505828783f1fcc` |
| 19 | `theorem` | [coe_toHomUnits](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/coe-tohomunits--e24e7b299c6a53fe1be41d22.md) | 164 | `result-track:e24e7b299c6a53fe1be41d2253b2560392ae3212ae2900d509412bcaa2532b41` |
| 20 | `theorem` | [map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/map--0275b01bf2482e093e2069f4.md) | 178 | `result-track:0275b01bf2482e093e2069f4adafcd61e8a018c620a7a72963a3f03964e718d5` |
| 21 | `theorem` | [of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/of-leftinverse--9118880d8da06f953a472a66.md) | 182 | `result-track:9118880d8da06f953a472a6684d83f9c1f0c944bf612e740cee4cb8b1cd83a66` |
| 22 | `theorem` | [_root_.isUnit_map_of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/root-isunit-map-of-leftinverse--94eb2f0e0c7480a2c51234a4.md) | 188 | `result-track:94eb2f0e0c7480a2c51234a42d137ed1c110dbbe0d5e10de5d2ab3582d8e021f` |
| 23 | `def` | [liftRight](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/liftright--40b97e86fb981fca6a165f6a.md) | 197 | `declaration-track:40b97e86fb981fca6a165f6a936eca9cc6f3583e71ca223273e8b5b532ae3557` |
| 24 | `theorem` | [coe_liftRight](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/coe-liftright--17f48d40180dc9b90e83a882.md) | 201 | `result-track:17f48d40180dc9b90e83a882db80a0a799871228c36148b14b7b2561c67045e5` |
| 25 | `theorem` | [mul_liftRight_inv](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/mul-liftright-inv--76c62c7f196bc626aa0742dc.md) | 205 | `result-track:76c62c7f196bc626aa0742dcf3492f8f274d0aaed52654d8ed819ab881bca9c5` |
| 26 | `theorem` | [liftRight_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/liftright-inv-mul--dc0df6225bbe5d9cd3c0c28b.md) | 209 | `result-track:dc0df6225bbe5d9cd3c0c28b8c6a7c84033deb2f278b66747ec49ca494c54175` |
| 27 | `class` | [IsLocalHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/islocalhom--70b8c5ff7c7a09e89f811c2d.md) | 225 | `declaration-track:70b8c5ff7c7a09e89f811c2d66dac92fb48d02ec36145e488123a04a03e102f7` |
| 28 | `theorem` | [IsUnit.of_map](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/isunit-of-map--f506f84b98f1de0fcdc9f179.md) | 230 | `result-track:f506f84b98f1de0fcdc9f179d9f6ca3bd5d2eda3e78e0d112ff189cde41ab7c7` |
| 29 | `theorem` | [isUnit_map_iff](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/isunit-map-iff--0d23ddae6915e13e78e34cf7.md) | 239 | `result-track:0d23ddae6915e13e78e34cf7335cf56c470f48378c7b7b42cc85a459d3e945b2` |
| 30 | `theorem` | [isLocalHom_of_leftInverse](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/islocalhom-of-leftinverse--a099e8810c6eba7ae1491cba.md) | 242 | `result-track:a099e8810c6eba7ae1491cba426b273271366d5994ed0925d8d27afeac2311f5` |
| 31 | `theorem` | [MonoidHom.isLocalHom_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/monoidhom-islocalhom-comp--438ef16a761f909a88a1b4da.md) | 247 | `result-track:438ef16a761f909a88a1b4da4df6199164dc2084ab66f85f92852bc610b7bb62` |
| 32 | `theorem` | [isLocalHom_toMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/islocalhom-tomonoidhom--03bd77ad6cbb3fa0518bc276.md) | 253 | `result-track:03bd77ad6cbb3fa0518bc2763c0956c319765c0e9c3ffe607f55c2412ce0220b` |
| 33 | `theorem` | [MonoidHom.isLocalHom_of_comp](../../../../../mathematics/Algebra/GroupTheory/Hom/Variant3dddbddc5dd0ebaf3f1c0268bf2c550442db77ac24ad0045562fd360976a4225.lean/declarations/monoidhom-islocalhom-of-comp--ac0031d982b98bfc727b0403.md) | 257 | `result-track:ac0031d982b98bfc727b04031063dcac7fedbeda0b040bf2a63596b040956a7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
