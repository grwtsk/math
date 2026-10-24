# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphIntegration.Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6403af25f42ef333119ba44a349379c4539a76b3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6403af25f42ef333119ba44a349379c4539a76b3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.Priority` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.All` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RHNodeClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean/declarations/rhnodeclass--9920732536381e315c59cbb5.md) | 16 | `declaration-track:9920732536381e315c59cbb59e2233057ab8da78883fa4e8340b12a73eb3cf76` |
| 2 | `inductive` | [RHEdgeClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean/declarations/rhedgeclass--cba0201012555137cb1c9c13.md) | 26 | `declaration-track:cba0201012555137cb1c9c13e125e2e33581066811bfefe316e023eea5fe4a7f` |
| 3 | `inductive` | [RHObjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean/declarations/rhobjective--7725935b0a5644b8574c1955.md) | 37 | `declaration-track:7725935b0a5644b8574c19551379ed8b0691f2580f23fbcc39e8b05b78f7690d` |
| 4 | `def` | [canonicalGraphModePlan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean/declarations/canonicalgraphmodeplan--926112fa703d0998249adcbb.md) | 47 | `declaration-track:926112fa703d0998249adcbb0cb81422aa3d279ad588605ddd75ffd3fd2f7c16` |
| 5 | `structure` | [RHGraphAccessPlan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean/declarations/rhgraphaccessplan--71f88d08afc7173159ad1362.md) | 58 | `declaration-track:71f88d08afc7173159ad1362e8dc28c6f86bc22c7ec4bcb85eb1ee605bf2047e` |
| 6 | `def` | [RHObjective.toGraphAccessPlan](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean/declarations/rhobjective-tographaccessplan--1dfb3432a8b7c3f8302f3e83.md) | 68 | `declaration-track:1dfb3432a8b7c3f8302f3e8365813965e397df92b98994de6c312d450a539453` |
| 7 | `theorem` | [RHObjective.compiledPlan_supported](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphIntegration/Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff.lean/declarations/rhobjective-compiledplan-supported--9be45542909114a2de8c882c.md) | 143 | `result-track:9be45542909114a2de8c882c4fe6994e6e6a80c8ed9e0f001d0f2eb9f3043a51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
