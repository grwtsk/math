# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.LCM.Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "235e876b0a228e4df6131c50264bb62bf5c448c1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `235e876b0a228e4df6131c50264bb62bf5c448c1`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean.json)

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
| 1 | `lemma` | [factorizationLCMLeft_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/factorizationlcmleft-zero-left--71cef7af45558413db9630b0.md) | 34 | `result-track:71cef7af45558413db9630b0d350ff99bbb4556ce476a771bb0cfaf4ac979b46` |
| 2 | `lemma` | [factorizationLCMLeft_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/factorizationlcmleft-zero-right--78a681a2a38a581b6ae62bf6.md) | 37 | `result-track:78a681a2a38a581b6ae62bf68f93184e41e52526be82a0cdfcd4957605128327` |
| 3 | `lemma` | [factorizationLCRight_zero_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/factorizationlcright-zero-left--7f3ed10c6e9f216e9bca885b.md) | 40 | `result-track:7f3ed10c6e9f216e9bca885b5f67af9009c2e5a04afad94356c05de7a29671b8` |
| 4 | `lemma` | [factorizationLCMRight_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/factorizationlcmright-zero-right--86401a6b4197477696c9e9be.md) | 43 | `result-track:86401a6b4197477696c9e9bea8df3c44e93180bc6f501f8afa8777f435272be5` |
| 5 | `lemma` | [factorizationLCMLeft_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/factorizationlcmleft-pos--9dbfd3b5adf7b367f06b1e8b.md) | 46 | `result-track:9dbfd3b5adf7b367f06b1e8b414cba25ab0714ead9543da908c063c02bcc3e72` |
| 6 | `lemma` | [factorizationLCMRight_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/factorizationlcmright-pos--f1a5217a2a314d73403595e4.md) | 55 | `result-track:f1a5217a2a314d73403595e40563419664b39ec65b14f30f39f918e68c9ca76c` |
| 7 | `lemma` | [coprime_factorizationLCMLeft_factorizationLCMRight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/coprime-factorizationlcmleft-factorizationlcmright--eba36a81dbdb18931844c9aa.md) | 64 | `result-track:eba36a81dbdb18931844c9aadc1949946920e4d103bf44a65124e46a57233ddd` |
| 8 | `lemma` | [factorizationLCMLeft_mul_factorizationLCMRight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/factorizationlcmleft-mul-factorizationlcmright--f692f650d32984eb1ad0179f.md) | 75 | `result-track:f692f650d32984eb1ad0179f678a65e5960c0a122d888ce8e19f82185a8bbdc9` |
| 9 | `lemma` | [factorizationLCMLeft_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/factorizationlcmleft-dvd-left--25b7db1760c6a30ae6f756f7.md) | 83 | `result-track:25b7db1760c6a30ae6f756f7b73f89c8d48f42e66e4e2eb72503d7d22bb2fe23` |
| 10 | `lemma` | [factorizationLCMRight_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/LCM/Variantf998c9ba5b8694f9557fe56079a5f09fdd5d115eec8f122c47317cfa2220b628.lean/declarations/factorizationlcmright-dvd-right--895e232aee55f20b10da4f93.md) | 97 | `result-track:895e232aee55f20b10da4f93f924fa7bec490d810938a07cbfe5b902e7586eda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
