# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6183e717819e9bb65e07919c75b689d45f6fd76",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6183e717819e9bb65e07919c75b689d45f6fd76`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.String.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [congr_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean/declarations/congr-append--882437ed51877afa392f46ff.md) | 19 | `result-track:882437ed51877afa392f46ff20819ba6c01216d17bf612703881e417d96e0e0a` |
| 2 | `lemma` | [length_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean/declarations/length-append--fe825a03535685d83dc5fc51.md) | 22 | `result-track:fe825a03535685d83dc5fc5158ae3e663aeea886427749a5d0c3078e2763e42b` |
| 3 | `lemma` | [length_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean/declarations/length-replicate--313e47ee40a1b5090e7a9587.md) | 28 | `result-track:313e47ee40a1b5090e7a95878063a9a1ac594c0bd05bd396d8c19a6cb474be79` |
| 4 | `lemma` | [length_eq_list_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean/declarations/length-eq-list-length--6069b4854bedd53acae9cdd7.md) | 31 | `result-track:6069b4854bedd53acae9cdd7f176b47e31b39f8136769ee72a4d94526dd62fa4` |
| 5 | `lemma` | [leftpad_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean/declarations/leftpad-length--d6bb291fa4fb4cd36f4ec9ee.md) | 36 | `result-track:d6bb291fa4fb4cd36f4ec9ee8b2ab7d187b1ad261d8e4e971585d7c0ed6acaf9` |
| 6 | `lemma` | [leftpad_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean/declarations/leftpad-prefix--241837505eba9fb7f04e6d72.md) | 40 | `result-track:241837505eba9fb7f04e6d72ee5dcb45a92bf1342e22e76a42a60c16fb9d78f4` |
| 7 | `lemma` | [leftpad_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant11278fe9650a0f09f1a0a189bcaba5d37d5458f1f4875ba1ec4af2047be36ebf.lean/declarations/leftpad-suffix--4b09e9ce6da7cb528c394976.md) | 43 | `result-track:4b09e9ce6da7cb528c394976bcb8de06f92a7e629adc7306ee1217a966923532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
