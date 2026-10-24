# Verification target: GRWTSK.Algebra.GroupTheory.Conj.Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d22ffdea080d876b8ff67ca2f449315b0c0b12a2",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d22ffdea080d876b8ff67ca2f449315b0c0b12a2`.

Source path: `GRWTSK/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Semiconj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Aut` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Group` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj--b96d933eeb106914190d0dbd.md) | 36 | `declaration-track:b96d933eeb106914190d0dbd5f07cbcefe5ad646f71da1d7357db41c28a07fdc` |
| 2 | `theorem` | [IsConj.refl](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-refl--2f3eeaa43a5ab6a2a5ab1885.md) | 41 | `result-track:2f3eeaa43a5ab6a2a5ab18855e634b78cee672fb9aaebfd911b2285043987e55` |
| 3 | `theorem` | [IsConj.symm](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-symm--728f7802fa7db3ddc65c1a66.md) | 46 | `result-track:728f7802fa7db3ddc65c1a66c7938dfcea677372c956310b3c7ca6e1815c5dc1` |
| 4 | `theorem` | [isConj_comm](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-comm--55e0c418a449d268970389b9.md) | 50 | `result-track:55e0c418a449d268970389b975a7c6a42d20d7babb5666e393282f92feeb91bc` |
| 5 | `theorem` | [IsConj.trans](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-trans--ab16473dad7e7004d1b8d3b0.md) | 55 | `result-track:ab16473dad7e7004d1b8d3b05b056ac1f9031560516d87a5e58a673ea0c74107` |
| 6 | `theorem` | [isConj_iff_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-iff-eq--deb3fc3f2f5f913b7d856ed9.md) | 60 | `result-track:deb3fc3f2f5f913b7d856ed98c397a09e60c0bac90cbb5a7fee068a069009113` |
| 7 | `theorem` | [MonoidHom.map_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/monoidhom-map-isconj--9d12ac06f6ac0554d2e0d062.md) | 66 | `result-track:9d12ac06f6ac0554d2e0d0623296afdf0bdabab0c486ba6a40e004cf2a1ab162` |
| 8 | `theorem` | [isConj_one_right](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-one-right--47cc7271a3beb270b699c40d.md) | 80 | `result-track:47cc7271a3beb270b699c40dd35113c079742e7762131bd3c52da2e8178c420f` |
| 9 | `theorem` | [isConj_one_left](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-one-left--71ce5f9643448d75c09e3936.md) | 86 | `result-track:71ce5f9643448d75c09e3936fd68f860b568c0217451969e59f95e63ab0f0bab` |
| 10 | `theorem` | [isConj_iff](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-iff--7f00fcefe155156e8aba2130.md) | 99 | `result-track:7f00fcefe155156e8aba213082f4da78f0d28a5c425b8d0caa91e9033f837aa3` |
| 11 | `theorem` | [conj_inv](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/conj-inv--c53b27950c1b712b9c02f590.md) | 106 | `result-track:c53b27950c1b712b9c02f590b60734334afe82fa1acb137920ab28e4b807d230` |
| 12 | `theorem` | [conj_mul](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/conj-mul--6403af149e55ac4497998586.md) | 111 | `result-track:6403af149e55ac4497998586023c02db4d5015788b93a9661b95ca6e966a7831` |
| 13 | `theorem` | [conj_pow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/conj-pow--335df33d64c1a7fe1ebb13fa.md) | 116 | `result-track:335df33d64c1a7fe1ebb13fafe38372cb85cb35eed4e8172ecbf3e38d4831671` |
| 14 | `theorem` | [conj_zpow](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/conj-zpow--55864a9fd031fbecd6b0bfab.md) | 123 | `result-track:55864a9fd031fbecd6b0bfabd7273676f5bf5b88d0fd1435e7504a883a30369c` |
| 15 | `theorem` | [conj_injective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/conj-injective--77fd29924e0482fefc6f864b.md) | 132 | `result-track:77fd29924e0482fefc6f864b0ec9dfd747ea9e9773a5ef3ebab54a9d6499a9a2` |
| 16 | `theorem` | [isConj_iff₀](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-iff--a33ad0d5a524c68237d3c7d4.md) | 139 | `result-track:a33ad0d5a524c68237d3c7d4c1016c44ec9323f186b006c202feceb202238030` |
| 17 | `def` | [setoid](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/setoid--063273497c22f20ab6a916c1.md) | 155 | `declaration-track:063273497c22f20ab6a916c136e536d4881c0c7a45fa4c31588d5284960911d9` |
| 18 | `def` | [ConjClasses](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/conjclasses--6b53318cd1ed4d9e8daede0b.md) | 165 | `declaration-track:6b53318cd1ed4d9e8daede0b64dd80200e950fb3e3c5ce2f9787bc2ba8cabab2` |
| 19 | `def` | [mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/mk--496de08765344f16a6413de7.md) | 176 | `declaration-track:496de08765344f16a6413de75e342d0894f3d652a4171ebe2be60b2710c595a6` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/instance--cdcbb8998ea7f4098c2e50ab.md) | 179 | `declaration-track:cdcbb8998ea7f4098c2e50ab24bcf50dfe2a8c6af4151d506b88c66a2461db5a` |
| 21 | `theorem` | [mk_eq_mk_iff_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/mk-eq-mk-iff-isconj--8b5a8336e88a142396b95f4b.md) | 181 | `result-track:8b5a8336e88a142396b95f4b84b9ff7de8a61641dbec4fede442d621a074fae0` |
| 22 | `theorem` | [quotient_mk_eq_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/quotient-mk-eq-mk--c18418e04f51c978951ad27e.md) | 185 | `result-track:c18418e04f51c978951ad27e8530cedfdb5fa4ad60c0f0ec298a5c7240441fcf` |
| 23 | `theorem` | [quot_mk_eq_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/quot-mk-eq-mk--c53b6172b34f8dfc953eeb83.md) | 189 | `result-track:c53b6172b34f8dfc953eeb830a88cd2116268233a33ffa6b7eda23c554b21256` |
| 24 | `theorem` | [forall_isConj](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/forall-isconj--7fd37331851a0d449b103963.md) | 193 | `result-track:7fd37331851a0d449b103963d0c11be3c30fb7f5d0bd71878917301cf03aefc0` |
| 25 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/mk-surjective--64825fd2ed68a8f7a391a57b.md) | 197 | `result-track:64825fd2ed68a8f7a391a57b2040ab8c24dad8d7437778a8f7736f612259bb6f` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/instance--898fe2f1c6ddcfa65b309013.md) | 201 | `declaration-track:898fe2f1c6ddcfa65b309013a813271bc6eafbb0a99066d039b6553e8fbcafd5` |
| 27 | `theorem` | [one_eq_mk_one](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/one-eq-mk-one--ce6c28bb3d471fff99b75120.md) | 204 | `result-track:ce6c28bb3d471fff99b75120ef21cdd169d3a6f99b1c8efea6c64b332afc528f` |
| 28 | `theorem` | [exists_rep](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/exists-rep--1b90c948d3f63de2a93f43c3.md) | 208 | `result-track:1b90c948d3f63de2a93f43c322ad9281dcddb8959636f58366a3e65d62f931c9` |
| 29 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/map--e5bcface26ac607bc291276b.md) | 213 | `declaration-track:e5bcface26ac607bc291276bfe6a20db65c17ac0bdaf6fe8c5bf946293ee56c2` |
| 30 | `theorem` | [map_surjective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/map-surjective--df9f66483f11c122d23242b1.md) | 217 | `result-track:df9f66483f11c122d23242b17ac6e70b98f06ab369e05dec93555ec37f0d9e72` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/instance--41e3f75e0ba43129dc970132.md) | 256 | `declaration-track:41e3f75e0ba43129dc9701324c4fdbb71a945b5ce119f833f4bebc6836ff0e7f` |
| 32 | `theorem` | [mk_injective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/mk-injective--1923078688bc907a7d2db736.md) | 265 | `result-track:1923078688bc907a7d2db736bd9c887e6d73142243b6ec5c0888de534cf2a757` |
| 33 | `theorem` | [mk_bijective](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/mk-bijective--df6564dffc795b2e45845708.md) | 269 | `result-track:df6564dffc795b2e45845708ef15523359e31f228e909c80b8f3e7b02a182f6e` |
| 34 | `def` | [mkEquiv](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/mkequiv--6b513238f99388beba8214bb.md) | 274 | `declaration-track:6b513238f99388beba8214bbb44f9d1b4e9763e078ae9a38775fffc0e8240a90` |
| 35 | `def` | [conjugatesOf](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/conjugatesof--fe1ed6ed387155ff96eb3176.md) | 290 | `declaration-track:fe1ed6ed387155ff96eb31764e532620b611ff109c4278bc28805077e5230a3e` |
| 36 | `theorem` | [mem_conjugatesOf_self](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/mem-conjugatesof-self--2bf99063f9fcf92a7c4bce17.md) | 294 | `result-track:2bf99063f9fcf92a7c4bce17b74a56b28a709ec72b18e83eaeb472add2ab6114` |
| 37 | `theorem` | [IsConj.conjugatesOf_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-conjugatesof-eq--4051b2dc2842dd203f71882e.md) | 298 | `result-track:4051b2dc2842dd203f71882ef9de5864f6107a98118647f591b2dbc1ff7657bb` |
| 38 | `theorem` | [isConj_iff_conjugatesOf_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/isconj-iff-conjugatesof-eq--2f6b313689f64b41dd6e39eb.md) | 302 | `result-track:2f6b313689f64b41dd6e39ebc14fdac430da78319417b21b5b7f8784d33c1d02` |
| 39 | `def` | [carrier](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/carrier--69b8e0c4378d7cadb01c2b8c.md) | 317 | `declaration-track:69b8e0c4378d7cadb01c2b8c4397f04de16464cdde5c06430308bc3e6874801b` |
| 40 | `theorem` | [mem_carrier_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/mem-carrier-mk--971a7d93ddacd8fac82f965f.md) | 321 | `result-track:971a7d93ddacd8fac82f965f85063e8ee5057942a29e57587251054fff8c2b1c` |
| 41 | `theorem` | [mem_carrier_iff_mk_eq](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/mem-carrier-iff-mk-eq--0a44598a32e79488c09386eb.md) | 325 | `result-track:0a44598a32e79488c09386ebef0fcb858efcce41bfe04c628fbbc63e92c4db16` |
| 42 | `theorem` | [carrier_eq_preimage_mk](../../../../../mathematics/Algebra/GroupTheory/Conj/Variant4535af60cc379aeb1691ac309ce59fab71f0c7e224209171601992de5f598966.lean/declarations/carrier-eq-preimage-mk--b7d59154cdbf0334988128e8.md) | 334 | `result-track:b7d59154cdbf0334988128e8323611669241ff75a8f94a620b0bce397e6982de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
