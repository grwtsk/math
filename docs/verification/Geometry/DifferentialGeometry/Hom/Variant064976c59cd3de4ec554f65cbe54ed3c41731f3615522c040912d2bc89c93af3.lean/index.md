# Verification target: GRWTSK.Geometry.DifferentialGeometry.Hom.Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7556309acf4e154064cb997a5991d8a4bc50d47c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7556309acf4e154064cb997a5991d8a4bc50d47c`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean.json)

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
| 1 | `theorem` | [contMDiffOn_continuousLinearMapCoordChange](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffon-continuouslinearmapcoordchange--aecd2e742ad7f57090b8e896.md) | 53 | `result-track:aecd2e742ad7f57090b8e896cb74b7a05956bef8969192f9c86fbabd0e685846` |
| 2 | `theorem` | [hom_chart](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/hom-chart--16302a9d03b49743f7b402fa.md) | 65 | `result-track:16302a9d03b49743f7b402fab36bcb5e3d0696450c133da5435bbc30f0fc51ab` |
| 3 | `theorem` | [contMDiffWithinAt_hom_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffwithinat-hom-bundle--eb92bd55d63853a6e419a479.md) | 72 | `result-track:eb92bd55d63853a6e419a479b1a6bc8848622949e06bc318c396c532560ed55a` |
| 4 | `theorem` | [contMDiffAt_hom_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffat-hom-bundle--6f894288411eca9c68a202bc.md) | 79 | `result-track:6f894288411eca9c68a202bcb8df1c34450c9cecb7c285d48e98b3d18bfd53a0` |
| 5 | `theorem` | [mdifferentiableOn_continuousLinearMapCoordChange](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiableon-continuouslinearmapcoordchange--795916856c0c2c6a9d0de21d.md) | 89 | `result-track:795916856c0c2c6a9d0de21deaa49d6a95abc7e7c70f491be2a41894fdd1742b` |
| 6 | `theorem` | [mdifferentiableWithinAt_hom_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiablewithinat-hom-bundle--504b6a0e9fdff3284817b73d.md) | 101 | `result-track:504b6a0e9fdff3284817b73d570e1975e32e49c83006d8d16a3c1201591ff237` |
| 7 | `theorem` | [mdifferentiableAt_hom_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiableat-hom-bundle--d859dc3088315098a52145a4.md) | 108 | `result-track:d859dc3088315098a52145a4c979273edcb61624dcd43c21b1afa9298ab38e56` |
| 8 | `instance` | [Bundle.ContinuousLinearMap.vectorPrebundle.isContMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/bundle-continuouslinearmap-vectorprebundle-iscontmdiff--86c27f64e4dc2cd46156f6a9.md) | 119 | `declaration-track:86c27f64e4dc2cd46156f6a9f9a59f7d5e8714be3c6cc6b8c979ba6def60d978` |
| 9 | `instance` | [ContMDiffVectorBundle.continuousLinearMap](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffvectorbundle-continuouslinearmap--4c1aa5700dc25b12a7917bfc.md) | 127 | `declaration-track:4c1aa5700dc25b12a7917bfc04c5bb5f2ec77d54d0c8b63572230ab34096353a` |
| 10 | `lemma` | [Bundle.Trivialization.contMDiffAt_symmL](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/bundle-trivialization-contmdiffat-symml--04d70c5e1d2c38b4fe626b96.md) | 147 | `result-track:04d70c5e1d2c38b4fe626b96217d4bb5e630acca133466f6471013e96d2fdde8` |
| 11 | `lemma` | [Bundle.Trivialization.contMDiffOn_symmL](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/bundle-trivialization-contmdiffon-symml--1a8bf0a5918707e78ac4b175.md) | 165 | `result-track:1a8bf0a5918707e78ac4b1757cdfe9ca1fd0213e2191464f5bb46caf76f0563d` |
| 12 | `lemma` | [ContMDiffWithinAt.clm_apply_of_inCoordinates](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffwithinat-clm-apply-of-incoordinates--4edd27cd80aef8189dae1650.md) | 216 | `result-track:4edd27cd80aef8189dae16509d923d45d4b723a1bec4246e6d93af41c4b53e3a` |
| 13 | `lemma` | [ContMDiffAt.clm_apply_of_inCoordinates](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffat-clm-apply-of-incoordinates--f2042b73153e986c6dc2a313.md) | 253 | `result-track:f2042b73153e986c6dc2a3138c4d117aed86bc4e0636dbb30e67279343de2d0a` |
| 14 | `lemma` | [ContMDiffWithinAt.clm_bundle_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffwithinat-clm-bundle-apply--52c1323172a7980405396fdb.md) | 299 | `result-track:52c1323172a7980405396fdb63e06967475ce9982f4caf0defee3845846b26ca` |
| 15 | `lemma` | [ContMDiffAt.clm_bundle_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffat-clm-bundle-apply--a565aa65a8f8e22a09f5779d.md) | 312 | `result-track:a565aa65a8f8e22a09f5779d4e50c7c293f05f11a87229dba9715c91dc5996d3` |
| 16 | `lemma` | [ContMDiffOn.clm_bundle_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffon-clm-bundle-apply--3396d14699af636fc0278f89.md) | 324 | `result-track:3396d14699af636fc0278f8982097c17a4e8d368e4ddc311551a0e31709bda24` |
| 17 | `lemma` | [ContMDiff.clm_bundle_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiff-clm-bundle-apply--57da2efe3825dab20167771b.md) | 334 | `result-track:57da2efe3825dab20167771b70223f9be5b3842ebf4ec31b288e9f0f60d5f8f9` |
| 18 | `lemma` | [MDifferentiableWithinAt.clm_bundle_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiablewithinat-clm-bundle-apply--6e3717129d3351549af6e006.md) | 353 | `result-track:6e3717129d3351549af6e0062049d74636fd414c681756782021e5c6932d1187` |
| 19 | `lemma` | [MDifferentiableAt.clm_bundle_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiableat-clm-bundle-apply--c95c8a49330a66639732c61c.md) | 366 | `result-track:c95c8a49330a66639732c61cd4bb9fbc2340462f451550017657959179c89cfc` |
| 20 | `lemma` | [MDifferentiableOn.clm_bundle_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiableon-clm-bundle-apply--73d40dfa589bcf78f73886d6.md) | 378 | `result-track:73d40dfa589bcf78f73886d66cb90a845b83bb6e91bc1275cf38a80268215447` |
| 21 | `lemma` | [MDifferentiable.clm_bundle_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiable-clm-bundle-apply--f9df13f1a59f90bd4b0effbe.md) | 388 | `result-track:f9df13f1a59f90bd4b0effbe4574b526ea47dc0a96a5b5a917c3d5e4b80f4d03` |
| 22 | `lemma` | [ContMDiffWithinAt.clm_bundle_apply₂](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffwithinat-clm-bundle-apply--98c9fb8d851b1d30d7b43785.md) | 407 | `result-track:98c9fb8d851b1d30d7b437855edc327ecd3181c6c09b9f6a50de80188ed9ba96` |
| 23 | `lemma` | [ContMDiffAt.clm_bundle_apply₂](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffat-clm-bundle-apply--0bd08c561da493b11fced8f7.md) | 420 | `result-track:0bd08c561da493b11fced8f75603790b42361ec74945d40ceb8b19216a84d318` |
| 24 | `lemma` | [ContMDiffOn.clm_bundle_apply₂](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiffon-clm-bundle-apply--bb923dc37e3a3cc9fa59b68a.md) | 433 | `result-track:bb923dc37e3a3cc9fa59b68ad0bad43817deacf040656f95d9d0757f6cf3d0b6` |
| 25 | `lemma` | [ContMDiff.clm_bundle_apply₂](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/contmdiff-clm-bundle-apply--b73c908f2aa25c1a8741566d.md) | 444 | `result-track:b73c908f2aa25c1a8741566d6b44389503d66db9a93a1ced7eebfa3f49e79917` |
| 26 | `lemma` | [MDifferentiableWithinAt.clm_bundle_apply₂](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiablewithinat-clm-bundle-apply--76785669a6cf204422a1b3dc.md) | 464 | `result-track:76785669a6cf204422a1b3dcecbdd97b4c3a0d634bfdf77ab04c1fc971b4da11` |
| 27 | `lemma` | [MDifferentiableAt.clm_bundle_apply₂](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiableat-clm-bundle-apply--b93f20bdbcad8e6afbe819cf.md) | 477 | `result-track:b93f20bdbcad8e6afbe819cf85157ff02be97b62d8cf961d2e6caedf2773c315` |
| 28 | `lemma` | [MDifferentiableOn.clm_bundle_apply₂](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiableon-clm-bundle-apply--9bb493fc914a0f9b2e8b3dff.md) | 490 | `result-track:9bb493fc914a0f9b2e8b3dff18eafd9ae9d7469d254ee0508d5c061879dd4326` |
| 29 | `lemma` | [MDifferentiable.clm_bundle_apply₂](../../../../../mathematics/Geometry/DifferentialGeometry/Hom/Variant064976c59cd3de4ec554f65cbe54ed3c41731f3615522c040912d2bc89c93af3.lean/declarations/mdifferentiable-clm-bundle-apply--228b1cbdfa8d65d549893a2d.md) | 501 | `result-track:228b1cbdfa8d65d549893a2df084917083c1bd1445183d252ad63ca58fa205ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
