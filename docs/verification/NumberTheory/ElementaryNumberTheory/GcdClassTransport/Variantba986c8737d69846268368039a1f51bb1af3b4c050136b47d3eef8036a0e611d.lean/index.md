# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.GcdClassTransport.Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e3bf19ad6ff9bd4d871794742d4508966186524",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e3bf19ad6ff9bd4d871794742d4508966186524`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusRatio` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprimePairs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/coprimepairs--8aa6c64e141eb255ec37b796.md) | 21 | `declaration-track:8aa6c64e141eb255ec37b796c0026ded87224ed2d7293666442af59c33b90641` |
| 2 | `def` | [gcdClasses](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/gcdclasses--a43e6d9720746bbc1baa473a.md) | 24 | `declaration-track:a43e6d9720746bbc1baa473afcd0d2c4a38bc9b051f84ed9ba6bbb77e399ca0a` |
| 3 | `def` | [splitPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/splitpair--35097f84e327b80a30f0b31d.md) | 27 | `declaration-track:35097f84e327b80a30f0b31d2083c359c3f628b7f32da7c8ca4aa1dca0dad056` |
| 4 | `def` | [joinClass](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/joinclass--4be7958c4e320473cfdf6cec.md) | 30 | `declaration-track:4be7958c4e320473cfdf6cec6f7d3bef45ca206eb514f447ba300569180bafa7` |
| 5 | `theorem` | [splitPair_mem](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/splitpair-mem--a7cf06978547ebc72b842017.md) | 33 | `result-track:a7cf06978547ebc72b842017da85f1b2011e96915cea2379a80aba545e28231f` |
| 6 | `theorem` | [joinClass_mem](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/joinclass-mem--1fa8bede28b4542203ca9065.md) | 60 | `result-track:1fa8bede28b4542203ca906516908de7657d38290615d93e12b8d9924836a251` |
| 7 | `theorem` | [joinClass_splitPair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/joinclass-splitpair--169d540a593dbd8f611b56e7.md) | 76 | `result-track:169d540a593dbd8f611b56e710861ee4d8680815f0345ff3df3cc712e9519666` |
| 8 | `theorem` | [splitPair_joinClass](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/splitpair-joinclass--c2c8213f32cf0ebfa9d571cc.md) | 81 | `result-track:c2c8213f32cf0ebfa9d571cce7a87fade278b36c20ec0909d3292b13a9a8e25b` |
| 9 | `theorem` | [sum_eq_coprime_classes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/sum-eq-coprime-classes--e0d7c483e8837bceb789d386.md) | 91 | `result-track:e0d7c483e8837bceb789d386da271912da8dd9cb8c7403ea2295ae9ecbdb28f8` |
| 10 | `theorem` | [moebius_weighted_sum_eq_coprime_classes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/GcdClassTransport/Variantba986c8737d69846268368039a1f51bb1af3b4c050136b47d3eef8036a0e611d.lean/declarations/moebius-weighted-sum-eq-coprime-classes--d9ca4fd5a3967365f0cb693d.md) | 107 | `result-track:d9ca4fd5a3967365f0cb693d8982bf0124da4b86e7677444c166e19804c4e2b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
