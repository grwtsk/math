# Verification target: GRWTSK.Algebra.LinearAlgebra.EGauge.Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4918e1ce2676bfecc624d20526170ea2c68ff855",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4918e1ce2676bfecc624d20526170ea2c68ff855`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean.json)

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
| 1 | `def` | [egauge](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge--4f50187563a6aa74694622a0.md) | 55 | `declaration-track:4f50187563a6aa74694622a069294d4a4cb50268981cdef6c0f24dc472e493c6` |
| 2 | `lemma` | [Set.MapsTo.egauge_le](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/set-mapsto-egauge-le--cab2b4f97badfc4885720407.md) | 60 | `result-track:cab2b4f97badfc4885720407cdccf01acf8b99eb782d6472eef5e7d7c863f24c` |
| 3 | `lemma` | [egauge_anti](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-anti--7d213649a66590fdf5a14da1.md) | 65 | `result-track:7d213649a66590fdf5a14da1b3ad6861e27ab43790c3706ed7c5a9fb522b54da` |
| 4 | `lemma` | [egauge_empty](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-empty--2fcb89ecee5d51d0ffbdc97b.md) | 68 | `result-track:2fcb89ecee5d51d0ffbdc97bbf3d815fde9cead9f63a41985bf211f7a9c47b29` |
| 5 | `lemma` | [egauge_le_of_mem_smul](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-le-of-mem-smul--07a923ed686b4e2792df0c46.md) | 72 | `result-track:07a923ed686b4e2792df0c460de3ee288edc183db70df6149f30faa7dd946783` |
| 6 | `lemma` | [le_egauge_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/le-egauge-iff--fc1c12bf339e89e8ee6aabdb.md) | 74 | `result-track:fc1c12bf339e89e8ee6aabdb9d744e86d20971243cf3e4469873596250faab52` |
| 7 | `lemma` | [egauge_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-eq-top--c5b8df16575f5012556bf66e.md) | 76 | `result-track:c5b8df16575f5012556bf66e067b477fe249a1250d6ce1e1893897508511184d` |
| 8 | `lemma` | [egauge_lt_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-lt-iff--724a366bb48676c7ff53167d.md) | 78 | `result-track:724a366bb48676c7ff53167db09ab1816b4f70ce2a49689a86845e9014355042` |
| 9 | `lemma` | [egauge_union](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-union--00b79dbc9d666d78fa6f93c4.md) | 81 | `result-track:00b79dbc9d666d78fa6f93c41acb546de1b6793ab78ff77f023e08da8cc678e0` |
| 10 | `lemma` | [le_egauge_inter](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/le-egauge-inter--77412a7d182e07a566a10994.md) | 85 | `result-track:77412a7d182e07a566a109945d38081f2819e68c9f817054cce0121fd4682a6f` |
| 11 | `lemma` | [le_egauge_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/le-egauge-pi--61e62dc5e79a8a99e66bc28c.md) | 89 | `result-track:61e62dc5e79a8a99e66bc28c50bf57a7053283c981e2254cf5b34d439e701f29` |
| 12 | `lemma` | [le_egauge_prod](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/le-egauge-prod--8610ecabac89c4d0b1897e19.md) | 96 | `result-track:8610ecabac89c4d0b1897e1918437af8fafab8b4fd053ef75867dd6f99b19e2c` |
| 13 | `lemma` | [egauge_zero_left_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-zero-left-eq-top--e05a83c1f909783e891fa040.md) | 107 | `result-track:e05a83c1f909783e891fa040445f63e6845788ad9b3525ff85d533f6dd8369ed` |
| 14 | `lemma` | [egauge_le_of_smul_mem_of_ne](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-le-of-smul-mem-of-ne--5ca5ba1b8ca4253f49bf19ec.md) | 122 | `result-track:5ca5ba1b8ca4253f49bf19ec94d1ee7b90f79a3d2b91eba74f2234a494b6ec39` |
| 15 | `lemma` | [egauge_le_of_smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-le-of-smul-mem--d63f0750e2e42e6093c39622.md) | 129 | `result-track:d63f0750e2e42e6093c3962291709b03327e9493a8576c46022f86946200b4f4` |
| 16 | `lemma` | [mem_smul_of_egauge_lt](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/mem-smul-of-egauge-lt--9cdabc1e33c51dae3d38dba7.md) | 134 | `result-track:9cdabc1e33c51dae3d38dba77e8c0d9be145e8aab6699b6609fb5bfb99ae3b3f` |
| 17 | `lemma` | [mem_of_egauge_lt_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/mem-of-egauge-lt-one--aeeac7ee245cb652c1d53da9.md) | 138 | `result-track:aeeac7ee245cb652c1d53da9a1385015790ec08c728e949ea07bd2027725cecf` |
| 18 | `lemma` | [egauge_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-eq-zero-iff--1f003dad601d011d91108d71.md) | 141 | `result-track:1f003dad601d011d91108d712224f4edb20b174829bfcba035f0b80c93a45593` |
| 19 | `lemma` | [egauge_univ](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-univ--3ee0235dbe79b19607dc234d.md) | 147 | `result-track:3ee0235dbe79b19607dc234d09911b2704e8bf33562d343cf02fa7707c6283cb` |
| 20 | `lemma` | [egauge_zero_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-zero-right--321ed87f4557c2e91c671987.md) | 155 | `result-track:321ed87f4557c2e91c6719878ee2ba46002c95caa82f96caf8d0c29eb81ea17c` |
| 21 | `lemma` | [egauge_zero_zero](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-zero-zero--074926f19e6cc1189f18de5b.md) | 159 | `result-track:074926f19e6cc1189f18de5b543e031af269adce5cc4e8ff6f10fb8c29a2e62d` |
| 22 | `lemma` | [egauge_le_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-le-one--72f7271d54afa1b2eb01ca21.md) | 161 | `result-track:72f7271d54afa1b2eb01ca21109eb1a4cff9c2bb4ed26442605ba8d2250d1453` |
| 23 | `lemma` | [le_egauge_of_forall_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/le-egauge-of-forall-ne-zero--c975d73c915783b03deab995.md) | 167 | `result-track:c975d73c915783b03deab9957f786f81fbf85e1e0ad72fef4f887671d390219d` |
| 24 | `lemma` | [le_egauge_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/le-egauge-smul-left--db0f9601a209efa127c4a0c2.md) | 183 | `result-track:db0f9601a209efa127c4a0c2eed5bb9e1be22a484dc2e27a24297aac5b9b2bbf` |
| 25 | `lemma` | [egauge_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-smul-left--a137ce83a57543fbcce797e0.md) | 191 | `result-track:a137ce83a57543fbcce797e01db932d5bd1afc1179a63027e5218cc6957c7604` |
| 26 | `lemma` | [le_egauge_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/le-egauge-smul-right--4ba68cbc5e0c45b67b395d5f.md) | 201 | `result-track:4ba68cbc5e0c45b67b395d5f040f5570e77caeb31664d074e3e0ddd49ad28efa` |
| 27 | `lemma` | [egauge_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-smul-right--969e65b45535200f16fd901e.md) | 212 | `result-track:969e65b45535200f16fd901e44c3f816b3270c3df1074955217c065a5ce848d0` |
| 28 | `theorem` | [egauge_prod_mk](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-prod-mk--afe0a4025c5c351e26cac8ae.md) | 226 | `result-track:afe0a4025c5c351e26cac8ae6f07ced073ec42ca74f98ab85e692ddcec4ca4a1` |
| 29 | `theorem` | [egauge_add_add_le](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-add-add-le--899b859be8f94ea0339acb6e.md) | 236 | `result-track:899b859be8f94ea0339acb6ec03beb52c013c8db2a358d80de3a018505e8374a` |
| 30 | `theorem` | [egauge_pi'](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-pi--3335203c35ea7f2891d904ac.md) | 259 | `result-track:3335203c35ea7f2891d904acf162fac8f5a938f6b935e6c60c3e18c0bd3cdf52` |
| 31 | `theorem` | [egauge_univ_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-univ-pi--c3ebb76f5ab55b885a2d3f08.md) | 298 | `result-track:c3ebb76f5ab55b885a2d3f082ae347a206eef8a217e7633edb148648b2db0a73` |
| 32 | `theorem` | [egauge_pi](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-pi--1656f5feb1cf478f0abeb185.md) | 312 | `result-track:1656f5feb1cf478f0abeb185e6ad2cf09857ccaae4eaee90fbf831aeca6946ff` |
| 33 | `lemma` | [div_le_egauge_closedBall](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/div-le-egauge-closedball--2f28310d44b35bb8e12f5753.md) | 323 | `result-track:2f28310d44b35bb8e12f575378bfb3704d25342c79eb5d74cab764c92f8a25f3` |
| 34 | `lemma` | [le_egauge_closedBall_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/le-egauge-closedball-one--0bd222436ad4cf975ebfd3c7.md) | 332 | `result-track:0bd222436ad4cf975ebfd3c7d9e7132e76a32a71d09081c3a9e54c5215bcc713` |
| 35 | `lemma` | [div_le_egauge_ball](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/div-le-egauge-ball--98037f6a41e13e4332b5eba6.md) | 335 | `result-track:98037f6a41e13e4332b5eba6f1b3981dbca75318e96d1043e970db31e80aa502` |
| 36 | `lemma` | [le_egauge_ball_one](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/le-egauge-ball-one--682aa45dd9d637b3593641f2.md) | 338 | `result-track:682aa45dd9d637b3593641f21e5fd6e879a438027c307d71843a99ed8673d3f5` |
| 37 | `lemma` | [egauge_ball_le_of_one_lt_norm](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-ball-le-of-one-lt-norm--7b1e3f3340660089c519ee28.md) | 344 | `result-track:7b1e3f3340660089c519ee28c8020653fe55d7a23fa462ab13877493896d5bb2` |
| 38 | `lemma` | [egauge_ball_one_le_of_one_lt_norm](../../../../../mathematics/Algebra/LinearAlgebra/EGauge/Variantdb5ed0a50b4b2985e5de04186172fc08a0a38c04be109fba34313b521b11f55e.lean/declarations/egauge-ball-one-le-of-one-lt-norm--85a79c94be7dbf49bfb21aa9.md) | 364 | `result-track:85a79c94be7dbf49bfb21aa919c169c3a44e83cdfca2355eafda0c41c7d3e9e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
