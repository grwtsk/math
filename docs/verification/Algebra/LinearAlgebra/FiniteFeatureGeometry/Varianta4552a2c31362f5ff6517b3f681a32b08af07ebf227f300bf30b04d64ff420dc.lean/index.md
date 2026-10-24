# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteFeatureGeometry.Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cbbdf81b02d168c8f6eef11c2d823856f8e81eb8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cbbdf81b02d168c8f6eef11c2d823856f8e81eb8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.NullCrossAnnihilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateForm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/coordinateform--7f6671fb6407b04b00c8596d.md) | 41 | `declaration-track:7f6671fb6407b04b00c8596d2ce1d8f861f8fb657919b1fd6d35ac2db36d2f82` |
| 2 | `theorem` | [coordinateForm_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/coordinateform-isnull-iff--3446342ff97fbe22038d9de5.md) | 65 | `result-track:3446342ff97fbe22038d9de530f96e00dd09ddb1035f80119b34c3e27438a549` |
| 3 | `def` | [featureForm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/featureform--f162f1e96ead36afa2f66bc5.md) | 81 | `declaration-track:f162f1e96ead36afa2f66bc53e3d92894f6d4f9ab661e198d6dc83a36fd5e3ec` |
| 4 | `theorem` | [featureForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/featureform-apply--e2ebdf7861a63c1d67f4f60b.md) | 86 | `result-track:e2ebdf7861a63c1d67f4f60beef5104a8d19367a98b1042b4471308943a4f3eb` |
| 5 | `theorem` | [featureForm_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/featureform-isnull-iff--fb76eae9706cc0a86bd20ed6.md) | 92 | `result-track:fb76eae9706cc0a86bd20ed6de7df431e26fc51d3981a23bf98edd74756ce733` |
| 6 | `theorem` | [featureForm_null_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/featureform-null-orthogonal--4d232b5aecb240aa489dfd51.md) | 98 | `result-track:4d232b5aecb240aa489dfd51b11e80091f41c067709f4e52db357b5aae93d81e` |
| 7 | `abbrev` | [NullQuotient](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/nullquotient--557e9ac26d3c221679391c7f.md) | 107 | `declaration-track:557e9ac26d3c221679391c7f61ab64cd41f817a51857f0098486824c606e40d8` |
| 8 | `def` | [quotientFeature](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotientfeature--fb27a80263a33e7d9ca27188.md) | 110 | `declaration-track:fb27a80263a33e7d9ca27188d7449b5baa2d9594b6c19a990b05d10f2fa9fed7` |
| 9 | `theorem` | [quotientFeature_mk](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotientfeature-mk--a029cac40db6fcd5c3aa823f.md) | 115 | `result-track:a029cac40db6fcd5c3aa823f275eeb532b989c4a163c4b96ce82001f8acd69f8` |
| 10 | `theorem` | [quotientFeature_injective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotientfeature-injective--4e89ea09ff925c95c15748fa.md) | 119 | `result-track:4e89ea09ff925c95c15748faf190d57158c12a0ef747e84c1241851b1515137a` |
| 11 | `theorem` | [quotient_mk_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotient-mk-eq-iff--befc4734c1dbf91b4ad9c73b.md) | 125 | `result-track:befc4734c1dbf91b4ad9c73b5d7316e397fa53181e551154507e1e9a410d6322` |
| 12 | `abbrev` | [ProjectiveFeature](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/projectivefeature--448a4a048be74306f53403a9.md) | 136 | `declaration-track:448a4a048be74306f53403a9b128a98174bafd539a05e2a4ff3ae0d8136d8938` |
| 13 | `theorem` | [projective_mk_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/projective-mk-eq-iff--e28729eb51e8fbb7d2fc4c81.md) | 141 | `result-track:e28729eb51e8fbb7d2fc4c8128d56078314ff2b325230f94191aa44b66f44371` |
| 14 | `def` | [quotientForm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotientform--cede7575f9bd4cb9d20c4920.md) | 161 | `declaration-track:cede7575f9bd4cb9d20c49204c871ca16811ff23ccbd960f80e7f95edb6b7166` |
| 15 | `theorem` | [quotientForm_mk](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotientform-mk--73590ebd280fdbdd93f78b42.md) | 166 | `result-track:73590ebd280fdbdd93f78b424db59f1f73091cb8c2b9dc5dcdcfcc1007c107e1` |
| 16 | `theorem` | [quotientForm_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotientform-isnull-iff--056aa03c368f4f04c4305722.md) | 173 | `result-track:056aa03c368f4f04c43057220aa6a4012163eeff85c481fbc9e6f69c032d01a6` |
| 17 | `theorem` | [quotientForm_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotientform-visible-iff--874baafeb1db6f717efaa842.md) | 186 | `result-track:874baafeb1db6f717efaa842c0fb275b895ef417a18bb62e353cf3bce2bdd617` |
| 18 | `theorem` | [projective_rep_visible](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/projective-rep-visible--8cb27152562ea479eeea7c3c.md) | 200 | `result-track:8cb27152562ea479eeea7c3ceb08267ea0e97271385f50eb85703bac6fcd1e68` |
| 19 | `theorem` | [quotientForm_smul_self](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotientform-smul-self--6daf85f3e0d0c8b4e0e8f043.md) | 206 | `result-track:6daf85f3e0d0c8b4e0e8f0431dd6f4945c14cb5e3245d4aa864c8e5053c3719a` |
| 20 | `theorem` | [quotient_mk_eq_iff_isNull_sub](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/quotient-mk-eq-iff-isnull-sub--4e7d0c3fd8b8f74289f32c3b.md) | 213 | `result-track:4e7d0c3fd8b8f74289f32c3b2bb9f26a97434bef788d33d5433e3b8fc7723075` |
| 21 | `def` | [firstCoordinateFeature](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/firstcoordinatefeature--26a7808bc2e6d36fc47a3c9e.md) | 223 | `declaration-track:26a7808bc2e6d36fc47a3c9e63ea301c565f48e25dc681f09e0fc258118a0cbb` |
| 22 | `theorem` | [firstCoordinateFeature_null_and_visible](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/firstcoordinatefeature-null-and-visible--dd2c1c51da4abf4783ab5ff9.md) | 229 | `result-track:dd2c1c51da4abf4783ab5ff92c64cf1a206082db832d15f5fc9f3d835c3d53e5` |
| 23 | `theorem` | [firstCoordinateFeature_quotient_example](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/firstcoordinatefeature-quotient-example--27519f74167d1796633f74f6.md) | 239 | `result-track:27519f74167d1796633f74f6df33d70864801d698a61eabf80f487ed58417206` |
| 24 | `theorem` | [zero_weight_nonzero_null](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Varianta4552a2c31362f5ff6517b3f681a32b08af07ebf227f300bf30b04d64ff420dc.lean/declarations/zero-weight-nonzero-null--a9ed6f818e66d179e6babd36.md) | 252 | `result-track:a9ed6f818e66d179e6babd3651bf13eb83f2b4b9f17980bdfa96318d8a49b00f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
