# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Pigeonhole.Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ca1c8dc1871cd4aac29a1ac2e055ce12e96e8c6",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ca1c8dc1871cd4aac29a1ac2e055ce12e96e8c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Union` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_ne_map_eq_of_card_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915.lean/declarations/exists-ne-map-eq-of-card-lt--b61d3ed35e62be062ad7d60c.md) | 42 | `result-track:b61d3ed35e62be062ad7d60c2de66a0fd7361d33ac7ec761245e6142728b10c5` |
| 2 | `theorem` | [isEmpty_of_card_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915.lean/declarations/isempty-of-card-lt--1a9ff0e01e86298049d2237e.md) | 56 | `result-track:1a9ff0e01e86298049d2237ee6c59ad7e1e9f90e7423791e317c5bd50bd7ea3d` |
| 3 | `theorem` | [Finite.exists_ne_map_eq_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915.lean/declarations/finite-exists-ne-map-eq-of-infinite--5eb0d224faa859d5818fd507.md) | 70 | `result-track:5eb0d224faa859d5818fd5079d82bcb44786020092b28e632f14090d226a5599` |
| 4 | `theorem` | [Finite.exists_infinite_fiber](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Pigeonhole/Variant2687766b4a1cb65c405dd9767f5a16eacdfecc6fc7d1a673fd375967a55d1915.lean/declarations/finite-exists-infinite-fiber--fb0c6071eaf6fc2ab329eb06.md) | 81 | `result-track:fb0c6071eaf6fc2ab329eb0615eb4e12f51770dfe2cd457a94bed5b00fdbae35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
