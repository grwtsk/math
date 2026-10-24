# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IteratorLemmas.Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82f5e17fba0a5c5df053b97d6ebc857e0ffa69fa",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82f5e17fba0a5c5df053b97d6ebc857e0ffa69fa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.DHashMap.IteratorLemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Std.Data.HashSet.RawLemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean/declarations/tolist-iter--81bb39d3b6bb20e82010c218.md) | 23 | `result-track:81bb39d3b6bb20e82010c21872b49f63a5b6e250af20be9c67c5b5e81f0a4891` |
| 2 | `theorem` | [toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean/declarations/tolistrev-iter--0ebfd4ec41301a7daab16f55.md) | 29 | `result-track:0ebfd4ec41301a7daab16f558d297444966b2539176d4435a5743ff2dbfae33d` |
| 3 | `theorem` | [toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean/declarations/toarray-iter--c9fb95411eed60d667b6e4d2.md) | 34 | `result-track:c9fb95411eed60d667b6e4d2656e28ef84919d3c2c4abfe1d22e7ac8fa66eb9d` |
| 4 | `theorem` | [toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean/declarations/tolist-iter--d37c6adfda69c22681a554a7.md) | 46 | `result-track:d37c6adfda69c22681a554a7b19b308095bc93882a5dbcabe073ae53081a654a` |
| 5 | `theorem` | [toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean/declarations/tolistrev-iter--b86b41264d0605ce98280ab2.md) | 51 | `result-track:b86b41264d0605ce98280ab2b51eb533564b439a68a9b96bc8ed929d29722fa9` |
| 6 | `theorem` | [toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IteratorLemmas/Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1.lean/declarations/toarray-iter--37748808e70729b97e37daaa.md) | 56 | `result-track:37748808e70729b97e37daaacab74948416c63b289436c5ad64a20f5280882f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
