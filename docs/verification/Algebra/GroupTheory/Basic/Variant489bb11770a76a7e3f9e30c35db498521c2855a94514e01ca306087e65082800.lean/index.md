# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df1a5fed32cf625d7228ccf6c28f2830aa8964eb",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df1a5fed32cf625d7228ccf6c28f2830aa8964eb`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientKerRightHomEquivRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/quotientkerrighthomequivright--a10a09e0b5ab246af665be8c.md) | 31 | `declaration-track:a10a09e0b5ab246af665be8c89a8c94d4b1a8c6f0d64c69fd8c3ac499c1d8b33` |
| 2 | `def` | [quotientRangeInlEquivRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/quotientrangeinlequivright--8e2ffb461b619ee93a8c9d64.md) | 36 | `declaration-track:8e2ffb461b619ee93a8c9d64d078ca94a45a96ff2ee3fa27494710749eeca798` |
| 3 | `def` | [surjInvRightHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/surjinvrighthom--ac1106535d5878b2eebcb90e.md) | 41 | `declaration-track:ac1106535d5878b2eebcb90e527a9702e5bae62186f13073f4d9b00d410b2d56` |
| 4 | `theorem` | [mul_inv_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/mul-inv-mem-range-inl--4c78c11fa3fb902c95d330e1.md) | 52 | `result-track:4c78c11fa3fb902c95d330e1360cfa2b1c5a15029090af3738b5412aa1c352bf` |
| 5 | `theorem` | [inv_mul_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/inv-mul-mem-range-inl--f92c2e2f6623702994a452ff.md) | 57 | `result-track:f92c2e2f6623702994a452ff9d25c9887d6fdf52d6f76f718036da46199b3cb6` |
| 6 | `theorem` | [exists_eq_inl_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/exists-eq-inl-mul--b8c0331e59ee67a56879f39d.md) | 62 | `result-track:b8c0331e59ee67a56879f39de37d9c5ea42daaa26d343663915b836d858f86c5` |
| 7 | `theorem` | [exists_eq_mul_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/exists-eq-mul-inl--1165da8fbc8d80da59933cb5.md) | 67 | `result-track:1165da8fbc8d80da59933cb59cb3aeb7a253d07233c35d6599fe82fa1e645c2c` |
| 8 | `theorem` | [mul_mul_mul_inv_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/mul-mul-mul-inv-mem-range-inl--3160f8f34091d4b97eba8ab4.md) | 72 | `result-track:3160f8f34091d4b97eba8ab43260d9e21114bfe06330fe030c1bd43fbfd3abe1` |
| 9 | `theorem` | [mul_inv_mul_mul_mem_range_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/mul-inv-mul-mul-mem-range-inl--d22aa1b709f9426bed8d867a.md) | 77 | `result-track:d22aa1b709f9426bed8d867a9862b7b149725aea2803ba99383751c95d8c735c` |
| 10 | `theorem` | [exists_mul_eq_inl_mul_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/exists-mul-eq-inl-mul-mul--99ba67b94081fa7d887fcc9c.md) | 82 | `result-track:99ba67b94081fa7d887fcc9c3a02620e5ca6ad162f307d5b410700e2959540bd` |
| 11 | `theorem` | [exists_mul_eq_mul_mul_inl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/exists-mul-eq-mul-mul-inl--062e6e40921f444b5a08a5d5.md) | 88 | `result-track:062e6e40921f444b5a08a5d5a2cef6e171c0340360b79f72d22c31be79429984` |
| 12 | `def` | [equivComp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/equivcomp--cdcf1876cefa6cf9d2b1a33c.md) | 99 | `declaration-track:cdcf1876cefa6cf9d2b1a33c76947ecfa942601dccf618e9e82d4e9e4825c17f` |
| 13 | `def` | [ofMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/ofmonoidhom--cd9afa7202e48f10fbf0df61.md) | 116 | `declaration-track:cd9afa7202e48f10fbf0df61e221873f14f2bb5f4c0e31c81cbafa3f81a46c06` |
| 14 | `def` | [conjAct](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/conjact--4abba2392da0a76c174bc1ef.md) | 149 | `declaration-track:4abba2392da0a76c174bc1ef24a58ff4b180ef5ddf478fa339fbff4cb521286b` |
| 15 | `def` | [semidirectProductToGroupExtensionEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/semidirectproducttogroupextensionequiv--4d9316c3512873cfd6adaac4.md) | 152 | `declaration-track:4d9316c3512873cfd6adaac44e2e04cbd4ebc9a46b2a94382c007a772326da8f` |
| 16 | `def` | [semidirectProductMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/semidirectproductmulequiv--e5cd300e323d9112e42219ba.md) | 178 | `declaration-track:e5cd300e323d9112e42219ba80bf9f4ea961234948ee51564f9037e3de659777` |
| 17 | `theorem` | [refl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/refl--7da9cf0feb50709068d75e3f.md) | 187 | `result-track:7da9cf0feb50709068d75e3f2b78c6462eea642757d83e2f64bc19fd98d1212a` |
| 18 | `theorem` | [symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/symm--f393363639cd4ef9d1e64428.md) | 192 | `result-track:f393363639cd4ef9d1e6442872dada219ecdda63a1abadf1dbe166a22a0d80ac` |
| 19 | `theorem` | [trans](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/trans--2c0afdde74dade3342fdc413.md) | 198 | `result-track:2c0afdde74dade3342fdc4137ee606076b8c735d253f0ad7f41b1a858fecec6b` |
| 20 | `def` | [setoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/setoid--fd581798d658e1315f3726d0.md) | 206 | `declaration-track:fd581798d658e1315f3726d08eca96d98051bd3b5853562e6e65ca187685f438` |
| 21 | `def` | [ConjClasses](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/conjclasses--72c8216fb76797e941bb8263.md) | 217 | `declaration-track:72c8216fb76797e941bb82637672f3fb3eaba81a3e19f0adb4c404f03cffbfc2` |
| 22 | `theorem` | [right_splitting](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant489bb11770a76a7e3f9e30c35db498521c2855a94514e01ca306087e65082800.lean/declarations/right-splitting--bf865cf813dd2245e7940275.md) | 225 | `result-track:bf865cf813dd2245e79402754b689113738ba751f6248c6cf8716c589981b71c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
