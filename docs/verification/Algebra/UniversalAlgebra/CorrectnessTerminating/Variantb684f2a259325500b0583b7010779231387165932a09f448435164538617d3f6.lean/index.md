# Verification target: GRWTSK.Algebra.UniversalAlgebra.CorrectnessTerminating.Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "251761c82a40244405ea8475d350ed49c86e148b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `251761c82a40244405ea8475d350ed49c86e148b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Computation.Translations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.TerminatedStable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.ContinuedFractions.ContinuantsRecurrence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compExactValue](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/declarations/compexactvalue--f5aa393e21bb05f525077ff7.md) | 61 | `declaration-track:f5aa393e21bb05f525077ff7d02bab43005808ae75bd47b0562cb129fe1473a4` |
| 2 | `theorem` | [compExactValue_correctness_of_stream_eq_some_aux_comp](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/declarations/compexactvalue-correctness-of-stream-eq-some-aux-comp--10eb2f088624558b0ac91eed.md) | 72 | `result-track:10eb2f088624558b0ac91eedf5a3ff36090e8c80adccc8d000e5282a6ce49a3d` |
| 3 | `theorem` | [compExactValue_correctness_of_stream_eq_some](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/declarations/compexactvalue-correctness-of-stream-eq-some--99223a0a9798a1f16b633bb2.md) | 97 | `result-track:99223a0a9798a1f16b633bb27a46dc16b837983a31b9518f6587fb1bf2ea8490` |
| 4 | `theorem` | [of_correctness_of_nth_stream_eq_none](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/declarations/of-correctness-of-nth-stream-eq-none--50213f79d636ebc0d77c3e34.md) | 206 | `result-track:50213f79d636ebc0d77c3e349a1c6a45269514d68b91e097847dd886199b8f2c` |
| 5 | `theorem` | [of_correctness_of_terminatedAt](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/declarations/of-correctness-of-terminatedat--a550576d43499902809ebf10.md) | 232 | `result-track:a550576d43499902809ebf107dc3bc34eb46f0fbec5299fd6a876322e45e7690` |
| 6 | `theorem` | [of_correctness_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/declarations/of-correctness-of-terminates--9b6d0a0d847214bf97e958eb.md) | 241 | `result-track:9b6d0a0d847214bf97e958ebe1f58fc0f0939928b9b63748c51fd70cb5d36fac` |
| 7 | `theorem` | [of_correctness_atTop_of_terminates](../../../../../mathematics/Algebra/UniversalAlgebra/CorrectnessTerminating/Variantb684f2a259325500b0583b7010779231387165932a09f448435164538617d3f6.lean/declarations/of-correctness-attop-of-terminates--921f3ce414d55bf67a9fd308.md) | 249 | `result-track:921f3ce414d55bf67a9fd30860e51d327e450f8554e8f511d315fabb58fed338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
