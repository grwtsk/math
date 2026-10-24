# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df8dfca9e987754281a4a07ec09403dc339dff95",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df8dfca9e987754281a4a07ec09403dc339dff95`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Submodule.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientRel](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/quotientrel--451ab8adc6c3820427f486ee.md) | 47 | `declaration-track:451ab8adc6c3820427f486ee75d402c3cbbcacd4c139a55f3448f1b076874feb` |
| 2 | `theorem` | [quotientRel_def](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/quotientrel-def--94b47a3cd506c10abb37fcb7.md) | 50 | `result-track:94b47a3cd506c10abb37fcb7919aa4a4b37cbabe01429eca76e82766bc300760` |
| 3 | `instance` | [hasQuotient](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/hasquotient--0e49ac8679c17e2bf922237f.md) | 58 | `declaration-track:0e49ac8679c17e2bf922237f5e243f47cf6aca9a69ab0f2ae7df68e582155c1c` |
| 4 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk--1cc7153d8dcc7db88c5f24c7.md) | 64 | `declaration-track:1cc7153d8dcc7db88c5f24c7e043d15cba760755875e0bacf9936c896e174af9` |
| 5 | `theorem` | [mk'_eq_mk'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk-eq-mk--fec6381f891238f858edc037.md) | 67 | `result-track:fec6381f891238f858edc0370fdca4bc15a60c17a282af3e2ff16b64bb768a66` |
| 6 | `theorem` | [mk''_eq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk-eq-mk--445f4d44259d96eda0618462.md) | 71 | `result-track:445f4d44259d96eda06184629e17de8eaa41d7c7c166252155ad86d539c64b17` |
| 7 | `theorem` | [quot_mk_eq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/quot-mk-eq-mk--d9de7e612c6bd2c730f50eea.md) | 74 | `result-track:d9de7e612c6bd2c730f50eea72ea9db3117cd50055ca3cc22900d6985f48e916` |
| 8 | `theorem` | [eq'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/eq--eed74f6406d0ee630a4697cd.md) | 77 | `result-track:eed74f6406d0ee630a4697cd7e6659655b88b261280db5ee1ed962664c7864ed` |
| 9 | `theorem` | [eq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/eq--e210bb82a5be04dd2bf3c19a.md) | 80 | `result-track:e210bb82a5be04dd2bf3c19a4b60df918f0cd1ddc22380eb816817a38f446636` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/instance--8b830ff6c7adfdb844b0437c.md) | 83 | `declaration-track:8b830ff6c7adfdb844b0437c0745456783dfd18f4da47b8df2c32047245afa41` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/instance--f327c8575c51ed43730f8c2e.md) | 89 | `declaration-track:f327c8575c51ed43730f8c2edb6bd9361b2a9bfcac11570d145f6f6171a081c0` |
| 12 | `theorem` | [mk_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk-zero--744d9955da569a57166c1cb2.md) | 93 | `result-track:744d9955da569a57166c1cb23c9ad3d723543c704c04b03cc8fa7103123682b0` |
| 13 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk-eq-zero--890f6ae4c345e37bb5f12aff.md) | 97 | `result-track:890f6ae4c345e37bb5f12affe5c9f30ef29917f151f03995cb1b362a9107f113` |
| 14 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/addcommgroup--a533e55c1b9cde650c155bd4.md) | 99 | `declaration-track:a533e55c1b9cde650c155bd40c39d1333b16645f1d0b29909617688b6dd0a319` |
| 15 | `theorem` | [mk_add](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk-add--739a4041b08e476f9aece3ff.md) | 103 | `result-track:739a4041b08e476f9aece3ff4e1321213607f22b2d60687cebfcd6c6d3ca7e39` |
| 16 | `theorem` | [mk_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk-neg--3b19152d520c3ecacc69bcb0.md) | 107 | `result-track:3b19152d520c3ecacc69bcb002de6c1b892a0222b41d9c026a1baf6d7c38ea38` |
| 17 | `theorem` | [mk_sub](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk-sub--7899ff8ad9678260fac15717.md) | 111 | `result-track:7899ff8ad9678260fac15717c146002849b950d922189c492263d079db411509` |
| 18 | `lemma` | [«forall»](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/forall--6ece724038446d0decc4d8a0.md) | 114 | `result-track:6ece724038446d0decc4d8a0557d246ebf9904958e5f3bf90f9067f9e2499b4e` |
| 19 | `theorem` | [subsingleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/subsingleton-iff--fab075e03190ed66800a2948.md) | 116 | `result-track:fab075e03190ed66800a29487b77afab7b67ef22f426ff753419c0affde1aa50` |
| 20 | `instance` | [instSMul'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/instsmul--e5f80dc786b62e4a86d46eaf.md) | 124 | `declaration-track:e5f80dc786b62e4a86d46eaf5b2049f15cde71e6a867d3d0c10ff38571878129` |
| 21 | `instance` | [instSMul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/instsmul--f737eaaa6e8acaa9c3cdb0c5.md) | 130 | `declaration-track:f737eaaa6e8acaa9c3cdb0c5544536cbd0de287d6bf7ae7ca358c119809341d9` |
| 22 | `theorem` | [mk_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk-smul--a7c40c784f83ed2da9e757c3.md) | 134 | `result-track:a7c40c784f83ed2da9e757c325bda21a08c23a9d620fa6aa02a1a8a38879688e` |
| 23 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/smulcommclass--07eeea05c521a59f86843449.md) | 137 | `declaration-track:07eeea05c521a59f86843449c3f38c6b5c10f44b0b1e445d7594b48cac8e6016` |
| 24 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/isscalartower--41e86822875f73369cb24e0e.md) | 141 | `declaration-track:41e86822875f73369cb24e0e7df491f1c5653d5eb3fbab8960984b6052ff5e63` |
| 25 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/iscentralscalar--d889084077feddee9ee992f6.md) | 145 | `declaration-track:d889084077feddee9ee992f6724c197d9d0bb0c038d0721fea44136594f1066e` |
| 26 | `instance` | [mulAction'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mulaction--1177fe35c71966be2c7f3b20.md) | 155 | `declaration-track:1177fe35c71966be2c7f3b200069f3d9429c5304dbb1d53cfd47637b6611111e` |
| 27 | `instance` | [mulAction](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mulaction--46b249aad41afc74567fe3a9.md) | 159 | `declaration-track:46b249aad41afc74567fe3a9e0a93e5c2b4f3b96827f6e0b66512cf394409a79` |
| 28 | `instance` | [smulZeroClass'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/smulzeroclass--a22340d2544d4dcb7f559595.md) | 162 | `declaration-track:a22340d2544d4dcb7f559595564208284bfad36b28eae73ce117534781a3e5ab` |
| 29 | `instance` | [smulZeroClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/smulzeroclass--bbebfaff8597d999b2b69a30.md) | 166 | `declaration-track:bbebfaff8597d999b2b69a309f44973348fe9c96336d7598abcc815372329aca` |
| 30 | `instance` | [distribSMul'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/distribsmul--6c8dc2f6f1e04b7b6b2b6f7b.md) | 169 | `declaration-track:6c8dc2f6f1e04b7b6b2b6f7b74302e71b682de821ea34a019c80415cf5725b04` |
| 31 | `instance` | [distribSMul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/distribsmul--8d85bcdd13e8a79a6d3bc804.md) | 174 | `declaration-track:8d85bcdd13e8a79a6d3bc8045574bdb74623118335226a0ac60d82a5646909c8` |
| 32 | `instance` | [distribMulAction'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/distribmulaction--423d0e751e82483d65f36fd6.md) | 177 | `declaration-track:423d0e751e82483d65f36fd6d827c298d6ea697441bd61562ff7288c3b2a52e7` |
| 33 | `instance` | [distribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/distribmulaction--ed968998b8fdf1ab4d7ade41.md) | 182 | `declaration-track:ed968998b8fdf1ab4d7ade416f0f31bcc07727851e911cfd5673ae8551037b86` |
| 34 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/module--a7ce22ee3e7ea910875ef745.md) | 185 | `declaration-track:a7ce22ee3e7ea910875ef7456b9a4d986df008407f2b985079c2fb5ea5442ebd` |
| 35 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/module--9b225a200ba5500bfa606ef3.md) | 190 | `declaration-track:9b225a200ba5500bfa606ef3f7c7fc58e8eb08b245e1bec97f327a6099dc4d20` |
| 36 | `theorem` | [induction_on](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/induction-on--e5ed3248c1fb52d6103a7975.md) | 196 | `result-track:e5ed3248c1fb52d6103a7975b8a55e0f3833d0638c9160184417828dfbc717ac` |
| 37 | `theorem` | [mk_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mk-surjective--c8b0ceadee97ee733c597aaf.md) | 199 | `result-track:c8b0ceadee97ee733c597aaf9adc27db3d5a66b7e1afb626c03d01f25aad46d4` |
| 38 | `theorem` | [quot_hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/quot-hom-ext--6ad1d24e95c2775e97d957f9.md) | 209 | `result-track:6ad1d24e95c2775e97d957f90f294787381eaed287c4668a5b83942b7a5bff95` |
| 39 | `def` | [mkQ](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mkq--d138ea3d92c7bd1e5c437268.md) | 214 | `declaration-track:d138ea3d92c7bd1e5c437268e4625e576391ac20591ed8d80650c80f2f767d6f` |
| 40 | `theorem` | [mkQ_apply](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mkq-apply--ea5c887f35936af53112fbbb.md) | 220 | `result-track:ea5c887f35936af53112fbbb26db99d65b3be4fb46cad260d2cc6d6d9a621d56` |
| 41 | `theorem` | [mkQ_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/mkq-surjective--30edaa2e71b8165481c7951d.md) | 223 | `result-track:30edaa2e71b8165481c7951d78dbdd44bb2bb54367c73fbb9d64ccc6096f592e` |
| 42 | `theorem` | [linearMap_qext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/linearmap-qext--a5d0b3cd57b1a4676bb75258.md) | 235 | `result-track:a5d0b3cd57b1a4676bb7525891b699342b0e7a7e33e5fc5e56398a88e8c4a8af` |
| 43 | `def` | [quotEquivOfEq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/quotequivofeq--a0f343e1cd4124947ad84e39.md) | 239 | `declaration-track:a0f343e1cd4124947ad84e391f2142d2726ef35e110d6de1e5d6069384acb0d6` |
| 44 | `theorem` | [quotEquivOfEq_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant9dbbf7abd489f8cdd9dfb6319ed38be81f4cd60f529bfa18225bf897c2f84cdf.lean/declarations/quotequivofeq-mk--e1fe1567b7d9205b312c2579.md) | 251 | `result-track:e1fe1567b7d9205b312c25797dd132eb57af75a8168aecec0522c37fcc3796f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
