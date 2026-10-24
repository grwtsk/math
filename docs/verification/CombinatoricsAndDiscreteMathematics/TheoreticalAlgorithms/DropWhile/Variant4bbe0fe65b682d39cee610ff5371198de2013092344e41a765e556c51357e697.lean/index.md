# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropWhile.Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4fbc5e4b0fdce7569069afbcd2572cc418fa340d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4fbc5e4b0fdce7569069afbcd2572cc418fa340d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.dropWhile_eq_intermediateDropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-dropwhile-eq-intermediatedropwhile--5620029101be9457656c6b7f.md) | 21 | `result-track:5620029101be9457656c6b7ffdb286d92aa398c78cd2716ae77f7c9e5f3c3253` |
| 2 | `theorem` | [Iter.Intermediate.dropWhile_eq_dropWhile_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-intermediate-dropwhile-eq-dropwhile-toiterm--d7bac9c6f550028da0b44a74.md) | 26 | `result-track:d7bac9c6f550028da0b44a749aeef592e367ad452044af80475a53a1d04c1850` |
| 3 | `theorem` | [Iter.dropWhile_eq_dropWhile_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-dropwhile-eq-dropwhile-toiterm--c9198140f34499277954de20.md) | 32 | `result-track:c9198140f34499277954de204032d2cc6eb3dc92d562395f1593e27a9aad52f8` |
| 4 | `theorem` | [Iter.step_intermediateDropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-step-intermediatedropwhile--43b4124ef66e94d802cd2efb.md) | 37 | `result-track:43b4124ef66e94d802cd2efb32cc27b7c8594d0027fcb169540d53636a3750df` |
| 5 | `theorem` | [Iter.val_step_intermediateDropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-val-step-intermediatedropwhile--ceab7b30211afce06c3b09fc.md) | 69 | `result-track:ceab7b30211afce06c3b09fc4875e497f219908bc07fda9a501249268c2eebad` |
| 6 | `theorem` | [Iter.step_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-step-dropwhile--0b3f865c06da8642fefc380d.md) | 90 | `result-track:0b3f865c06da8642fefc380dfac3c5ec1ec496755a637fdb23588e4151990936` |
| 7 | `theorem` | [Iter.val_step_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-val-step-dropwhile--a27bcaab5e07e70a1f42e919.md) | 105 | `result-track:a27bcaab5e07e70a1f42e919a329a1d76436d85956740a9d17dcd7909501719f` |
| 8 | `theorem` | [Iter.toList_intermediateDropWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-tolist-intermediatedropwhile-of-finite--4d9a4235f0f0df091f783cf8.md) | 123 | `result-track:4d9a4235f0f0df091f783cf8a89f97ed50308da2bf1447d0b17bada7e60b37d2` |
| 9 | `theorem` | [Iter.toList_dropWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-tolist-dropwhile-of-finite--a55a290da98a821c92575286.md) | 140 | `result-track:a55a290da98a821c925752863847234790398649755d9a4e354604490749063e` |
| 10 | `theorem` | [Iter.toArray_dropWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-toarray-dropwhile-of-finite--7304ee66f2eb198ac192fb58.md) | 147 | `result-track:7304ee66f2eb198ac192fb58aa1a208bf2fb82d8560daef32903340ccdd3ab1c` |
| 11 | `theorem` | [Iter.toListRev_dropWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variant4bbe0fe65b682d39cee610ff5371198de2013092344e41a765e556c51357e697.lean/declarations/iter-tolistrev-dropwhile-of-finite--0c02c5530e6abad543f8cb6d.md) | 154 | `result-track:0c02c5530e6abad543f8cb6d67d1eff6983fde764a1e9759fecea290b8dd99b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
