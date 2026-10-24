# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SignedDist.Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "217762d761719c4d678394d484a4000464f84298",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `217762d761719c4d678394d484a4000464f84298`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.ContinuousAffineEquiv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.AffineSubspace` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedInfDist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist--535350040c78c9704a15202a.md) | 52 | `declaration-track:535350040c78c9704a15202ace912561a796e98605b43056c55d046691429161` |
| 2 | `lemma` | [signedInfDist_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist-apply--8a6e2a965a37ec98adf99770.md) | 58 | `result-track:8a6e2a965a37ec98adf99770bb99d62c5681089721f90a96c94ba8e7a47564e5` |
| 3 | `lemma` | [signedInfDist_linear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist-linear--3139fb911d477347eeec6cd8.md) | 63 | `result-track:3139fb911d477347eeec6cd851f18d127ebb85039dee4590ae12723ee3a5aecd` |
| 4 | `lemma` | [signedInfDist_linear_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist-linear-apply--e01f6e727b439e9f1139f6f4.md) | 69 | `result-track:e01f6e727b439e9f1139f6f41d491ad85709df1c948c33cb66b24f273622a024` |
| 5 | `lemma` | [signedInfDist_apply_self](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist-apply-self--a395b0693151a041d3f7dba2.md) | 74 | `result-track:a395b0693151a041d3f7dba247cc0194bfe8ac6abce2e271e515aa2544105af6` |
| 6 | `lemma` | [signedInfDist_apply_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist-apply-of-mem--79ad1eee24779576dfffa910.md) | 78 | `result-track:79ad1eee24779576dfffa9106edace93cb6d6ec7d6a04b717acd2617fef85944` |
| 7 | `lemma` | [signedInfDist_eq_const_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist-eq-const-of-mem--763d6ff964b548a8742ff83d.md) | 82 | `result-track:763d6ff964b548a8742ff83d0b31c4877d68b0e86014420ccf6502a3b8099840` |
| 8 | `lemma` | [abs_signedInfDist_eq_dist_of_mem_affineSpan_insert](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/abs-signedinfdist-eq-dist-of-mem-affinespan-insert--106e4488758e784c5007711e.md) | 88 | `result-track:106e4488758e784c5007711e750bdbe3f15c62c4f6d406a36b2af2b0c77742d7` |
| 9 | `def` | [signedInfDist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist--1d2df8d8c23759a013e46f0e.md) | 109 | `declaration-track:1d2df8d8c23759a013e46f0ed6962118eba054c41caecf5ea976926010001da1` |
| 10 | `lemma` | [signedInfDist_apply_self](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist-apply-self--339ed13c2dea7cd4fb84767d.md) | 112 | `result-track:339ed13c2dea7cd4fb84767da72d6fe9f8528c65b464914e187f104799fb1de1` |
| 11 | `lemma` | [signedInfDist_apply_of_ne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist-apply-of-ne--7fd18e86fc04f49be8a82af6.md) | 118 | `result-track:7fd18e86fc04f49be8a82af64a1049531f132559ba90aa35c760b0d127900d1a` |
| 12 | `lemma` | [signedInfDist_affineCombination](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/signedinfdist-affinecombination--bee6fc9dd84c509e9e1afe5c.md) | 122 | `result-track:bee6fc9dd84c509e9e1afe5cf61d3458839ed7ac52a26ab8e5d1c3dddcc2632d` |
| 13 | `lemma` | [abs_signedInfDist_eq_dist_of_mem_affineSpan_range](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Variantd675e9a03e756a286b05b881fe9f61a380edc747edd9fc6a032ab1c0aa3a0555.lean/declarations/abs-signedinfdist-eq-dist-of-mem-affinespan-range--dffd362dd6743389cca68dfa.md) | 138 | `result-track:dffd362dd6743389cca68dfa114383e657c59a5ae06b4d6305110304823f2bbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
