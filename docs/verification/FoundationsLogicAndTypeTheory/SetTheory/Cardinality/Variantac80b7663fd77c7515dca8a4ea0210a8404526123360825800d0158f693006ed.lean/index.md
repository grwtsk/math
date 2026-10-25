# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Cardinality.Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e17f356893794863ef935e11af2359e1dc053c3e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e17f356893794863ef935e11af2359e1dc053c3e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Cardinal.CountableCover` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Cardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Perfect` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuum_le_cardinal_of_nontriviallyNormedField](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/declarations/continuum-le-cardinal-of-nontriviallynormedfield--8ac9df43965723270d0a09c3.md) | 36 | `result-track:8ac9df43965723270d0a09c3bf7e26966d09136dffe80ba84788ae6cb25cfbe7` |
| 2 | `theorem` | [continuum_le_cardinal_of_module](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/declarations/continuum-le-cardinal-of-module--d9a4ca895550ad6ec76607c2.md) | 56 | `result-track:d9a4ca895550ad6ec76607c2c4dde1937e010d6265b0fb36f5bbe8301ce7e46c` |
| 3 | `lemma` | [cardinal_eq_of_mem_nhds_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/declarations/cardinal-eq-of-mem-nhds-zero--9d95467fe879f7977ede5e12.md) | 67 | `result-track:9d95467fe879f7977ede5e1223536284a106bcf7b549e5842c7b7719775e3024` |
| 4 | `theorem` | [cardinal_eq_of_mem_nhds](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/declarations/cardinal-eq-of-mem-nhds--ee9eff68a0fbd6718db01515.md) | 104 | `result-track:ee9eff68a0fbd6718db01515eebf3325ed4b8cceb2a27d2e0fd4809dee6d730e` |
| 5 | `theorem` | [cardinal_eq_of_is_open](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/declarations/cardinal-eq-of-is-open--6568ec4ec8eac883a4dce357.md) | 117 | `result-track:6568ec4ec8eac883a4dce3579999c854cbc968f659aa67948004dc6f8f6c0533` |
| 6 | `theorem` | [continuum_le_cardinal_of_is_open](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/declarations/continuum-le-cardinal-of-is-open--6553d11f1c9e8c5715433e0f.md) | 126 | `result-track:6553d11f1c9e8c5715433e0fb7c4497fc2dc53b87e9a3257eb4e35cc583b9c64` |
| 7 | `theorem` | [Set.Countable.dense_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variantac80b7663fd77c7515dca8a4ea0210a8404526123360825800d0158f693006ed.lean/declarations/set-countable-dense-compl--b09f70d80732961c26989477.md) | 134 | `result-track:b09f70d80732961c26989477760aaf4083894d97ac46ac5cfef1aae9fc9ae9f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
