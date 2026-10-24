# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ff02db7c782e5e2c2059cac18a8e4921777cbf7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ff02db7c782e5e2c2059cac18a8e4921777cbf7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.DFinsupp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_multiset](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-multiset--40d73bf56cf67442df1ae466.md) | 53 | `result-track:40d73bf56cf67442df1ae466fe7caa8f5fe21c0656bc4866525cafd615da2fc9` |
| 2 | `theorem` | [exists_finsupp_left](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-finsupp-left--a2ae2fe69ccb28d7d187c679.md) | 66 | `result-track:a2ae2fe69ccb28d7d187c679b9fb82e9c4d13cf936ed1b7759ee981819c63fba` |
| 3 | `theorem` | [exists_finsupp_right](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-finsupp-right--dbae635b505b3e094bde8339.md) | 81 | `result-track:dbae635b505b3e094bde8339596381d339838fcbb573ef57dce3ffa0e4dfe96a` |
| 4 | `theorem` | [exists_finset](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-finset--04a6b71d37f04b6cd9c4a5fa.md) | 89 | `result-track:04a6b71d37f04b6cd9c4a5faf4bfefd115f9ef23f413fd00e1d74d85e4cad164` |
| 5 | `theorem` | [exists_finite_submodule_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-finite-submodule-of-finite--959b105bddc7326213a553a0.md) | 99 | `result-track:959b105bddc7326213a553a030c282acaf9ae9c38a8fea9372b3ba1e0bebab07` |
| 6 | `theorem` | [exists_finite_submodule_left_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-finite-submodule-left-of-finite--20a8aec27a581283131e16a1.md) | 124 | `result-track:20a8aec27a581283131e16a1381c815ea66e84df0863acc5760a1319b4f1810a` |
| 7 | `theorem` | [exists_finite_submodule_right_of_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-finite-submodule-right-of-finite--71529fcb2062c54e0c2ef62c.md) | 134 | `result-track:71529fcb2062c54e0c2ef62cd518b4eac80f654e5c49d4d6884626c1719b8a48` |
| 8 | `theorem` | [exists_finite_submodule_of_finite'](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-finite-submodule-of-finite--c6596727120bee82b411e18c.md) | 143 | `result-track:c6596727120bee82b411e18cee7457f1fec73f946da82de54f3a319715192827` |
| 9 | `theorem` | [exists_finite_submodule_left_of_finite'](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-finite-submodule-left-of-finite--8bdfac6a588a957505ece674.md) | 159 | `result-track:8bdfac6a588a957505ece674ef04fa0dc8be1240d85d1f6f5749534856eeb46b` |
| 10 | `theorem` | [exists_finite_submodule_right_of_finite'](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variantfbfcf42f45fc05daf931a554e3cc7dc8fbec7adfc45b43ea1f5b9f1f89277301.lean/declarations/exists-finite-submodule-right-of-finite--82706cff7a8d014ddc1cdf0b.md) | 169 | `result-track:82706cff7a8d014ddc1cdf0b7fb144482ce08c984dc973c61bc7561e171eee46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
