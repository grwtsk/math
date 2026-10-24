# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringEnumeration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b8ecdbeb2421fa84206d7e1676f1dc24a5b3369",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b8ecdbeb2421fa84206d7e1676f1dc24a5b3369`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalPositiveTuringFullHead`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Fintype.Card` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveIndexMap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/positiveindexmap--b9c6506cb816cb9f0794270b.md) | 53 | `declaration-track:b9c6506cb816cb9f0794270be0e4875ec38a7fdd9c4b535e3aaa1437cb36ef9f` |
| 2 | `theorem` | [positiveIndexMap_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/positiveindexmap-injective--5f8e31be8f21b323196d1b2f.md) | 59 | `result-track:5f8e31be8f21b323196d1b2ff62e9e32aa55a7edfd889b4a4f700e8a662c832e` |
| 3 | `theorem` | [positiveIndexMap_surjective_of_gap_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/positiveindexmap-surjective-of-gap-eq-zero--e9864476415cd853254da84b.md) | 67 | `result-track:e9864476415cd853254da84b0064b1fcb71f292429570ea981dc07a4069891ab` |
| 4 | `def` | [positiveIndexEquiv](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/positiveindexequiv--b208dac0977436a8ba43b4bc.md) | 82 | `declaration-track:b208dac0977436a8ba43b4bccfa3d12bc614a430bb0df2bad33b1eeea73c15b9` |
| 5 | `theorem` | [positiveHeightHead_card_eq_index_card](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/positiveheighthead-card-eq-index-card--998afbe61bd09249faa0f3db.md) | 92 | `result-track:998afbe61bd09249faa0f3db93372512d9f722ee0628109a5b1ab76745729dee` |
| 6 | `def` | [signedIndexMap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/signedindexmap--220b47ce488111cc9f9170e2.md) | 100 | `declaration-track:220b47ce488111cc9f9170e299974692d477f1277001adb941bc1473bea99cc8` |
| 7 | `theorem` | [signedIndexMap_injective](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/signedindexmap-injective--e6e364ea37832957602371de.md) | 113 | `result-track:e6e364ea37832957602371de35ac6a335d065303a1c77a88c9bca0a4a228e882` |
| 8 | `theorem` | [signedIndexMap_surjective_of_gap_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/signedindexmap-surjective-of-gap-eq-zero--c807d1d1e8037fde0b8161dc.md) | 160 | `result-track:c807d1d1e8037fde0b8161dc3af50dc7f638a29c7c70e1d55d6f7ffcfcc9f764` |
| 9 | `def` | [signedIndexEquiv](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/signedindexequiv--f4be8518c7e1dee1c7a3c7c3.md) | 186 | `declaration-track:f4be8518c7e1dee1c7a3c7c3f89c7ee780d541a1e91b6dd2abdcd6fea891bded` |
| 10 | `theorem` | [heightHead_card_eq_two_mul_index_card](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/heighthead-card-eq-two-mul-index-card--d070a6b25e64e899d23eb564.md) | 196 | `result-track:d070a6b25e64e899d23eb564f70998b1b6d3e7e4b5f86b2d040581dbd2b3a9cf` |
| 11 | `theorem` | [positiveHeightCount_eq_record_sum_of_gap_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/positiveheightcount-eq-record-sum-of-gap-eq-zero--198dcc6be2eca7f3397e59da.md) | 203 | `result-track:198dcc6be2eca7f3397e59da8d6b6bad7e51b5ab7d7983a0dc74aa48c2dc23e5` |
| 12 | `theorem` | [full_weighted_sum_eq_records_of_gap_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/full-weighted-sum-eq-records-of-gap-eq-zero--b37716e91e3afefa795e86bb.md) | 220 | `result-track:b37716e91e3afefa795e86bb7672d85392919b4c35962b3e489ddbdb739c3a2d` |
| 13 | `theorem` | [all_simple_of_unit_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/all-simple-of-unit-records--a72447467d87b543ca78dc76.md) | 238 | `result-track:a72447467d87b543ca78dc765490b78bb8e2349a1b8a9989f2199b71a70fe9e0` |
| 14 | `theorem` | [heightCount_eq_heightHead_card_of_unit_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/declarations/heightcount-eq-heighthead-card-of-unit-records--8ac6a7718c6a4e397064142d.md) | 263 | `result-track:8ac6a7718c6a4e397064142d0296c970692300be961af6e0a8d20b00c680af27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
