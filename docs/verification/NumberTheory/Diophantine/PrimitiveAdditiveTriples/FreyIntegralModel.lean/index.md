# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralModel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83dee7c0fab72ca75b64d094a8a9df22eb0ecc01",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83dee7c0fab72ca75b64d094a8a9df22eb0ecc01`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAffineEvaluation`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyAffineEvaluation.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freyWeierstrassInt](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/declarations/freyweierstrassint--efbf52c4ec19e695fe8562d6.md) | 17 | `declaration-track:efbf52c4ec19e695fe8562d62273bb87581477d010d2ca5aa37cec6dee9ae990` |
| 2 | `theorem` | [freyWeierstrassInt_Δ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/declarations/freyweierstrassint--adf757294a2fb7066a74cabb.md) | 25 | `result-track:adf757294a2fb7066a74cabbd7deaf555fe7c487953a92f0e16299906789aab6` |
| 3 | `def` | [PrimitiveAdditiveTriple.freyIntegralModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/declarations/primitiveadditivetriple-freyintegralmodel--09e6b10b6e4bc872941afd0b.md) | 33 | `declaration-track:09e6b10b6e4bc872941afd0b96b0a4b7e68d599c4747ee2a092f42a782eaa4b3` |
| 4 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralModel_Δ](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/declarations/primitiveadditivetriple-freyintegralmodel--4a65102fb9403e0ba0ea1e31.md) | 38 | `result-track:4a65102fb9403e0ba0ea1e319cdf545ffa37ab8a1e5bbb72491203f285d661ce` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralModel_Δ_ne_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/declarations/primitiveadditivetriple-freyintegralmodel-ne-zero--585ada058ad3a04d6b5391cc.md) | 49 | `result-track:585ada058ad3a04d6b5391cc3fa71f885ac68818e19a1fc0d0ca01ebded0f388` |
| 6 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralModel_baseChange_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/declarations/primitiveadditivetriple-freyintegralmodel-basechange-eq--3c53b8b50d32da9685f32c92.md) | 65 | `result-track:3c53b8b50d32da9685f32c92b04e7b679c79f6b2bc7ae1af667956759bc8ba6e` |
| 7 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_Δ_eq_intCast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/declarations/primitiveadditivetriple-freycurve-eq-intcast--874b897ed882e65f2a06cf81.md) | 75 | `result-track:874b897ed882e65f2a06cf81b4eb5aa80ce506d03abe183c68d0d06f32b18ea0` |
| 8 | `def` | [PrimitiveAdditiveTriple.freyIntegralCoefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/declarations/primitiveadditivetriple-freyintegralcoefficients--914c5ce56d753ffbe4cc0508.md) | 83 | `declaration-track:914c5ce56d753ffbe4cc050804cfed2e5c5ec8349c6aee649c70bdbf9d5e0803` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralCoefficients_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralModel.lean/declarations/primitiveadditivetriple-freyintegralcoefficients-eq--9ed15537bbbd1b9e48748c69.md) | 90 | `result-track:9ed15537bbbd1b9e48748c69345680fd907dcfb2a747d39f7422b1b2b47760b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
