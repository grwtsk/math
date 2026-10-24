# Verification target: GRWTSK.Topology.GeneralTopology.Closeds.Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e929add33909a14e41710a506c3556ddf1557c65",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e929add33909a14e41710a506c3556ddf1557c65`.

Source path: `GRWTSK/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Closeds.emetricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/closeds-emetricspace--b9be3c445416ad058c0f44ec.md) | 47 | `declaration-track:b9be3c445416ad058c0f44ecb2123dfa55691b67c7518bd7f410cab458a5f211` |
| 2 | `theorem` | [continuous_infEdist_hausdorffEdist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/continuous-infedist-hausdorffedist--a827a5cf56ddb59ca0e3aca3.md) | 56 | `result-track:a827a5cf56ddb59ca0e3aca3cb10fbe62cf69160e7f5d58d57b51bc5f7e41451` |
| 3 | `theorem` | [isClosed_subsets_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/isclosed-subsets-of-isclosed--46d9e883c01a953e2183d624.md) | 72 | `result-track:46d9e883c01a953e2183d624150548bc4fc779fcf3515d9fb6a61dfd111e6f94` |
| 4 | `theorem` | [Closeds.edist_eq](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/closeds-edist-eq--81aae5c0b291b7103f7f0f73.md) | 85 | `result-track:81aae5c0b291b7103f7f0f73c8f599fc9037335b73fc50d61b079889d9d5b51b` |
| 5 | `instance` | [Closeds.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/closeds-completespace--1d43a6c79e12e07eec521d0e.md) | 90 | `declaration-track:1d43a6c79e12e07eec521d0e959009e5d95828903bd030c16073682c96785ecd` |
| 6 | `instance` | [Closeds.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/closeds-compactspace--809933967c4dda822a8e9492.md) | 185 | `declaration-track:809933967c4dda822a8e94924684b2d004f451dc35929d86bcab7726ab6d5979` |
| 7 | `instance` | [NonemptyCompacts.emetricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/nonemptycompacts-emetricspace--d6e7f8b4a6e4bb6d618488ce.md) | 233 | `declaration-track:d6e7f8b4a6e4bb6d618488ce8069d29569e45a621546e733abf855656b8b2443` |
| 8 | `theorem` | [NonemptyCompacts.ToCloseds.isUniformEmbedding](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/nonemptycompacts-tocloseds-isuniformembedding--d96fa417cfd3099565f2bbb3.md) | 243 | `result-track:d96fa417cfd3099565f2bbb3cc5f49f4aed2af779753dce1a25ff4706bd18e56` |
| 9 | `theorem` | [NonemptyCompacts.isClosed_in_closeds](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/nonemptycompacts-isclosed-in-closeds--6f575f821540cebee699d8b7.md) | 248 | `result-track:6f575f821540cebee699d8b7e3b1e93bec4891dabb81a1ee2643d1baa57190a6` |
| 10 | `instance` | [NonemptyCompacts.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/nonemptycompacts-completespace--193cf1521e833d31c27d9b0e.md) | 287 | `declaration-track:193cf1521e833d31c27d9b0e77cc11c3d31bbe05550d3f55c0cf5f3e7a9a7f77` |
| 11 | `instance` | [NonemptyCompacts.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/nonemptycompacts-compactspace--7da9c179873539f8d7eeb2e8.md) | 294 | `declaration-track:7da9c179873539f8d7eeb2e8cbd56e9b834367e0747847861e7bdfae47bccf7c` |
| 12 | `instance` | [NonemptyCompacts.secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/nonemptycompacts-secondcountabletopology--153470036400e88768cf3869.md) | 300 | `declaration-track:153470036400e88768cf386969b50b52b49bb73cde44f4aca68c4bdee56820d8` |
| 13 | `instance` | [NonemptyCompacts.metricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/nonemptycompacts-metricspace--ff1dcc23cfa9e814799e5850.md) | 389 | `declaration-track:ff1dcc23cfa9e814799e5850a17f93ef2415c93266630c426dbdc1274c4d3361` |
| 14 | `theorem` | [NonemptyCompacts.dist_eq](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/nonemptycompacts-dist-eq--586b9c988d6821844864e6c0.md) | 395 | `result-track:586b9c988d6821844864e6c073601cffdb0651329b9c7b8341ee0e46e4bce4f8` |
| 15 | `theorem` | [lipschitz_infDist_set](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/lipschitz-infdist-set--d5b12007c62d6c2e5f3dbbad.md) | 399 | `result-track:d5b12007c62d6c2e5f3dbbadf633cd1cbc838697fc24a862621005a2cc2e9f45` |
| 16 | `theorem` | [lipschitz_infDist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/lipschitz-infdist--18dfe24640507230a2b61b2b.md) | 404 | `result-track:18dfe24640507230a2b61b2b1d30784836dc5fc14361208603c5f873cc773e8d` |
| 17 | `theorem` | [uniformContinuous_infDist_Hausdorff_dist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variantd1d45c3055c64b35f9e8886784ba3710a346209dedeb1b95251c678c6d8200ef.lean/declarations/uniformcontinuous-infdist-hausdorff-dist--4e0acd0d7022b9669cbf28b3.md) | 409 | `result-track:4e0acd0d7022b9669cbf28b33c8e50a078eb72b29aeca339f5733a3991963ae6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
