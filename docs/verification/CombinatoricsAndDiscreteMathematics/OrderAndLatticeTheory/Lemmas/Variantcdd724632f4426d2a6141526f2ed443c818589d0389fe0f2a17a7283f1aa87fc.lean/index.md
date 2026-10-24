# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lemmas.Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "899876d1e16e9cbc89dcea78e686033b874b77b2",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `899876d1e16e9cbc89dcea78e686033b874b77b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Bool.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Set` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iSup_bool_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/isup-bool-eq--559b24742437fa4ec5d61fc7.md) | 49 | `result-track:559b24742437fa4ec5d61fc7165e80b00ed07a07b0c97027487411ca26d898fd` |
| 2 | `theorem` | [iInf_bool_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/iinf-bool-eq--e26dad4144f114eceb09c5ec.md) | 52 | `result-track:e26dad4144f114eceb09c5ec367590de819c6ae39801a09f796085620cbf6736` |
| 3 | `theorem` | [sup_eq_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/sup-eq-isup--545b06d7ca22077ce0b54b59.md) | 55 | `result-track:545b06d7ca22077ce0b54b5975fd239db5c1bbbe5b7eadf12a9548f452ee158d` |
| 4 | `theorem` | [inf_eq_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/inf-eq-iinf--4a173241e97a680be2b85c8d.md) | 58 | `result-track:4a173241e97a680be2b85c8d10e5f4b5b95512e532cae4bdf427da24e191de13` |
| 5 | `theorem` | [iSup_ge_eq_iSup_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/isup-ge-eq-isup-nat-add--62a4018a05cff2571984dec1.md) | 66 | `result-track:62a4018a05cff2571984dec1f188093467884e9bac7b9860dd7944fe51b9240f` |
| 6 | `theorem` | [iInf_ge_eq_iInf_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/iinf-ge-eq-iinf-nat-add--2bc21343953fb039d249d898.md) | 73 | `result-track:2bc21343953fb039d249d89877426baf2fd4f5ecf53f313b9cd358e49b5b9023` |
| 7 | `theorem` | [Monotone.iSup_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/monotone-isup-nat-add--35d3076b7944798e6ad05281.md) | 76 | `result-track:35d3076b7944798e6ad052811bd38634ff62af1878c6f6f451e95a3214dc02f5` |
| 8 | `theorem` | [Antitone.iInf_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/antitone-iinf-nat-add--86b22cc8a14bf373856ab79a.md) | 79 | `result-track:86b22cc8a14bf373856ab79a8f5a9f6258fe8d69b563ac6f59259230300ca6db` |
| 9 | `theorem` | [iSup_iInf_ge_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/isup-iinf-ge-nat-add--ad09ef819f3e5eb4c2695c3d.md) | 88 | `result-track:ad09ef819f3e5eb4c2695c3d0a4282dd6a29799a37fb350df368817789b434ed` |
| 10 | `theorem` | [iInf_iSup_ge_nat_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/iinf-isup-ge-nat-add--abc11eb7cab49029e94e3cf0.md) | 96 | `result-track:abc11eb7cab49029e94e3cf0b675f9891d312ab1c8bdc236408d7be7d1ada499` |
| 11 | `theorem` | [sup_iSup_nat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/sup-isup-nat-succ--ed8453f3070258e039bc63fa.md) | 100 | `result-track:ed8453f3070258e039bc63fad3a154d541dc63d3a2a1166da157754dc8d38eeb` |
| 12 | `theorem` | [inf_iInf_nat_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/inf-iinf-nat-succ--396f8cdb61da6d6567870834.md) | 106 | `result-track:396f8cdb61da6d6567870834f4823a97f5a5a1e1d4d64fa9c19c9abbb4a9cb6a` |
| 13 | `theorem` | [iInf_nat_gt_zero_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/iinf-nat-gt-zero-eq--556db9ed3a5a54082923ffdb.md) | 109 | `result-track:556db9ed3a5a54082923ffdb8d13a9ffc0ac557429b8b22fbe0d92532a5f73b6` |
| 14 | `theorem` | [iSup_nat_gt_zero_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/isup-nat-gt-zero-eq--4c766bc4ead395f895099436.md) | 113 | `result-track:4c766bc4ead395f895099436647e4a97a98da317716d2ae3828f58493b4b79a6` |
| 15 | `theorem` | [sup_sInf_le_iInf_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/sup-sinf-le-iinf-sup--6766cfa6f7b40ade1f512dbd.md) | 127 | `result-track:6766cfa6f7b40ade1f512dbdcf79f93d14915ac25d37868f443da01cf6d1b903` |
| 16 | `theorem` | [iSup_inf_le_inf_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/isup-inf-le-inf-ssup--07131ea3d027007bb1e0450e.md) | 131 | `result-track:07131ea3d027007bb1e0450e1449fe21cabc7d9726d3fa8f38bb18164ea4b213` |
| 17 | `theorem` | [sInf_sup_le_iInf_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/sinf-sup-le-iinf-sup--e934196d94c35e94d12d2d77.md) | 135 | `result-track:e934196d94c35e94d12d2d772c5596855f055d8b460803e00711644509918c9a` |
| 18 | `theorem` | [iSup_inf_le_sSup_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/isup-inf-le-ssup-inf--7aabf8a467d0d87aa73ddec4.md) | 139 | `result-track:7aabf8a467d0d87aa73ddec4010d1c0b6e15d50b5e5e34d9aead5bea5699e787` |
| 19 | `theorem` | [le_iSup_inf_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/le-isup-inf-isup--5bfec8376dc8b07a0c7010f8.md) | 142 | `result-track:5bfec8376dc8b07a0c7010f8fbf97970484120247b8bba1c608a1a7c49571efd` |
| 20 | `theorem` | [iInf_sup_iInf_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/iinf-sup-iinf-le--4595b09434248aeadcf8554e.md) | 145 | `result-track:4595b09434248aeadcf8554e01e1f10f460e1736f670e700eb2ffc07199a6063` |
| 21 | `theorem` | [disjoint_sSup_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/disjoint-ssup-left--cb7eaeb3c993444bdc889b41.md) | 148 | `result-track:cb7eaeb3c993444bdc889b415173a63f20e261919cedb044bca62eb96ff6901a` |
| 22 | `theorem` | [disjoint_sSup_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/disjoint-ssup-right--14fab50bcd2b1c6ed176ae3c.md) | 152 | `result-track:14fab50bcd2b1c6ed176ae3c299b6a1d1c9fc8f4c8504f055c0b7dee5e6536ff` |
| 23 | `lemma` | [disjoint_of_sSup_disjoint_of_le_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/disjoint-of-ssup-disjoint-of-le-of-le--09593d6928fb4aa381aa5e65.md) | 156 | `result-track:09593d6928fb4aa381aa5e65fca91fc87a33acb8d0edd1794dbc88a66566c278` |
| 24 | `lemma` | [disjoint_of_sSup_disjoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/disjoint-of-ssup-disjoint--acfa027d46ffe0933fc30547.md) | 164 | `result-track:acfa027d46ffe0933fc305470ff6e875e18c75810e7f912f1f079adf931ad7a1` |
| 25 | `instance` | [supSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/supset--c99272fd215871f25495e3d6.md) | 174 | `declaration-track:c99272fd215871f25495e3d61c79a3f7437a28c87bd9e1bf4451f651096f8cd0` |
| 26 | `theorem` | [down_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/down-ssup--2cee358861113e6ecf96d631.md) | 176 | `result-track:2cee358861113e6ecf96d631754462237bededa69938706a7b75c8da532bc262` |
| 27 | `theorem` | [up_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/up-ssup--e66fc1014a42b52787fd4f46.md) | 177 | `result-track:e66fc1014a42b52787fd4f463daadc26cc6515f8797c931e816c406ca1d1e97b` |
| 28 | `instance` | [infSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/infset--3ad195851c92f7a353a4c83f.md) | 179 | `declaration-track:3ad195851c92f7a353a4c83fd2a4f6c14e2bf614eb80362e42b09961d2ae7289` |
| 29 | `theorem` | [down_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/down-sinf--1dfdee58ec3114ad567f0e24.md) | 181 | `result-track:1dfdee58ec3114ad567f0e24fb49cf56cd4b9d74908e4fb9836be38f4511269f` |
| 30 | `theorem` | [up_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/up-sinf--e5ab8dd60807ae3a16500b49.md) | 182 | `result-track:e5ab8dd60807ae3a16500b495263a09fec96d385e31bd125f2a14ec6cd65c7a9` |
| 31 | `theorem` | [down_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/down-isup--ff66e67ae09dc9edebbb72c0.md) | 184 | `result-track:ff66e67ae09dc9edebbb72c02bfa1dd7062fb93fd2f2b750fe79363f4d263275` |
| 32 | `theorem` | [up_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/up-isup--58382bcbd549b25228a710d5.md) | 187 | `result-track:58382bcbd549b25228a710d5b55cffbdee2599a13a8e68977eb716eb605e4008` |
| 33 | `theorem` | [down_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/down-iinf--e340ce119910cc6d472f4504.md) | 190 | `result-track:e340ce119910cc6d472f4504cf083fee804cb9deffa52190dc34b02250ebc361` |
| 34 | `theorem` | [up_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/up-iinf--456e24f6057d7bd45d6e671b.md) | 193 | `result-track:456e24f6057d7bd45d6e671b4428c5309f4936c0a9908ec575c608dc34f66548` |
| 35 | `instance` | [instCompleteLattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/instcompletelattice--0805c096e5d3b40d422b817a.md) | 196 | `declaration-track:0805c096e5d3b40d422b817a401d71241fc0d237609690fc8fa8175b1a2aa2ea` |
| 36 | `instance` | [instCompleteLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lemmas/Variantcdd724632f4426d2a6141526f2ed443c818589d0389fe0f2a17a7283f1aa87fc.lean/declarations/instcompletelinearorder--636443ddc36d1dd0b2bf2001.md) | 205 | `declaration-track:636443ddc36d1dd0b2bf200180a68c4d5ebb452bfb3a461f522b94f92749e900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
