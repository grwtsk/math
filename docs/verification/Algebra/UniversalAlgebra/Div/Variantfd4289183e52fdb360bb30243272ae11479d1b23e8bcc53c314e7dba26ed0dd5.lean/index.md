# Verification target: GRWTSK.Algebra.UniversalAlgebra.Div.Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8419d29eb84e4233469de889e5983f6b6040c6c1",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8419d29eb84e4233469de889e5983f6b6040c6c1`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv--801bbd9f0e598343944f78fd.md) | 58 | `declaration-track:801bbd9f0e598343944f78fdefff193bb014d504196adb74612b6d4d0302d742` |
| 2 | `class` | [CeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv--eec069244532e2998a541b81.md) | 70 | `declaration-track:eec069244532e2998a541b810516842bec794c0f92e84cfdfe0e8f818caf848e` |
| 3 | `lemma` | [gc_floorDiv_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/gc-floordiv-smul--99573182ee620ee1f78c7728.md) | 88 | `result-track:99573182ee620ee1f78c7728488d5b062c82d4cb48fb11ac812120e1b9975f82` |
| 4 | `lemma` | [le_floorDiv_iff_smul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/le-floordiv-iff-smul-le--e75a4063215c8ba9ec17b944.md) | 91 | `result-track:e75a4063215c8ba9ec17b94421238f48a9c4e7d1b697f57ef956f95fe05e7c49` |
| 5 | `lemma` | [floorDiv_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv-of-nonpos--41a82b77bfcb4325e1aad024.md) | 94 | `result-track:41a82b77bfcb4325e1aad02427c64f4807ab7e462aec45fda220505a735cfd7c` |
| 6 | `lemma` | [floorDiv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv-zero--95580c51d00237b321c237f4.md) | 95 | `result-track:95580c51d00237b321c237f46aa285684deabd4a0663bb993f7a706dd0b24cc1` |
| 7 | `lemma` | [zero_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/zero-floordiv--33bdac6bd3cac7aff45089ab.md) | 96 | `result-track:33bdac6bd3cac7aff45089ab56cded806ba228fb6db4cd863b4b129df7a15973` |
| 8 | `lemma` | [smul_floorDiv_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/smul-floordiv-le--b08e88de0a5125674c0591ab.md) | 98 | `result-track:b08e88de0a5125674c0591ab3e6b241dc3198001a9b36aeaabd73bcbf9ec1b89` |
| 9 | `lemma` | [gc_smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/gc-smul-ceildiv--4fa608726762c064c51acdf0.md) | 105 | `result-track:4fa608726762c064c51acdf0f8ab32ffe38af43ee2247d16b92da6ab6d6630d3` |
| 10 | `lemma` | [ceilDiv_le_iff_le_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-le-iff-le-smul--25d74d095ab21d804e0933f5.md) | 109 | `result-track:25d74d095ab21d804e0933f502e62022162a064e7404fd2bff5953fc974c8089` |
| 11 | `lemma` | [ceilDiv_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-of-nonpos--3bd236769dfea8abb5302882.md) | 111 | `result-track:3bd236769dfea8abb5302882c970ccf652c12bea71e5171f99cfa9273387b3d2` |
| 12 | `lemma` | [ceilDiv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-zero--06cad61cd9cb5b939e3194b6.md) | 112 | `result-track:06cad61cd9cb5b939e3194b6afac6e17499a9e660382c9a86ddb99e293fb5ec7` |
| 13 | `lemma` | [zero_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/zero-ceildiv--7b3d21173de1d65bbfcc20f1.md) | 113 | `result-track:7b3d21173de1d65bbfcc20f13b2ccfc39d85e0b71fa565bdbf6f2631ed1c893e` |
| 14 | `lemma` | [le_smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/le-smul-ceildiv--7faa773af8b07c2800fd66b2.md) | 115 | `result-track:7faa773af8b07c2800fd66b20b24c30dbb3f02761cd0889364a4a26d39da893c` |
| 15 | `lemma` | [floorDiv_le_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv-le-ceildiv--6f083fd3bde4ee550978b3db.md) | 124 | `result-track:6f083fd3bde4ee550978b3db3322824f887ae9c7de0742a7bfd0486988c41e32` |
| 16 | `lemma` | [floorDiv_one](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv-one--06baced3b1ee8d7ac0e40c88.md) | 137 | `result-track:06baced3b1ee8d7ac0e40c8835d54b6dfe1263f6e3223f367d3b0add8980f5ae` |
| 17 | `lemma` | [smul_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/smul-floordiv--92ef12ca75674072b9975b14.md) | 140 | `result-track:92ef12ca75674072b9975b14b2ab61355c1e809aced894167bd6175fd013487a` |
| 18 | `lemma` | [ceilDiv_one](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-one--c4fd669e1977a0173f43a06b.md) | 149 | `result-track:c4fd669e1977a0173f43a06baa2f596a8ff37df9ad38a45a1db05342941e4ed7` |
| 19 | `lemma` | [smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/smul-ceildiv--9c576fac4fe82982c23b3e4e.md) | 152 | `result-track:9c576fac4fe82982c23b3e4e88cf8e4b47c26558e2bd9dcde9d7e63242f6fb49` |
| 20 | `lemma` | [gc_floorDiv_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/gc-floordiv-mul--8dc8d47293fff367a5656d5b.md) | 161 | `result-track:8dc8d47293fff367a5656d5bfe45b5a86b56f903d54bfdef04b6b2a80a4d4fa0` |
| 21 | `lemma` | [le_floorDiv_iff_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/le-floordiv-iff-mul-le--ff53a24fcb50ff7d3af2d235.md) | 162 | `result-track:ff53a24fcb50ff7d3af2d2352e5dace8c3bf1a869e4c501ebb654ff7b3d7fb45` |
| 22 | `lemma` | [gc_mul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/gc-mul-ceildiv--dab77514576efefcf3c9fc87.md) | 169 | `result-track:dab77514576efefcf3c9fc87f671dc6dac9ab615ea465646c0442af8742d31f3` |
| 23 | `lemma` | [ceilDiv_le_iff_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-le-iff-le-mul--aac8b907b28ec02cee413e3c.md) | 170 | `result-track:aac8b907b28ec02cee413e3c23d544d65e43c3146f887ac7d1c5b186ec588007` |
| 24 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/instfloordiv--1cf1541b0f38f4908fcbfcaa.md) | 177 | `declaration-track:1cf1541b0f38f4908fcbfcaaa8a4077c802abccfb5fa22110c4715e2b4223544` |
| 25 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/instceildiv--84ebba66302392985b7a745b.md) | 183 | `declaration-track:84ebba66302392985b7a745ba92f83eb6a93673cfd1124cd6149497a8fb567dd` |
| 26 | `lemma` | [floorDiv_eq_div](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv-eq-div--e36d23671c3599f0347880af.md) | 190 | `result-track:e36d23671c3599f0347880af899272b6e073f3e493162b21e4a73b3431a51ad0` |
| 27 | `lemma` | [ceilDiv_eq_add_pred_div](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-eq-add-pred-div--fc504ab50b65252eddae9898.md) | 191 | `result-track:fc504ab50b65252eddae989817d37518575ab73eb3b343f8d7d739ec7e690948` |
| 28 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/instfloordiv--dc80f1819a60b165bc6d9318.md) | 203 | `declaration-track:dc80f1819a60b165bc6d9318578c45c5523807a8fb9ccc4903778010e12d9ff2` |
| 29 | `lemma` | [floorDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv-def--66e504db9eecd6fee7ef1eb3.md) | 209 | `result-track:66e504db9eecd6fee7ef1eb3d7a1bf93a7d8128d58a56bf46b90187c1516f03a` |
| 30 | `lemma` | [floorDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv-apply--a3a31da9a8d21a4cba35be3c.md) | 210 | `result-track:a3a31da9a8d21a4cba35be3c282127eadcb61b297eb5bf6b84198666b3d62636` |
| 31 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/instceildiv--545d6f9cf2699e1f7519b8ca.md) | 217 | `declaration-track:545d6f9cf2699e1f7519b8caceba87836904dce5124a1308f4eab9e9eb17bb7b` |
| 32 | `lemma` | [ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-def--1ef66fe933d7603ffc634638.md) | 223 | `result-track:1ef66fe933d7603ffc6346383e6d6e569cfe832b1cf040f28623c672ece2998c` |
| 33 | `lemma` | [ceilDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-apply--e446b5f59992610fb3a2831a.md) | 224 | `result-track:e446b5f59992610fb3a2831a6f394f4f4507209c3617e600fa15ff7a8e7c3c9f` |
| 34 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/instfloordiv--dabaa782e105de004a6a0d68.md) | 236 | `declaration-track:dabaa782e105de004a6a0d68d62a33f650903a11e98c58c42f38c78318d7cff3` |
| 35 | `lemma` | [floorDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv-def--788aac53186b0e960f963f9d.md) | 243 | `result-track:788aac53186b0e960f963f9d20bac73146289c36367d7224e932396551b8c8a3` |
| 36 | `lemma` | [coe_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/coe-floordiv--b086e00421666856c49afab6.md) | 244 | `result-track:b086e00421666856c49afab6e92e8f4a5c6b0188f5a0ee029cdde9c93a342cb3` |
| 37 | `lemma` | [floorDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/floordiv-apply--8f798506f51fbded277e13ab.md) | 245 | `result-track:8f798506f51fbded277e13abfe033ccab24e5a2f288eb7bd410343873b1b0bfe` |
| 38 | `lemma` | [support_floorDiv_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/support-floordiv-subset--69781ca3e3ad65215402a129.md) | 247 | `result-track:69781ca3e3ad65215402a12909cbdc78c362a554a3c1f052e51a38e8af78476a` |
| 39 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/instceildiv--1307cc3118a773888e8cf8a4.md) | 255 | `declaration-track:1307cc3118a773888e8cf8a4aee9c3bfced1ca5bf7272aa033b8d6e98eecaf54` |
| 40 | `lemma` | [ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-def--20aea74dcb7f84256329780d.md) | 262 | `result-track:20aea74dcb7f84256329780d8e73e9f4aa95b978caae0e1121935df587c7d0f0` |
| 41 | `lemma` | [coe_ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/coe-ceildiv-def--9bc089f7ea13269e81531fdc.md) | 263 | `result-track:9bc089f7ea13269e81531fdc66fc03a5c2a4142e4bf7905eb922eed9ab291b2f` |
| 42 | `lemma` | [ceilDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/ceildiv-apply--c230b737674e8e5baa86b0be.md) | 264 | `result-track:c230b737674e8e5baa86b0bec5689aa73d2ab96d27434200d2cab071e839a1db` |
| 43 | `lemma` | [support_ceilDiv_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/support-ceildiv-subset--93cd71bc8531405d7a98ce0b.md) | 266 | `result-track:93cd71bc8531405d7a98ce0b8b38f50dc0edb1e59857eed5be70f079b6dacba7` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variantfd4289183e52fdb360bb30243272ae11479d1b23e8bcc53c314e7dba26ed0dd5.lean/declarations/example--95b2b9c6f9f279f3f2c2b2ae.md) | 273 | `declaration-track:95b2b9c6f9f279f3f2c2b2ae7fadaaaa0fd7f084872b53bbc942fde669ca78be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
