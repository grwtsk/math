# Verification target: GRWTSK.Algebra.LinearAlgebra.UnitaryGroup.Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c46ea6b75e96655396ea675b8c0dfef4260b969",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c46ea6b75e96655396ea675b8c0dfef4260b969`.

Source path: `GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Unitary` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [unitaryGroup](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/unitarygroup--579697e7731c712cef406257.md) | 55 | `declaration-track:579697e7731c712cef406257d9e10d3c2c2a70c4e505a32fc1ec387d36fd1f75` |
| 2 | `theorem` | [mem_unitaryGroup_iff](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/mem-unitarygroup-iff--97c30ec8d7431218b1b1ecdf.md) | 63 | `result-track:97c30ec8d7431218b1b1ecdfe06024c2c3a3b82216a2c7762839b8b2fbb23ae9` |
| 3 | `theorem` | [mem_unitaryGroup_iff'](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/mem-unitarygroup-iff--c0402c822c7c07ebb37bf146.md) | 67 | `result-track:c0402c822c7c07ebb37bf146898203ef9159d7ce11ce50ae5b3892fcd0f6cba7` |
| 4 | `theorem` | [det_of_mem_unitary](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/det-of-mem-unitary--5fd3b7df8d758584b5f08dd7.md) | 71 | `result-track:5fd3b7df8d758584b5f08dd7dc08c5fdb58a3b90b3d844d43827bb9e206f6790` |
| 5 | `instance` | [coeMatrix](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/coematrix--72d398d13ec8aa381b9a6736.md) | 79 | `declaration-track:72d398d13ec8aa381b9a673649a93095ec351d1ab0a0a6066ce46a2d287b1d93` |
| 6 | `instance` | [coeFun](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/coefun--cd10f2e3932e55f92e8236be.md) | 82 | `declaration-track:cd10f2e3932e55f92e8236be026103c0c7384bef59adb67dd209a568c8e7be21` |
| 7 | `def` | [toLin'](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/tolin--100965d1571b6ec6f444155c.md) | 89 | `declaration-track:100965d1571b6ec6f444155cb551152b2f260da38a227ae417b4d625f0ce442c` |
| 8 | `theorem` | [ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/ext-iff--ea31d02ca9ee93aa2eb96051.md) | 92 | `result-track:ea31d02ca9ee93aa2eb9605113b327e858abbf05be80ad53ebb23cad8859f5bb` |
| 9 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/ext--93dbfe01267668f94229d575.md) | 96 | `result-track:93dbfe01267668f94229d575c7f25ebb526ec9a547e6a7c7a898d5476ddef583` |
| 10 | `theorem` | [star_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/star-mul-self--497230e50f3df9c3acfb7d39.md) | 99 | `result-track:497230e50f3df9c3acfb7d3975017a0e276cec5091aceef5fde3bfe9474c6e65` |
| 11 | `theorem` | [det_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/det-isunit--b3e97ccb15faad3d4a51337b.md) | 103 | `result-track:b3e97ccb15faad3d4a51337ba1dd7dfd75f19fe8b0f94ea0346b0e55639ae0f7` |
| 12 | `theorem` | [inv_val](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/inv-val--aec556e3cd47b288d4807f23.md) | 110 | `result-track:aec556e3cd47b288d4807f23d22b3a57160f7ea4b2314ef988313b0c0b44100f` |
| 13 | `theorem` | [inv_apply](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/inv-apply--d2acf43cb609bfc6695d7a8d.md) | 112 | `result-track:d2acf43cb609bfc6695d7a8dc067a4120bba4c7fb87d0f1d9db93e052ccb9755` |
| 14 | `theorem` | [mul_val](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/mul-val--e1e2f82e6997a2cd12611ffe.md) | 114 | `result-track:e1e2f82e6997a2cd12611ffea3cad4a72f88770a14538c4c1a4c79e8eef2175e` |
| 15 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/mul-apply--b983c6dc315c321d4ddedb0c.md) | 116 | `result-track:b983c6dc315c321d4ddedb0c89edb37ad72190537cf0bfe8a5e63c3318705701` |
| 16 | `theorem` | [one_val](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/one-val--8504f5e739e9440ff7cf0d63.md) | 118 | `result-track:8504f5e739e9440ff7cf0d636a235f0b3f3a71c59832ac5d3679b95b1ede8300` |
| 17 | `theorem` | [one_apply](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/one-apply--7f36753ab444ec987c6e985f.md) | 120 | `result-track:7f36753ab444ec987c6e985f50caf1d971a0138dd76ac91eee7bc1173bcfa91f` |
| 18 | `theorem` | [toLin'_mul](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/tolin-mul--8a88d6dd04979bc31e916b32.md) | 123 | `result-track:8a88d6dd04979bc31e916b32ba85234624c6902df1b7e73020ce8d630b732762` |
| 19 | `theorem` | [toLin'_one](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/tolin-one--672815546de73ba4770ff291.md) | 127 | `result-track:672815546de73ba4770ff2912fd3d91d411cf8ccd5f8b9a79aa25b1a3d854669` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/example--6db18fa57a5901b2a13121bd.md) | 134 | `declaration-track:6db18fa57a5901b2a13121bd2d676eab41799294fd8a19111472542470cf5795` |
| 21 | `def` | [toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/tolinearequiv--3532e2a02c2594337df6c561.md) | 139 | `declaration-track:3532e2a02c2594337df6c5615aa86ee74c305bfaa4dee8aecaa1c9830abaf172` |
| 22 | `def` | [toGL](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/togl--e0cbc2f3efcf66d05db667fa.md) | 152 | `declaration-track:e0cbc2f3efcf66d05db667fa75fe959566d4a43964fae644e47c47b532f8661a` |
| 23 | `theorem` | [coe_toGL](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/coe-togl--231ac3032fe43cb5d5ef1d88.md) | 155 | `result-track:231ac3032fe43cb5d5ef1d88758ece8234aa0c0ebc8f53780f680b66987259c7` |
| 24 | `theorem` | [toGL_one](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/togl-one--974e7ace30e426f3023147df.md) | 158 | `result-track:974e7ace30e426f3023147dfc0bef99dd1032c43f351e32a696bf28a03bf2035` |
| 25 | `theorem` | [toGL_mul](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/togl-mul--f7fb70a8e12a8cf81593b438.md) | 163 | `result-track:f7fb70a8e12a8cf81593b4382a3a60770d52a6778a3a8d884b0ba6f5e243ce47` |
| 26 | `def` | [embeddingGL](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/embeddinggl--ba9f210fb96aaaaeef447a4e.md) | 169 | `declaration-track:ba9f210fb96aaaaeef447a4e9b5aae948de8a7b95484138a076f0f7091ecd45d` |
| 27 | `abbrev` | [specialUnitaryGroup](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/specialunitarygroup--08d23f6728bc8828c65befe6.md) | 180 | `declaration-track:08d23f6728bc8828c65befe65760ce10ee76d73332b996b9da689a451c43dabc` |
| 28 | `theorem` | [mem_specialUnitaryGroup_iff](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/mem-specialunitarygroup-iff--ed9d57f811e4cd07be92e7bd.md) | 184 | `result-track:ed9d57f811e4cd07be92e7bd72c9e9a03036c58a4575fe58272afcb8352be992` |
| 29 | `abbrev` | [orthogonalGroup](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/orthogonalgroup--a0e831621a9ee2a5ecc3fb74.md) | 201 | `declaration-track:a0e831621a9ee2a5ecc3fb743af8428254b44fa141a6d6684e9d7ecef3094c77` |
| 30 | `theorem` | [mem_orthogonalGroup_iff](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/mem-orthogonalgroup-iff--7a6992ddd643442f6ee76751.md) | 203 | `result-track:7a6992ddd643442f6ee76751fb81896aa8facbe6e8219cd35536cf04dd29ff09` |
| 31 | `theorem` | [mem_orthogonalGroup_iff'](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/mem-orthogonalgroup-iff--db3035c4261a1afd87d608d1.md) | 208 | `result-track:db3035c4261a1afd87d608d1f3de1ae2dec935a2e573b8ae596b12e6c32449c7` |
| 32 | `abbrev` | [specialOrthogonalGroup](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/specialorthogonalgroup--ab8e7434c233391325c91606.md) | 223 | `declaration-track:ab8e7434c233391325c91606fff57202fa725e5f43c073787462c2af2302f07e` |
| 33 | `theorem` | [mem_specialOrthogonalGroup_iff](../../../../../mathematics/Algebra/LinearAlgebra/UnitaryGroup/Variant6f8d6c1e77f2f38dd8c9f08f7a4d335a39b8ba56115ee59f9252f965477f1b28.lean/declarations/mem-specialorthogonalgroup-iff--57b769e82303b2c93041e0a3.md) | 227 | `result-track:57b769e82303b2c93041e0a364ab6dfeff3a8c2f7329e86280f3cdac75ee8054` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
