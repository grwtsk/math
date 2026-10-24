# Verification target: GRWTSK.Algebra.RingTheory.TeichmullerSeries.Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8714ae7684d947f338959aee6e8abfdadb4027be",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8714ae7684d947f338959aee6e8abfdadb4027be`.

Source path: `GRWTSK/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean.json)

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
| 1 | `theorem` | [sum_coeff_eq_coeff_sum](../../../../../mathematics/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/declarations/sum-coeff-eq-coeff-sum--12aa07cb66637ad549717c6c.md) | 43 | `result-track:12aa07cb66637ad549717c6c67eaecbb5e4da4f2f2ba7bd5a49078cfc6f2cd3b` |
| 2 | `theorem` | [teichmuller_mul_pow_coeff](../../../../../mathematics/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/declarations/teichmuller-mul-pow-coeff--5d82837bf564fc8c795bed8c.md) | 73 | `result-track:5d82837bf564fc8c795bed8c2d4abd6252191836233a9c3da21ec2cc96bef68d` |
| 3 | `theorem` | [teichmuller_mul_pow_coeff_of_ne](../../../../../mathematics/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/declarations/teichmuller-mul-pow-coeff-of-ne--64f1bae6fa8fa3b19637b462.md) | 77 | `result-track:64f1bae6fa8fa3b19637b462ab207c55596e3f2b0f1b22d6db83f202d15aa04a` |
| 4 | `theorem` | [dvd_sub_sum_teichmuller_iterateFrobeniusEquiv_coeff](../../../../../mathematics/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/declarations/dvd-sub-sum-teichmuller-iteratefrobeniusequiv-coeff--2b8afcff30cbf45e2efe949f.md) | 93 | `result-track:2b8afcff30cbf45e2efe949fe689ae2610c0b753d2da4175f9579b37cb4f3f65` |
| 5 | `theorem` | [eq_of_apply_teichmuller_eq](../../../../../mathematics/Algebra/RingTheory/TeichmullerSeries/Variant59967d6781d98c55750cf72273d26ad8d8ae8663e15ccb3ace5477a8ae645e40.lean/declarations/eq-of-apply-teichmuller-eq--f5626173839ae4476f0756b1.md) | 118 | `result-track:f5626173839ae4476f0756b18fadfdd125bbc001ece804c03c963a9d6d9ca684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
