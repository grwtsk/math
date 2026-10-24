# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CardEmbedding.Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59eaaa17ce8e80a1fa85aa0ca61f362de7ad5556",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59eaaa17ce8e80a1fa85aa0ca61f362de7ad5556`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Factorial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Embedding` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_embedding_eq_of_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c.lean/declarations/card-embedding-eq-of-unique--d23765a9107b794f243d6202.md) | 28 | `result-track:d23765a9107b794f243d62020d6615e3d468d124bad45b4be647dc05b8aa3db9` |
| 2 | `theorem` | [card_embedding_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c.lean/declarations/card-embedding-eq--3ecc582e7c0e71222b62faea.md) | 36 | `result-track:3ecc582e7c0e71222b62faeaf33a5187dbca1564fe52e9bc85cf846742b7b241` |
| 3 | `theorem` | [card_embedding_eq_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CardEmbedding/Variante3a2e0839dd3fdf1a34fe2ec0869a90e243fa17bdb29cf817b992fb9883d424c.lean/declarations/card-embedding-eq-of-infinite--e137a1d257daa758a9906cbe.md) | 53 | `result-track:e137a1d257daa758a9906cbee89b90e507fa407c1aab79d9cc6c3f0ba7ae2248` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
