# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Girth.Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4483e55ba66ff4eb39a928a5b47036394c4ba95",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4483e55ba66ff4eb39a928a5b47036394c4ba95`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Acyclic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/egirth--186d9583315a1085c7d30c11.md) | 32 | `declaration-track:186d9583315a1085c7d30c1193599d535f2df461557e86ba6e8c62c61d8d561d` |
| 2 | `lemma` | [le_egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/le-egirth--24613905e4eecf2bb967890c.md) | 36 | `result-track:24613905e4eecf2bb967890c576ad3b70863645c9d80222052998e7e040d1a61` |
| 3 | `lemma` | [egirth_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/egirth-eq-top--1e1bff259f721d3847161b74.md) | 40 | `result-track:1e1bff259f721d3847161b7426469c09ca5c972a1c9286f9c6c759755ec25479` |
| 4 | `lemma` | [egirth_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/egirth-anti--3def52f453c0bcde7e370c6e.md) | 44 | `result-track:3def52f453c0bcde7e370c6e1ad1395c98b5d4dc27cbd9a4111fbad7e24b0828` |
| 5 | `lemma` | [exists_egirth_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/exists-egirth-eq-length--02366e336930609f1d89c7a7.md) | 47 | `result-track:02366e336930609f1d89c7a76bbd6f9f01cbda6f4702fac59178551782f5ba08` |
| 6 | `lemma` | [three_le_egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/three-le-egirth--e0e41987faa3cf37abcf651a.md) | 56 | `result-track:e0e41987faa3cf37abcf651a1e179983a0e1ed085b9dcd57505eb349e75d2a64` |
| 7 | `lemma` | [egirth_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/egirth-bot--f5589d76a26f6fcd1ea1caa7.md) | 65 | `result-track:f5589d76a26f6fcd1ea1caa7824ee62fc2e02d210e1aa8740e9332553d4b01aa` |
| 8 | `def` | [girth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/girth--8a5515ff695d7d7d73284641.md) | 76 | `declaration-track:8a5515ff695d7d7d73284641da6ea4e2a2f4a47286d2443b51a83ae7fbf3c145` |
| 9 | `lemma` | [three_le_girth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/three-le-girth--ae1cdc9a205c86f7072fe9b1.md) | 79 | `result-track:ae1cdc9a205c86f7072fe9b116836796d26259bf92affd36cd9546094d5eb99f` |
| 10 | `lemma` | [girth_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/girth-eq-zero--1c3826a0583e4086904b985c.md) | 82 | `result-track:1c3826a0583e4086904b985c4b4a662fd44e2cdd317f188255ea92f7c5382a41` |
| 11 | `lemma` | [girth_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/girth-anti--cb9c93e5299c3ae711f46ded.md) | 87 | `result-track:cb9c93e5299c3ae711f46ded7b3b670c63b6482abe9f9554987dc5ac0fde347a` |
| 12 | `lemma` | [exists_girth_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/exists-girth-eq-length--bb7e62fc6bc4cba2141a43b1.md) | 90 | `result-track:bb7e62fc6bc4cba2141a43b1e0312353324840a495b5e5d5d8a43f0377d93736` |
| 13 | `lemma` | [girth_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant0aac6e2eea2ae43325aba43c8c8785e53d29125fb724944d982f742247882f73.lean/declarations/girth-bot--995e4f52938e5afe90855a39.md) | 97 | `result-track:995e4f52938e5afe90855a392d35dfc8294de296b442d3708789eae002be5468` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
