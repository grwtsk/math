# Verification target: GRWTSK.Analysis.MeasureTheory.Projective.Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c0a781c114bf255d86567cf590a4f29d77fedd6",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c0a781c114bf255d86567cf590a4f29d77fedd6`.

Source path: `GRWTSK/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean.json)

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
| 1 | `def` | [IsProjectiveMeasureFamily](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/isprojectivemeasurefamily--5dcb89735d5f21564964cfd2.md) | 45 | `declaration-track:5dcb89735d5f21564964cfd288655c30d291aca46b3a9f1d200853f5086153ea` |
| 2 | `lemma` | [eq_zero_of_isEmpty](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/eq-zero-of-isempty--8b2a02ac684ff6884dd0d471.md) | 53 | `result-track:8b2a02ac684ff6884dd0d471029b8223c36dfca7e31b939d15b4978ef64a5f42` |
| 3 | `lemma` | [measure_univ_eq_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/measure-univ-eq-of-subset--35aff4b669e7aca57a9a8ca9.md) | 64 | `result-track:35aff4b669e7aca57a9a8ca983114749309c6bc3dcaadd4f80f6d44ff4ca83e8` |
| 4 | `lemma` | [measure_univ_eq](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/measure-univ-eq--5837e6c9779854aa99b90e14.md) | 73 | `result-track:5837e6c9779854aa99b90e1462015477df4911320837effe8198e6b68002ee39` |
| 5 | `lemma` | [congr_cylinder_of_subset](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/congr-cylinder-of-subset--0f605e00a984a9657b6b2a14.md) | 79 | `result-track:0f605e00a984a9657b6b2a1451f4a357a5a4d61a7542da2aab441f1ee215ddf7` |
| 6 | `lemma` | [congr_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/congr-cylinder--00ec5ec278f66bb010e8fb45.md) | 95 | `result-track:00ec5ec278f66bb010e8fb45ac6980155c287917a4300b8737b404527dd82940` |
| 7 | `def` | [IsProjectiveLimit](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/isprojectivelimit--aa34e2e48e4eb8af9d6b237d.md) | 115 | `declaration-track:aa34e2e48e4eb8af9d6b237db87049bbc7ff5457011a0907adc9b6dc136f451e` |
| 8 | `lemma` | [measure_cylinder](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/measure-cylinder--870500b1ba3d0a22bf552ca8.md) | 123 | `result-track:870500b1ba3d0a22bf552ca8361657ff58f3c1fe66fd50045c1f73aa7bd76e2a` |
| 9 | `lemma` | [measure_univ_eq](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/measure-univ-eq--2924ac10ebbf9edc238001ce.md) | 129 | `result-track:2924ac10ebbf9edc238001cef6804db313954511134047a81c04fb5f795e0871` |
| 10 | `lemma` | [isFiniteMeasure](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/isfinitemeasure--289f444c2f8f7fd4bcd0fc97.md) | 133 | `result-track:289f444c2f8f7fd4bcd0fc979007c82794701b8c848feac770890ef042e4f869` |
| 11 | `lemma` | [isProbabilityMeasure](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/isprobabilitymeasure--af5ab4aada26600a80a6a112.md) | 139 | `result-track:af5ab4aada26600a80a6a1128dfa98c7cfd7d412ac02c507fa3bf3ff75fee97f` |
| 12 | `lemma` | [measure_univ_unique](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/measure-univ-unique--76ba6be095311d223f36f678.md) | 145 | `result-track:76ba6be095311d223f36f678f2a91a96a123550044b96dc0424c18add26e9c15` |
| 13 | `theorem` | [unique](../../../../../mathematics/Analysis/MeasureTheory/Projective/Variant4801698ad724168cd5bcf37df17e8873932046f9d5c2607b8b2c9e95b3ed90a0.lean/declarations/unique--4a5dab9ecd4359756fc47ec2.md) | 150 | `result-track:4a5dab9ecd4359756fc47ec2294056b9c9ec80e124bfb170244c0458b1146083` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
