# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Symmetric.Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5af86fead33a24ae77d27522f6afda303c7ee015",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5af86fead33a24ae77d27522f6afda303c7ee015`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.MvPolynomial.Rename` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.CommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/esymm--71d06febc7340f16c517c3b5.md) | 61 | `declaration-track:71d06febc7340f16c517c3b558cddd69ba7ba282e6ba16774c901427232ad40e` |
| 2 | `theorem` | [_root_.Finset.esymm_map_val](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/root-finset-esymm-map-val--febf4c45c096bd3e99fac7a9.md) | 65 | `result-track:febf4c45c096bd3e99fac7a94badc9a41a250cb2a69f9d95b8b6a86a771da1e2` |
| 3 | `def` | [IsSymmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/issymmetric--fed2acc1e8c34bcd702109fe.md) | 81 | `declaration-track:fed2acc1e8c34bcd702109fe27def638530e6b2e9d7198df3a65a3e09129944b` |
| 4 | `def` | [symmetricSubalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/symmetricsubalgebra--c2009a785047ef3a41e9b8df.md) | 88 | `declaration-track:c2009a785047ef3a41e9b8df34c4d515ceefc27f6dff8906a5de6d5e8f379055` |
| 5 | `theorem` | [mem_symmetricSubalgebra](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/mem-symmetricsubalgebra--f330f5f83c9c12faddfee3fc.md) | 98 | `result-track:f330f5f83c9c12faddfee3fc9e2f9592f73b5f815bfbac95f1415a083706950e` |
| 6 | `theorem` | [C](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/c--4778945bbde6d128aa6276f7.md) | 110 | `result-track:4778945bbde6d128aa6276f7599b92c31d42e726f850c6e7a4063080a84103b2` |
| 7 | `theorem` | [zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/zero--6c81d914cfaa0a38c4669a5c.md) | 116 | `result-track:6c81d914cfaa0a38c4669a5ca8d148b14087951b2f6dde24ef32ad059d89a132` |
| 8 | `theorem` | [one](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/one--d081517ef5871210b0cb4653.md) | 121 | `result-track:d081517ef5871210b0cb46531a4c7b583a5ba9d323cfbfae93034495185a4224` |
| 9 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/add--1776168c8d8d300660cb756f.md) | 125 | `result-track:1776168c8d8d300660cb756fe49aeb89d2dec46b20168784964617b846d1e14f` |
| 10 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/mul--a671903dc7f97602993fc9cb.md) | 129 | `result-track:a671903dc7f97602993fc9cb096f35b486a348198c93474e200fcc0692b0fa71` |
| 11 | `theorem` | [smul](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/smul--bdc8da35074ca4028dfaf1cd.md) | 133 | `result-track:bdc8da35074ca4028dfaf1cd27c32384ee975ea116e66f0736dfd4423deaefc7` |
| 12 | `theorem` | [map](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/map--44cabf4d7903c59928c4f5b0.md) | 138 | `result-track:44cabf4d7903c59928c4f5b0aebc906fa5995fc2c56860873af1b9c9e39486b2` |
| 13 | `theorem` | [neg](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/neg--542f38213616105f6063d00f.md) | 148 | `result-track:542f38213616105f6063d00fd64daba16188e20dc5d015c4eb319c956e89837a` |
| 14 | `theorem` | [sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/sub--6fed9e067c0da28058c992e6.md) | 152 | `result-track:6fed9e067c0da28058c992e666713c1e5f2d978b698e36420ce97dac6bb0be07` |
| 15 | `def` | [esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/esymm--7403862aea372fe76eea94db.md) | 167 | `declaration-track:7403862aea372fe76eea94db1bd586642929516ef39d33b310320047fb307c62` |
| 16 | `theorem` | [esymm_eq_multiset_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/esymm-eq-multiset-esymm--53848e115e116dd2cd799726.md) | 173 | `result-track:53848e115e116dd2cd7997269be8503eeb9e8f20acfb93a9167559a8461c0dd9` |
| 17 | `theorem` | [aeval_esymm_eq_multiset_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/aeval-esymm-eq-multiset-esymm--ce93a1eb9ec0d4f37f1c96d9.md) | 177 | `result-track:ce93a1eb9ec0d4f37f1c96d95b0ae865dfdf2933e1d0d28f4f6d8fd297eb2762` |
| 18 | `theorem` | [esymm_eq_sum_subtype](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/esymm-eq-sum-subtype--b8e5cd5a7f5b9bbc161071c4.md) | 183 | `result-track:b8e5cd5a7f5b9bbc161071c472f4c1cc4d067a470f2c6e234ca08ae4d433416d` |
| 19 | `theorem` | [esymm_eq_sum_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/esymm-eq-sum-monomial--4efba4bcc55cc46f907ca506.md) | 189 | `result-track:4efba4bcc55cc46f907ca50665ebf458ebb7af857200ea32ebc8ca43467dbe6c` |
| 20 | `theorem` | [esymm_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/esymm-zero--5573d902f0b04b18283c7b31.md) | 196 | `result-track:5573d902f0b04b18283c7b31cc0d38e6882ab6b1ab10342b456e40163696399f` |
| 21 | `theorem` | [map_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/map-esymm--756093367f9735a9f037c831.md) | 200 | `result-track:756093367f9735a9f037c8310a0ec8c482033c5878039f12a7a40a22f0f827db` |
| 22 | `theorem` | [rename_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/rename-esymm--53edb632bf47ce1d509b62f2.md) | 204 | `result-track:53edb632bf47ce1d509b62f2b46699b2a91620aa900266b961237baccb8c4eca` |
| 23 | `theorem` | [esymm_isSymmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/esymm-issymmetric--1167f677b77de8642ad77f55.md) | 216 | `result-track:1167f677b77de8642ad77f55dc8c3682532a640ae51a7007b19edb398b1de85c` |
| 24 | `theorem` | [support_esymm''](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/support-esymm--575c9641a82df549e581cc57.md) | 221 | `result-track:575c9641a82df549e581cc57ac123f1207da51822efed424d1a82a6f2e0e474b` |
| 25 | `theorem` | [support_esymm'](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/support-esymm--0242fde3cda1829c68b9be1f.md) | 246 | `result-track:0242fde3cda1829c68b9be1f7643714bf7c9f9142190e86d93402084e331d784` |
| 26 | `theorem` | [support_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/support-esymm--9125785542a96df324444345.md) | 255 | `result-track:9125785542a96df324444345d3f39c2c794dc9a9186aa4253ac3c9de42a0bc7b` |
| 27 | `theorem` | [degrees_esymm](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/degrees-esymm--9a61a2e9f5d2ed271b0970f5.md) | 262 | `result-track:9a61a2e9f5d2ed271b0970f5897726f458ba9300b1a6624bb3b7b6d19b3a88d1` |
| 28 | `def` | [psum](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/psum--3fb08c3541a05018aa643076.md) | 291 | `declaration-track:3fb08c3541a05018aa64307697fa9d70fc9b2cfa2feacdb39db38c41cf261601` |
| 29 | `lemma` | [psum_def](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/psum-def--925beb25f6c5d20bafbd82aa.md) | 293 | `result-track:925beb25f6c5d20bafbd82aafd8e23bca69043a2944d681890f5a7f011687cff` |
| 30 | `theorem` | [psum_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/psum-zero--ab3577cda5d8f571ab307ea5.md) | 296 | `result-track:ab3577cda5d8f571ab307ea595b411678ded3a65298d7afd84828b71a7138fe0` |
| 31 | `theorem` | [psum_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/psum-one--f99b70ce7adc442c43edf549.md) | 301 | `result-track:f99b70ce7adc442c43edf549d89b72a807956c3cb0a79e567e66b77cc7ceeadd` |
| 32 | `theorem` | [rename_psum](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/rename-psum--d546a00fc325292b5c7ffbdf.md) | 305 | `result-track:d546a00fc325292b5c7ffbdf7d59db63a8e21f466b025e132058a995efffea9c` |
| 33 | `theorem` | [psum_isSymmetric](../../../../../mathematics/Algebra/CommutativeAlgebra/Symmetric/Variant8750478b02db1bb302781c489dc1b375a6f1674124f34cfda29e0eb56b15ea8d.lean/declarations/psum-issymmetric--a4959db1a588fd02602d3462.md) | 308 | `result-track:a4959db1a588fd02602d34625695594ec0253983ab12e23b1c23cdfc963474e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
