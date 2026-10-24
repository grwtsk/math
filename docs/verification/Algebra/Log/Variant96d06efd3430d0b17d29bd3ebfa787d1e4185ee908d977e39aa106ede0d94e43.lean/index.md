# Verification target: GRWTSK.Algebra.Log.Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ee568ff86c5f98b8614f356c07032ac3e339509",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/index.md) · [Full source](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ee568ff86c5f98b8614f356c07032ac3e339509`.

Source path: `GRWTSK/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/log--a57fecd2d290d56ef3ecf64b.md) | 58 | `declaration-track:a57fecd2d290d56ef3ecf64bb24e0b447c8d9d2a8f6667596de1a54ef0f240c1` |
| 2 | `theorem` | [coeff_log](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/coeff-log--7c09e2129954780b8284b8ee.md) | 64 | `result-track:7c09e2129954780b8284b8ee1d89c459c15f8fb66e268febba867b4bc6b92a6e` |
| 3 | `theorem` | [constantCoeff_log](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/constantcoeff-log--ed467810dbbf8ccf1ae1d8d2.md) | 69 | `result-track:ed467810dbbf8ccf1ae1d8d21c3a580496f4916fe573c6009b3c3b91dd02707e` |
| 4 | `theorem` | [map_log](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/map-log--bd72a83339d9ba5d90d88ebb.md) | 73 | `result-track:bd72a83339d9ba5d90d88ebb74a08b7fded2985665875f8509383ff5c9897096` |
| 5 | `theorem` | [coeff_one_log](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/coeff-one-log--3cd353bb4d9700175a1f2be6.md) | 77 | `result-track:3cd353bb4d9700175a1f2be6681b93e8c2a46bdb866ac8ea64c40b40747db115` |
| 6 | `theorem` | [order_log](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/order-log--e47c4543f16db4f00dbe81dd.md) | 79 | `result-track:e47c4543f16db4f00dbe81dda729027fd4ad498c8352a3a314f707b9acc5d2a2` |
| 7 | `theorem` | [derivative_log](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/derivative-log--64fe1ea32305d6c6614d0c36.md) | 83 | `result-track:64fe1ea32305d6c6614d0c3617eb063553a7a6873ca3512cb0cd0a4f68ca83e5` |
| 8 | `theorem` | [derivative_log_mul_one_add_X](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/derivative-log-mul-one-add-x--c2612535464b9eb7814efdde.md) | 92 | `result-track:c2612535464b9eb7814efddef76e7456825fe98edf18aa3238eda5ef3e0fa9f3` |
| 9 | `theorem` | [HasSubst.log](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/hassubst-log--05aea40f36459c2d98477d4a.md) | 97 | `result-track:05aea40f36459c2d98477d4a7a655122b8bcb9cc70dec91df99a0231183652fd` |
| 10 | `theorem` | [HasSubst.exp_sub_one](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/hassubst-exp-sub-one--92c21f62517d628bba030502.md) | 100 | `result-track:92c21f62517d628bba0305020c4e635e121591547472250f340aff7f2bbe0dac` |
| 11 | `def` | [logOf](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/logof--d3a6e12f33c68a0f98643ca4.md) | 104 | `declaration-track:d3a6e12f33c68a0f98643ca47e2f509bd7e2ff516cf9b54f45e4d37d325a039a` |
| 12 | `theorem` | [logOf_eq](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/logof-eq--87f5d8ad81660738098a0611.md) | 107 | `result-track:87f5d8ad81660738098a061111065e001283087f1a1cab701ced0e0531b6e4bd` |
| 13 | `theorem` | [constantCoeff_logOf](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/constantcoeff-logof--378d7c29674aeacdbde4a607.md) | 109 | `result-track:378d7c29674aeacdbde4a607e3ab97e2b2403066b28a473809323c22240b7dc0` |
| 14 | `theorem` | [logOf_one_add_X](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/logof-one-add-x--fd03516a0f2e49a7a921d558.md) | 118 | `result-track:fd03516a0f2e49a7a921d5588dd7e33bea77cb138a40462e6c27ef0499b73ba5` |
| 15 | `theorem` | [eq_of_derivative_mul_one_add_X_eq_self](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/eq-of-derivative-mul-one-add-x-eq-self--722d6bed24e9cfe39f5d1f2a.md) | 124 | `result-track:722d6bed24e9cfe39f5d1f2a6189870a4524a84ea8941da1491d4519988519ed` |
| 16 | `theorem` | [subst_exp_log](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/subst-exp-log--87487f456548b170fd5e687b.md) | 144 | `result-track:87487f456548b170fd5e687bb035580c619f96eb1ad40d17d68fb659cccf4ac6` |
| 17 | `theorem` | [subst_log_exp_sub_one](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/subst-log-exp-sub-one--55f539cca0f686918d76854e.md) | 156 | `result-track:55f539cca0f686918d76854ede6592cdf7ace65334badda77a6ad751dff3d692` |
| 18 | `theorem` | [logOf_exp](../../../../mathematics/Algebra/Log/Variant96d06efd3430d0b17d29bd3ebfa787d1e4185ee908d977e39aa106ede0d94e43.lean/declarations/logof-exp--3d0174da88852a395c74f08d.md) | 166 | `result-track:3d0174da88852a395c74f08d99efefd99e1d09fed17594390b7f329852cea5d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
