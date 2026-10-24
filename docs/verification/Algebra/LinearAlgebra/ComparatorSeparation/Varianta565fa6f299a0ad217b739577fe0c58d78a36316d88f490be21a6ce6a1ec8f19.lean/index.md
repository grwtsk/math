# Verification target: GRWTSK.Algebra.LinearAlgebra.ComparatorSeparation.Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93e7f8bf72c0b5486fba44c60424d9c08694ff15",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93e7f8bf72c0b5486fba44c60424d9c08694ff15`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.InterventionDefect` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearComparator](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/linearcomparator--e607ae1d361642275239ff24.md) | 38 | `declaration-track:e607ae1d361642275239ff244295fe66b8150835c1078d9406d33c4d28e553f4` |
| 2 | `def` | [responseDifference](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/responsedifference--f01fe2dfabb2adc4c10747dd.md) | 46 | `declaration-track:f01fe2dfabb2adc4c10747dd5887d9a263309992d17464c3bcdad24da5ba5891` |
| 3 | `theorem` | [responseDifference_apply](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/responsedifference-apply--4c02dc464ceee5e6da5f0734.md) | 52 | `result-track:4c02dc464ceee5e6da5f073498a2c23f80d4b6194182f72cdd6805e3d9caef5a` |
| 4 | `def` | [comparatorGap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/comparatorgap--8ec4958ea72d2d92a9cd111b.md) | 59 | `declaration-track:8ec4958ea72d2d92a9cd111b6deed47bc1be55393127b969211f76a2ee94d693` |
| 5 | `theorem` | [comparatorGap_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/comparatorgap-nonnegative--234b32aebf38f2c61fd4b593.md) | 64 | `result-track:234b32aebf38f2c61fd4b5936e1799fb7f9a5d696c5905cab00277f872455141` |
| 6 | `theorem` | [comparatorGap_pos_iff](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/comparatorgap-pos-iff--f1beaa44de6b901324cda604.md) | 71 | `result-track:f1beaa44de6b901324cda60495730a57fc440d48571c83fd4b3edc2471993fb9` |
| 7 | `theorem` | [comparatorGap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/comparatorgap-eq-zero-iff--8158c24dd07fabeca3de966d.md) | 77 | `result-track:8158c24dd07fabeca3de966d2c6b7996a535fffa30a6c5927ba24a9f4496a4bc` |
| 8 | `def` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/zero--23754085a2e52dfb6e03e32b.md) | 83 | `declaration-track:23754085a2e52dfb6e03e32bd43aa34c999483168cc7079cf2e4596d4e0b081a` |
| 9 | `theorem` | [zero_readout](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/zero-readout--749a447c6b5290a89f647d54.md) | 87 | `result-track:749a447c6b5290a89f647d54ffb4d9013959ab0bb2eb782c9f7304a116f83a8d` |
| 10 | `theorem` | [zero_responseDifference](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/zero-responsedifference--08962aaa35de90448f400117.md) | 91 | `result-track:08962aaa35de90448f400117aab75deda98832fff498741c222fd1a5c31249df` |
| 11 | `theorem` | [zero_comparatorGap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/zero-comparatorgap--1a0bf74c5729907f0db9622a.md) | 97 | `result-track:1a0bf74c5729907f0db9622a88c64037dc63fb69dd1b513e7a4cded923b7b395` |
| 12 | `def` | [interventionSensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/interventionsensitivity--6a6617ca3f5e270c75e004ab.md) | 109 | `declaration-track:6a6617ca3f5e270c75e004abb5dea49c976da5e474d08f23af8219eafca9b9e8` |
| 13 | `theorem` | [interventionSensitivity_nonnegative](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/interventionsensitivity-nonnegative--54672d92794203e27e287384.md) | 114 | `result-track:54672d92794203e27e2873846bd1a9092eb9a090ea8b98ba366030410ce0ffe8` |
| 14 | `theorem` | [interventionSensitivity_pos_iff_visible](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/interventionsensitivity-pos-iff-visible--99b9d2b9cda8266cb7e5f3fc.md) | 120 | `result-track:99b9d2b9cda8266cb7e5f3fcba0183b84e1469966740bdf2d2256fba9de7a0ff` |
| 15 | `def` | [ComparatorSectorComplete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/comparatorsectorcomplete--3ca00746cc45bd4c487f6877.md) | 128 | `declaration-track:3ca00746cc45bd4c487f6877e4f718d2059c601fd9fb63b7804922bd0e95ff69` |
| 16 | `theorem` | [zeroComparator_sectorComplete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/zerocomparator-sectorcomplete--f2147f936b1ed912d7de74a2.md) | 134 | `result-track:f2147f936b1ed912d7de74a25b3f3289c26a63a6e77e4fd8c1bcf7f61ec7246d` |
| 17 | `theorem` | [responseDifference_eq_projected](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/responsedifference-eq-projected--a347f26f0110905bbbfb6088.md) | 141 | `result-track:a347f26f0110905bbbfb6088b78da988d1451187b6bb4b108408635ea26f5828` |
| 18 | `theorem` | [comparatorGap_eq_projected_sq](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/comparatorgap-eq-projected-sq--5b497dae563633cb876440d2.md) | 151 | `result-track:5b497dae563633cb876440d216a415b159626a0659033f01251aecab9d4196c8` |
| 19 | `def` | [ComparatorDetectsAt](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/comparatordetectsat--3b3eec8008b42820bae45e1d.md) | 159 | `declaration-track:3b3eec8008b42820bae45e1dbc5854857db3493c1805d586e4f30a9e0eccffdb` |
| 20 | `theorem` | [comparatorGap_pos_of_sectorComplete_detects](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/comparatorgap-pos-of-sectorcomplete-detects--43c451f9f19bb966efa07234.md) | 165 | `result-track:43c451f9f19bb966efa07234269f5c161dc6dd5600f778ff6b4359702164acf9` |
| 21 | `def` | [ComparatorCompleteFor](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/comparatorcompletefor--de77b17c61bbb6a0f6a4a1ac.md) | 176 | `declaration-track:de77b17c61bbb6a0f6a4a1ac9e1711c47b97373d0289182b706c93f48d8d0256` |
| 22 | `theorem` | [positive_sensitivity_implies_positive_gap_of_complete](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/positive-sensitivity-implies-positive-gap-of-complete--bc9103bf878791ab10b6be4c.md) | 184 | `result-track:bc9103bf878791ab10b6be4c6a1d07b27f47b459d4f8896be377eb3844f5fdb2` |
| 23 | `theorem` | [positive_sensitivity_sectorComplete_zero_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/positive-sensitivity-sectorcomplete-zero-gap--a023b0d81e4ba935c93a6383.md) | 196 | `result-track:a023b0d81e4ba935c93a63836688a2832f1bbd44bf0237e661ff7b6cc93e1e43` |
| 24 | `theorem` | [positive_sensitivity_zero_comparator_gap](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/positive-sensitivity-zero-comparator-gap--141906a7bb17b73b388bf855.md) | 207 | `result-track:141906a7bb17b73b388bf85551a542f09bbf6ef5f8b540d1a5b2471bfedd080a` |
| 25 | `theorem` | [not_all_comparators_separate_of_positive_sensitivity](../../../../../mathematics/Algebra/LinearAlgebra/ComparatorSeparation/Varianta565fa6f299a0ad217b739577fe0c58d78a36316d88f490be21a6ce6a1ec8f19.lean/declarations/not-all-comparators-separate-of-positive-sensitivity--cdc409cecf3fbf3546ea0059.md) | 216 | `result-track:cdc409cecf3fbf3546ea0059573ddbcafad3d34e64e2baf1f8650c01de0a5a70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
