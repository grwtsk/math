# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeWhile.Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfde64d9ce9775a4877fe59357222a25e1f89bf5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfde64d9ce9775a4877fe59357222a25e1f89bf5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean.json)

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
| 1 | `theorem` | [dropWhile_get_zero_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/dropwhile-get-zero-not--576bff0dda70f60a171c67ae.md) | 20 | `result-track:576bff0dda70f60a171c67ae5b47b80b5c8229d8d4871435e47a59e7b316a84f` |
| 2 | `theorem` | [length_dropWhile_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/length-dropwhile-le--f3a631dee3116deed53ac959.md) | 32 | `result-track:f3a631dee3116deed53ac9596dc40d267e1dddd2a71c9f5f3b35cd31c2fb0494` |
| 3 | `theorem` | [dropWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/dropwhile-eq-nil-iff--ad1aaf40e4dc093106c8283c.md) | 44 | `result-track:ad1aaf40e4dc093106c8283c28436a284d8f99c3536cd683533962c484245267` |
| 4 | `theorem` | [dropWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/dropwhile-eq-self-iff--099da055fb0e8fb5a960bb86.md) | 50 | `result-track:099da055fb0e8fb5a960bb8650a36250cc9dc9e0f06d12f5761128fd7da780e4` |
| 5 | `theorem` | [takeWhile_eq_self_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/takewhile-eq-self-iff--61e322cbb86c44941f5e7e6e.md) | 65 | `result-track:61e322cbb86c44941f5e7e6ed0c0a494188d06b0a71c65f7718898baab04d609` |
| 6 | `theorem` | [takeWhile_eq_nil_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/takewhile-eq-nil-iff--7b3aad1a592a44a1699461c0.md) | 71 | `result-track:7b3aad1a592a44a1699461c02f89dafe136bb07eef0bb6e0d8f382638107c9f9` |
| 7 | `theorem` | [mem_takeWhile_imp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/mem-takewhile-imp--1d0b8d53d3c32c92165aea5d.md) | 79 | `result-track:1d0b8d53d3c32c92165aea5d441d43fac20df1f169b2b3ad0128df90aeea079e` |
| 8 | `theorem` | [takeWhile_takeWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/takewhile-takewhile--13ece1e51d3ac9c5aad612fb.md) | 89 | `result-track:13ece1e51d3ac9c5aad612fb78aba66702582c7ef46eaa766439404ce7804fac` |
| 9 | `theorem` | [takeWhile_idem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/takewhile-idem--7d65e9c078bd7af02069f0b0.md) | 95 | `result-track:7d65e9c078bd7af02069f0b0e65115a44f4aebddffebddd4a69e54f071e2bfc4` |
| 10 | `lemma` | [find?_eq_head?_dropWhile_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/find-eq-head-dropwhile-not--97665c1b839f735fc0b55c7a.md) | 100 | `result-track:97665c1b839f735fc0b55c7ad2f14881e36ed77c62b6e8d30a432ff2b9373cbd` |
| 11 | `lemma` | [find?_not_eq_head?_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/find-not-eq-head-dropwhile--9f0eb6c6db8dfcad4c1fd9d4.md) | 115 | `result-track:9f0eb6c6db8dfcad4c1fd9d4fcbb274c294f9c85b58a88ae88c42e85fa029bab` |
| 12 | `lemma` | [find?_eq_head_dropWhile_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/find-eq-head-dropwhile-not--f7e139d54b942699da787356.md) | 122 | `result-track:f7e139d54b942699da787356ad401b65c8c114ac221f1ee019a6aedd44943799` |
| 13 | `lemma` | [find?_not_eq_head_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeWhile/Variant5e519be88778d31f89a7385585cd3b488348701a4e90c0445c1f79ae57e56b37.lean/declarations/find-not-eq-head-dropwhile--be9ac06b214554f415b4fc9b.md) | 126 | `result-track:be9ac06b214554f415b4fc9b6cdb4b6cfa44db62649fea4378738183e469ad6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
