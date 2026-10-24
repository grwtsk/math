# Verification target: GRWTSK.Algebra.GroupTheory.CovariantAndContravariant.Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f29a5fe8424ff089bcf6b290f3e419dd42b7e30",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f29a5fe8424ff089bcf6b290f3e419dd42b7e30`.

Source path: `GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Covariant](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant--7ec2bc5ba80aab3d8dc3de3a.md) | 87 | `declaration-track:7ec2bc5ba80aab3d8dc3de3a12d95d9227c5ef3747510c1dc3310ab33da28e56` |
| 2 | `def` | [Contravariant](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/contravariant--06d60dd7979742b005b78f19.md) | 95 | `declaration-track:06d60dd7979742b005b78f196b8b43e56d40b66c475cbc322cd6a5fbcbe1825c` |
| 3 | `class` | [CovariantClass](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariantclass--73094a0f8ee8eafc606be61e.md) | 110 | `declaration-track:73094a0f8ee8eafc606be61e2a721143f6881f7beb614df4dd9a7c8568ef6aca` |
| 4 | `class` | [ContravariantClass](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/contravariantclass--804d670349af32140b7e2153.md) | 128 | `declaration-track:804d670349af32140b7e2153b19047303c5c2afa45b04e7397980408d8fbc08d` |
| 5 | `theorem` | [rel_iff_cov](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/rel-iff-cov--dd9d81c1c4fc8b598fbf73a7.md) | 135 | `result-track:dd9d81c1c4fc8b598fbf73a7676267dbd0819e21b395da6be9d33e5634a54abd` |
| 6 | `theorem` | [Covariant.flip](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant-flip--02a8d96ce6be1a5314d94aca.md) | 144 | `result-track:02a8d96ce6be1a5314d94acaaafa10466bcc8338264a67fb54864f2760ef349b` |
| 7 | `theorem` | [Contravariant.flip](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/contravariant-flip--3c81d696668186853b0ff9b7.md) | 148 | `result-track:3c81d696668186853b0ff9b7642b5799ee546dcb66c363747d4039c7166be33f` |
| 8 | `theorem` | [act_rel_act_of_rel](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/act-rel-act-of-rel--4cfda963233d66437073226e.md) | 158 | `result-track:4cfda963233d66437073226e5ad9745873cca580ed1ddecad68340b34a3fa815` |
| 9 | `theorem` | [Group.covariant_iff_contravariant](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/group-covariant-iff-contravariant--02ae1feae1320731d780c644.md) | 163 | `result-track:02ae1feae1320731d780c644a8702ffb6f3b6d70027d94ecb0264e70c68d8e65` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/instance--5686c0e060f8f465a180b683.md) | 174 | `declaration-track:5686c0e060f8f465a180b6837ecc6aa628c978a84012ece87e338d92d58c8769` |
| 11 | `theorem` | [Group.covariant_swap_iff_contravariant_swap](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/group-covariant-swap-iff-contravariant-swap--33e1195ec627f629e3aa8aa1.md) | 179 | `result-track:33e1195ec627f629e3aa8aa1e5562d3a452ba4e7a360713f6988e00af1099156` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/instance--88e4d17e5a6a0ec2bf871ec1.md) | 191 | `declaration-track:88e4d17e5a6a0ec2bf871ec1416554992bb738a7591ef2539ed1e5be2f61a501` |
| 13 | `theorem` | [act_rel_of_rel_of_act_rel](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/act-rel-of-rel-of-act-rel--8c9bd500a2cf429b8e3fb6e7.md) | 201 | `result-track:8c9bd500a2cf429b8e3fb6e756a323ff8b78f5e71d47a135c2b1d16424b9faae` |
| 14 | `theorem` | [rel_act_of_rel_of_rel_act](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/rel-act-of-rel-of-rel-act--7652f13cb1e6a2a0ba14e775.md) | 205 | `result-track:7652f13cb1e6a2a0ba14e7753db66ae1c01d47538022eaea1dfb1ac99044bdb5` |
| 15 | `theorem` | [act_rel_act_of_rel_of_rel](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/act-rel-act-of-rel-of-rel--22abb2edcd282ba0aa29fab9.md) | 219 | `result-track:22abb2edcd282ba0aa29fab97c2ad59ae5488fb9a587286ca87d8a054da762e9` |
| 16 | `theorem` | [rel_of_act_rel_act](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/rel-of-act-rel-act--dcc29e338dc12bc972dd53ee.md) | 229 | `result-track:dcc29e338dc12bc972dd53eed2c2c3edfbbea69dbd465ce1ecffdc85f0d9623a` |
| 17 | `theorem` | [act_rel_of_act_rel_of_rel_act_rel](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/act-rel-of-act-rel-of-rel-act-rel--ab2edd6a0e23e9072370690a.md) | 238 | `result-track:ab2edd6a0e23e9072370690ac82f7071fdc3fa4c3aee6053a27163be9a2016d7` |
| 18 | `theorem` | [rel_act_of_act_rel_act_of_rel_act](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/rel-act-of-act-rel-act-of-rel-act--c8240d028be3eb09179e5360.md) | 243 | `result-track:c8240d028be3eb09179e536003edc5c0b1d6f70f2fb08aa9aa9edcfe30cd68ee` |
| 19 | `theorem` | [Covariant.monotone_of_const](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant-monotone-of-const--d3b295da690b53c8f10ac17f.md) | 259 | `result-track:d3b295da690b53c8f10ac17f5ffce6d1857d5018e64ffef4c6fb958fb13ee0a1` |
| 20 | `theorem` | [Monotone.covariant_of_const](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/monotone-covariant-of-const--80796131e99059a4333bea6f.md) | 265 | `result-track:80796131e99059a4333bea6f730e355b8a04ad0e19ece89f6fb2fc7c21ab18b8` |
| 21 | `theorem` | [Monotone.covariant_of_const'](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/monotone-covariant-of-const--79b00a0ebab115d0b1246ef1.md) | 272 | `result-track:79b00a0ebab115d0b1246ef15a9afc479c7c932a19f046eb7696fdd6cc705b6c` |
| 22 | `theorem` | [Antitone.covariant_of_const](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/antitone-covariant-of-const--4bc3eafde50bfb75e3f7c066.md) | 278 | `result-track:4bc3eafde50bfb75e3f7c066b4f642e2d6a67cb9b93d4eb78081ef08331478cd` |
| 23 | `theorem` | [Antitone.covariant_of_const'](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/antitone-covariant-of-const--11a1b708e815f115e5f558d1.md) | 284 | `result-track:11a1b708e815f115e5f558d186112512364a8150668666f404466c184151010b` |
| 24 | `theorem` | [covariant_le_of_covariant_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant-le-of-covariant-lt--d25bb60ee0adc6950dc3ff1e.md) | 291 | `result-track:d25bb60ee0adc6950dc3ff1eaa224b964bc0879f583481802627650e329b8b2a` |
| 25 | `theorem` | [contravariant_lt_of_contravariant_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/contravariant-lt-of-contravariant-le--d920674f78e0a51fa316384b.md) | 299 | `result-track:d920674f78e0a51fa316384bb2aa23fae0975418e91c6836d47a21a33d356949` |
| 26 | `theorem` | [covariant_le_iff_contravariant_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant-le-iff-contravariant-lt--95e8987458fca95adb54c90f.md) | 305 | `result-track:95e8987458fca95adb54c90fcb7930b2a5e035cc8067bc3b3cc3a3c2cdb69a23` |
| 27 | `theorem` | [covariant_lt_iff_contravariant_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant-lt-iff-contravariant-le--a5462507de49ec06a78501d6.md) | 311 | `result-track:a5462507de49ec06a78501d68bc6a2403d052c4c187f3975ab5ec9b5059f8f3e` |
| 28 | `lemma` | [flip_mul](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/flip-mul--a4606fd19906c32db755783f.md) | 320 | `result-track:a4606fd19906c32db755783f865b7e4b157ce2e6649450b3b265546d4e519adf` |
| 29 | `theorem` | [covariant_flip_mul_iff](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant-flip-mul-iff--33bd65b03753aeb37b93ebff.md) | 324 | `result-track:33bd65b03753aeb37b93ebffd96d2855ca79ef76366d5a135f49f68bceb0d46f` |
| 30 | `theorem` | [contravariant_flip_mul_iff](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/contravariant-flip-mul-iff--a4f50b22270073c061f115fc.md) | 330 | `result-track:a4f50b22270073c061f115fc268a72f9206f63b1ca2de1e27b9cca89043d710a` |
| 31 | `instance` | [contravariant_mul_lt_of_covariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/contravariant-mul-lt-of-covariant-mul-le--77f5b69d72acffe058f45f30.md) | 336 | `declaration-track:77f5b69d72acffe058f45f30246d5823ae40cfba90ba6257b6ff42068261e610` |
| 32 | `instance` | [covariant_mul_lt_of_contravariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant-mul-lt-of-contravariant-mul-le--29a1a1c8828546f5d2d53cf2.md) | 341 | `declaration-track:29a1a1c8828546f5d2d53cf24ac0db78ce76dcdff45a876ab7205bc903e7e160` |
| 33 | `instance` | [covariant_swap_mul_le_of_covariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant-swap-mul-le-of-covariant-mul-le--6e72ce191e5bdbe3fc451637.md) | 346 | `declaration-track:6e72ce191e5bdbe3fc451637e5a11481693eb5a7f0a2aab19c85e846d33ede45` |
| 34 | `instance` | [contravariant_swap_mul_le_of_contravariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/contravariant-swap-mul-le-of-contravariant-mul-le--685b74f5a540b286687ea2c0.md) | 351 | `declaration-track:685b74f5a540b286687ea2c09ca6eefef0db328f072d371b1984c6cd101bfd5b` |
| 35 | `instance` | [contravariant_swap_mul_lt_of_contravariant_mul_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/contravariant-swap-mul-lt-of-contravariant-mul-lt--7b1770eb7c1fbd6cfe30d3e6.md) | 356 | `declaration-track:7b1770eb7c1fbd6cfe30d3e6bcd8224100e9dc2e7f3665099ef17ffbe7705963` |
| 36 | `instance` | [covariant_swap_mul_lt_of_covariant_mul_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/covariant-swap-mul-lt-of-covariant-mul-lt--7655b13c6b758d3f85b43ea2.md) | 361 | `declaration-track:7655b13c6b758d3f85b43ea2ee975cf2acab94702b05ea80df6b0fe54d36c46f` |
| 37 | `instance` | [LeftCancelSemigroup.covariant_mul_lt_of_covariant_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/leftcancelsemigroup-covariant-mul-lt-of-covariant-mul-le--604c5a0e08cef4cdfd8e29d5.md) | 366 | `declaration-track:604c5a0e08cef4cdfd8e29d52b92942b7e12a99dc249eaf53f7066f79962df88` |
| 38 | `instance` | [RightCancelSemigroup.covariant_swap_mul_lt_of_covariant_swap_mul_le](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/rightcancelsemigroup-covariant-swap-mul-lt-of-covariant-swap-mul-le--c941e83997a3bb9941b98389.md) | 374 | `declaration-track:c941e83997a3bb9941b983897dca7f23d41476f75ff20ffae51d42d58476e5ce` |
| 39 | `instance` | [LeftCancelSemigroup.contravariant_mul_le_of_contravariant_mul_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/leftcancelsemigroup-contravariant-mul-le-of-contravariant-mul-lt--c9f3265559080f147857fd79.md) | 382 | `declaration-track:c9f3265559080f147857fd7918eb368efa524145bd41ebc7f2726fe1c185db79` |
| 40 | `instance` | [RightCancelSemigroup.contravariant_swap_mul_le_of_contravariant_swap_mul_lt](../../../../../mathematics/Algebra/GroupTheory/CovariantAndContravariant/Variantdd06372015075f39466498a1b20c1b3bd9dba751149e751e561d160042541599.lean/declarations/rightcancelsemigroup-contravariant-swap-mul-le-of-contravariant-swap-mul--d449f62d896845e27d09bc2b.md) | 391 | `declaration-track:d449f62d896845e27d09bc2b31e2b1535422d02061aebc2d68bffdb505575187` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
