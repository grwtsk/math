# Verification target: GRWTSK.Topology.GeneralTopology.Closeds.Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e0483fa8a8a4fb0a426e5e2e15d8127fafc2141",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e0483fa8a8a4fb0a426e5e2e15d8127fafc2141`.

Source path: `GRWTSK/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Closeds.emetricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/closeds-emetricspace--ef70a25ea0a7301dfac73e25.md) | 44 | `declaration-track:ef70a25ea0a7301dfac73e2547ed00061d4620d0c2a3c1ec80b7543172a110d6` |
| 2 | `theorem` | [continuous_infEdist_hausdorffEdist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/continuous-infedist-hausdorffedist--ab6606fcee90ba16a9bf0203.md) | 54 | `result-track:ab6606fcee90ba16a9bf02039098bbfa1ef019044ae09074296f75639ed5e978` |
| 3 | `theorem` | [isClosed_subsets_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/isclosed-subsets-of-isclosed--2040aa38acc8121d544bf175.md) | 72 | `result-track:2040aa38acc8121d544bf175ef6c5960d02831d08dd503a844cd976550f93823` |
| 4 | `theorem` | [Closeds.edist_eq](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/closeds-edist-eq--d2b752662d5727c51289a2ab.md) | 89 | `result-track:d2b752662d5727c51289a2ab1fdc0dbb896f06b57772c160db584e9c0aba9566` |
| 5 | `instance` | [Closeds.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/closeds-completespace--77ec0ed9b5281d7f2be4d858.md) | 95 | `declaration-track:77ec0ed9b5281d7f2be4d858e77a56d463c8dadaf5a59f3a140f881e70c5d1ec` |
| 6 | `instance` | [Closeds.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/closeds-compactspace--081698365e34c64f9915b33b.md) | 195 | `declaration-track:081698365e34c64f9915b33b78eb501c581d38b5ac7114d74aefaad1625378a6` |
| 7 | `instance` | [NonemptyCompacts.emetricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/nonemptycompacts-emetricspace--40e7d24038b67f4269a44bb4.md) | 245 | `declaration-track:40e7d24038b67f4269a44bb495f887534e43c7d43d9ecb5ec05a5dbee0331143` |
| 8 | `theorem` | [NonemptyCompacts.ToCloseds.uniformEmbedding](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/nonemptycompacts-tocloseds-uniformembedding--8aae5bb5174226b1e06c1f54.md) | 256 | `result-track:8aae5bb5174226b1e06c1f540e65c1c433e8be6cc684d4b1a5c5946b55bdec3c` |
| 9 | `theorem` | [NonemptyCompacts.isClosed_in_closeds](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/nonemptycompacts-isclosed-in-closeds--83ef988e47889ea6143c85c4.md) | 262 | `result-track:83ef988e47889ea6143c85c4551ecc98090a2eee40bf924138b4a9f73237a685` |
| 10 | `instance` | [NonemptyCompacts.completeSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/nonemptycompacts-completespace--599db6f17cbaefe01224301b.md) | 302 | `declaration-track:599db6f17cbaefe01224301b8388b01f18eff1f8a0405c0af82c2a5a804a3d30` |
| 11 | `instance` | [NonemptyCompacts.compactSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/nonemptycompacts-compactspace--fae8fe1bfb29c5797b5e2e1d.md) | 310 | `declaration-track:fae8fe1bfb29c5797b5e2e1d14a2bf6749e484a5a549a4393f8b419d93d23bea` |
| 12 | `instance` | [NonemptyCompacts.secondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/nonemptycompacts-secondcountabletopology--320f1198b5a9a702704bf1cd.md) | 318 | `declaration-track:320f1198b5a9a702704bf1cddec54917658f29279643b76f6e8b5417440b868a` |
| 13 | `instance` | [NonemptyCompacts.metricSpace](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/nonemptycompacts-metricspace--87a37f03379f78d385b531bd.md) | 408 | `declaration-track:87a37f03379f78d385b531bd0efd42b8591bce7dbbea6a31affbacbe4295aa84` |
| 14 | `theorem` | [NonemptyCompacts.dist_eq](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/nonemptycompacts-dist-eq--bc73d3218079010d2ffa568d.md) | 415 | `result-track:bc73d3218079010d2ffa568d3ca6f1f03f2852e2a396c1f0f4cce6ad3c8117f5` |
| 15 | `theorem` | [lipschitz_infDist_set](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/lipschitz-infdist-set--538c87a17a912e43e48b4747.md) | 420 | `result-track:538c87a17a912e43e48b47471518bab21c3211a536a192e655108d9a11b8a037` |
| 16 | `theorem` | [lipschitz_infDist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/lipschitz-infdist--92c23c89a3a46ecfd056f58b.md) | 426 | `result-track:92c23c89a3a46ecfd056f58bf5897e25023ee434d25962d6d09459c792343ec0` |
| 17 | `theorem` | [uniformContinuous_infDist_Hausdorff_dist](../../../../../mathematics/Topology/GeneralTopology/Closeds/Variant39e8865a821b7b7537c9ed3fccfcf0d4ede21ebadda82d8baca22c954c93436a.lean/declarations/uniformcontinuous-infdist-hausdorff-dist--677739233164841639d205f3.md) | 434 | `result-track:677739233164841639d205f3c21fc996241c5e1966db9fb88291477082eb76f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
