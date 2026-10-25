# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.CountableCover.Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c9102d23a2089d73c823cfa2c2a13a4adfbef14",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c9102d23a2089d73c823cfa2c2a13a4adfbef14`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.Arithmetic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mk_subtype_le_of_countable_eventually_mem_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean/declarations/mk-subtype-le-of-countable-eventually-mem-aux--a0002725a5fb5bf3a4b01545.md) | 31 | `result-track:a0002725a5fb5bf3a4b01545a1b1a78a47a101ce50c7c5377993b94237913026` |
| 2 | `lemma` | [mk_subtype_le_of_countable_eventually_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean/declarations/mk-subtype-le-of-countable-eventually-mem--d1f93974b9314c266aff5fbf.md) | 66 | `result-track:d1f93974b9314c266aff5fbf9c99d2164fef7c6de13f9eb4a11a4e9eef9f8a85` |
| 3 | `lemma` | [mk_le_of_countable_eventually_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean/declarations/mk-le-of-countable-eventually-mem--ad5617e988d2eb5939f0bd9c.md) | 82 | `result-track:ad5617e988d2eb5939f0bd9c95be9774cf6b425dd217dc550851a64d869cf9e2` |
| 4 | `lemma` | [mk_of_countable_eventually_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/CountableCover/Variant38d584af268766f0e09f008d85d8927a4e76558bff20ed23c22d9cba09a13e14.lean/declarations/mk-of-countable-eventually-mem--07c9d5d66e4cfdfd0380cd6f.md) | 90 | `result-track:07c9d5d66e4cfdfd0380cd6f2620917cde98b9cbcca3acf08803a8341a68a67d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
