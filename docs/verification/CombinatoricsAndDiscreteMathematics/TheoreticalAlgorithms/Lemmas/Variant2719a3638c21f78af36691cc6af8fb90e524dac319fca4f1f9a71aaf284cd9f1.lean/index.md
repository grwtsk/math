# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbbf8741e7f712ad524bd21d65eddd1fe54b40ac",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbbf8741e7f712ad524bd21d65eddd1fe54b40ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Notation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.String.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Alias` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [congr_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean/declarations/congr-append--81f374f6268e99fdb6052d32.md) | 25 | `result-track:81f374f6268e99fdb6052d32dad42c6709d03f41dbe54c6747488884cdf71803` |
| 2 | `lemma` | [length_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean/declarations/length-replicate--31a9626dc5da19acd5590df3.md) | 28 | `result-track:31a9626dc5da19acd5590df3e8f55bc844ff1b720f47d0ba88c563c60b84c452` |
| 3 | `lemma` | [length_eq_list_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean/declarations/length-eq-list-length--0b8ec8b5c6022ae03bbd9fe1.md) | 31 | `result-track:0b8ec8b5c6022ae03bbd9fe178d9c249d1cc92932d6d144fc4ac29a8af5b97c4` |
| 4 | `lemma` | [length_leftpad](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean/declarations/length-leftpad--05e2ac4133d0bb1b1250ae19.md) | 36 | `result-track:05e2ac4133d0bb1b1250ae192af883e24290d71899afb6c22e80d937d18a0d24` |
| 5 | `lemma` | [leftpad_prefix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean/declarations/leftpad-prefix--0a0034c55a1eb0dc340609ac.md) | 43 | `result-track:0a0034c55a1eb0dc340609acab55a6ccc979a3c70664a93dd97d0f4d8e32b0b4` |
| 6 | `lemma` | [leftpad_suffix](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant2719a3638c21f78af36691cc6af8fb90e524dac319fca4f1f9a71aaf284cd9f1.lean/declarations/leftpad-suffix--8d231d8722078c5884f05210.md) | 46 | `result-track:8d231d8722078c5884f052108fc905a9c2829652cd693d8c13d766a0ca16a773` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
