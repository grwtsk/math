# Verification target: GRWTSK.Analysis.MeasureTheory.Projective.Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52b3d3887508ef8a4318d1e2a202862d171f71ce",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52b3d3887508ef8a4318d1e2a202862d171f71ce`.

Source path: `GRWTSK/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Cylinders` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsProjectiveMeasureFamily](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/isprojectivemeasurefamily--d6fe0227a8eb7e00015ef99b.md) | 49 | `declaration-track:d6fe0227a8eb7e00015ef99b20033fa5fbb40d2825d1829d242307a8304034ca` |
| 2 | `lemma` | [eq_zero_of_isEmpty](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/eq-zero-of-isempty--41640db08fd107a65aa958d2.md) | 57 | `result-track:41640db08fd107a65aa958d26d1705a33c48413db61c3f860393ea31d501122d` |
| 3 | `lemma` | [measure_univ_eq_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/measure-univ-eq-of-subset--8ee137a526ca85719e67e958.md) | 68 | `result-track:8ee137a526ca85719e67e958caec86f97f7f73988ed695ded5ac6bbd82fab199` |
| 4 | `lemma` | [measure_univ_eq](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/measure-univ-eq--27325ebeab9d1a12275a6b38.md) | 78 | `result-track:27325ebeab9d1a12275a6b389298805b2b14102086e5b5e94dff3e3ea766b471` |
| 5 | `lemma` | [congr_cylinder_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/congr-cylinder-of-subset--4199fc0036e8840757cddead.md) | 84 | `result-track:4199fc0036e8840757cddead5f63db2ca61480061e8a973cbbd560787375b942` |
| 6 | `lemma` | [congr_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/congr-cylinder--3fcb78cf6fcd1de991100f0d.md) | 105 | `result-track:3fcb78cf6fcd1de991100f0d24ae7958c39b55e18b3cf640462486bae52f0af3` |
| 7 | `def` | [IsProjectiveLimit](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/isprojectivelimit--cf9b214b704bf7098d27c6fc.md) | 125 | `declaration-track:cf9b214b704bf7098d27c6fc094bcccb88873a681f4bdaba29458fa2e468fcd4` |
| 8 | `lemma` | [measure_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/measure-cylinder--5b6e9389b4adc109c285eaa0.md) | 133 | `result-track:5b6e9389b4adc109c285eaa007c02fa455c41212b51304db42c85136ec7c6b60` |
| 9 | `lemma` | [measure_univ_eq](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/measure-univ-eq--974ca3e93857e68efbabb25e.md) | 139 | `result-track:974ca3e93857e68efbabb25e81da89c731c5f214f051c55ebacf8b279b768db0` |
| 10 | `lemma` | [isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/isfinitemeasure--fbbcfd71f6fbc5dcab0326dd.md) | 143 | `result-track:fbbcfd71f6fbc5dcab0326dde4d478e3cb0a93d304be2d697227226c57d42777` |
| 11 | `lemma` | [isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/isprobabilitymeasure--3ec485bec8c32d8f91d046ce.md) | 149 | `result-track:3ec485bec8c32d8f91d046cec7f54d95a6b4fae1532d09f43b85b52e1ddebf33` |
| 12 | `lemma` | [measure_univ_unique](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/measure-univ-unique--b2be00fbfc9ae824d207ac76.md) | 155 | `result-track:b2be00fbfc9ae824d207ac76619afa95d4bff0ca2d87667df55cac1e5e79334a` |
| 13 | `theorem` | [unique](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant143f24dccfc65026dddd5ba63f9bdf4a4b7b1afc0e74415e84e050a0eb81a7bd.lean/declarations/unique--dfe96050c2e652652151e137.md) | 160 | `result-track:dfe96050c2e652652151e137e86ed150bff86ddeaec78945dbb5c27534e1667f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
