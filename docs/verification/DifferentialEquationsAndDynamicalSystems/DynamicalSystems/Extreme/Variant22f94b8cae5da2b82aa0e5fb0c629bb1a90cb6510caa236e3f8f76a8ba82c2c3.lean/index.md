# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.Extreme.Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f546eb5ecc5f195a960c9b9895f43a8f8327fd79",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f546eb5ecc5f195a960c9b9895f43a8f8327fd79`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Extreme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.Function` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.RadonNikodym` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalProbability` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [of_mem_extremePoints_measure_univ_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/declarations/of-mem-extremepoints-measure-univ-eq--b8331db9ab8f47cac495e3b5.md) | 36 | `result-track:b8331db9ab8f47cac495e3b5f6da6be39307a85330471b4a56e1eb1dab3557ec` |
| 2 | `theorem` | [of_mem_extremePoints](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/declarations/of-mem-extremepoints--b7e5da1d3bdd847eb6f58660.md) | 67 | `result-track:b7e5da1d3bdd847eb6f586605665129ce01929d73a8eaf845dbfa01d77801c34` |
| 3 | `theorem` | [eq_smul_of_absolutelyContinuous](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/declarations/eq-smul-of-absolutelycontinuous--921892febd04b09669da0fb9.md) | 74 | `result-track:921892febd04b09669da0fb938a12263721078d50dff96f0cfbf17cbfebfd081` |
| 4 | `theorem` | [eq_of_absolutelyContinuous_measure_univ_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/declarations/eq-of-absolutelycontinuous-measure-univ-eq--b5e844aa52054d80ffb0868b.md) | 85 | `result-track:b5e844aa52054d80ffb0868bd35349c84a00abf11f7f2ecc794135ea57b7c300` |
| 5 | `theorem` | [eq_of_absolutelyContinuous](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/declarations/eq-of-absolutelycontinuous--9307ac23d71661e1f42f3c5f.md) | 93 | `result-track:9307ac23d71661e1f42f3c5fc61aaf04e8b72b8b9ebf037074e0fe0a0b658d36` |
| 6 | `theorem` | [mem_extremePoints_measure_univ_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/declarations/mem-extremepoints-measure-univ-eq--dde14d3b5eba3a29a5932713.md) | 97 | `result-track:dde14d3b5eba3a29a593271326a964fb38a0e6908f1894b73e2322f39bf6dbe2` |
| 7 | `theorem` | [mem_extremePoints](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/declarations/mem-extremepoints--0fe38d7e15a06017368fd6d6.md) | 106 | `result-track:0fe38d7e15a06017368fd6d66079073bd56a9a208a2bff8bfa2c4908e3238817` |
| 8 | `theorem` | [iff_mem_extremePoints_measure_univ_eq](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/declarations/iff-mem-extremepoints-measure-univ-eq--4d9ddbac34c9a49347cb416e.md) | 110 | `result-track:4d9ddbac34c9a49347cb416ec7488b2e0bb1570c0af477e926394fac0252c421` |
| 9 | `theorem` | [iff_mem_extremePoints](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/declarations/iff-mem-extremepoints--fada1307c1f8a1066b4aacd4.md) | 114 | `result-track:fada1307c1f8a1066b4aacd4b5b95227bfe97af49beba23a9be56e51b5ffa72c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
