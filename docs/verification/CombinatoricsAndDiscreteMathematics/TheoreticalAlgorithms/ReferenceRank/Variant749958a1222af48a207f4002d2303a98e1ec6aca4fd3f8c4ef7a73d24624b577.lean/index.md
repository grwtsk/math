# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReferenceRank.Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59f24c8a488ce93eeeabe0665c308b5f6434a427",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59f24c8a488ce93eeeabe0665c308b5f6434a427`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Presentation.ReferenceGraph` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RankedModule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean/declarations/rankedmodule--18b3fb4edc15ea8181d100be.md) | 18 | `declaration-track:18b3fb4edc15ea8181d100be3fa723702e53c2f925953ad1ab967580a9f1d735` |
| 2 | `def` | [rankModule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean/declarations/rankmodule--b5c46452e5c636414a5a06e9.md) | 24 | `declaration-track:b5c46452e5c636414a5a06e9846225a7f45c8af11e73635bf24070b08d298ac4` |
| 3 | `structure` | [ReferenceRanking](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean/declarations/referenceranking--87639e1d180f9bf6be8efd0e.md) | 32 | `declaration-track:87639e1d180f9bf6be8efd0e07e50a43cbb8172aad3335f67b23ef00700d64ec` |
| 4 | `theorem` | [ranking_contains_module](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variant749958a1222af48a207f4002d2303a98e1ec6aca4fd3f8c4ef7a73d24624b577.lean/declarations/ranking-contains-module--980c907010de1ed5a25d5e16.md) | 40 | `result-track:980c907010de1ed5a25d5e16cdd1c4138d22ae8c7903d324923600931079172d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
