# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionOrder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b75164a279c8b684bd5cb0f6bb7133bbb3d43c27",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b75164a279c8b684bd5cb0f6bb7133bbb3d43c27`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder`](../../../../../mathematics/Algebra/RingTheory/QuadraticCollisionOrder.lean/index.md) — import line 10; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySelectedProjectiveMarks`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreySelectedProjectiveMarks.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PairFrame](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/pairframe--f7d549cd28376b7f029d4f83.md) | 25 | `declaration-track:f7d549cd28376b7f029d4f832192e52707d90c9af46e567aeee3ae2e8462adc6` |
| 2 | `theorem` | [coordinates_multiple](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/coordinates-multiple--8931f026a705943e6b401639.md) | 36 | `result-track:8931f026a705943e6b40163995808df1fb4a7a45b114a38154dea5df7395a72a` |
| 3 | `def` | [firstPair](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/firstpair--67488f3dceb2d19794ec1be0.md) | 44 | `declaration-track:67488f3dceb2d19794ec1be0099d71d067512f235f9a7690066dfc390b381dd4` |
| 4 | `def` | [evenAPair](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/evenapair--a8435e6b12fedc68e0465e26.md) | 62 | `declaration-track:a8435e6b12fedc68e0465e261183ed43ee1d7a492d27a8ba7d3e681d7da701a2` |
| 5 | `def` | [evenBPair](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/evenbpair--4d3bdb2294a9e2ebddf2db84.md) | 84 | `declaration-track:4d3bdb2294a9e2ebddf2db84628326e6927e724d42a1ebe875c23b20cd363665` |
| 6 | `def` | [selectedPair](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/selectedpair--21b3caf3a2907a47dea89b1e.md) | 107 | `declaration-track:21b3caf3a2907a47dea89b1ee9c5a5dd6666c4010445c12ecc3728e0cf73e2e1` |
| 7 | `theorem` | [selected_coefficients](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/selected-coefficients--33f9ad72d71645c7d0a53a93.md) | 119 | `result-track:33f9ad72d71645c7d0a53a93a25f2370ea09cd20af9b1a71ad6a021e0aca1d69` |
| 8 | `theorem` | [gap_relation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/gap-relation--c0fe222fe82809c95f095064.md) | 128 | `result-track:c0fe222fe82809c95f095064e625b2c52013207807bca2d2f9005cf64f5c791a` |
| 9 | `theorem` | [line_factorization](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/line-factorization--d213ebb75a1fce1456230e42.md) | 139 | `result-track:d213ebb75a1fce1456230e426116f57a9484da18601e980c1c0232fb8cecebc8` |
| 10 | `theorem` | [equation_over_order](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/equation-over-order--3976cfecd785754b0b661214.md) | 150 | `result-track:3976cfecd785754b0b661214fab127ebe6a589e2e9da0de5cb7cf89121e5910b` |
| 11 | `theorem` | [evaluations_recover_marks](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/evaluations-recover-marks--ec06ac5d15d60337097893d0.md) | 166 | `result-track:ec06ac5d15d60337097893d0f47e1a44c9a7662e7d19f77ad8ac10f84961dbc3` |
| 12 | `def` | [specialFiber](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/specialfiber--b75032c091cf65e952ff3297.md) | 173 | `declaration-track:b75032c091cf65e952ff32973c586da31cd54fda118ca38fd20b4debcf164af5` |
| 13 | `theorem` | [collision_clearing](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/collision-clearing--2bc91022d862a8906e392b21.md) | 177 | `result-track:2bc91022d862a8906e392b217c9a049ab357e3c5059ba060fd68ce2104f031c4` |
| 14 | `theorem` | [coefficient_ranks](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/coefficient-ranks--9da137ee6e89d5a4352e519f.md) | 182 | `result-track:9da137ee6e89d5a4352e519fac61d6370a686b8805ee5682ce6198732362102d` |
| 15 | `theorem` | [special_coordinates](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/special-coordinates--a15bace22c6ba03cca1ee83d.md) | 188 | `result-track:a15bace22c6ba03cca1ee83d8e0dbb0cd9b8d4150820ab62b3843a8406a66647` |
| 16 | `theorem` | [quadratic_pair_observation](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCollisionOrder.lean/declarations/quadratic-pair-observation--c6dc1fca1b471018e4cff0e1.md) | 195 | `result-track:c6dc1fca1b471018e4cff0e1fb3bc97de6598275a292069389f17547928eb9fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
