# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Embedding.Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f74a4faf64ded278de615fad37eda18bdf0448c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f74a4faf64ded278de615fad37eda18bdf0448c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Embedding` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Card` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_embedding_disjoint_range_of_add_le_ENat_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean/declarations/exists-embedding-disjoint-range-of-add-le-enat-card--f864f30e696163c98b9e3b94.md) | 49 | `result-track:f864f30e696163c98b9e3b94b773e3d53bec9fd29e10304c2889a54d800e0b51` |
| 2 | `theorem` | [exists_embedding_disjoint_range_of_add_le_Nat_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean/declarations/exists-embedding-disjoint-range-of-add-le-nat-card--78db5a3e2045f15b21e2b12f.md) | 67 | `result-track:78db5a3e2045f15b21e2b12f11392665dc9b833d93d2885bc9addcac756acdce` |
| 3 | `theorem` | [restrictSurjective_of_add_le_ENatCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean/declarations/restrictsurjective-of-add-le-enatcard--86b977200777ccababee4e74.md) | 73 | `result-track:86b977200777ccababee4e74d7a91c5ede84597782ee569220cd60a4b5e68dd8` |
| 4 | `theorem` | [restrictSurjective_of_add_le_natCard](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Embedding/Variantfd737a69aa7094251fde25af02240ba7ccc922c3babef5a479666573da66069a.lean/declarations/restrictsurjective-of-add-le-natcard--8544589a35b10e88acc48e3d.md) | 83 | `result-track:8544589a35b10e88acc48e3d9385199c1554943bac11126d97a38d5cc2f8f59d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
