# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Chebyshev.Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01c2e7a722cc81b731f3f2a86c49b98e92281184",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01c2e7a722cc81b731f3f2a86c49b98e92281184`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.AlgebraMap` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Chebyshev` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [aeval_T](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/aeval-t--4f55d29a503d274772e44919.md) | 29 | `result-track:4f55d29a503d274772e44919c5e17c077f9d75b19ec8f9efb80de32d6db61a20` |
| 2 | `theorem` | [aeval_U](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/aeval-u--617c5c5a9cd0e741909f1cd3.md) | 34 | `result-track:617c5c5a9cd0e741909f1cd3cb45dbee399bf80219b1a5a850b8fbd81eb19da5` |
| 3 | `theorem` | [algebraMap_eval_T](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/algebramap-eval-t--38d5fca478d2ef9af6fb2a8e.md) | 39 | `result-track:38d5fca478d2ef9af6fb2a8eeea1ed8c2998e50a1b68b9f17b5cb1e17b969be0` |
| 4 | `theorem` | [algebraMap_eval_U](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/algebramap-eval-u--c10f36605672a6b3b99011ad.md) | 45 | `result-track:c10f36605672a6b3b99011ada3aa1ef24781878c9960bb369b6dbeeb51e0848a` |
| 5 | `theorem` | [complex_ofReal_eval_T](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/complex-ofreal-eval-t--0ff608a50f416fffb7eeaf69.md) | 52 | `result-track:0ff608a50f416fffb7eeaf6906e6164e7dd040ecc599674567d49e78171b412f` |
| 6 | `theorem` | [complex_ofReal_eval_U](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/complex-ofreal-eval-u--b3aa7752db24d3fe56501f87.md) | 58 | `result-track:b3aa7752db24d3fe56501f8771b1057ae776ddd7e9b648e3e2f3f34c12526028` |
| 7 | `theorem` | [T_complex_cos](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/t-complex-cos--f037757b20270a1169e97e9a.md) | 74 | `result-track:f037757b20270a1169e97e9a3870b0b7a517d87102155cf6e13e23d7d88432f5` |
| 8 | `theorem` | [U_complex_cos](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/u-complex-cos--113a4b56da3cfbd29836933d.md) | 91 | `result-track:113a4b56da3cfbd29836933dbfaf189d1c87dd100b8fc978763129fb9d00edd2` |
| 9 | `theorem` | [T_real_cos](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/t-real-cos--cd4144797df6c7c092da1180.md) | 116 | `result-track:cd4144797df6c7c092da1180065c1eac2dccc0e27c5c09c55de2e21bf58fe17d` |
| 10 | `theorem` | [U_real_cos](../../../../../mathematics/Algebra/CommutativeAlgebra/Chebyshev/Variant93d7f154c5b42447cb275b1c9dd5972280ce99f833e3469e5c2bc9c41659cced.lean/declarations/u-real-cos--946728fe4ce2404828a34c9e.md) | 122 | `result-track:946728fe4ce2404828a34c9ea06a03a86dd44d7f955ee8a43bd284c8d3aaccee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
