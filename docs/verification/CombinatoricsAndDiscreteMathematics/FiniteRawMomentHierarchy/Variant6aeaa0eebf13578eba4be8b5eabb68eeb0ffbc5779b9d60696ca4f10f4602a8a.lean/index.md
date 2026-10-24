# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteRawMomentHierarchy.Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cfb14e89f4b6a319e7f5b54e6798029adc9c6c4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cfb14e89f4b6a319e7f5b54e6798029adc9c6c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean.json)

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
| 1 | `def` | [rawDirectionalMoment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/rawdirectionalmoment--0fc82664d0d25e9c90f70099.md) | 40 | `declaration-track:0fc82664d0d25e9c90f70099b3e4656684dc3fa9c3ffad6832e93bb777976cb0` |
| 2 | `def` | [rawMomentHierarchy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/rawmomenthierarchy--764189897a300717c6d83cb3.md) | 49 | `declaration-track:764189897a300717c6d83cb32399083edb573ea1a2d8d6060a469354aed0f213` |
| 3 | `theorem` | [rawMomentHierarchy_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/rawmomenthierarchy-apply--77f4f26d2e4f3b3fa66b6e4b.md) | 56 | `result-track:77f4f26d2e4f3b3fa66b6e4b6da003a8dbec5b405d725ad312071d5f287fe5ff` |
| 4 | `theorem` | [rawDirectionalMoment_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/rawdirectionalmoment-zero--948f370c7d90f2350beb5712.md) | 66 | `result-track:948f370c7d90f2350beb5712243d47ce29637b5c4e28c84b3e4c8f65b9ba5c88` |
| 5 | `theorem` | [rawDirectionalMoment_one_eq_centroid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/rawdirectionalmoment-one-eq-centroid--ad1af70f31670b2e556cf055.md) | 74 | `result-track:ad1af70f31670b2e556cf055970629a0229ea7c7f11482e0c45a94a4f6e21b9c` |
| 6 | `theorem` | [rawDirectionalMoment_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/rawdirectionalmoment-two--8d90f977ee21a3e60ea32a53.md) | 84 | `result-track:8d90f977ee21a3e60ea32a531745016e81777e581e889172802c5f9b490a0eef` |
| 7 | `theorem` | [covarianceOperator_eq_rawSecond_sub_centroid_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/covarianceoperator-eq-rawsecond-sub-centroid-mul--08a65f58b7d056b106f85a44.md) | 96 | `result-track:08a65f58b7d056b106f85a44590e5016b1868641475ea8289b704336ba50e4a0` |
| 8 | `theorem` | [rawDirectionalMoment_two_eq_covariance_add_centroid_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/rawdirectionalmoment-two-eq-covariance-add-centroid-mul--38a865a1f86a358defe701f6.md) | 171 | `result-track:38a865a1f86a358defe701f61bd0a8f1ae7e89e87415b437b30bc91671fa5309` |
| 9 | `theorem` | [rawMomentHierarchy_one_eq_firstDirectionalCumulant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/rawmomenthierarchy-one-eq-firstdirectionalcumulant--d5a205de89f61691a34c1b9b.md) | 187 | `result-track:d5a205de89f61691a34c1b9ba8662ccd2d6bd75b6393803b5b84e36f08172e6f` |
| 10 | `theorem` | [rawMomentHierarchy_two_eq_second_add_first_mul_first](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/rawmomenthierarchy-two-eq-second-add-first-mul-first--c37d85c792f91c7745a18f41.md) | 197 | `result-track:c37d85c792f91c7745a18f4140fc785ed6da2e0f3799b90d8e6680a125ac201e` |
| 11 | `theorem` | [properPartitions_one_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/properpartitions-one-eq-empty--174ff1c8f78542e3ac895009.md) | 214 | `result-track:174ff1c8f78542e3ac895009e2aa3367a3b7c34b342d9afb5de25819557c5c65` |
| 12 | `theorem` | [directionalProperContribution_one_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/directionalpropercontribution-one-eq-zero--43d94fed6baaab17a0eeb57e.md) | 229 | `result-track:43d94fed6baaab17a0eeb57e3b4459986dfdbc30f045ef234937f2c43510106f` |
| 13 | `def` | [recursiveRawCumulantFamily](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/recursiverawcumulantfamily--f6d5e9d38f0483ef4a51df6e.md) | 240 | `declaration-track:f6d5e9d38f0483ef4a51df6efb1045e9fc762bba9285f951c5ff36e41dc6f42f` |
| 14 | `theorem` | [recursiveRawCumulantFamily_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/recursiverawcumulantfamily-zero--0f436f7784e6e99db7c09b33.md) | 247 | `result-track:0f436f7784e6e99db7c09b3379b7a3cde3d689b79eb5ae482b2588e303c35630` |
| 15 | `theorem` | [recursiveRawCumulantFamily_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/FiniteRawMomentHierarchy/Variant6aeaa0eebf13578eba4be8b5eabb68eeb0ffbc5779b9d60696ca4f10f4602a8a.lean/declarations/recursiverawcumulantfamily-one--4f59608d5485f64515054154.md) | 255 | `result-track:4f59608d5485f6451505415419bb25da23171db40c9c27f218aba1c3ac36c58b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
