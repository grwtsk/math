# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PeriodicOrbit.Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73c053ac0debf586dd2ec476e29282f99361c936",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73c053ac0debf586dd2ec476e29282f99361c936`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Stability.Expansion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cycleMultiplier](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/cyclemultiplier--bb41679dc287851ddcafe64c.md) | 13 | `declaration-track:bb41679dc287851ddcafe64c44ca4e6feca7a736d6ab813f3947c219c08a9545` |
| 2 | `theorem` | [cycleMultiplier_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/cyclemultiplier-nil--386baa2bc6600034e0137b93.md) | 16 | `result-track:386baa2bc6600034e0137b93b7617db56ffe3df2f34ccd9a87b8a698885d3a92` |
| 3 | `theorem` | [cycleMultiplier_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/cyclemultiplier-cons--373ccede985e2018089c451f.md) | 20 | `result-track:373ccede985e2018089c451f020c7014a3031679ecf39a2bc32c78de6a9dd777` |
| 4 | `theorem` | [cycle_multiplier_is_derivative_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/cycle-multiplier-is-derivative-product--1f3150d65151b09055881ea2.md) | 27 | `result-track:1f3150d65151b09055881ea22f846d8c6b2837390effe139708cb941218cbcfb` |
| 5 | `theorem` | [cycleMultiplier_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/cyclemultiplier-append--617e72faaf6405913fefa9a5.md) | 33 | `result-track:617e72faaf6405913fefa9a5480eb3bf0eb6cd8be7ffcdb797ed107b8b95c63a` |
| 6 | `def` | [scaledCycleMultiplier](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/scaledcyclemultiplier--baf7f081cc1ab44e54411298.md) | 39 | `declaration-track:baf7f081cc1ab44e5441129863e22aef4326ba7028ccf0f2c5791883c63f0794` |
| 7 | `theorem` | [scaledCycleMultiplier_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/scaledcyclemultiplier-nil--463788032217e230662d021e.md) | 45 | `result-track:463788032217e230662d021e0f608de32c0be1b0b26c9d37a555597d62c07896` |
| 8 | `theorem` | [scaledCycleMultiplier_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/scaledcyclemultiplier-cons--c71d9f5b93ce28219dcc5df8.md) | 49 | `result-track:c71d9f5b93ce28219dcc5df8591e9887367f1e8f8cfb398bcaecf44b8e88c7c4` |
| 9 | `theorem` | [scaled_cycle_numerator_is_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/scaled-cycle-numerator-is-product--061b6e4627471fde001a23af.md) | 56 | `result-track:061b6e4627471fde001a23af14eccc1238f5973c783ed4a89c097283ce0aff3b` |
| 10 | `theorem` | [scaled_cycle_scale_is_product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/scaled-cycle-scale-is-product--ce01ff35ac9fd100e66f63a7.md) | 65 | `result-track:ce01ff35ac9fd100e66f63a72edabf00c78829f7bbe04bcdad38f74fbcdbcab7` |
| 11 | `structure` | [PeriodicOrbitCertificate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/periodicorbitcertificate--98c0c3de7a52ea2e92edd5c9.md) | 74 | `declaration-track:98c0c3de7a52ea2e92edd5c975e2d32aebde4d878da81b720f39a8f0c84118a8` |
| 12 | `structure` | [PeriodicAttractionObligation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicOrbit/Variant9620323b07dab1e9585be0dc80fe9402094d08cb9849c36f3d2313dbc24412ae.lean/declarations/periodicattractionobligation--d2bfe53be1b6a7fc44342258.md) | 90 | `declaration-track:d2bfe53be1b6a7fc443422581cc61eba1b5d5f7ca2ca17a2994afd45cacec2bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
