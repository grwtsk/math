# Verification target: GRWTSK.Algebra.LinearAlgebra.FiniteFeatureGeometry.Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b07157ef276b598f2706b39a3cede03555927b3a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b07157ef276b598f2706b39a3cede03555927b3a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.NullCrossAnnihilation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateForm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/coordinateform--16076a81d2d4c029ba216c01.md) | 33 | `declaration-track:16076a81d2d4c029ba216c01dff1c7a9406957aae15ff4427736c45fbac8e1e6` |
| 2 | `theorem` | [coordinateForm_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/coordinateform-isnull-iff--5f655e2a7972e649a857ce4d.md) | 57 | `result-track:5f655e2a7972e649a857ce4d3443259022b78d735424ebaba7f0c5e17cebdbc4` |
| 3 | `def` | [featureForm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/featureform--cf5ceedcc58c5085072cba02.md) | 73 | `declaration-track:cf5ceedcc58c5085072cba0201c6ea52d7b710dfe65f0e6203936eb4f3b61f40` |
| 4 | `theorem` | [featureForm_apply](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/featureform-apply--4a2c9d43c9763b0f6da49ba9.md) | 78 | `result-track:4a2c9d43c9763b0f6da49ba9e0a758ea8dd82b05b9ef32ef974e59bad265bb43` |
| 5 | `theorem` | [featureForm_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/featureform-isnull-iff--79629686c1e8b861b14ba7a5.md) | 84 | `result-track:79629686c1e8b861b14ba7a53d9855d1a816733039adcbd21b85fac01139c884` |
| 6 | `theorem` | [featureForm_null_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/featureform-null-orthogonal--35869180545a382b90546540.md) | 90 | `result-track:35869180545a382b90546540282986c8b8beb8d4854a90b32ae58756f728a83c` |
| 7 | `abbrev` | [NullQuotient](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/nullquotient--19c601ed01b50f0fda0e7e98.md) | 99 | `declaration-track:19c601ed01b50f0fda0e7e9804c8e7c697457d64a2e2fbe83d6b38d638f32279` |
| 8 | `def` | [quotientFeature](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotientfeature--6c0bb5d1ba16936e5348abdc.md) | 102 | `declaration-track:6c0bb5d1ba16936e5348abdc669c386d4562826762fbfb987249f55f6012731a` |
| 9 | `theorem` | [quotientFeature_mk](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotientfeature-mk--31fc982de209939aeface37b.md) | 107 | `result-track:31fc982de209939aeface37b61a06afff3ac10294e464465c16a640bfe564a13` |
| 10 | `theorem` | [quotientFeature_injective](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotientfeature-injective--e3f86a30d4f3ef3f4f1952c0.md) | 111 | `result-track:e3f86a30d4f3ef3f4f1952c0c6708ca507cfcb51d47fce94404afe4d50f87ed2` |
| 11 | `theorem` | [quotient_mk_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotient-mk-eq-iff--7dbed619fb2162b0ded72bd9.md) | 117 | `result-track:7dbed619fb2162b0ded72bd9430026227ca7c995f2f537254fa5300dd4028f26` |
| 12 | `abbrev` | [ProjectiveFeature](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/projectivefeature--74388ad27a5b11c99f68bb7d.md) | 128 | `declaration-track:74388ad27a5b11c99f68bb7d97f4426b7be0971af7b6bc05147e2ad62312747b` |
| 13 | `theorem` | [projective_mk_eq_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/projective-mk-eq-iff--63fee18785a0a46458d14216.md) | 133 | `result-track:63fee18785a0a46458d1421647f0f7729d934276d03cea23806af0a87d3fa769` |
| 14 | `def` | [quotientForm](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotientform--717436fb5677c17f9e7ec65e.md) | 153 | `declaration-track:717436fb5677c17f9e7ec65edf77fd75a7894d4add3ba04938319c0eb1d6c9c8` |
| 15 | `theorem` | [quotientForm_mk](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotientform-mk--59b74b518c9c9eaf5f722307.md) | 158 | `result-track:59b74b518c9c9eaf5f722307a088e35d91e2b3416bc4e22d0f998d7a52cfaab4` |
| 16 | `theorem` | [quotientForm_isNull_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotientform-isnull-iff--f473f83379dcab25f79b23a5.md) | 165 | `result-track:f473f83379dcab25f79b23a5d54938e952a38096d066574f2f8bb859394af199` |
| 17 | `theorem` | [quotientForm_visible_iff](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotientform-visible-iff--ecd79fe4e61c64c077334adf.md) | 178 | `result-track:ecd79fe4e61c64c077334adf349306b19e9ba5efa2960dd0bd8cd8970e5872ee` |
| 18 | `theorem` | [projective_rep_visible](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/projective-rep-visible--421eac7e856c8280465fc332.md) | 192 | `result-track:421eac7e856c8280465fc3326ca4ee587f68f6833d5a8641fffd04052d5f8a7c` |
| 19 | `theorem` | [quotientForm_smul_self](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotientform-smul-self--a87b451eaae9f29e68e977dc.md) | 198 | `result-track:a87b451eaae9f29e68e977dc930d3fdc260acd29ffffb62518224727a55d7104` |
| 20 | `theorem` | [quotient_mk_eq_iff_isNull_sub](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/quotient-mk-eq-iff-isnull-sub--d35704b08fdf25d553b820bb.md) | 205 | `result-track:d35704b08fdf25d553b820bbd3cffa58849f9a6f529dd61abb3041faa7ce63e8` |
| 21 | `def` | [firstCoordinateFeature](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/firstcoordinatefeature--fadb007d8df6b1d504291f9e.md) | 215 | `declaration-track:fadb007d8df6b1d504291f9ec5bc02dc8571c9633c6a775a74b3b2527aeb4257` |
| 22 | `theorem` | [firstCoordinateFeature_null_and_visible](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/firstcoordinatefeature-null-and-visible--3c3c6f6e5f7075e16492dc33.md) | 221 | `result-track:3c3c6f6e5f7075e16492dc33526ad04db11276f79083188516c77a72c8e6197d` |
| 23 | `theorem` | [firstCoordinateFeature_quotient_example](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/firstcoordinatefeature-quotient-example--ec5b4513c9246d70548a07be.md) | 231 | `result-track:ec5b4513c9246d70548a07be1fe0fd1d09b6d8fb4ed254a165ca34bb6589b726` |
| 24 | `theorem` | [zero_weight_nonzero_null](../../../../../mathematics/Algebra/LinearAlgebra/FiniteFeatureGeometry/Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean/declarations/zero-weight-nonzero-null--3b9f97e38abce1e80b9a3cb7.md) | 244 | `result-track:3b9f97e38abce1e80b9a3cb7ad5c587cbe14125cfb3b9af83b229ee95650c000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
