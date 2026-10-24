# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRawMomentHierarchy.Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8cb783df49c56ee9dc228b0d7ec392a7d3063e2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8cb783df49c56ee9dc228b0d7ec392a7d3063e2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawDirectionalMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/rawdirectionalmoment--7b737a8c8dd6b579424ad117.md) | 48 | `declaration-track:7b737a8c8dd6b579424ad1171191dae2911145e1a33e4c4ea663809645370de1` |
| 2 | `def` | [rawMomentHierarchy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/rawmomenthierarchy--079c5e9ec4bcccb9c85ae12a.md) | 57 | `declaration-track:079c5e9ec4bcccb9c85ae12aa5a871289b07ad225daedab31e9ab9a9a6e02b6d` |
| 3 | `theorem` | [rawMomentHierarchy_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/rawmomenthierarchy-apply--e6517bf033bd8183bdfade07.md) | 64 | `result-track:e6517bf033bd8183bdfade07db1389a8b5cc1c7712a0abe00e380c62be5b530f` |
| 4 | `theorem` | [rawDirectionalMoment_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/rawdirectionalmoment-zero--5fd50558f0d55754b9088b87.md) | 74 | `result-track:5fd50558f0d55754b9088b87d8bb5d530fcff9c84830368bd3bd62672125aa71` |
| 5 | `theorem` | [rawDirectionalMoment_one_eq_centroid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/rawdirectionalmoment-one-eq-centroid--24185950fd2de9ff3ee43493.md) | 83 | `result-track:24185950fd2de9ff3ee43493a641330c764abfce1d7e607ce797b8577aa9211c` |
| 6 | `theorem` | [rawDirectionalMoment_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/rawdirectionalmoment-two--5fcdacb972bff029bcdb5fe3.md) | 93 | `result-track:5fcdacb972bff029bcdb5fe37b98cfc9318520d1cf573699a89c8fba2551b7ad` |
| 7 | `theorem` | [covarianceOperator_eq_rawSecond_sub_centroid_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/covarianceoperator-eq-rawsecond-sub-centroid-mul--df90ba2c8aa52a787e2b411d.md) | 105 | `result-track:df90ba2c8aa52a787e2b411d7bd79f1da67517048f681b18a15972e78d4420a9` |
| 8 | `theorem` | [rawDirectionalMoment_two_eq_covariance_add_centroid_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/rawdirectionalmoment-two-eq-covariance-add-centroid-mul--4f34ee8b8787c5da05c5357d.md) | 180 | `result-track:4f34ee8b8787c5da05c5357d79533d4d908279d6606ff8e997b2bd2065619464` |
| 9 | `theorem` | [rawMomentHierarchy_one_eq_firstDirectionalCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/rawmomenthierarchy-one-eq-firstdirectionalcumulant--366d1e77759246fdff7ddf87.md) | 196 | `result-track:366d1e77759246fdff7ddf875a2b2417f2dd8ff49a8c2901ee672936d69316a0` |
| 10 | `theorem` | [rawMomentHierarchy_two_eq_second_add_first_mul_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/rawmomenthierarchy-two-eq-second-add-first-mul-first--55da7f800f7dab50c8b144c7.md) | 206 | `result-track:55da7f800f7dab50c8b144c79c032805e330ebd61c4d54aa1ad4d08f7197752b` |
| 11 | `theorem` | [properPartitions_one_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/properpartitions-one-eq-empty--5f2debabf08cb46a9a311c4d.md) | 223 | `result-track:5f2debabf08cb46a9a311c4d1a5e15e4e2348983678d77a568c82ba2691b612e` |
| 12 | `theorem` | [directionalProperContribution_one_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/directionalpropercontribution-one-eq-zero--aa5a70c416419790eb67f361.md) | 239 | `result-track:aa5a70c416419790eb67f361385a44fbed2c1dd7e5fd8c4bf5ef51e046daf11e` |
| 13 | `def` | [recursiveRawCumulantFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/recursiverawcumulantfamily--06cafc3e65c50f47706a2eb2.md) | 250 | `declaration-track:06cafc3e65c50f47706a2eb22faccb11f94accee6ceabca7d70852ec15459a00` |
| 14 | `theorem` | [recursiveRawCumulantFamily_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/recursiverawcumulantfamily-zero--40137781da8d711105fe4ca9.md) | 257 | `result-track:40137781da8d711105fe4ca9ca2247c148fc23942ff54bf753fe5ea1dc6a881f` |
| 15 | `theorem` | [recursiveRawCumulantFamily_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant42390a98d7e691d0b485aa3f831ce59ab1f7cca806657f1709a2548d174e5670.lean/declarations/recursiverawcumulantfamily-one--6858acbdd92454891ac4ca8e.md) | 265 | `result-track:6858acbdd92454891ac4ca8eadc8fbe49fd03410944e1ede1d607afaa2b1481d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
