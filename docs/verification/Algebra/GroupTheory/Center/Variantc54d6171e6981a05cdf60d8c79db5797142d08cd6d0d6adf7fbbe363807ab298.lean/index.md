# Verification target: GRWTSK.Algebra.GroupTheory.Center.Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abf7b779137256f2a85575d11ff819acc25b86c1",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abf7b779137256f2a85575d11ff819acc25b86c1`.

Source path: `GRWTSK/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Invertible.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsAddCentral](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/isaddcentral--ab83d9bf4ba953d0edce155d.md) | 45 | `declaration-track:ab83d9bf4ba953d0edce155d9cdd9c5ab493b01550250ff2bfbad41dbf34811f` |
| 2 | `structure` | [IsMulCentral](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/ismulcentral--177db3f21e73bab6535407aa.md) | 57 | `declaration-track:177db3f21e73bab6535407aa88fcc5b2669386033d2fc977a6fc934f10bf6fc0` |
| 3 | `theorem` | [left_comm](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/left-comm--73f1df8a8348eb27215f7835.md) | 76 | `result-track:73f1df8a8348eb27215f78354a364f264d33355baed262cec47102ddfcaa5ac6` |
| 4 | `theorem` | [right_comm](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/right-comm--ddfca58aefb4e5685c8bc149.md) | 81 | `result-track:ddfca58aefb4e5685c8bc1499f1c5231d38453bd5f5213221de500a2c800f651` |
| 5 | `def` | [center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/center--730c5a0640b05607da6c6e0a.md) | 96 | `declaration-track:730c5a0640b05607da6c6e0a0bb17c454f353315c16f91f19ebf05f1b8ed5644` |
| 6 | `def` | [centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/centralizer--e97e7f0ad5ccf87cd3fddb6c.md) | 102 | `declaration-track:e97e7f0ad5ccf87cd3fddb6c9949ac0e5a93735f506be9784d28e1c789702312` |
| 7 | `theorem` | [mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/mem-center-iff--5f4fd11a231f7d0d7c64244b.md) | 105 | `result-track:5f4fd11a231f7d0d7c64244b1abc4a4576740f23b620d9e2a4944a67197556e3` |
| 8 | `lemma` | [mem_centralizer_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/mem-centralizer-iff--7fef39b0572564fd06dc758a.md) | 109 | `result-track:7fef39b0572564fd06dc758ad43c08bffad074d04975aaa4347fcfcef976118a` |
| 9 | `theorem` | [mul_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/mul-mem-center--023f97a5602cb484749eee5e.md) | 112 | `result-track:023f97a5602cb484749eee5ea2716d9f288773dd11294031f15d5c84a72aec54` |
| 10 | `lemma` | [center_subset_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/center-subset-centralizer--9492262d4b815ed73e41d675.md) | 136 | `result-track:9492262d4b815ed73e41d6758208830a46bcce1338e4594e64d42b0b69040e24` |
| 11 | `lemma` | [centralizer_union](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/centralizer-union--ca3769d5f9aed2dbf7b5ac67.md) | 140 | `result-track:ca3769d5f9aed2dbf7b5ac6746ce17b6492afe1fdb1ce63749eb4c3fed63c213` |
| 12 | `lemma` | [centralizer_subset](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/centralizer-subset--13a462b87d6629ef656ae0dc.md) | 144 | `result-track:13a462b87d6629ef656ae0dcd8961566cb32906cd1a2ee201507fe1580b1c9a4` |
| 13 | `lemma` | [subset_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/subset-centralizer-centralizer--6aee9aa53f42df1f72d8edcb.md) | 147 | `result-track:6aee9aa53f42df1f72d8edcb90948898a3e6feaa0c89394d7c897e7f2c8fced7` |
| 14 | `lemma` | [centralizer_centralizer_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/centralizer-centralizer-centralizer--5e5969e87ac2cf7d8c5238ee.md) | 153 | `result-track:5e5969e87ac2cf7d8c5238ee993aae2164671d8d33f06680a5ee45b43d977625` |
| 15 | `instance` | [decidableMemCentralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/decidablememcentralizer--952f40a4c52aa063a9459450.md) | 163 | `declaration-track:952f40a4c52aa063a94594509be8188d79490f34633440d9b681fcce9ceb0baa` |
| 16 | `lemma` | [centralizer_centralizer_comm_of_comm](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/centralizer-centralizer-comm-of-comm--059ecf7c486dd0a2a5f99f93.md) | 167 | `result-track:059ecf7c486dd0a2a5f99f93ff2efcdad9ed6baab3c2c707ee0e6cb8c7d21ebc` |
| 17 | `theorem` | [_root_.Semigroup.mem_center_iff](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/root-semigroup-mem-center-iff--97fcdfa4e853799996fc50d6.md) | 177 | `result-track:97fcdfa4e853799996fc50d6b801d700b1ad2bebaff6b6d6168bdde12df8a763` |
| 18 | `lemma` | [mul_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/mul-mem-centralizer--f4c154079545577fc6af253a.md) | 183 | `result-track:f4c154079545577fc6af253a80d24d425d07bdbfbf8e65316d8708df68434036` |
| 19 | `theorem` | [centralizer_eq_top_iff_subset](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/centralizer-eq-top-iff-subset--46246fb1b069b2d05e984f01.md) | 188 | `result-track:46246fb1b069b2d05e984f01894d794bb705933b8dd113c8bc146351dc079eb7` |
| 20 | `lemma` | [centralizer_univ](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/centralizer-univ--0c846a76017173e1e9c5011e.md) | 195 | `result-track:0c846a76017173e1e9c5011e1412055bd379846d39d02167ca51b0e691a8d2fd` |
| 21 | `instance` | [decidableMemCenter](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/decidablememcenter--07cbb963aae7c37988a46a45.md) | 201 | `declaration-track:07cbb963aae7c37988a46a451b88378e16a1491dd3df87c3f8fb2f834f2913e5` |
| 22 | `theorem` | [center_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/center-eq-univ--b8b905bcd9d3d15484631908.md) | 212 | `result-track:b8b905bcd9d3d154846319086f6e70fe1f3f62a65052a6f4839c0b7e21465d02` |
| 23 | `lemma` | [centralizer_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/centralizer-eq-univ--6546ce30897ae9b10bb576b3.md) | 216 | `result-track:6546ce30897ae9b10bb576b30de172c1a47ba8c635c46a93173df1e8091bb3af` |
| 24 | `theorem` | [one_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/one-mem-center--e6eb2ee683643b95f64536cd.md) | 225 | `result-track:e6eb2ee683643b95f64536cd95d32c20639a70509d851a2dd33c2db35758160c` |
| 25 | `lemma` | [one_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/one-mem-centralizer--bff139f40ca3ff995625de7f.md) | 232 | `result-track:bff139f40ca3ff995625de7fe588fb4e85e200adc2e3f528d13a6cc7f432de5d` |
| 26 | `theorem` | [subset_center_units](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/subset-center-units--9a7ae2b0abf0304d9a799cc4.md) | 240 | `result-track:9a7ae2b0abf0304d9a799cc4f1a08345b120705881a7ef82c6c4a538cbccb093` |
| 27 | `theorem` | [units_inv_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/units-inv-mem-center--c5e5a4e3c61ffe71905a1c67.md) | 247 | `result-track:c5e5a4e3c61ffe71905a1c67d3ad4c9627af2c5dc56264d03571859bd1a01761` |
| 28 | `theorem` | [invOf_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/invof-mem-center--ca1436660f856c9f2b258ac8.md) | 252 | `result-track:ca1436660f856c9f2b258ac8f4c4f3dff73fe2b1684b610a91a5fee26eae34cc` |
| 29 | `theorem` | [inv_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/inv-mem-center--04e08b8a418d372fb68c4d63.md) | 262 | `result-track:04e08b8a418d372fb68c4d6326b081197252267c87a6486a395f978e2ce21eee` |
| 30 | `theorem` | [div_mem_center](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/div-mem-center--bcb70f0ef0c39428ce87057a.md) | 268 | `result-track:bcb70f0ef0c39428ce87057a1ee7b0cd62b3737a329bc1df767213d374e0204f` |
| 31 | `lemma` | [inv_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/inv-mem-centralizer--8d6bf0fb409381f6c867b973.md) | 278 | `result-track:8d6bf0fb409381f6c867b9739563f9ca8808c4290cca873e0f0c4c17faf846c2` |
| 32 | `lemma` | [div_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Center/Variantc54d6171e6981a05cdf60d8c79db5797142d08cd6d0d6adf7fbbe363807ab298.lean/declarations/div-mem-centralizer--e44c9ff6aa73b38432ed82c0.md) | 282 | `result-track:e44c9ff6aa73b38432ed82c09d152fe99611b93c7956c430f35fd649e2d33687` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
