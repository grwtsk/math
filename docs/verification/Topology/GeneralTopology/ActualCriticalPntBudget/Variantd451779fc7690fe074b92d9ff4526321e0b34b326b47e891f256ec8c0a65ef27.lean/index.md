# Verification target: GRWTSK.Topology.GeneralTopology.ActualCriticalPntBudget.Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0656b825795eb6aa152e6620a0b87e6dd2a9a9e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0656b825795eb6aa152e6620a0b87e6dd2a9a9e`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCriticalAbsoluteGrowth` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCriticalPntAbsoluteIntegrand](../../../../../mathematics/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/declarations/actualcriticalpntabsoluteintegrand--48a63cc8cd47b1dccd9b44a0.md) | 31 | `declaration-track:48a63cc8cd47b1dccd9b44a0c96dbc2d4bd531414f6b8d11d705a66d9a149fcc` |
| 2 | `def` | [actualCriticalPntAbsoluteBudget](../../../../../mathematics/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/declarations/actualcriticalpntabsolutebudget--457377992e9b9a1a29b04ffa.md) | 34 | `declaration-track:457377992e9b9a1a29b04ffa1473bee5dc5fa83cd5171f36f9ea91c83fbe0d9d` |
| 3 | `theorem` | [baseline_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/declarations/baseline-continuous--3834e8a9f361db3b923f7158.md) | 37 | `result-track:3834e8a9f361db3b923f7158049232ea706e15b774e996d76649655c72021815` |
| 4 | `theorem` | [pnt_integrand_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/declarations/pnt-integrand-continuous--da6067533da9b07faadd9704.md) | 44 | `result-track:da6067533da9b07faadd9704fd48c6c4e0121225289aff4cab35ad028078f740` |
| 5 | `theorem` | [actualCriticalPntAbsoluteIntegrand_integrable](../../../../../mathematics/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/declarations/actualcriticalpntabsoluteintegrand-integrable--1a68c829f7b3940ac89ee9aa.md) | 51 | `result-track:1a68c829f7b3940ac89ee9aa106427b9a9643d2f75af2290ce5a67a99decc050` |
| 6 | `theorem` | [actualCriticalPntAbsoluteBudget_lower](../../../../../mathematics/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/declarations/actualcriticalpntabsolutebudget-lower--753865d1ac41655a04c45a1b.md) | 63 | `result-track:753865d1ac41655a04c45a1b847abac506e6004f221def75009c176f0309f6da` |
| 7 | `theorem` | [actualCriticalPntAbsoluteBudget_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/ActualCriticalPntBudget/Variantd451779fc7690fe074b92d9ff4526321e0b34b326b47e891f256ec8c0a65ef27.lean/declarations/actualcriticalpntabsolutebudget-tendsto-attop--fb90437c627e72a0497d71d4.md) | 99 | `result-track:fb90437c627e72a0497d71d4e8de39e211d262a6bd902638523d5d191a3c9c2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
