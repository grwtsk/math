# Verification target: GRWTSK.Algebra.CommutativeAlgebra.EraseLead.Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77d0b67e13c975b996bdd72eceb85b4e6471718c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77d0b67e13c975b996bdd72eceb85b4e6471718c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Degree.Definitions` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead--8e30f625ddd22b7e66360f32.md) | 44 | `declaration-track:8e30f625ddd22b7e66360f326cc0e5a2ed3192334e09000586129f01f032fc36` |
| 2 | `theorem` | [eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-support--3100572808ed04f2311ffcfc.md) | 50 | `result-track:3100572808ed04f2311ffcfce873f2cce2fd6493a34ce5d3ae557e386a6d7748` |
| 3 | `theorem` | [eraseLead_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-coeff--5ac51b0242a38ec85e49dae2.md) | 54 | `result-track:5ac51b0242a38ec85e49dae2dbb56dbb35c3d540d878f0b24c265e5e92172c87` |
| 4 | `theorem` | [eraseLead_coeff_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-coeff-natdegree--d6269568d986b11f55ae85fb.md) | 59 | `result-track:d6269568d986b11f55ae85fb2f3799d437d30e30bce304211f68ad96b19077b1` |
| 5 | `theorem` | [eraseLead_coeff_of_ne](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-coeff-of-ne--813a18a7bc5673f568762668.md) | 62 | `result-track:813a18a7bc5673f568762668ad2afd64d73bf93b218969836a59c745fa9c35ad` |
| 6 | `theorem` | [eraseLead_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-zero--ae7fc6444272bf019c899ee3.md) | 67 | `result-track:ae7fc6444272bf019c899ee347522e6d62c2ede50987277a12ea93c9b2e79326` |
| 7 | `theorem` | [eraseLead_add_monomial_natDegree_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-add-monomial-natdegree-leadingcoeff--58f5eb64eea80d41650fa9f4.md) | 71 | `result-track:58f5eb64eea80d41650fa9f4e8646e49dcca2ddb93e9ee4d7e713bb423133359` |
| 8 | `theorem` | [eraseLead_add_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-add-c-mul-x-pow--e1051b6acb038ad61183b3fc.md) | 77 | `result-track:e1051b6acb038ad61183b3fc534062158be589c64013828bce58ba41c1a6ad5b` |
| 9 | `theorem` | [self_sub_monomial_natDegree_leadingCoeff](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/self-sub-monomial-natdegree-leadingcoeff--77cffbebfcf090b191e9deca.md) | 84 | `result-track:77cffbebfcf090b191e9deca8681ba60284eeeaa2eaccc0f09da543642374480` |
| 10 | `theorem` | [self_sub_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/self-sub-c-mul-x-pow--ee97ec848fa6d15854c87a6b.md) | 90 | `result-track:ee97ec848fa6d15854c87a6b19d6ad5cf085199c8cdd79127acae01548e1ab49` |
| 11 | `theorem` | [eraseLead_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-ne-zero--484c95fe30aa759f65434e8b.md) | 96 | `result-track:484c95fe30aa759f65434e8bf5fc23f6c5561431ac5505182f077da785a0dd69` |
| 12 | `theorem` | [lt_natDegree_of_mem_eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/lt-natdegree-of-mem-eraselead-support--176a33a149ceca6dd8ad4c85.md) | 102 | `result-track:176a33a149ceca6dd8ad4c85030e3e736e16b8b24b2e99950f4a30f07e54f463` |
| 13 | `theorem` | [ne_natDegree_of_mem_eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/ne-natdegree-of-mem-eraselead-support--881349b7dfc0b2e88f6a2326.md) | 108 | `result-track:881349b7dfc0b2e88f6a2326c12e1e3072d128e465076e9dc5eacbfc52e6716c` |
| 14 | `theorem` | [natDegree_not_mem_eraseLead_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/natdegree-not-mem-eraselead-support--76323799cd96fa3ba32d4019.md) | 113 | `result-track:76323799cd96fa3ba32d4019e9f531a5821beb8a0bb36199f165cab9e01a1b01` |
| 15 | `theorem` | [eraseLead_support_card_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-support-card-lt--3827994015b88126c79498d1.md) | 117 | `result-track:3827994015b88126c79498d1080a732e09ed15f64c7ce915c2f64176ce0479e7` |
| 16 | `theorem` | [eraseLead_card_support](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-card-support--2166437d74d504d67a7e0ec6.md) | 122 | `result-track:2166437d74d504d67a7e0ec65cfe169b5fe223ea17bf7903f22081aff0d5958e` |
| 17 | `theorem` | [eraseLead_card_support'](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-card-support--9f22fd789afc3a4458c99ae8.md) | 129 | `result-track:9f22fd789afc3a4458c99ae82f0a2c41599443d22d33df06d28b5500d691955e` |
| 18 | `theorem` | [eraseLead_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-monomial--27e6ece80f9d786aa7d42c5b.md) | 135 | `result-track:27e6ece80f9d786aa7d42c5b2a734f26fbc83c09bb2c28a3c77034c919ffe6ef` |
| 19 | `theorem` | [eraseLead_C](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-c--22e5db813307b72ffddcd2e3.md) | 143 | `result-track:22e5db813307b72ffddcd2e3bfa554d640530a88631496b0a6594d868d26deea` |
| 20 | `theorem` | [eraseLead_X](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-x--40d5d78efa767e60d9d4c3aa.md) | 149 | `result-track:40d5d78efa767e60d9d4c3aaf7fe1a8dbda37edbb014d92a5b3f15af5684c171` |
| 21 | `theorem` | [eraseLead_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-x-pow--712e546b46e7c890381fdca2.md) | 155 | `result-track:712e546b46e7c890381fdca26f9c00d7f943e48e4560ab6da64e253e5c9dfd97` |
| 22 | `theorem` | [eraseLead_C_mul_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-c-mul-x-pow--628aea2cd0dcc2885685507a.md) | 161 | `result-track:628aea2cd0dcc2885685507a1ceb0ccd242e21d243261a9bf9a586b651036ff7` |
| 23 | `theorem` | [eraseLead_add_of_natDegree_lt_left](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-add-of-natdegree-lt-left--ce05116bbc93decbc43ce6f7.md) | 166 | `result-track:ce05116bbc93decbc43ce6f79e05535fd15eb78a413faf12fcc005e6bbe7168d` |
| 24 | `theorem` | [eraseLead_add_of_natDegree_lt_right](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-add-of-natdegree-lt-right--78bc0034afc956951af2bfcd.md) | 177 | `result-track:78bc0034afc956951af2bfcdd5037e8dafbd13395b92ba1dc42f868926c321db` |
| 25 | `theorem` | [eraseLead_degree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-degree-le--ee253c0ec4b28c80a4144929.md) | 188 | `result-track:ee253c0ec4b28c80a41449297cf1c7f82ce36114992512463a5e716ee400b752` |
| 26 | `theorem` | [eraseLead_natDegree_le_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-natdegree-le-aux--81f775762b46a50fb14a327d.md) | 192 | `result-track:81f775762b46a50fb14a327d5a5298f492bf71105062e42897047e5e5b079cd6` |
| 27 | `theorem` | [eraseLead_natDegree_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-natdegree-lt--2381120bd76f1bd9c2fabcff.md) | 196 | `result-track:2381120bd76f1bd9c2fabcff710d3add654510b7fd699d6ad954e961a258ba46` |
| 28 | `theorem` | [eraseLead_natDegree_lt_or_eraseLead_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-natdegree-lt-or-eraselead-eq-zero--e631ce2f7965eb02f648963a.md) | 202 | `result-track:e631ce2f7965eb02f648963a87319b6166e0e2fea034df1f2cc932e6d6d2edd5` |
| 29 | `theorem` | [eraseLead_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/eraselead-natdegree-le--4dd7be9e51bae5d743e9dc85.md) | 212 | `result-track:4dd7be9e51bae5d743e9dc85c0ad7426adedb20f0694e739263b21964d1dc089` |
| 30 | `theorem` | [induction_with_natDegree_le](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/induction-with-natdegree-le--2b5ec762b9eed316729568de.md) | 224 | `result-track:2b5ec762b9eed316729568dec4813f1552b3cde4bda72dcd2667559c57ef31f0` |
| 31 | `theorem` | [mono_map_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/mono-map-natdegree-eq--9cc5e7c0a607e9810574ca1a.md) | 261 | `result-track:9cc5e7c0a607e9810574ca1ada0e8d6ca6ded64480a44d52019175df7f6eda1f` |
| 32 | `theorem` | [map_natDegree_eq_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/map-natdegree-eq-sub--a573cc91ca3b45c2fd861be5.md) | 281 | `result-track:a573cc91ca3b45c2fd861be57e3570b2cac28757b6ea4a1bb3c2b762fa0d631c` |
| 33 | `theorem` | [map_natDegree_eq_natDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/map-natdegree-eq-natdegree--b97440451cc1b9ab56b7c9f6.md) | 290 | `result-track:b97440451cc1b9ab56b7c9f6eb2a90fbb4cb33657381c9b197b7a7762cb58066` |
| 34 | `theorem` | [card_support_eq'](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/card-support-eq--b2dc3e800d92eb1d50b839ec.md) | 299 | `result-track:b2dc3e800d92eb1d50b839ec2f7741aa83bed252dbefd03eea91d300bf660c0f` |
| 35 | `theorem` | [card_support_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/card-support-eq--0f70beec7cc5e5bc8b360148.md) | 314 | `result-track:0f70beec7cc5e5bc8b36014861dec5e96a0a62bb69287f1bd926b53be07c74da` |
| 36 | `theorem` | [card_support_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/card-support-eq-one--e56881be31867a65a1ea15d3.md) | 360 | `result-track:e56881be31867a65a1ea15d357738cf248b43fd7f4bf86e4c6793ae717de3bae` |
| 37 | `theorem` | [card_support_eq_two](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/card-support-eq-two--4d22877a6778d3a4c83f7b10.md) | 369 | `result-track:4d22877a6778d3a4c83f7b10993bf30ac3f1cd2b31c2db7cbfd9b76db67271bd` |
| 38 | `theorem` | [card_support_eq_three](../../../../../mathematics/Algebra/CommutativeAlgebra/EraseLead/Variant25b3e1d281d6b9801c777c9863ca7a5394135be22678640201844635a4f063bf.lean/declarations/card-support-eq-three--afc28d1d74665a47c58caabd.md) | 382 | `result-track:afc28d1d74665a47c58caabd7b3c1011340a89273c912fad961859831fe5f094` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
