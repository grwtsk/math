# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.ActualLogCoordinate.Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1eb77f3e001e02d8a043e284dfdec299d0681099",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1eb77f3e001e02d8a043e284dfdec299d0681099`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogCoordinate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLogOperator](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actuallogoperator--d340e0a3a3577f17fd46618c.md) | 21 | `declaration-track:d340e0a3a3577f17fd46618c2226768f93b3c19faec3dd21779a3ec228372b3b` |
| 2 | `def` | [actualLogL2](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actuallogl2--c19b4c1b84f4b02490827298.md) | 23 | `declaration-track:c19b4c1b84f4b02490827298f404abe8763eeac42f3944559233ac47bdea53b3` |
| 3 | `theorem` | [actualLogOperator_memLp](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actuallogoperator-memlp--d4097186a560474f17583b4e.md) | 25 | `result-track:d4097186a560474f17583b4e1b564afe3e5a69ca17dc71a7fcecbfa3d6a576f9` |
| 4 | `theorem` | [actualLogL2_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actuallogl2-ae--69f295e47eba0966544eedfe.md) | 29 | `result-track:69f295e47eba0966544eedfeed212cf8a22031548899c582a789099681f67862` |
| 5 | `theorem` | [actualLogL2_norm](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actuallogl2-norm--508c9f10d57a429651bc970d.md) | 38 | `result-track:508c9f10d57a429651bc970d5a9cc5884650e3b24ff40de2b625ed54075c4d88` |
| 6 | `theorem` | [actualLogL2_norm_sq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actuallogl2-norm-sq--a8b016c244c1e341058ce854.md) | 41 | `result-track:a8b016c244c1e341058ce854af1560599458f70589bb2460f39665fc3844b646` |
| 7 | `theorem` | [actual_dilation_log](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actual-dilation-log--1625298dac97166af3adb4f4.md) | 45 | `result-track:1625298dac97166af3adb4f4ac5388ede5adcfc3de931d8f11c56ed492d939b8` |
| 8 | `theorem` | [actual_integer_log](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actual-integer-log--6cea793479a6747a487ba360.md) | 49 | `result-track:6cea793479a6747a487ba36016e8519e118314d64cf74a014e11024c71ef0fd8` |
| 9 | `theorem` | [actual_integer_log_ae](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actual-integer-log-ae--4e4d6d3229ca31b6df73d03e.md) | 53 | `result-track:4e4d6d3229ca31b6df73d03eef3251c9ef54570c04f0632be8dc7dbff0ad32f0` |
| 10 | `theorem` | [actualLogOperator_zero_upper](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/ActualLogCoordinate/Varianta316493bd39a8be5a372c818dfa8d058118d6011e956723e15a455ca680f0eb7.lean/declarations/actuallogoperator-zero-upper--4f0147559fc3b870d23ac0ef.md) | 62 | `result-track:4f0147559fc3b870d23ac0ef1a33c0fb2312b7cba925fdd5cacdf52072515c10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
