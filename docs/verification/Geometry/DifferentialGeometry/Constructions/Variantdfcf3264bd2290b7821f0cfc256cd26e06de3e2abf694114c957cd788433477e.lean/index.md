# Verification target: GRWTSK.Geometry.DifferentialGeometry.Constructions.Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "846b17490b007add1cf432d6e58ed42a3c11b01f",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `846b17490b007add1cf432d6e58ed42a3c11b01f`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContMDiffWithinAt.prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-prodmk--8ecec0611ef1be8db33e950c.md) | 58 | `result-track:8ecec0611ef1be8db33e950cdb456c2ec0c924e7cc5445c5f9db0e5326859873` |
| 2 | `theorem` | [ContMDiffWithinAt.prodMk_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-prodmk-space--876734659254ea4cc929689f.md) | 67 | `result-track:876734659254ea4cc929689f39a183d5ee51a623f02432257723386f82e56e87` |
| 3 | `theorem` | [ContMDiffAt.prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-prodmk--2e6bb221c84a814742327ef0.md) | 76 | `result-track:2e6bb221c84a814742327ef0f11ea5c8bc1a40b0063302daadabd4c0f160f635` |
| 4 | `theorem` | [ContMDiffAt.prodMk_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-prodmk-space--c14df4aa3e72efc89345ca6e.md) | 83 | `result-track:c14df4aa3e72efc89345ca6e7143f2577bd00b800af330f9df421103bb05e4ec` |
| 5 | `theorem` | [ContMDiffOn.prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffon-prodmk--ce7b74cfbd45947c1a53f19d.md) | 91 | `result-track:ce7b74cfbd45947c1a53f19d979142505e63d9f97e24d81108483d7e74c8c029` |
| 6 | `theorem` | [ContMDiffOn.prodMk_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffon-prodmk-space--218fd9f024af42917fd6f03e.md) | 98 | `result-track:218fd9f024af42917fd6f03e67d740d1db7ec7091455fdf53744318f1a8f50d4` |
| 7 | `theorem` | [ContMDiff.prodMk](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-prodmk--6da2f8ee444f9d259d4edc73.md) | 105 | `result-track:6da2f8ee444f9d259d4edc7308d66897a75c72ed29bbd61f6bb2d9c88731e6af` |
| 8 | `theorem` | [ContMDiff.prodMk_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-prodmk-space--86cd5b0894fba9b73f897086.md) | 112 | `result-track:86cd5b0894fba9b73f8970860fc2abaa4ddca9b5b6e78938e481401f078ad14b` |
| 9 | `theorem` | [contMDiffWithinAt_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-fst--b34744ec9c2b741c603ebb49.md) | 140 | `result-track:b34744ec9c2b741c603ebb497c129f30db4ebbb5ce8b027c3f5e13182dc64bf7` |
| 10 | `theorem` | [ContMDiffWithinAt.fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-fst--a72ba4852c92fa4f11f11f34.md) | 155 | `result-track:a72ba4852c92fa4f11f11f34c93fe61647fd8290a3649e4078f998bf2c5d1c78` |
| 11 | `theorem` | [contMDiffAt_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-fst--86146cf04ee31cc32c1082fc.md) | 160 | `result-track:86146cf04ee31cc32c1082fce748009e4a7b19317f323edd017c8d600904f11c` |
| 12 | `theorem` | [contMDiffOn_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffon-fst--6053d994814fbe5543ba28e9.md) | 163 | `result-track:6053d994814fbe5543ba28e945fcd30f47a49f55f6dd06e87bc9d6b7a278572f` |
| 13 | `theorem` | [contMDiff_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-fst--3f9ae7dd0be411ec77088bba.md) | 166 | `result-track:3f9ae7dd0be411ec77088bbac93c76090fe2f501523bebd47de99fca23ca86b1` |
| 14 | `theorem` | [ContMDiffAt.fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-fst--27fee369c58c6704d9c88ad7.md) | 176 | `result-track:27fee369c58c6704d9c88ad78948a013e2bd2f58d0451db8158342ecbfc2af1e` |
| 15 | `theorem` | [ContMDiff.fst](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-fst--8c76cf7a1facad3a98aa7222.md) | 180 | `result-track:8c76cf7a1facad3a98aa7222fbabd9fa90b0f6fd59ce9976c858e55ed149fcbb` |
| 16 | `theorem` | [contMDiffWithinAt_snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-snd--c49e1ff37c66315346577489.md) | 188 | `result-track:c49e1ff37c66315346577489c58a1e92b59fa001e29a17dfc5c5349de6a55399` |
| 17 | `theorem` | [ContMDiffWithinAt.snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-snd--ec5dc0839ce492fe755a2b2f.md) | 203 | `result-track:ec5dc0839ce492fe755a2b2f6907b2d9cc51b0dbd046ef4ed77e769cf3854fed` |
| 18 | `theorem` | [contMDiffAt_snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-snd--156e422a6e6232be8a3e3d70.md) | 208 | `result-track:156e422a6e6232be8a3e3d70b5b81bcf12e4c615d4fd9a71f00bbb4ee64a950c` |
| 19 | `theorem` | [contMDiffOn_snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffon-snd--4ba2839e534cbaca047214ac.md) | 211 | `result-track:4ba2839e534cbaca047214ac9c5a695e8368f9f936a3bb767a3aa1a324903b79` |
| 20 | `theorem` | [contMDiff_snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-snd--4d6e7075a11b6290de411756.md) | 214 | `result-track:4d6e7075a11b6290de4117563661ac1b07cf50c66b1c64ce9f045ca0f467ab2b` |
| 21 | `theorem` | [ContMDiffAt.snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-snd--5e5490fa2cf6e3280720baa6.md) | 224 | `result-track:5e5490fa2cf6e3280720baa66d396f69fef55fbdd7203cb1f7ae80b38dc03910` |
| 22 | `theorem` | [ContMDiff.snd](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-snd--86a7745d076f0a48052f6014.md) | 228 | `result-track:86a7745d076f0a48052f6014ff13515ab08e0b1f9825ac831314a4c98b448fa3` |
| 23 | `theorem` | [contMDiffWithinAt_prod_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-prod-iff--5980507027d0d33acd09450e.md) | 238 | `result-track:5980507027d0d33acd09450e231c9c1fd2ef21f49d2f06b772b5c6660506ff25` |
| 24 | `theorem` | [contMDiffWithinAt_prod_module_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-prod-module-iff--c34ccd6bee4d15fd07139e5c.md) | 243 | `result-track:c34ccd6bee4d15fd07139e5c87b36407cddcbc2d6d005b4f46651821781da93a` |
| 25 | `theorem` | [contMDiffAt_prod_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-prod-iff--7278b5f6f61f00bc8ab9c884.md) | 250 | `result-track:7278b5f6f61f00bc8ab9c884b50729c501123dc82b3919da77f48148d9239600` |
| 26 | `theorem` | [contMDiffAt_prod_module_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-prod-module-iff--42401fbd15b0ffda97df16a9.md) | 255 | `result-track:42401fbd15b0ffda97df16a993ce43caa792c46dcf43d0f6faec7da75c123ed7` |
| 27 | `theorem` | [contMDiffOn_prod_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffon-prod-iff--6a3251b8170dd6c64a70fee9.md) | 261 | `result-track:6a3251b8170dd6c64a70fee9c92c921196022ac2757863fefddb8041139b54df` |
| 28 | `theorem` | [contMDiffOn_prod_module_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffon-prod-module-iff--faeaa6a3a018379f09a64f23.md) | 268 | `result-track:faeaa6a3a018379f09a64f23f0e1a93d3107339c8d198eba7fc54861741a51d8` |
| 29 | `theorem` | [contMDiff_prod_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-prod-iff--ebb68e8416c1ceba493049a8.md) | 274 | `result-track:ebb68e8416c1ceba493049a868eb661e51f55a0d702f71c1704c51aabc10b0de` |
| 30 | `theorem` | [contMDiff_prod_module_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-prod-module-iff--edd32f1ea1acecd7385eb8e3.md) | 279 | `result-track:edd32f1ea1acecd7385eb8e309f9852f1cefaeae727183dc5c3745882b3400a3` |
| 31 | `theorem` | [contMDiff_prod_assoc](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-prod-assoc--e8634962bc62b0296ad38e7d.md) | 285 | `result-track:e8634962bc62b0296ad38e7d2179af188436a5dd08d494b1e39b2bc2d7afeab5` |
| 32 | `theorem` | [ContMDiffWithinAt.prodMap'](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-prodmap--31ae47f8aa875dc209c54565.md) | 302 | `result-track:31ae47f8aa875dc209c54565dad5a15a17b652ed279ed25d7541d057326eb1a3` |
| 33 | `theorem` | [ContMDiffWithinAt.prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-prodmap--dc64f6e8147dcb685fcde416.md) | 311 | `result-track:dc64f6e8147dcb685fcde4168848cbd34fde9d4f342d461373dca223c460092d` |
| 34 | `theorem` | [ContMDiffAt.prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-prodmap--6748723a3a7634a98281db23.md) | 319 | `result-track:6748723a3a7634a98281db236975ce569f36abb22cc38650b38d6a1da8edbdb0` |
| 35 | `theorem` | [ContMDiffAt.prodMap'](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-prodmap--b531abdab3bd9943cae30dfb.md) | 327 | `result-track:b531abdab3bd9943cae30dfbdcd5a2185a6809c45cc293a4bf96f92bb7882b41` |
| 36 | `theorem` | [ContMDiffOn.prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffon-prodmap--9d00401ec50737b7f847e057.md) | 334 | `result-track:9d00401ec50737b7f847e057969b88c70ce14e81acb4e9954d0eb9417afa08ab` |
| 37 | `theorem` | [ContMDiff.prodMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-prodmap--0710a11eb1e6dfeac9e82091.md) | 341 | `result-track:0710a11eb1e6dfeac9e8209173423228326e83839d114406a6ff8843d09f48cc` |
| 38 | `theorem` | [contMDiffWithinAt_pi_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffwithinat-pi-space--657eabe96d11e5a9fc4c2246.md) | 372 | `result-track:657eabe96d11e5a9fc4c22469059f2d308064f9cb7fe27c8a9d83e98546b5816` |
| 39 | `theorem` | [contMDiffOn_pi_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffon-pi-space--cf35bfc5415c4a4d1c37fd0f.md) | 378 | `result-track:cf35bfc5415c4a4d1c37fd0f3939a76f663b12931d61e1d74c7a88180546f599` |
| 40 | `theorem` | [contMDiffAt_pi_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiffat-pi-space--092558b55f2cc34b063b113b.md) | 383 | `result-track:092558b55f2cc34b063b113b5f58b8891a63f30eed7cd8972b61a63086623399` |
| 41 | `theorem` | [contMDiff_pi_space](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-pi-space--637d843cd984546e563e22b7.md) | 387 | `result-track:637d843cd984546e563e22b784a080f5ed89e61264775172699f7b46c1e1378b` |
| 42 | `lemma` | [ContMDiff.inl](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-inl--6541ec1d5566f843f409577f.md) | 410 | `result-track:6541ec1d5566f843f409577fdedddc08d33133dc04bb6068e4cbd9baf68f7253` |
| 43 | `lemma` | [ContMDiff.inr](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-inr--f2d860a5eff70a0922f64bfd.md) | 427 | `result-track:f2d860a5eff70a0922f64bfdeb3a045b5bfecd02278f5d54c522761b543894af` |
| 44 | `lemma` | [extChartAt_inl_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/extchartat-inl-apply--6ca1f5cb3b2779df510f21b0.md) | 444 | `result-track:6ca1f5cb3b2779df510f21b001dd4a84feaddd44cf79b4ce648c8ce2c6c1fd7e` |
| 45 | `lemma` | [extChartAt_inr_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/extchartat-inr-apply--fe2a3d8b7a57e6e7c98f815b.md) | 447 | `result-track:fe2a3d8b7a57e6e7c98f815bbc1d5e8def3243616eac09ff0758ad42c8d999a6` |
| 46 | `lemma` | [ContMDiff.sumElim](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-sumelim--fb67cb362592dabba669f54a.md) | 450 | `result-track:fb67cb362592dabba669f54a7de5019ef520adbc70306422212d3a21a83275bc` |
| 47 | `lemma` | [ContMDiff.sumMap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-summap--a5708f9cee731f5d3562ae40.md) | 491 | `result-track:a5708f9cee731f5d3562ae4053b71ce4007fcbea45233aa6cd5167dba222293f` |
| 48 | `lemma` | [contMDiff_of_contMDiff_inl](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-of-contmdiff-inl--b6a6da8bf47cdc5c7103761b.md) | 497 | `result-track:b6a6da8bf47cdc5c7103761bbc623713bd46cd979bf59b1037ab3b425dc0ec7e` |
| 49 | `lemma` | [contMDiff_of_contMDiff_inr](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-of-contmdiff-inr--9f33cdc1dab4becc7c9c3487.md) | 510 | `result-track:9f33cdc1dab4becc7c9c3487db389f937e02bb86784edc5fb9e12e8cf488e11a` |
| 50 | `lemma` | [contMDiff_sum_map](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-sum-map--d408d23ba7eede07f6e51c9f.md) | 523 | `result-track:d408d23ba7eede07f6e51c9f0c6c6ea61a8e952f6ed549d73a2280d57c5f7490` |
| 51 | `lemma` | [ContMDiff.swap](../../../../../mathematics/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/declarations/contmdiff-swap--180269bcb0ca392b6ce632ba.md) | 529 | `result-track:180269bcb0ca392b6ce632ba335b43be9d4dca22697de296b29e3440f2be3704` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
