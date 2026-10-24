# Verification target: GRWTSK.Topology.GeneralTopology.Curry.Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b5fde312a706d997026c73de73986f63e7e937a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b5fde312a706d997026c73de73986f63e7e937a`.

Source path: `GRWTSK/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Prod` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_curry_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/declarations/eventually-curry-iff--e8585d0f43a4837294d6df4b.md) | 52 | `result-track:e8585d0f43a4837294d6df4b0ef5ae1b0b7826da6b7bebf3b738a1b980f5720e` |
| 2 | `theorem` | [frequently_curry_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/declarations/frequently-curry-iff--c38e7a17ce0429e0d455bb4e.md) | 56 | `result-track:c38e7a17ce0429e0d455bb4ef542c47bec845a81559c600808e4ea38ca87baa0` |
| 3 | `theorem` | [mem_curry_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/declarations/mem-curry-iff--73dbf40865d2d1f1d8e4b9ef.md) | 60 | `result-track:73dbf40865d2d1f1d8e4b9ef5b5fed81fd074d103bd3cc0e47a6327722f890b2` |
| 4 | `theorem` | [curry_le_prod](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/declarations/curry-le-prod--bbf779a0ddb58fdd491c4bc5.md) | 63 | `result-track:bbf779a0ddb58fdd491c4bc566a09210c09854167dbef7c013acc0a14785ce88` |
| 5 | `theorem` | [Tendsto.curry](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/declarations/tendsto-curry--9f3982e6cf193737c56f2ad2.md) | 65 | `result-track:9f3982e6cf193737c56f2ad2ed3b5003df7862833152235c1904aad9af333f8f` |
| 6 | `theorem` | [frequently_curry_prod_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/declarations/frequently-curry-prod-iff--182a8eed8330bc62c948f307.md) | 69 | `result-track:182a8eed8330bc62c948f30756006aba0f2370bd14e5dfca04e0b3b98f96437e` |
| 7 | `theorem` | [eventually_curry_prod_iff](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/declarations/eventually-curry-prod-iff--d085291ccb1815ee59171c68.md) | 73 | `result-track:d085291ccb1815ee59171c680da0acde29e87905bda9fb6495d89550fb6ea7e8` |
| 8 | `theorem` | [prod_mem_curry](../../../../../mathematics/Topology/GeneralTopology/Curry/Varianta4ae401ae399ed746b3340222f3792d0ead358673f790c41f7a033adc1db81fc.lean/declarations/prod-mem-curry--26379bcec922a4aff9e10023.md) | 77 | `result-track:26379bcec922a4aff9e10023d7dd51512168d69c7075333562e3fc2901e3e6b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
