# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EuclidInfinitude.Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30b7007156900c4cadccd786892b784f4c86f827",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30b7007156900c4cadccd786892b784f4c86f827`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Tree.PrimeLabels` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [listBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean/declarations/listbound--fd27243a20eb284059e220a5.md) | 15 | `declaration-track:fd27243a20eb284059e220a5b0ba31e3472787ecfa12327cb431c834099ab816` |
| 2 | `theorem` | [mem_le_listBound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean/declarations/mem-le-listbound--2df2552ccf8d9d46dbca35da.md) | 19 | `result-track:2df2552ccf8d9d46dbca35daad33b2a9dcacdcda2a5e90e37c911cc6da62a462` |
| 3 | `theorem` | [euclid_prime_not_in_finite_list](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean/declarations/euclid-prime-not-in-finite-list--ea330474d1de9df86a261353.md) | 35 | `result-track:ea330474d1de9df86a261353a3ed377f3877058a38977462048f52402e6151b8` |
| 4 | `theorem` | [infinitely_many_primeLabels](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EuclidInfinitude/Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6.lean/declarations/infinitely-many-primelabels--bfb81bc9b6aafe7e09498077.md) | 47 | `result-track:bfb81bc9b6aafe7e0949807729e31eb97285a3aa94041ba650e0ee132e7caea5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
