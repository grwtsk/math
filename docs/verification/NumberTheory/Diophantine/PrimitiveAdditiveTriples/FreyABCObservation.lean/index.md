# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyABCObservation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0745f2357fb4ab84e2dc5e8a831da8689a0f9fe",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0745f2357fb4ab84e2dc5e8a831da8689a0f9fe`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyRationalHeight`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyRationalHeight.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.EquivalentForms`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/EquivalentForms.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [PrimitiveAdditiveTriple.frey_triple_height_eq_source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/declarations/primitiveadditivetriple-frey-triple-height-eq-source--6d04885c0b6db9ae226c3062.md) | 17 | `result-track:6d04885c0b6db9ae226c30627b8750b2b81bf21dbc8a3c5a336bdaacb31e4e76` |
| 2 | `theorem` | [PrimitiveAdditiveTriple.frey_observation_source_height_bounds](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/declarations/primitiveadditivetriple-frey-observation-source-height-bounds--6592ed1ed7b205de8a4519ca.md) | 23 | `result-track:6592ed1ed7b205de8a4519ca63e971d5f19c33f5f78bf70650e3cdf672f563af` |
| 3 | `def` | [FreyObservationLogBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/declarations/freyobservationlogbound--f8dd6fdd5cddbce714685948.md) | 32 | `declaration-track:f8dd6fdd5cddbce714685948aca1655a690bf493e53a1efadf31db2bf34dbcf2` |
| 4 | `theorem` | [freyObservationLogBound_of_abcLogBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/declarations/freyobservationlogbound-of-abclogbound--f5d1f6abb41eb07fe5b1aefe.md) | 39 | `result-track:f5d1f6abb41eb07fe5b1aefe743ce96591d4a94480e394f8661786a6c2bf8d18` |
| 5 | `theorem` | [abcLogBound_of_freyObservationLogBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/declarations/abclogbound-of-freyobservationlogbound--c684c9615619c92d6705aba4.md) | 46 | `result-track:c684c9615619c92d6705aba4e76e0eeabd133803ef762b9f32373275aa4974a1` |
| 6 | `theorem` | [abcLogBound_iff_freyObservationLogBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/declarations/abclogbound-iff-freyobservationlogbound--f3b69c2b8e42d40f12f83873.md) | 55 | `result-track:f3b69c2b8e42d40f12f838732cdfcfc9c7ae57f5544d79e3c82d4b3edf9ee57a` |
| 7 | `theorem` | [abcBound_iff_freyObservationLogBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/declarations/abcbound-iff-freyobservationlogbound--11d8a1b3134d3db2c2a52262.md) | 62 | `result-track:11d8a1b3134d3db2c2a5226263efdd176219c083974174de2be8aa6d7322674f` |
| 8 | `theorem` | [abcConjecture_iff_freyObservationLogBound](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyABCObservation.lean/declarations/abcconjecture-iff-freyobservationlogbound--3c38497ad796605ee8beea01.md) | 68 | `result-track:3c38497ad796605ee8beea01ffdf5706ccd083b95d399f8893100d52d0c47e57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
