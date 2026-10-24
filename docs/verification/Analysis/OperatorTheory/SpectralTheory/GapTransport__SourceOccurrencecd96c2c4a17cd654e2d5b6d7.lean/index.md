# Verification target: GRWTSK.Analysis.OperatorTheory.SpectralTheory.GapTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f34c7760419fbf3b10a7893344baa4a491c8e0ba",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/OperatorTheory/SpectralTheory/GapTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/index.md) · [Full source](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f34c7760419fbf3b10a7893344baa4a491c8e0ba`.

Source path: `GRWTSK/Analysis/OperatorTheory/SpectralTheory/GapTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/OperatorTheory/SpectralTheory/GapTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LocalPlateauCharacterization](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/localplateaucharacterization--025a2e0eb8da9fbfc57c8cde.md) | 16 | `declaration-track:025a2e0eb8da9fbfc57c8cde42d8ea5a098c9defa2c52507042578c0d50756d2` |
| 2 | `def` | [OpenLabelGap](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/openlabelgap--e8f7021cfe5e04b05dabd872.md) | 22 | `declaration-track:e8f7021cfe5e04b05dabd872aebf46eb928c080053a41bca17d38f62ea625c90` |
| 3 | `theorem` | [plateau_on_Icc](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/plateau-on-icc--9a081b41b400f76c8d355c1a.md) | 27 | `result-track:9a081b41b400f76c8d355c1a09f8618930d757b693d56e8204329fd47aa99fd0` |
| 4 | `theorem` | [gap_of_equal_endpoint_labels](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/gap-of-equal-endpoint-labels--efc96662372316e456581f6b.md) | 37 | `result-track:efc96662372316e456581f6b04241140922945bb66103f178716352eb1c044d0` |
| 5 | `structure` | [LabelCoding](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/labelcoding--95dd7b287ae1e7cedb71a4ef.md) | 59 | `declaration-track:95dd7b287ae1e7cedb71a4efbb841dab75b479b24954aa2e464a4df80932f7ff` |
| 6 | `theorem` | [gap_of_distinct_paths](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/gap-of-distinct-paths--d61b817e1358478a3074d08c.md) | 67 | `result-track:d61b817e1358478a3074d08c0f35dafd4dfedc16c7b3f49235eb81237ac22a42` |
| 7 | `theorem` | [transport_open_label](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/transport-open-label--ce328dd35ed80de59a5c3487.md) | 87 | `result-track:ce328dd35ed80de59a5c3487c0fe905bcad1931c614095e727c7d4277c9d0266` |
| 8 | `theorem` | [transport_all_labels](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/transport-all-labels--7145239ca34f3c522c4cbf6f.md) | 109 | `result-track:7145239ca34f3c522c4cbf6f36efa980ac22bb84cbd1ebdfe3346a130a1c05f8` |
| 9 | `theorem` | [labelled_point_bounds_of_ids_comparison](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/labelled-point-bounds-of-ids-comparison--831eaaca5dd85dd92fad3a3f.md) | 124 | `result-track:831eaaca5dd85dd92fad3a3f89fbcd2474ab8b73240ff08c80ab03e61c6edd4c` |
| 10 | `theorem` | [gap_width_le_of_ids_comparison](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/gap-width-le-of-ids-comparison--58a42068faff50b5b45ff896.md) | 137 | `result-track:58a42068faff50b5b45ff896c4f6a26e5fefaaa838a9ed1fb8ab4c73834566df` |
| 11 | `theorem` | [continuity_does_not_prevent_zero_collapse](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/continuity-does-not-prevent-zero-collapse--b5d3841510745c077809cfe6.md) | 152 | `result-track:b5d3841510745c077809cfe69ca8cecd5d1aaf2db4885d310e069a6f49d87a2d` |
| 12 | `theorem` | [positive_width_has_no_uniform_floor](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/positive-width-has-no-uniform-floor--d008a94d4a3ed1455e68484c.md) | 159 | `result-track:d008a94d4a3ed1455e68484cdf23c537e1220290aafce99f60d2fd67838171c2` |
| 13 | `theorem` | [monotone_plateau_alone_is_not_a_gap](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/monotone-plateau-alone-is-not-a-gap--c5b9c18846ed0078e1a9f699.md) | 170 | `result-track:c5b9c18846ed0078e1a9f69948726605faddc59faf58bfbb287ebd286cc80016` |
| 14 | `theorem` | [collapsed_coding_not_injective](../../../../../mathematics/Analysis/OperatorTheory/SpectralTheory/GapTransport__SourceOccurrencecd96c2c4a17cd654e2d5b6d7.lean/declarations/collapsed-coding-not-injective--efaea2412cce364c377180ee.md) | 178 | `result-track:efaea2412cce364c377180eec3763eeaa037639269f7949418fe4dbff8d0b56f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
