# Verification target: GRWTSK.Topology.GeneralTopology.Completion.Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6662bab85be51d1e7b3c4be39ca3971571f4fc98",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6662bab85be51d1e7b3c4be39ca3971571f4fc98`.

Source path: `GRWTSK/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Completion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Inseparable.inner_eq_inner](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/declarations/inseparable-inner-eq-inner--b862bcbe92c89dc4f5845d8c.md) | 25 | `result-track:b862bcbe92c89dc4f5845d8c474c35f14fba54512c44c4c1d08942cd63a5e182` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/declarations/instance--4797719f8e646adcc54ab608.md) | 32 | `declaration-track:4797719f8e646adcc54ab608879500766634918eb01eb86f8b1e0abc9b765499` |
| 3 | `theorem` | [inner_mk_mk](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/declarations/inner-mk-mk--5d79a56240b41af8f447d288.md) | 36 | `result-track:5d79a56240b41af8f447d288692195ff5708ba1ffb853ca18a94be4474f52f6d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/declarations/instance--a22db851cf3ebb0d96eb2df1.md) | 39 | `declaration-track:a22db851cf3ebb0d96eb2df1399d951c73a338f52484cb357f9b78ea1ee72fbe` |
| 5 | `instance` | [toInner](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/declarations/toinner--6c43cd7e8ec9a3606c4b7692.md) | 57 | `declaration-track:6c43cd7e8ec9a3606c4b76929b2a1684180097d165b686488b2c9484a9215601` |
| 6 | `theorem` | [inner_coe](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/declarations/inner-coe--93d6fc3bea7b531bfb5410d5.md) | 62 | `result-track:93d6fc3bea7b531bfb5410d5a00905f0d255464b2cdf43c94b8aae5f6bdadd7e` |
| 7 | `theorem` | [continuous_inner](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/declarations/continuous-inner--673b3a43d3b34f33cc4a1490.md) | 66 | `result-track:673b3a43d3b34f33cc4a1490aa24b0f9c36ee16e011cb8c8411a82ab2d5ff838` |
| 8 | `theorem` | [Continuous.inner](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/declarations/continuous-inner--49a0e49adae19f83bd1fc203.md) | 81 | `result-track:49a0e49adae19f83bd1fc2039adb4818a041606669915418ab57189fc107cf6d` |
| 9 | `instance` | [innerProductSpace](../../../../../mathematics/Topology/GeneralTopology/Completion/Variant6149923737140f4563fb232ee1e15d2f4e8eb58912ee19da63753adcf0b867d0.lean/declarations/innerproductspace--2cb48e14519b53b7c995416b.md) | 85 | `declaration-track:2cb48e14519b53b7c995416b390acdab9473006d38519978ce2fef9b26f96f0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
