# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRawMomentHierarchy.Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d387222618792ab4e97ba17e310c70ded68b8bfd",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d387222618792ab4e97ba17e310c70ded68b8bfd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawDirectionalMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/rawdirectionalmoment--d2258d45e79dd81cf3b1bc7a.md) | 40 | `declaration-track:d2258d45e79dd81cf3b1bc7a01f5301a09ab1c4b8a13bec9cbce6772228b93df` |
| 2 | `def` | [rawMomentHierarchy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/rawmomenthierarchy--18705d84cd73787c024751f5.md) | 49 | `declaration-track:18705d84cd73787c024751f52fb503d4e2aa34b95019fd3a5d2ddb1a0ac7381e` |
| 3 | `theorem` | [rawMomentHierarchy_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/rawmomenthierarchy-apply--cbed0affebddd498ea24e51d.md) | 56 | `result-track:cbed0affebddd498ea24e51d036fd9b23582e1ce112838552d2e3ca683356a84` |
| 4 | `theorem` | [rawDirectionalMoment_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/rawdirectionalmoment-zero--f748e3371cb97ce2f7cb69ac.md) | 66 | `result-track:f748e3371cb97ce2f7cb69ac56d44c33ff805752bf25046a6c74d07cbfa14fcf` |
| 5 | `theorem` | [rawDirectionalMoment_one_eq_centroid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/rawdirectionalmoment-one-eq-centroid--02bda1f23d5fd637f05b64d0.md) | 75 | `result-track:02bda1f23d5fd637f05b64d0cbde1703f2af2b7678c50b12d13a9195f65280a7` |
| 6 | `theorem` | [rawDirectionalMoment_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/rawdirectionalmoment-two--e130780da44998f21447b41b.md) | 85 | `result-track:e130780da44998f21447b41b2b9d9f7bb1c7a5c36a7bbfc2dc3f29fa2c26a114` |
| 7 | `theorem` | [covarianceOperator_eq_rawSecond_sub_centroid_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/covarianceoperator-eq-rawsecond-sub-centroid-mul--1972971cc8b0cea1d8df4327.md) | 97 | `result-track:1972971cc8b0cea1d8df43274ff41b5348307b4aa469651543c7542d8767a83e` |
| 8 | `theorem` | [rawDirectionalMoment_two_eq_covariance_add_centroid_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/rawdirectionalmoment-two-eq-covariance-add-centroid-mul--27d9c1603ab8d188fb1c2ca7.md) | 172 | `result-track:27d9c1603ab8d188fb1c2ca75d024abea888e2bb231962c720ad8098b2c53fcf` |
| 9 | `theorem` | [rawMomentHierarchy_one_eq_firstDirectionalCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/rawmomenthierarchy-one-eq-firstdirectionalcumulant--b139f9e25f044859d9b849a4.md) | 188 | `result-track:b139f9e25f044859d9b849a4aa710e1161a4098da12899db33b916a66b23b219` |
| 10 | `theorem` | [rawMomentHierarchy_two_eq_second_add_first_mul_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/rawmomenthierarchy-two-eq-second-add-first-mul-first--cb99f83f9fa8859fce457358.md) | 198 | `result-track:cb99f83f9fa8859fce4573581b95fd27423ae6f3e322a172e66643a03783d519` |
| 11 | `theorem` | [properPartitions_one_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/properpartitions-one-eq-empty--87d52144796b3761f4643c14.md) | 215 | `result-track:87d52144796b3761f4643c14b8e7f153ea29ef62186a418bc05e018f5d535e83` |
| 12 | `theorem` | [directionalProperContribution_one_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/directionalpropercontribution-one-eq-zero--e8d6e2e55fcab71daa733d05.md) | 231 | `result-track:e8d6e2e55fcab71daa733d057741dcc87b633e4e6a63e32914862c42b72f5a91` |
| 13 | `def` | [recursiveRawCumulantFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/recursiverawcumulantfamily--dd402fe1a6c19050df57d377.md) | 242 | `declaration-track:dd402fe1a6c19050df57d377b24fd3724c2dfa97484220c6f7bcc7782b7ea4e0` |
| 14 | `theorem` | [recursiveRawCumulantFamily_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/recursiverawcumulantfamily-zero--535a6e9c1fe8ef64e7e4ea1a.md) | 249 | `result-track:535a6e9c1fe8ef64e7e4ea1a2e3b84037416c6b5b61a5711ae42ccfb36517285` |
| 15 | `theorem` | [recursiveRawCumulantFamily_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant7680c2a97b17137e636d1aeb81776d034b4469fdefb99f8037eb3023e43e2568.lean/declarations/recursiverawcumulantfamily-one--3f1ce7fb0e442e4a35128f9e.md) | 257 | `result-track:3f1ce7fb0e442e4a35128f9e9069ce0cce6d73ddae2b0fa3c783f7e4211a1908` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
