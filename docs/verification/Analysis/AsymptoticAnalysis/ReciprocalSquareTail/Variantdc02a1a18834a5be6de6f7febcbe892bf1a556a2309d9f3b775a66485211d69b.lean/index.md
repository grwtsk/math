# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ReciprocalSquareTail.Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "379082c72804437da5c6cd25eeac9c8b73a5bad5",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `379082c72804437da5c6cd25eeac9c8b73a5bad5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.PSeries` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Sqrt` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocal_square_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean/declarations/reciprocal-square-tail-le--ff40d03c78e82567cb831088.md) | 19 | `result-track:ff40d03c78e82567cb831088995d6e04116e7e71298ab654a19a06e072e54083` |
| 2 | `theorem` | [sqrt_cutoff_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean/declarations/sqrt-cutoff-tail-le--5000941c3844c13ffaf283a3.md) | 26 | `result-track:5000941c3844c13ffaf283a3e9d3fa27d66f6672a2623edc2c528d3c859feef3` |
| 3 | `theorem` | [floor_sqrt_cutoff_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ReciprocalSquareTail/Variantdc02a1a18834a5be6de6f7febcbe892bf1a556a2309d9f3b775a66485211d69b.lean/declarations/floor-sqrt-cutoff-tail-le--39f3647d108482efcd09add1.md) | 48 | `result-track:39f3647d108482efcd09add1882d29c3ae2335e80d9f7337f4ad090e745478c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
