# Verification target: GRWTSK.Algebra.UniversalAlgebra.Translations.Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f92a1e96bc33850aabf6bec5adc25d442078233c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f92a1e96bc33850aabf6bec5adc25d442078233c`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [terminatedAt_iff_s_terminatedAt](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/terminatedat-iff-s-terminatedat--ece372f2f685508ba2227214.md) | 41 | `result-track:ece372f2f685508ba22272140d7380c5226b0fa81fc8668e9bfaf2490be53bbf` |
| 2 | `theorem` | [terminatedAt_iff_s_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/terminatedat-iff-s-none--6e1591ea7b506e174c856b5c.md) | 43 | `result-track:6e1591ea7b506e174c856b5c930a1e3352bfe0e095531ebdfe8316d9d04cd5ff` |
| 3 | `theorem` | [partNum_none_iff_s_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/partnum-none-iff-s-none--8f3ecea493302198ea5cf0cb.md) | 45 | `result-track:8f3ecea493302198ea5cf0cb1cdaa3f55fb95119d17976f29accef65e55ca8c2` |
| 4 | `theorem` | [terminatedAt_iff_partNum_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/terminatedat-iff-partnum-none--66883a8c9c89950bc631983b.md) | 48 | `result-track:66883a8c9c89950bc631983b6299150455793867a2e2aad476bda83828f76b99` |
| 5 | `theorem` | [partDen_none_iff_s_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/partden-none-iff-s-none--decf2902f3609cdc02d0d7e3.md) | 51 | `result-track:decf2902f3609cdc02d0d7e3c6c0816407c236a1ff11a5280d90631ae3bb8f62` |
| 6 | `theorem` | [terminatedAt_iff_partDen_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/terminatedat-iff-partden-none--2b3c9760e42ec30821f53330.md) | 54 | `result-track:2b3c9760e42ec30821f53330752dd9ec4c9701498baa221a2fed8e11f7690633` |
| 7 | `theorem` | [partNum_eq_s_a](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/partnum-eq-s-a--309cdb013d873b49632ec706.md) | 57 | `result-track:309cdb013d873b49632ec706d221dc8386dc7e37942ae074780d58ee2b466ffc` |
| 8 | `theorem` | [partDen_eq_s_b](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/partden-eq-s-b--20f6910734b5870aa3c6e103.md) | 60 | `result-track:20f6910734b5870aa3c6e10344dad1338c55fd90657003312420e3c171056582` |
| 9 | `theorem` | [exists_s_a_of_partNum](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/exists-s-a-of-partnum--b644aa46326df2fade21c390.md) | 63 | `result-track:b644aa46326df2fade21c390aa9c9181ea51a416f7450f245a0eb688f5eeb46c` |
| 10 | `theorem` | [exists_s_b_of_partDen](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/exists-s-b-of-partden--1324b6af7bb382d42af441bc.md) | 67 | `result-track:1324b6af7bb382d42af441bcfd05b4be5080006f5c80f4c8e6133b23e52753d7` |
| 11 | `theorem` | [nth_cont_eq_succ_nth_contAux](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/nth-cont-eq-succ-nth-contaux--e9aa89aa89b07f273818e3cd.md) | 86 | `result-track:e9aa89aa89b07f273818e3cd8344704bc9c845f38533be038dc531847f322893` |
| 12 | `theorem` | [num_eq_conts_a](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/num-eq-conts-a--b8ebfa3c332d2e9c6a72d632.md) | 89 | `result-track:b8ebfa3c332d2e9c6a72d63222ec0e09a47c30e48eebc252ec9dc363ee60618b` |
| 13 | `theorem` | [den_eq_conts_b](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/den-eq-conts-b--ae99e4ac5b7142a67c55f9c3.md) | 92 | `result-track:ae99e4ac5b7142a67c55f9c3660484ea0d51d66cda3249202bfc0f013b1a1b7e` |
| 14 | `theorem` | [conv_eq_num_div_den](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/conv-eq-num-div-den--72785c76c4a1a586abc86c03.md) | 95 | `result-track:72785c76c4a1a586abc86c031fcfffd3829de97ed4d70e6b46b88a965e30da1b` |
| 15 | `theorem` | [conv_eq_conts_a_div_conts_b](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/conv-eq-conts-a-div-conts-b--39af147e97db72e40fd6f717.md) | 98 | `result-track:39af147e97db72e40fd6f71708cca2f2aeaafc47f41ea9c5bc5ddcb9e9333e93` |
| 16 | `theorem` | [exists_conts_a_of_num](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/exists-conts-a-of-num--283bcd89e7771f970d4ae241.md) | 102 | `result-track:283bcd89e7771f970d4ae2410f7c02bd54d119edb54f4bd141c590a289a99fb3` |
| 17 | `theorem` | [exists_conts_b_of_den](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/exists-conts-b-of-den--78a7838342f8cb591402e3ac.md) | 105 | `result-track:78a7838342f8cb591402e3acecb28b230481e941397b73554a9595b316df4dab` |
| 18 | `theorem` | [zeroth_contAux_eq_one_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/zeroth-contaux-eq-one-zero--ae00f5af8895657dfb86aecd.md) | 109 | `result-track:ae00f5af8895657dfb86aecd17b8a55fb0e14a0e5f56e4c11b1275986d401cc7` |
| 19 | `theorem` | [first_contAux_eq_h_one](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/first-contaux-eq-h-one--bf6a1d4572ae983aca077927.md) | 113 | `result-track:bf6a1d4572ae983aca07792786f84604c94e5a8429c59556babea662b4420288` |
| 20 | `theorem` | [zeroth_cont_eq_h_one](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/zeroth-cont-eq-h-one--f42d0a56c4ed3547fb98a4bc.md) | 117 | `result-track:f42d0a56c4ed3547fb98a4bcce61baf05a36bd0948b69e0ec5883c3e7088f9ae` |
| 21 | `theorem` | [zeroth_num_eq_h](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/zeroth-num-eq-h--bd44beb2fe9e3b8502a446dd.md) | 121 | `result-track:bd44beb2fe9e3b8502a446dd9c9e245224097965a6c43e56cf14ca4264842c67` |
| 22 | `theorem` | [zeroth_den_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/zeroth-den-eq-one--bc5ec7662969b3642816efe7.md) | 125 | `result-track:bc5ec7662969b3642816efe7ada250dc817fd176022ed9aceebcc5a434b743af` |
| 23 | `theorem` | [zeroth_conv_eq_h](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/zeroth-conv-eq-h--80ffd6d096ec5755fb1b9594.md) | 129 | `result-track:80ffd6d096ec5755fb1b9594a1efc80ba030452f00129ed0d98544d87f187ed5` |
| 24 | `theorem` | [second_contAux_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/second-contaux-eq--83e919806cabd4cb4e69741d.md) | 132 | `result-track:83e919806cabd4cb4e69741d5699cd984716a10e2e3126600cb63932935f3731` |
| 25 | `theorem` | [first_cont_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/first-cont-eq--e028b07de1a0ab5ee7c22385.md) | 136 | `result-track:e028b07de1a0ab5ee7c22385a41473ba633850179b89d42e13d396650838d454` |
| 26 | `theorem` | [first_num_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/first-num-eq--cd9cba320b4f4c49aad620d9.md) | 140 | `result-track:cd9cba320b4f4c49aad620d96d3294b53438a8e679cd24d64ee055546a3da29b` |
| 27 | `theorem` | [first_den_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/first-den-eq--5a0f6aab64d432d82b437293.md) | 143 | `result-track:5a0f6aab64d432d82b437293762bed454bb5d94ba92d31586601cc078e3f3c8c` |
| 28 | `theorem` | [zeroth_conv'Aux_eq_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/zeroth-conv-aux-eq-zero--72e185b840f7cc52e8da2ab5.md) | 147 | `result-track:72e185b840f7cc52e8da2ab50e047236177186a8b3b51810c3dbf7b908c6d788` |
| 29 | `theorem` | [zeroth_conv'_eq_h](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/zeroth-conv-eq-h--148bce02106788d0662f4943.md) | 152 | `result-track:148bce02106788d0662f49431a3de6dd92cff0109992c8f81a4cf7f3ce4b6224` |
| 30 | `theorem` | [convs'Aux_succ_none](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/convs-aux-succ-none--9932b8fa87816ef194c83f7a.md) | 154 | `result-track:9932b8fa87816ef194c83f7a31c7ed86ece8ac171ea985348a0aaa5eb4871f0f` |
| 31 | `theorem` | [convs'Aux_succ_some](../../../../../mathematics/Algebra/UniversalAlgebra/Translations/Variant21ea8af3438eeed8a218d6fd9589ee28b4c21b199b0e03a107c7a0d6e3634749.lean/declarations/convs-aux-succ-some--9ced6773e06c5bb3cba2d1a5.md) | 157 | `result-track:9ced6773e06c5bb3cba2d1a514ef97195106a8dcf992582031a9367d1f1143f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
