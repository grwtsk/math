# Verification target: GRWTSK.Algebra.CommutativeAlgebra.SumIteratedDerivative.Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea817198fbbbb914ef2cfec46b638171b10c00db",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea817198fbbbb914ef2cfec46b638171b10c00db`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean.json)

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
| 1 | `def` | [sumIDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/sumideriv--8c9d824e586937c890cb86b8.md) | 70 | `declaration-track:8c9d824e586937c890cb86b80c5fd95b2347260f31a16062dcabf1f115e9f37f` |
| 2 | `theorem` | [sumIDeriv_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/sumideriv-apply--26c2af5e5b19cde5edca381c.md) | 73 | `result-track:26c2af5e5b19cde5edca381c2ca4a1a516a0ee8c1b4f40ad72f8256ab54de298` |
| 3 | `theorem` | [sumIDeriv_apply_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/sumideriv-apply-of-lt--aa0f64f324969e9d8c58abd5.md) | 78 | `result-track:aa0f64f324969e9d8c58abd578111a727e3524e7a32db832015d1d814cc54565` |
| 4 | `theorem` | [sumIDeriv_apply_of_le](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/sumideriv-apply-of-le--a2a4c5e99a8fcf5c64d0479f.md) | 83 | `result-track:a2a4c5e99a8fcf5c64d0479ff5d4b697b17139dc47b146e98c0f92c7cb4569ae` |
| 5 | `theorem` | [sumIDeriv_C](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/sumideriv-c--36977312bb25466403e69ef3.md) | 89 | `result-track:36977312bb25466403e69ef3fdd2b22bfc90a5f320cba3e3408afb5695b73651` |
| 6 | `theorem` | [sumIDeriv_X](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/sumideriv-x--08105416d5cad38adb2c01ea.md) | 93 | `result-track:08105416d5cad38adb2c01ea06a3f312fa136f4ab7aa021cffefca322754eecf` |
| 7 | `theorem` | [sumIDeriv_map](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/sumideriv-map--7bc85355471a727477a7de13.md) | 98 | `result-track:7bc85355471a727477a7de13b94835f96ec7c7ce870b961541c51a85c63886b3` |
| 8 | `theorem` | [sumIDeriv_derivative](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/sumideriv-derivative--dc1cc285b993d75c6a629c11.md) | 105 | `result-track:dc1cc285b993d75c6a629c1137723ae9f6c09f701da49a2067a658bc314abbdc` |
| 9 | `theorem` | [sumIDeriv_eq_self_add](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/sumideriv-eq-self-add--bdf892cd7b6a1e01e3e2f66e.md) | 110 | `result-track:bdf892cd7b6a1e01e3e2f66eefe848b2ccf34d12cec40ce761006c055d133f62` |
| 10 | `theorem` | [exists_iterate_derivative_eq_factorial_smul](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/exists-iterate-derivative-eq-factorial-smul--5614bbb529fb1c72d170f44a.md) | 116 | `result-track:5614bbb529fb1c72d170f44a25db2a87da02fcb0ab96f433e017266676aa23a4` |
| 11 | `theorem` | [aeval_iterate_derivative_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/aeval-iterate-derivative-of-lt--09359d1c91bcae4cd8275916.md) | 131 | `result-track:09359d1c91bcae4cd827591604a61678939dfb6f89004d72307f45eda80c11b6` |
| 12 | `theorem` | [aeval_iterate_derivative_self](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/aeval-iterate-derivative-self--d7e5c22e6aa16a396abf9d1d.md) | 143 | `result-track:d7e5c22e6aa16a396abf9d1dce644bec34ccfc5fe80efd8f30c070c82f2c518d` |
| 13 | `theorem` | [aeval_iterate_derivative_of_ge](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/aeval-iterate-derivative-of-ge--1e94525392b752774e84a4a6.md) | 164 | `result-track:1e94525392b752774e84a4a67131f0768a746d6104eaf4ded74c6ecc0695e69b` |
| 14 | `theorem` | [aeval_sumIDeriv_eq_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/aeval-sumideriv-eq-eval--b57d7d277686c4429e29b633.md) | 173 | `result-track:b57d7d277686c4429e29b6331b227bf3694562434167ebfe170f416fc28eba9a` |
| 15 | `theorem` | [aeval_sumIDeriv](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/aeval-sumideriv--5dff0a9408025f4cf866d489.md) | 177 | `result-track:5dff0a9408025f4cf866d489bcafbe03bff2bd60ed3bb572c4fa01deea12000e` |
| 16 | `theorem` | [aeval_sumIDeriv_of_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/aeval-sumideriv-of-pos--86bb950bee27d39c4d2f70f7.md) | 204 | `result-track:86bb950bee27d39c4d2f70f7cfeb673b2dea14f73fb5847bc533e9d8b00a7990` |
| 17 | `theorem` | [eval_sumIDeriv_of_pos](../../../../../mathematics/Algebra/CommutativeAlgebra/SumIteratedDerivative/Variant5b601a454e287f70975379d67bb324d8ba5ddedaaf9574e0ad7bc2ec17de01fc.lean/declarations/eval-sumideriv-of-pos--a4caae597c7719fb55b7f956.md) | 265 | `result-track:a4caae597c7719fb55b7f95675d3934a3aa3dd6c5c0ceb0a780ba84b96266ade` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
