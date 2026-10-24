# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a3ad4c7f97aa6a315f4d186b87137566acabb4f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a3ad4c7f97aa6a315f4d186b87137566acabb4f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ArrayIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/declarations/arrayiterator--7e44ab82019227b279287505.md) | 29 | `declaration-track:7e44ab82019227b27928750570aa3ae10874a141a2a30b015d1e15fc39a38561` |
| 2 | `theorem` | [ArrayIterator.exists_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/declarations/arrayiterator-exists-iff--0da88981cc390c8bf28447be.md) | 35 | `result-track:0da88981cc390c8bf28447be8818b1c005aca7b1b158f315160d433a41a0ae05` |
| 3 | `def` | [_root_.Array.iterFromIdxM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/declarations/root-array-iterfromidxm--21cc4f8b269047e6fb761d64.md) | 55 | `declaration-track:21cc4f8b269047e6fb761d64bac43a4d560de582e4e1119ebce4f7c4ae0434b4` |
| 4 | `def` | [_root_.Array.iterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/declarations/root-array-iterm--7f1766942417ad9d638ec65c.md) | 73 | `declaration-track:7f1766942417ad9d638ec65c9a4bc7edd7937aec6c2b5e2fde30b72e0920953c` |
| 5 | `instance` | [ArrayIterator.instIterator](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/declarations/arrayiterator-institerator--ff204712debede11ac48bfa4.md) | 78 | `declaration-track:ff204712debede11ac48bfa4a245848ea717518129e2b02f2e15accb3116f73f` |
| 6 | `def` | [ArrayIterator.instFinitenessRelation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/declarations/arrayiterator-instfinitenessrelation--bf419dd217700e7af2b7a0f8.md) | 94 | `declaration-track:bf419dd217700e7af2b7a0f842d01610d08b09ce1adfdac478a8dff6ce3cf508` |
| 7 | `instance` | [ArrayIterator.instFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/declarations/arrayiterator-instfinite--8ff79dbb7693764d5d24cd62.md) | 111 | `declaration-track:8ff79dbb7693764d5d24cd62cd85eb46e48f7ee6298235d177886344364a7d1f` |
| 8 | `instance` | [ArrayIterator.instIteratorLoop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Array/Variant78eaaec8dad3c8bba264e1166bf297d5447645db19c5b4f0741fa8da24f02d8c.lean/declarations/arrayiterator-institeratorloop--fb34463d99ae8369e8cc015c.md) | 115 | `declaration-track:fb34463d99ae8369e8cc015cab803bc0b98f79dcce5ade2322244ed44c3794a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
