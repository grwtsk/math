# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SignedDist.Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4818ef320d9e0de0510209f284985ae1095b3dbc",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4818ef320d9e0de0510209f284985ae1095b3dbc`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Euclidean.Projection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.ContinuousAffineEquiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.AffineSubspace` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signedInfDist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist--39cc1a2d1dcd8026112f25ff.md) | 44 | `declaration-track:39cc1a2d1dcd8026112f25ff981c4f2c1ae0be26818abdb530f2f9e90afb7e46` |
| 2 | `lemma` | [signedInfDist_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist-apply--532c3e51587de07f35060add.md) | 50 | `result-track:532c3e51587de07f35060add1a5cf25d8ab5e55d0a1ea1f08b1475d7e09013a5` |
| 3 | `lemma` | [signedInfDist_linear](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist-linear--993e8ef55ad38890df034110.md) | 55 | `result-track:993e8ef55ad38890df0341102703032054af276c12d61e04490bfed5b7b541d0` |
| 4 | `lemma` | [signedInfDist_linear_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist-linear-apply--149b0b50d266fa4ef9792409.md) | 61 | `result-track:149b0b50d266fa4ef979240971e7771dba494dd9726b8bb3f3eaf8d075fe2b43` |
| 5 | `lemma` | [signedInfDist_apply_self](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist-apply-self--92c4ec5b1b0f4b10e768ac05.md) | 66 | `result-track:92c4ec5b1b0f4b10e768ac05157cb6297c46f4f7e7e272ace3aa56a24e70098f` |
| 6 | `lemma` | [signedInfDist_apply_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist-apply-of-mem--57f8f4e44b455367d159eded.md) | 70 | `result-track:57f8f4e44b455367d159eded4a876d4f7e378eb6bfd2c8e0fa9ff05e83e101c5` |
| 7 | `lemma` | [signedInfDist_eq_const_of_mem](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist-eq-const-of-mem--61fbb44b0a065f7a0ab09475.md) | 74 | `result-track:61fbb44b0a065f7a0ab09475fb534e46b53a9fc41b5ae503b98fa280a28aae8d` |
| 8 | `lemma` | [abs_signedInfDist_eq_dist_of_mem_affineSpan_insert](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/abs-signedinfdist-eq-dist-of-mem-affinespan-insert--23a47d15994d409b8f507f23.md) | 80 | `result-track:23a47d15994d409b8f507f23fccd03ca371d905144efa44a1d0cb5972c0f24a1` |
| 9 | `def` | [signedInfDist](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist--2dc88e232d2e11ca3e952e70.md) | 101 | `declaration-track:2dc88e232d2e11ca3e952e70619d014429ed40dfdeec91428fb6de1188cd897d` |
| 10 | `lemma` | [signedInfDist_apply_self](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist-apply-self--3310044ca276e07084c55f64.md) | 104 | `result-track:3310044ca276e07084c55f6427174f2625f9f3bdd2da6739f54058200ba237ad` |
| 11 | `lemma` | [signedInfDist_apply_of_ne](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist-apply-of-ne--3691049ae5bd01d25b7e2440.md) | 110 | `result-track:3691049ae5bd01d25b7e2440beec7e6bcffcbc0704ed3013cae48c455638f179` |
| 12 | `lemma` | [signedInfDist_affineCombination](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/signedinfdist-affinecombination--e38ef9f52e515ec3c4ac0a92.md) | 114 | `result-track:e38ef9f52e515ec3c4ac0a924327017eac1f8ffb3d62d86884db2f9fca440ec0` |
| 13 | `lemma` | [abs_signedInfDist_eq_dist_of_mem_affineSpan_range](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianted186f407016569b4c025a4c1c80a8b766fb7b97d8c22a3ccd1d60d8667f8a16.lean/declarations/abs-signedinfdist-eq-dist-of-mem-affinespan-range--a2bb68391c14df6688885065.md) | 130 | `result-track:a2bb68391c14df6688885065a8e6c06c11417b0f7ab7cda1c2ff7946df068f6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
