# Verification target: GRWTSK.Geometry.DifferentialGeometry.Constructions.Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ed0ed2f2a61121aba5eef7f8b5cd7d025026416",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ed0ed2f2a61121aba5eef7f8b5cd7d025026416`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContMDiffWithinAt.prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-prodmk--87769662ac0c694bae186e74.md) | 50 | `result-track:87769662ac0c694bae186e74b821bdb9248c582634c04ccd72ff9d92c757fbfd` |
| 2 | `theorem` | [ContMDiffWithinAt.prodMk_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-prodmk-space--4839a0819f03664b6698e5f6.md) | 59 | `result-track:4839a0819f03664b6698e5f66c858825cb7444934b85be5691964daf41028044` |
| 3 | `theorem` | [ContMDiffAt.prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-prodmk--def188553b36799e66a97e4a.md) | 68 | `result-track:def188553b36799e66a97e4a16444c1cf1ab85e59a2385f2213ab963c2c99d5e` |
| 4 | `theorem` | [ContMDiffAt.prodMk_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-prodmk-space--385cf8429beacc26ceb24cf2.md) | 75 | `result-track:385cf8429beacc26ceb24cf2a06cd32101669a14e682de23c325d178fb5c53fc` |
| 5 | `theorem` | [ContMDiffOn.prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffon-prodmk--3b64f7a22c5b90169b5a1642.md) | 83 | `result-track:3b64f7a22c5b90169b5a164201ed9875abb4679eec7ff38d0e61d807e49dc13d` |
| 6 | `theorem` | [ContMDiffOn.prodMk_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffon-prodmk-space--d5deaf80263d513e7eb01726.md) | 90 | `result-track:d5deaf80263d513e7eb01726ba9883e030064c8a9c20c4f40b6b176489460fc7` |
| 7 | `theorem` | [ContMDiff.prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-prodmk--ffe3df4550cdcc4d0f91c7d3.md) | 97 | `result-track:ffe3df4550cdcc4d0f91c7d309a0cbf80b51f585b5691d9717da6e54bdb5fa68` |
| 8 | `theorem` | [ContMDiff.prodMk_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-prodmk-space--822cae8eb70e4394bf65eb71.md) | 104 | `result-track:822cae8eb70e4394bf65eb71322f85e627f543fc9372e4069dfccb2f13173524` |
| 9 | `theorem` | [contMDiffWithinAt_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-fst--619beac95725b497d70d2cb2.md) | 132 | `result-track:619beac95725b497d70d2cb23d9dbf54e4771884ca3883203e247fac3a20c123` |
| 10 | `theorem` | [ContMDiffWithinAt.fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-fst--d4521a37bc3681b5eec9cfdb.md) | 147 | `result-track:d4521a37bc3681b5eec9cfdb5284cba3823565fa87babd5f134c74d5440c4d4b` |
| 11 | `theorem` | [contMDiffAt_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-fst--ea22e9f7bf0913cb63c3895c.md) | 152 | `result-track:ea22e9f7bf0913cb63c3895c72354a73df1cea50141a9ea7c0090bc2cce98129` |
| 12 | `theorem` | [contMDiffOn_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffon-fst--2be30b07b8716418fd3bbdbd.md) | 155 | `result-track:2be30b07b8716418fd3bbdbd5189a0938951ab70a13756acbd99a6fdb4105909` |
| 13 | `theorem` | [contMDiff_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-fst--d42c996ca79232d2431214b4.md) | 158 | `result-track:d42c996ca79232d2431214b4029ee974388601ec09d94655516f74e99a663054` |
| 14 | `theorem` | [ContMDiffAt.fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-fst--b86369da9b645053fd931dc2.md) | 168 | `result-track:b86369da9b645053fd931dc2cae5c17f16082b716d1efcfded5f912e7a4f2904` |
| 15 | `theorem` | [ContMDiff.fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-fst--2297b91df166f98144bb4f59.md) | 172 | `result-track:2297b91df166f98144bb4f594467d01b85d9a9b976892108633e881c51d4b92e` |
| 16 | `theorem` | [contMDiffWithinAt_snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-snd--5677954b169cf7fb4efcdde6.md) | 180 | `result-track:5677954b169cf7fb4efcdde6cc16f7f45498285237b68736da63ee01586917fa` |
| 17 | `theorem` | [ContMDiffWithinAt.snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-snd--42132dff7eb90ff18e98b819.md) | 195 | `result-track:42132dff7eb90ff18e98b819ad02da1a58ccaa6975356c6a78bc4d1155c2f2e9` |
| 18 | `theorem` | [contMDiffAt_snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-snd--02abbb335ad84c839e3d1826.md) | 200 | `result-track:02abbb335ad84c839e3d18266a9ad12456021b344454df6a917afb3319939d5e` |
| 19 | `theorem` | [contMDiffOn_snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffon-snd--6132a028ee3592aed75d5a04.md) | 203 | `result-track:6132a028ee3592aed75d5a04175279282c490c88dd1bc4063ddd8df6ed854626` |
| 20 | `theorem` | [contMDiff_snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-snd--825808b7daa76766de8f6c3f.md) | 206 | `result-track:825808b7daa76766de8f6c3ff6ede5ca369c6f1632917483e48cf86ed2ff9b37` |
| 21 | `theorem` | [ContMDiffAt.snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-snd--9045a74c900582efa3bc63f6.md) | 216 | `result-track:9045a74c900582efa3bc63f63d3e598bc488213a18a457899ae3a5c8909515da` |
| 22 | `theorem` | [ContMDiff.snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-snd--0dd765d2fd7ac3b7151d45d2.md) | 220 | `result-track:0dd765d2fd7ac3b7151d45d2766fc866fd46601d870db75cdc7dc83628c734e8` |
| 23 | `theorem` | [contMDiffWithinAt_prod_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-prod-iff--ef6237d7fb460af732ef5d15.md) | 230 | `result-track:ef6237d7fb460af732ef5d15aec85a09993acb0aebf70e57e95e07c17bee0c01` |
| 24 | `theorem` | [contMDiffWithinAt_prod_module_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-prod-module-iff--043341c18613e7caeb3ea7a7.md) | 235 | `result-track:043341c18613e7caeb3ea7a787ecc46decdf89460e7df60f5b0a88e12f13fa05` |
| 25 | `theorem` | [contMDiffAt_prod_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-prod-iff--80261a8fbfb28bd12abec426.md) | 242 | `result-track:80261a8fbfb28bd12abec426cf8fd481213ed91316d154d48b9df0cea00c97c8` |
| 26 | `theorem` | [contMDiffAt_prod_module_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-prod-module-iff--7d7a5d817199b17c3deb5786.md) | 247 | `result-track:7d7a5d817199b17c3deb5786cbbfd44fb4ba17476f5bc6ab5e826a8044334deb` |
| 27 | `theorem` | [contMDiffOn_prod_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffon-prod-iff--27b9d2e7fc2a8a2e7a678bcb.md) | 253 | `result-track:27b9d2e7fc2a8a2e7a678bcbc14127538798403ac6a9ee09de92723661943e2e` |
| 28 | `theorem` | [contMDiffOn_prod_module_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffon-prod-module-iff--fdd867bfa2d1976e982e3b43.md) | 260 | `result-track:fdd867bfa2d1976e982e3b4358d3c796527b7bf1b3996aea2c8a4ca57740d57d` |
| 29 | `theorem` | [contMDiff_prod_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-prod-iff--5cfb60b451be51103a6d42c0.md) | 266 | `result-track:5cfb60b451be51103a6d42c0044b21f6b6b390bf6affd59bb5967ffb3dc855d1` |
| 30 | `theorem` | [contMDiff_prod_module_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-prod-module-iff--20f393e88ec50f35d2cbd828.md) | 271 | `result-track:20f393e88ec50f35d2cbd8289cb4f8f39929615a90662b3447eae5037967c9f0` |
| 31 | `theorem` | [contMDiff_prod_assoc](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-prod-assoc--7e2197292906a11ca883ff97.md) | 277 | `result-track:7e2197292906a11ca883ff970a0620d921043b86a46be327fec86e5034e5b958` |
| 32 | `theorem` | [ContMDiffWithinAt.prodMap'](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-prodmap--a51866cbfd5e9411f614ebad.md) | 294 | `result-track:a51866cbfd5e9411f614ebad2fb68bbd33efa1e330ac9387010a6035157bf1b7` |
| 33 | `theorem` | [ContMDiffWithinAt.prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-prodmap--bf6675d327c6ea655a134634.md) | 303 | `result-track:bf6675d327c6ea655a13463444e1ef4c0bc8fef15054cc8787e6bfbe0ee66028` |
| 34 | `theorem` | [ContMDiffAt.prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-prodmap--a763bfd6f95569269d52d0c8.md) | 311 | `result-track:a763bfd6f95569269d52d0c8de56b340d43e8aa412a71ff9af435c5b8b19a75b` |
| 35 | `theorem` | [ContMDiffAt.prodMap'](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-prodmap--8ab5c22f0dc0d0b6036f978a.md) | 319 | `result-track:8ab5c22f0dc0d0b6036f978a4a9d7540a038fcb1137ac46c6325452f9403dc76` |
| 36 | `theorem` | [ContMDiffOn.prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffon-prodmap--8b052298cd2aebe730e0bbef.md) | 326 | `result-track:8b052298cd2aebe730e0bbef506df930b7041b8df5533d9c21addaaf5e492f6b` |
| 37 | `theorem` | [ContMDiff.prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-prodmap--4465afb50a146e993a5b7774.md) | 333 | `result-track:4465afb50a146e993a5b7774103e171d67747d927e58edc5e7f4d9f6e2516b50` |
| 38 | `theorem` | [contMDiffWithinAt_pi_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffwithinat-pi-space--89c538a5e66e79040259744f.md) | 364 | `result-track:89c538a5e66e79040259744f8a50211b6e704c13a3088b370915a83863666049` |
| 39 | `theorem` | [contMDiffOn_pi_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffon-pi-space--2679e5227c398c5806434d23.md) | 370 | `result-track:2679e5227c398c5806434d236a6ea6177410168df41ed30cb1cd39d5986b740e` |
| 40 | `theorem` | [contMDiffAt_pi_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiffat-pi-space--cadb299358c367d303f7fc98.md) | 375 | `result-track:cadb299358c367d303f7fc984920d149b88eb80b2ba60f73aafc61a0030ee322` |
| 41 | `theorem` | [contMDiff_pi_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-pi-space--5cbb1397805a6da27b7c07fe.md) | 379 | `result-track:5cbb1397805a6da27b7c07fee8133b43c67e11c62576612bc433bf7f692c48e8` |
| 42 | `lemma` | [ContMDiff.inl](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-inl--b6facc0a189cb713dacb2a9f.md) | 402 | `result-track:b6facc0a189cb713dacb2a9f29fa1d50bd9be6db4a9bd17011eba7b36076dc3a` |
| 43 | `lemma` | [ContMDiff.inr](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-inr--2a27c0abe2f8fcd4abda534a.md) | 419 | `result-track:2a27c0abe2f8fcd4abda534a95c0756766bddf3e7c3938f087b34ab24cb40289` |
| 44 | `lemma` | [extChartAt_inl_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/extchartat-inl-apply--0735dabb45e6722734cbb2d9.md) | 436 | `result-track:0735dabb45e6722734cbb2d9f8a766a274d966f5584aae58b69066356d68edec` |
| 45 | `lemma` | [extChartAt_inr_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/extchartat-inr-apply--165f17b33ffef6c8fdb01c67.md) | 439 | `result-track:165f17b33ffef6c8fdb01c67ccf5253aeaa2e1c3021ad29a59bece9805b04465` |
| 46 | `lemma` | [ContMDiff.sumElim](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-sumelim--05f16f100c4915e9c426a797.md) | 442 | `result-track:05f16f100c4915e9c426a797bbab2f6077aacff10d4c2049b1f62c90edd56f4d` |
| 47 | `lemma` | [ContMDiff.sumMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-summap--d21ae902c556867d6eddcdef.md) | 483 | `result-track:d21ae902c556867d6eddcdef9a704525b85648f9c8239151ede64e8d82f80f5f` |
| 48 | `lemma` | [contMDiff_of_contMDiff_inl](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-of-contmdiff-inl--f16fa1328692677045bcf060.md) | 489 | `result-track:f16fa1328692677045bcf0601019ea1faf00322a7b48b96ad7e3061b85293533` |
| 49 | `lemma` | [contMDiff_of_contMDiff_inr](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-of-contmdiff-inr--da62545ea0a0fc58337c1d97.md) | 502 | `result-track:da62545ea0a0fc58337c1d97481e7a165a303831d37bb365e34a39afe7228266` |
| 50 | `lemma` | [contMDiff_sum_map](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-sum-map--9b6ef01a31ef90b80bbf3d1c.md) | 515 | `result-track:9b6ef01a31ef90b80bbf3d1cc594bad054dd52ecbd0b8a23f01980bfc70b4012` |
| 51 | `lemma` | [ContMDiff.swap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variant7ca8d87fc2cc2c9491be2c13d0bd7511c2d3d99e66da382364f967e4eea23858.lean/declarations/contmdiff-swap--f1940abd8c2e59b188e24bb6.md) | 521 | `result-track:f1940abd8c2e59b188e24bb625a033e8410a5566ea5d213f10885a96ded39d5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
