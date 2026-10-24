# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EuclidInfinitude.Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b6abc75cd4fd8766419e4e20fc3ad8b6d47603b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b6abc75cd4fd8766419e4e20fc3ad8b6d47603b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.PrimeLabels` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c.lean/declarations/listbound--9b26cf17f260373fedf7ef8f.md) | 7 | `declaration-track:9b26cf17f260373fedf7ef8f15a687f742c8f0b749566ba58f636929fe1a9fa4` |
| 2 | `theorem` | [mem_le_listBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c.lean/declarations/mem-le-listbound--aaadf35a84e0ff86fc36e11a.md) | 11 | `result-track:aaadf35a84e0ff86fc36e11a7b401750c716b43b3be96132efd12a976f8cd872` |
| 3 | `theorem` | [euclid_prime_not_in_finite_list](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c.lean/declarations/euclid-prime-not-in-finite-list--0eb25a566fda406b95ef7604.md) | 27 | `result-track:0eb25a566fda406b95ef7604ebfc3dcf4559fff13360aae5026d25719d967b2c` |
| 4 | `theorem` | [infinitely_many_primeLabels](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c.lean/declarations/infinitely-many-primelabels--7f2a152ab82277a515dfe8a5.md) | 39 | `result-track:7f2a152ab82277a515dfe8a54e43c7e981bfe403f10107fae5b9f575a192d64e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
