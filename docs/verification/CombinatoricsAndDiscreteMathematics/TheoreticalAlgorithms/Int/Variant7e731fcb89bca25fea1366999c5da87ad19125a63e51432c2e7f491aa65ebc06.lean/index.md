# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c096667c9c1f4b25ded91f3fc768f6686335101f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c096667c9c1f4b25ded91f3fc768f6686335101f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Int` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_replicate_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/declarations/sum-replicate-int--6718bee80a826fe892f9e05a.md) | 29 | `result-track:6718bee80a826fe892f9e05a1fdd5be4f41aa91f904b3c1ef46125d4fc55ad99` |
| 2 | `theorem` | [sum_append_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/declarations/sum-append-int--b2cf96d2b86d5f853a48daf9.md) | 32 | `result-track:b2cf96d2b86d5f853a48daf9c0d4230522f61c94ea5e19c5a0b5107c70b9de09` |
| 3 | `theorem` | [sum_reverse_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/declarations/sum-reverse-int--574f8167b1e54fb73b2a1344.md) | 36 | `result-track:574f8167b1e54fb73b2a134445ba798098204e66385e45ae1d7dbee9c15f46ca` |
| 4 | `theorem` | [sum_eq_foldl_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/declarations/sum-eq-foldl-int--78e7ace87cf33d3729baf340.md) | 39 | `result-track:78e7ace87cf33d3729baf34061f7f95af8515faccf4372ff8e67714f079a4e56` |
| 5 | `theorem` | [prod_replicate_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/declarations/prod-replicate-int--9006c35c6fe17be63f1e89dd.md) | 42 | `result-track:9006c35c6fe17be63f1e89ddd37e0313b8833aae018995d22e3c65436592e96f` |
| 6 | `theorem` | [prod_append_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/declarations/prod-append-int--1c5fd95c41b5e23f43511ff7.md) | 45 | `result-track:1c5fd95c41b5e23f43511ff70ac1b812f631be6b290f34ba27d2d1bed2fd918b` |
| 7 | `theorem` | [prod_reverse_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/declarations/prod-reverse-int--58ab8318d63cd31b14053013.md) | 49 | `result-track:58ab8318d63cd31b14053013f686bdfac58515fa3fc74bd443dcbd7b044bd0b5` |
| 8 | `theorem` | [prod_eq_foldl_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant7e731fcb89bca25fea1366999c5da87ad19125a63e51432c2e7f491aa65ebc06.lean/declarations/prod-eq-foldl-int--5cedd884d9baea1854d3b830.md) | 52 | `result-track:5cedd884d9baea1854d3b8302b1614ae822aa90f26f8219ae15ee114c683d00c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
