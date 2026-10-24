# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphIntegration.Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdebbffb562bd3b3c962a0f62edd25cbd134c7ed",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdebbffb562bd3b3c962a0f62edd25cbd134c7ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Priority` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.All` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RHNodeClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean/declarations/rhnodeclass--dccfc61cdba4da984ffbd196.md) | 24 | `declaration-track:dccfc61cdba4da984ffbd1964da970ae76724357d72e97edd5bd3de654d59733` |
| 2 | `inductive` | [RHEdgeClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean/declarations/rhedgeclass--9e3084ff2d326997e25d3057.md) | 34 | `declaration-track:9e3084ff2d326997e25d3057e745276d33a7a7e34b1fdb9dd9b97004d5c9fd0b` |
| 3 | `inductive` | [RHObjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean/declarations/rhobjective--360d5611b64d265cd3edb293.md) | 45 | `declaration-track:360d5611b64d265cd3edb293dcd71c16d28374322bf0553fe4dc00cc2a7e2b38` |
| 4 | `def` | [canonicalGraphModePlan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean/declarations/canonicalgraphmodeplan--e9a9953f0ef497019608eb6a.md) | 55 | `declaration-track:e9a9953f0ef497019608eb6a575491ea50b1df80ae12bf242466757f063fd3c9` |
| 5 | `structure` | [RHGraphAccessPlan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean/declarations/rhgraphaccessplan--6968ce85a429e88c48c9f427.md) | 66 | `declaration-track:6968ce85a429e88c48c9f427a7e5707cf4280c9e46444d5f1319a6008ea74173` |
| 6 | `def` | [RHObjective.toGraphAccessPlan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean/declarations/rhobjective-tographaccessplan--5eb3d3381f41461b9a6f319d.md) | 76 | `declaration-track:5eb3d3381f41461b9a6f319d209daafec2ff0ecbb471a63a2b32bf29d54fd143` |
| 7 | `theorem` | [RHObjective.compiledPlan_supported](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456.lean/declarations/rhobjective-compiledplan-supported--dba710a90ca45c937f01ec64.md) | 151 | `result-track:dba710a90ca45c937f01ec648d2aa3bdb4176127797533bd88743522260bdb91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
