# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CardEmbedding.Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49d37d98385fc218c0414b265760519e1274bd2c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49d37d98385fc218c0414b265760519e1274bd2c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Embedding` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_embedding_eq_of_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean/declarations/card-embedding-eq-of-unique--ebcbeb7430283efd332870f6.md) | 36 | `result-track:ebcbeb7430283efd332870f6088d985e017907a8529b856becb1c9df8a3d6200` |
| 2 | `theorem` | [card_embedding_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean/declarations/card-embedding-eq--cde8f151bf86493a3b968768.md) | 44 | `result-track:cde8f151bf86493a3b9687686db4de51ea52e5b7856b1eac6ff6c54a3111ce6c` |
| 3 | `theorem` | [card_embedding_eq_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variantcd8afe199531f01bc1f60adad1cded1302ed5ee35b95fcbea1e0fb4624f01026.lean/declarations/card-embedding-eq-of-infinite--534305b86a5fc266f37813c9.md) | 61 | `result-track:534305b86a5fc266f37813c9be90d741ba1baa46841a7cbfaa1ed9f7cfa99f7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
