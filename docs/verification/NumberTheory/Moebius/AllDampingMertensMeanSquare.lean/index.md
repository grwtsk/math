# Verification target: GRWTSK.NumberTheory.Moebius.AllDampingMertensMeanSquare

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cbc405fb9a73e89fda0aed98213efe49e8eaa7c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cbc405fb9a73e89fda0aed98213efe49e8eaa7c`.

Source path: `GRWTSK/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CompensatedCorrelationCriterion`](../../../../mathematics/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampleIncrementMeanSquareTotal](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/sampleincrementmeansquaretotal--86dc4b5e229f34bd68624c48.md) | 45 | `declaration-track:86dc4b5e229f34bd68624c487e0b8abcddceeddb76ba568c509f25338a9cf859` |
| 2 | `theorem` | [sampleIncrementMeanSquareTotal_nonneg](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/sampleincrementmeansquaretotal-nonneg--8e5eb22ba34655b2aa32ebdd.md) | 50 | `result-track:8e5eb22ba34655b2aa32ebddb395ae60daf4bed822231227aa1716c7f1d6a995` |
| 3 | `theorem` | [sampleResidue_sq_le_incrementMeanSquareTotal](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/sampleresidue-sq-le-incrementmeansquaretotal--b11c7cf252d349f774c49cf7.md) | 57 | `result-track:b11c7cf252d349f774c49cf7cccdb99d2d4bd4a35925975749882d443eeb7e6f` |
| 4 | `theorem` | [sampleCellMass_eq_exponentialLogDrop](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/samplecellmass-eq-exponentiallogdrop--8b3d2a811795a2f177edf1b0.md) | 75 | `result-track:8b3d2a811795a2f177edf1b02acd64da0626d37136d6ed387db589db9562b222` |
| 5 | `theorem` | [sampleCellMass_le_incrementMeanSquareMajorant](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/samplecellmass-le-incrementmeansquaremajorant--f6dc2a3676d0f265c3946b1b.md) | 87 | `result-track:f6dc2a3676d0f265c3946b1b935df478f9264fd08ebcd385a0f40ac85782f07e` |
| 6 | `theorem` | [summable_sampleCellMass_of_incrementMeanSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/summable-samplecellmass-of-incrementmeansquare--7986587260cd8a482cb8d138.md) | 130 | `result-track:7986587260cd8a482cb8d13800062dcf2c47f2c4ed07aa8cdb883b2a78867686` |
| 7 | `theorem` | [compensatedCorrelationBound_of_incrementMeanSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/compensatedcorrelationbound-of-incrementmeansquare--15ee4c3b481bea3285aaaebe.md) | 152 | `result-track:15ee4c3b481bea3285aaaebec00e5ee84f0f21fdb27341288bd3d753a835b5c8` |
| 8 | `theorem` | [compensatedCorrelationBound_of_weightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/compensatedcorrelationbound-of-weightedmertenssquare--451c5c4b8849fa83751eba3d.md) | 163 | `result-track:451c5c4b8849fa83751eba3df1a980f5821768dd0f1e2d42dcc0c5286fd98044` |
| 9 | `def` | [ReciprocalIncrementMeanSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/reciprocalincrementmeansquare--83d82398184f4892cab25efc.md) | 173 | `declaration-track:83d82398184f4892cab25efcecf3b0b8fa0f8dab45bb492fd3991f38d58991a3` |
| 10 | `def` | [ReciprocalWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/reciprocalweightedmertenssquare--4abe65d392d0c91c82e842ca.md) | 179 | `declaration-track:4abe65d392d0c91c82e842ca71def32a049e6a60cd99ecbe21d2af1752a34bcd` |
| 11 | `def` | [AllPositiveWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/allpositiveweightedmertenssquare--0ba9021a90df6e72c216413b.md) | 186 | `declaration-track:0ba9021a90df6e72c216413bb99f43b78aa74a19a404229a4e968e1b4ed449f8` |
| 12 | `theorem` | [reciprocalHalfDamping_pos](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/reciprocalhalfdamping-pos--2fe047cc87cf8aeb5e42f47f.md) | 190 | `result-track:2fe047cc87cf8aeb5e42f47f824d81617c4203e7922f897cfccbbb995b186ae8` |
| 13 | `theorem` | [reciprocalHalfDamping_le_one](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/reciprocalhalfdamping-le-one--f1a037da9d6dc8557a16c6f2.md) | 194 | `result-track:f1a037da9d6dc8557a16c6f25b9a6c9a2820ece18eed1de16063e70e8223dd12` |
| 14 | `theorem` | [reciprocalHalfDamping_lt_damping](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/reciprocalhalfdamping-lt-damping--ee49db34beb6c6d21f6ec588.md) | 200 | `result-track:ee49db34beb6c6d21f6ec588ba897c762aaebd2ce3b1edf0b978b4fe45fe2a03` |
| 15 | `theorem` | [reciprocalCompensatedCorrelation_of_incrementMeanSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/reciprocalcompensatedcorrelation-of-incrementmeansquare--d60a345442bc07d29e77f226.md) | 205 | `result-track:d60a345442bc07d29e77f2264cf1cbfeb274326c448da454b8b0f26afa921b3e` |
| 16 | `theorem` | [riemannHypothesis_of_reciprocalIncrementMeanSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/riemannhypothesis-of-reciprocalincrementmeansquare--12c248a7c43adb5e280cdf00.md) | 216 | `result-track:12c248a7c43adb5e280cdf00a575a026be53b08eecc8eb85023a78bc78786984` |
| 17 | `theorem` | [reciprocalIncrementMeanSquare_of_weightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/reciprocalincrementmeansquare-of-weightedmertenssquare--271607f4e05dffd119c503ea.md) | 222 | `result-track:271607f4e05dffd119c503eac0949b0cdf6947979bca509edb9ef9c77b87236e` |
| 18 | `theorem` | [riemannHypothesis_of_reciprocalWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/riemannhypothesis-of-reciprocalweightedmertenssquare--f9b21f1066fd59687c1d9cf5.md) | 228 | `result-track:f9b21f1066fd59687c1d9cf5f8132c9fcea9aaf4fdc0504c14a0e68d21639d8e` |
| 19 | `theorem` | [weightedMertensSquareSummable_mono](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/weightedmertenssquaresummable-mono--355432258f94331253679605.md) | 235 | `result-track:355432258f94331253679605daf499ade78a25b3ee9d35c8b7518a978fba8e44` |
| 20 | `theorem` | [allPositiveWeightedMertensSquare_iff_reciprocal](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/allpositiveweightedmertenssquare-iff-reciprocal--ce8c22116fe3e497a7e5b9f5.md) | 256 | `result-track:ce8c22116fe3e497a7e5b9f50da412b7171a74794728c541b934fccc8bdcea6e` |
| 21 | `theorem` | [riemannHypothesis_of_allPositiveWeightedMertensSquare](../../../../mathematics/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/declarations/riemannhypothesis-of-allpositiveweightedmertenssquare--74d4ac327378f0d3aec2ea79.md) | 271 | `result-track:74d4ac327378f0d3aec2ea79ecac29b6eb064ac46138c07a4c0d88aefbb53cc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
