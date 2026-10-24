# Verification target: GRWTSK.Algebra.GroupTheory.WordMetric.Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c37cd3869bfda4c5a65fb3d4ad0c76dba8cde1f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c37cd3869bfda4c5a65fb3d4ad0c76dba8cde1f`.

Source path: `GRWTSK/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wordLength](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/wordlength--916893af30497e667548bf75.md) | 62 | `declaration-track:916893af30497e667548bf75b82aaf33984e5ae71683039e6212f315f0cf1613` |
| 2 | `def` | [IsGeodesic](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/isgeodesic--39331509d1bb0fb91bcd01cc.md) | 68 | `declaration-track:39331509d1bb0fb91bcd01cc84329434ead8f1b6b83595614c1604af0d999c32` |
| 3 | `lemma` | [IsGeodesic.eq](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/isgeodesic-eq--6fae099c015765c16a2a902e.md) | 70 | `result-track:6fae099c015765c16a2a902ed10f02c022b51f3296cccf3c326939de305ca4df` |
| 4 | `theorem` | [exists_isGeodesic](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/exists-isgeodesic--50db489ba0b4f07823273389.md) | 74 | `result-track:50db489ba0b4f078232733896b86a66d2221c7d9120977a185232c31f96cff85` |
| 5 | `lemma` | [wordLength_wordProd_le](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/wordlength-wordprod-le--a42bb1ec65e4a2bbe2e18d9c.md) | 80 | `result-track:a42bb1ec65e4a2bbe2e18d9c265d94985bda75383c847059bc2dade6e67cd7ea` |
| 6 | `theorem` | [wordLength_le_iff](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/wordlength-le-iff--325e71b61f838affa2e740f0.md) | 85 | `result-track:325e71b61f838affa2e740f091531aaaebf0eec2885f088a8cc6bac7ebf79524` |
| 7 | `lemma` | [wordLength_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/wordlength-eq-zero-iff--f38862fca907a0bdc6052060.md) | 95 | `result-track:f38862fca907a0bdc60520603b3acadbe636ff797a49ed53fa2eeeaf478aaf9e` |
| 8 | `lemma` | [wordLength_one](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/wordlength-one--98db836be8172ab19d99df5f.md) | 100 | `result-track:98db836be8172ab19d99df5f64cfce349f1a0c1401800edf947cc03699a52a3b` |
| 9 | `lemma` | [wordLength_inv_le](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/wordlength-inv-le--8e78b22bf11e8a7bd6a28531.md) | 104 | `result-track:8e78b22bf11e8a7bd6a28531c3acf868ffcff22f94c8085b13ada3f2249410f5` |
| 10 | `lemma` | [wordLength_inv](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/wordlength-inv--0addb601a2c8bcc91ec60a94.md) | 109 | `result-track:0addb601a2c8bcc91ec60a9459c92c98bc4b4b584607bdeac11f23261b2e819b` |
| 11 | `lemma` | [wordLength_mul_le](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/wordlength-mul-le--db22ab2b95793d63d177982c.md) | 114 | `result-track:db22ab2b95793d63d177982c319a80b9ec30ed038c285a25d666c48f754153c0` |
| 12 | `def` | [groupNorm](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/groupnorm--2197c43b79f9ddc32950b896.md) | 120 | `declaration-track:2197c43b79f9ddc32950b896d8c0d48f48df386bdd5b4ca5cc335ecb2f09f50a` |
| 13 | `def` | [normedGroup](../../../../../mathematics/Algebra/GroupTheory/WordMetric/Variantc92f64f728c924530d694ba73c128ad8175d5ffaa5046738fde4eba1505707a8.lean/declarations/normedgroup--1de1e1d0114978cb0cab6db6.md) | 132 | `declaration-track:1de1e1d0114978cb0cab6db62f4c39d086e802f7f278344ae30b0d6b4c7782c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
