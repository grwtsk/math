# Verification target: GRWTSK.Analysis.MeasureTheory.Attempt02.Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c52fb99feec1d5374fdd2105cf80a0bd06d13f12",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c52fb99feec1d5374fdd2105cf80a0bd06d13f12`.

Source path: `GRWTSK/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProperPowerMoments` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Polish.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/poweronset--f3e7aff839aa777964b49388.md) | 17 | `declaration-track:f3e7aff839aa777964b49388ff1e1d86a27cdf6bb95682a5f972b593d9af62fc` |
| 2 | `def` | [powerWeight](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/powerweight--858ab9ed6baf12dd0a85368d.md) | 20 | `declaration-track:858ab9ed6baf12dd0a85368d2a7e5d093848a6f39d30659920b8ec19fea3c425` |
| 3 | `def` | [positiveOnsetAtom](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsetatom--2ea8206645f0ac822495b729.md) | 23 | `declaration-track:2ea8206645f0ac822495b729cbd2355cb4b0383a121d000fc9140c9630739a1d` |
| 4 | `def` | [positiveOnsetTail](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsettail--70ec44418c280615e22bba33.md) | 26 | `declaration-track:70ec44418c280615e22bba33c61673cc10815c5ea4e529405f22c705e5c9249d` |
| 5 | `theorem` | [powerOnset_pos](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/poweronset-pos--32fbbc0f78d5579b722d3d2e.md) | 29 | `result-track:32fbbc0f78d5579b722d3d2e0f9eda3f3b4f665d810612cb955d59ad860ea7bd` |
| 6 | `theorem` | [powerWeight_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/powerweight-nonneg--4848fca3d86949c6fd9ba133.md) | 33 | `result-track:4848fca3d86949c6fd9ba133190458c7ca6642c38b4a5891f1b92e23b1cb0080` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsetatom-nonneg--e77698b64d01669caa3b25fb.md) | 38 | `result-track:e77698b64d01669caa3b25fbfd350772e5f0d1a6c060b7930f2f4eec39713de9` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsetatom-measurable--d9483607009faf08ab83d02c.md) | 42 | `result-track:d9483607009faf08ab83d02c53921b7c7857a642e8b4421a48b4ce7b86e5d19e` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsetatom-integrable--a5c1dbea8f53032623882c7e.md) | 46 | `result-track:a5c1dbea8f53032623882c7e7e2300dc7b415d85a9ddfe02854b68e8a3e4c16d` |
| 10 | `theorem` | [positiveOnsetAtom_integral](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsetatom-integral--079f6d17f8f83b8f8fca2339.md) | 53 | `result-track:079f6d17f8f83b8f8fca2339d7da0a8d332f10379ac8215b1efc285bca8c22e0` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsetatom-eq-omitted--dbb6b7e316ddeda90916e0ec.md) | 61 | `result-track:dbb6b7e316ddeda90916e0ec6136b3a965ade45e855c17b01504abcfa9c62369` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsetatom-le-zeromoment--1dc80fd852a0b745cdf85901.md) | 69 | `result-track:1dc80fd852a0b745cdf85901ee33eabe1fef27cfc1faaa54cf36ada93b119c2b` |
| 13 | `theorem` | [positiveOnsetTail_summable](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsettail-summable--94a865f9ea41d3dc46aeefe2.md) | 76 | `result-track:94a865f9ea41d3dc46aeefe27819c166e26f66f4267665ca7e2ce0d9d6a17059` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsettail-nonneg--7bada5019bf04e15745a9175.md) | 81 | `result-track:7bada5019bf04e15745a917594665f2bc5a3c673b52961ef02cb0ef05d6ddf71` |
| 15 | `theorem` | [positiveOnsetTail_measurable](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsettail-measurable--e716a3209d48983121d172e6.md) | 84 | `result-track:e716a3209d48983121d172e6288e1bf5139474e8b85447c2f698a6bcadae6cf0` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](../../../../../mathematics/Analysis/MeasureTheory/Attempt02/Variantbdca980469fa3c274b772093d3696e31ea5db931673321609cf82721f74dbae3.lean/declarations/positiveonsettail-eq-indicator--d59c85236421655fd7e4ccdb.md) | 87 | `result-track:d59c85236421655fd7e4ccdb0ad8549372854c25011e5cd2e3d4a77645123f08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
