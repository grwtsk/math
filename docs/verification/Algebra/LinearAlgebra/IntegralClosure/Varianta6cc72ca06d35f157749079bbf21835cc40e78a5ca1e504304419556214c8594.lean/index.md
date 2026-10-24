# Verification target: GRWTSK.Algebra.LinearAlgebra.IntegralClosure.Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd8d39ed9f66f9b65488cf19af6038db4921b03c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd8d39ed9f66f9b65488cf19af6038db4921b03c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean.json)

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
| 1 | `def` | [TensorProduct.toIntegralClosure](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/tensorproduct-tointegralclosure--f71ffbb67775a6a58dc578e5.md) | 39 | `declaration-track:f71ffbb67775a6a58dc578e5a3cb9d7b4c1b0e51cded3c0058f0696981527ee3` |
| 2 | `lemma` | [TensorProduct.toIntegralClosure_injective_of_flat](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/tensorproduct-tointegralclosure-injective-of-flat--a75563d8e364b65f3b1a8454.md) | 50 | `result-track:a75563d8e364b65f3b1a8454a9166c0144514196a0683bc9bd34b1ccb857b393` |
| 3 | `lemma` | [TensorProduct.toIntegralClosure_bijective_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/tensorproduct-tointegralclosure-bijective-of-tower--5552b17b038cb40ec244cff4.md) | 58 | `result-track:5552b17b038cb40ec244cff4987d6106ebc87d755006f157d10498746de3d98d` |
| 4 | `lemma` | [TensorProduct.toIntegralClosure_bijective_of_isLocalizationAway](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/tensorproduct-tointegralclosure-bijective-of-islocalizationaway--4916d00986d7c38603e79950.md) | 73 | `result-track:4916d00986d7c38603e79950baaefc16cb7a446a3e317167a8ab9ab0e53378ec` |
| 5 | `lemma` | [TensorProduct.toIntegralClosure_mvPolynomial_bijective](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/tensorproduct-tointegralclosure-mvpolynomial-bijective--e43fd47c13d9f7fac5f43f86.md) | 126 | `result-track:e43fd47c13d9f7fac5f43f8671c7f85a511b12cde97bb671037175b0608f3a07` |
| 6 | `lemma` | [TensorProduct.toIntegralClosure_bijective_of_isLocalization](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/tensorproduct-tointegralclosure-bijective-of-islocalization--38ab958c8b194763e8d1c5f2.md) | 159 | `result-track:38ab958c8b194763e8d1c5f2083d82253f3992740a0e0ecafdc95be4c3558b84` |
| 7 | `lemma` | [exists_derivative_mul_eq_and_isIntegral_coeff](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/exists-derivative-mul-eq-and-isintegral-coeff--a450822a0b477ac744788815.md) | 195 | `result-track:a450822a0b477ac74478881519a9783d1508f47aa2ec6d67f851e2eed21631de` |
| 8 | `theorem` | [mem_adjoin_map_integralClosure_of_isStandardEtale](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/mem-adjoin-map-integralclosure-of-isstandardetale--ce3c5d1f3717b4ea0aafa629.md) | 280 | `result-track:ce3c5d1f3717b4ea0aafa6292cf8625b63af6544292463d83093a49b6871b96c` |
| 9 | `theorem` | [TensorProduct.toIntegralClosure_bijective_of_isStandardEtale](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/tensorproduct-tointegralclosure-bijective-of-isstandardetale--45101468efee66183f78e041.md) | 367 | `result-track:45101468efee66183f78e041fb2d426ba4f094193e165ecf749083a17f5b04b0` |
| 10 | `theorem` | [TensorProduct.toIntegralClosure_bijective_of_smooth](../../../../../mathematics/Algebra/LinearAlgebra/IntegralClosure/Varianta6cc72ca06d35f157749079bbf21835cc40e78a5ca1e504304419556214c8594.lean/declarations/tensorproduct-tointegralclosure-bijective-of-smooth--459c6ae592dcceed602a0743.md) | 378 | `result-track:459c6ae592dcceed602a0743a953169a915c4f16c83f6602d60750c85aad94df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
