# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Continuum.Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee4382f324567e0c1b39b77cd2e8ceec75f8355f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee4382f324567e0c1b39b77cd2e8ceec75f8355f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Ordinal` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum--4bccce1b3a345cd14cedcb31.md) | 37 | `declaration-track:4bccce1b3a345cd14cedcb312413a8addd55adc1a79600bee9588680467d0a7e` |
| 2 | `theorem` | [two_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/two-power-aleph0--bf0cd8db12c03592a6d6d573.md) | 45 | `result-track:bf0cd8db12c03592a6d6d573a4abc8f1df7347feb0d1a6bba20695887da9bedc` |
| 3 | `theorem` | [lift_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/lift-continuum--e6607ec5d70be00ab293edd4.md) | 50 | `result-track:e6607ec5d70be00ab293edd4615fa8cb55cb4153a8bf19a06c029f31bdd1e549` |
| 4 | `theorem` | [continuum_le_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-le-lift--0abc0d18a968774e55532c92.md) | 55 | `result-track:0abc0d18a968774e55532c92e686e7a4d0f24573f20a1dfc2687a2da09f27d60` |
| 5 | `theorem` | [lift_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/lift-le-continuum--1c3648022bf70dee611ab839.md) | 61 | `result-track:1c3648022bf70dee611ab839985d24291601503cca4acca4e11f9445fad7fdbb` |
| 6 | `theorem` | [continuum_lt_lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-lt-lift--66d0cb18f344dfc4e32bd8dc.md) | 67 | `result-track:66d0cb18f344dfc4e32bd8dc27f8ee22c52c239a157f3f1fbd9736c0314ce778` |
| 7 | `theorem` | [lift_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/lift-lt-continuum--33ffcd467e3d8f6091e655b9.md) | 73 | `result-track:33ffcd467e3d8f6091e655b91423c9688ae3be30b087d2ae9000e6ffd63bf0fb` |
| 8 | `theorem` | [aleph0_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/aleph0-lt-continuum--d14497de2c22b69f9d53f02f.md) | 83 | `result-track:d14497de2c22b69f9d53f02f583ec98b3f355cb605233f2f60d77635be1b4d56` |
| 9 | `theorem` | [aleph0_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/aleph0-le-continuum--a4b61475e0f0166402246615.md) | 87 | `result-track:a4b61475e0f0166402246615cf7853d8e405ee51f556fc78fa1265e1beadde76` |
| 10 | `theorem` | [beth_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/beth-one--85b8a7de02f5579b98b28a91.md) | 92 | `result-track:85b8a7de02f5579b98b28a91723428cd71f6a05a3cef06fc491426d548aef699` |
| 11 | `theorem` | [nat_lt_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/nat-lt-continuum--8580055be49190c9494844ed.md) | 95 | `result-track:8580055be49190c9494844ed78a1529d97770c07636ef33fff0b25962c4ad8b6` |
| 12 | `theorem` | [mk_set_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/mk-set-nat--fffbda83ecfb1437381471dd.md) | 99 | `result-track:fffbda83ecfb1437381471ddcefbd9a9ff2a7ccbbea259977760d0e1285c58b3` |
| 13 | `theorem` | [continuum_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-pos--a0b1cf55e9002162cf881970.md) | 102 | `result-track:a0b1cf55e9002162cf88197095ec0dbd154d68586c4c10fe665fa0cc59dcd3c4` |
| 14 | `theorem` | [continuum_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-ne-zero--ffdb8457e897bf4767171a06.md) | 106 | `result-track:ffdb8457e897bf4767171a066046f655c5ff5b13e86a8b49d9f6c9491e941083` |
| 15 | `theorem` | [aleph_one_le_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/aleph-one-le-continuum--d1e0d7e893d7e7bd684860fa.md) | 110 | `result-track:d1e0d7e893d7e7bd684860fa1e94b49c9151662d6cc4c23f8fa2f72859ce16ce` |
| 16 | `theorem` | [continuum_toNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-tonat--e1dc1ab49c50466edb4d787d.md) | 116 | `result-track:e1dc1ab49c50466edb4d787dfd6cac0ce47cec7f5469f3b95f2fd74da9c8f5b4` |
| 17 | `theorem` | [continuum_toPartENat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-topartenat--85704c3d91c2e5103ea6c2bf.md) | 121 | `result-track:85704c3d91c2e5103ea6c2bf75e5bd54148ee2297f6d07749df9ad2394d70d73` |
| 18 | `theorem` | [aleph0_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/aleph0-add-continuum--eea62b955e8cdb59695e128a.md) | 131 | `result-track:eea62b955e8cdb59695e128a4206a6e3f06fda28e46291f469f901ce7c0c7a26` |
| 19 | `theorem` | [continuum_add_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-add-aleph0--a406f8624c23496a1cfd5ddf.md) | 136 | `result-track:a406f8624c23496a1cfd5ddf9e694b02eff367434fc6cec627afca046b23049e` |
| 20 | `theorem` | [continuum_add_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-add-self--f11482e8e10559bc6e9b7155.md) | 141 | `result-track:f11482e8e10559bc6e9b715521b6b615ddc09e79ef30f415fd64e8125782e5ca` |
| 21 | `theorem` | [nat_add_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/nat-add-continuum--5afba11ec872358d33f41496.md) | 146 | `result-track:5afba11ec872358d33f41496ac258cb9aad6a94d55445f7bb4f7c0c61418a823` |
| 22 | `theorem` | [continuum_add_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-add-nat--d2daf341c3b22addfbb7c1a7.md) | 151 | `result-track:d2daf341c3b22addfbb7c1a7e437e024ed5ed9cb40d6190a3fc4ff8df2dc3eeb` |
| 23 | `theorem` | [continuum_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-mul-self--07bba539896981cfe10ad2c8.md) | 161 | `result-track:07bba539896981cfe10ad2c8c4c8a9cb01bc196073fa35b7b5dc2f4f4f493724` |
| 24 | `theorem` | [continuum_mul_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-mul-aleph0--48b373fe133c9b25a054fb2d.md) | 166 | `result-track:48b373fe133c9b25a054fb2d6149b68a63787f876e695a464b731f1c45e41f2d` |
| 25 | `theorem` | [aleph0_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/aleph0-mul-continuum--d5edc68f46ce83f34baa6825.md) | 171 | `result-track:d5edc68f46ce83f34baa682567e78a1e16948e30dc834378831064b1e71aa180` |
| 26 | `theorem` | [nat_mul_continuum](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/nat-mul-continuum--88b0e855c97a524f120e3cb6.md) | 176 | `result-track:88b0e855c97a524f120e3cb6d3b2a22dccf1c533f5ca66771199543645c4bdb0` |
| 27 | `theorem` | [continuum_mul_nat](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-mul-nat--d9ff87f5428b9c60fd043539.md) | 181 | `result-track:d9ff87f5428b9c60fd043539b00239b92abdba07e3ccf77fdea2a41d57fdca1c` |
| 28 | `theorem` | [aleph0_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/aleph0-power-aleph0--12eb9b102e0c164954642bb0.md) | 191 | `result-track:12eb9b102e0c164954642bb0de0e6d333b299b03c93747ea4d40f85a5a8cf002` |
| 29 | `theorem` | [nat_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/nat-power-aleph0--fc7e39d2c46cfdcf0e1b34de.md) | 196 | `result-track:fc7e39d2c46cfdcf0e1b34dea76201e27db13f2d546214ccdd123b9b3e7a2909` |
| 30 | `theorem` | [continuum_power_aleph0](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Continuum/Variant1dd07167ab81ba2819d24c3d5601a3d58348f325c4321badacec3641f4be472a.lean/declarations/continuum-power-aleph0--ce153f0860e4758529c09b0c.md) | 201 | `result-track:ce153f0860e4758529c09b0cb9b1c7a8f7c66426f7a392695c9b952a26e1c00a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
