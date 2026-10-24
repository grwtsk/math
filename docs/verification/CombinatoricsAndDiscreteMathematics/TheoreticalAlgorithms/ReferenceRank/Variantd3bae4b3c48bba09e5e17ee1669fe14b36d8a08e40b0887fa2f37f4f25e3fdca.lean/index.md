# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReferenceRank.Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd5c3cd73c686755e56f9bf0ddba4632a8f2c683",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd5c3cd73c686755e56f9bf0ddba4632a8f2c683`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Presentation.ReferenceGraph` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RankedModule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca.lean/declarations/rankedmodule--63ae8bca117597e79e204c60.md) | 26 | `declaration-track:63ae8bca117597e79e204c60efe160e7f7d6f6ace31d6b0e6cd0147d22beaa11` |
| 2 | `def` | [rankModule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca.lean/declarations/rankmodule--1b68f1e1c17200493864b0c0.md) | 32 | `declaration-track:1b68f1e1c17200493864b0c00ee1c2a7448d010e1c4d084da2c2bd8740a4e71d` |
| 3 | `structure` | [ReferenceRanking](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca.lean/declarations/referenceranking--cb2ed647679065e4ade28091.md) | 40 | `declaration-track:cb2ed647679065e4ade280910346e7352070cbfdc72a1c510d698d1e3b0ce486` |
| 4 | `theorem` | [ranking_contains_module](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ReferenceRank/Variantd3bae4b3c48bba09e5e17ee1669fe14b36d8a08e40b0887fa2f37f4f25e3fdca.lean/declarations/ranking-contains-module--eddad699fed5981d436a1f3e.md) | 48 | `result-track:eddad699fed5981d436a1f3ef7f43832f19e972986720db7100b87544b2510c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
