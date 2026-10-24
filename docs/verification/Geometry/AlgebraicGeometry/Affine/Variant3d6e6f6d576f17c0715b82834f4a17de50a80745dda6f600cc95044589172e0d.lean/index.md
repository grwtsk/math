# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Affine.Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98db2853159f11822039f1a58bba251900d0f540",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98db2853159f11822039f1a58bba251900d0f540`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean.json)

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
| 1 | `def` | [algSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec--4f933aa920f076c9aa86a03f.md) | 73 | `declaration-track:4f933aa920f076c9aa86a03f2859f0b7d297f27602641d5acaf14d51cd5d6ed2` |
| 2 | `def` | [algΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/alg--f446fee13b24b903c8e574fd.md) | 78 | `declaration-track:f446fee13b24b903c8e574fdf833b030afa7f12409e41781ba77f69aaed23534` |
| 3 | `instance` | [preservesLimitsOfSize_algSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/preserveslimitsofsize-algspec--129ed9545fe4e5925077ea2f.md) | 82 | `declaration-track:129ed9545fe4e5925077ea2fe64e32763272e8114b1b436264f1e22388d7262c` |
| 4 | `instance` | [preservesColimitsOfSize_algΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/preservescolimitsofsize-alg--9d4c8c12e32b13538864f393.md) | 87 | `declaration-track:9d4c8c12e32b13538864f393ec566374069f06ee2f65fde90206a345eb69d9ba` |
| 5 | `lemma` | [algSpec_obj_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec-obj-hom--0e2384feceb51cdaacba1292.md) | 90 | `result-track:0e2384feceb51cdaacba12926d02f6f4a2c4634fc92283c2536dabf874e2b97c` |
| 6 | `lemma` | [algSpec_map_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec-map-left--abf950d1de2a0198e2d65b70.md) | 93 | `result-track:abf950d1de2a0198e2d65b708ae0c94772007852df47e4e18c27a0e468283334` |
| 7 | `lemma` | [preservesTerminalIso_algSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/preservesterminaliso-algspec--dd3abd27848daf985169d2c0.md) | 96 | `result-track:dd3abd27848daf985169d2c040255805effb99931f400676022f95a45072f8bc` |
| 8 | `lemma` | [preservesTerminalIso_algSpec_inv_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/preservesterminaliso-algspec-inv-left--5fabd07920c44a4ecf4b0680.md) | 100 | `result-track:5fabd07920c44a4ecf4b0680ae6214d81a03519a4ce07c6f94dbf3114fa3cc60` |
| 9 | `lemma` | [prodComparison_algSpec_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/prodcomparison-algspec-left--d7f9d3b502a8af90b797909e.md) | 105 | `result-track:d7f9d3b502a8af90b797909e662a5ae9d6508f6d53ce45ba58104f93fbf1adb2` |
| 10 | `lemma` | [prodComparisonIso_algSpec_inv_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/prodcomparisoniso-algspec-inv-left--0bf588075aca0b7b5b5295ab.md) | 109 | `result-track:0bf588075aca0b7b5b5295ab62621d5dfba5e2d7368daa29849061f7b965d7cf` |
| 11 | `instance` | [braidedAlgSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/braidedalgspec--4a94eea445facc331f3bfd19.md) | 122 | `declaration-track:4a94eea445facc331f3bfd19b20ce47937a7fe6c84b6b4e1794b008a2575b917` |
| 12 | `lemma` | [ε_algSpec_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec-left--50a66cefc965a5f2ea4ac654.md) | 137 | `result-track:50a66cefc965a5f2ea4ac654b8dc11006bb0d033203516065d1eec78790ddda2` |
| 13 | `lemma` | [η_algSpec_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec-left--baa328ef8bb8cd7c19d8fe1c.md) | 138 | `result-track:baa328ef8bb8cd7c19d8fe1c534ccf0bfb1eb584aa2c314490e69edf23390308` |
| 14 | `lemma` | [δ_algSpec_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec-left--4941085ca32d87c9376739f9.md) | 140 | `result-track:4941085ca32d87c9376739f9b3dac9e7f7f9893c45d99125141554d73845f465` |
| 15 | `lemma` | [μ_algSpec_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec-left--44ceb0cee8ad6ec9ea372a46.md) | 143 | `result-track:44ceb0cee8ad6ec9ea372a460e3e20e5a4e53c962751eada06198e5786ee24e8` |
| 16 | `instance` | [algSpec.instFull](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec-instfull--415dae7cf38e206a346e1d3f.md) | 147 | `declaration-track:415dae7cf38e206a346e1d3f7fbb6280dc5b959fbcc6d4fb4ce236629c20ae0d` |
| 17 | `instance` | [algSpec.instFaithful](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec-instfaithful--30a24dec101621f2fe6d494b.md) | 152 | `declaration-track:30a24dec101621f2fe6d494b50e0a8f6b7973f484839207f26c1f524e762c1a3` |
| 18 | `def` | [algSpec.fullyFaithful](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algspec-fullyfaithful--e86fdafc06f878c5b6cce11d.md) | 157 | `declaration-track:e86fdafc06f878c5b6cce11d4e575ff1f78382816a717afbe4242559919d0163` |
| 19 | `abbrev` | [bialgSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/bialgspec--d94ec2c0a955fe43b77943d3.md) | 163 | `declaration-track:d94ec2c0a955fe43b77943d3bbecebb4e604ad49c2f1ed4486af3a912887afc6` |
| 20 | `instance` | [bialgSpec.instFull](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/bialgspec-instfull--afb16bb526e3017ac94004ef.md) | 167 | `declaration-track:afb16bb526e3017ac94004ef1dfd507185d1802a6f2cc22158d3ea0a7ec6aa50` |
| 21 | `instance` | [bialgSpec.instFaithful](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/bialgspec-instfaithful--1935bfb29a9f005d51b04534.md) | 170 | `declaration-track:1935bfb29a9f005d51b0453436c26bc165775ad8760f9dde0c51ef28c8aeb2d4` |
| 22 | `def` | [bialgSpec.fullyFaithful](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/bialgspec-fullyfaithful--21eb0f53bd6b513389a95570.md) | 173 | `declaration-track:21eb0f53bd6b513389a955702689001f31cef3fa809374242fc107442d3354c6` |
| 23 | `abbrev` | [hopfSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/hopfspec--321c73382ddb07f3eba4df75.md) | 178 | `declaration-track:321c73382ddb07f3eba4df75b3535bd58db5584fc8b6eeb33ebd8d57ca74270d` |
| 24 | `instance` | [hopfSpec.instFull](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/hopfspec-instfull--2ae055e48b035712ff3cd94a.md) | 182 | `declaration-track:2ae055e48b035712ff3cd94af1d10f55a5b80f86ea6ddbe78d69087b3425bf2d` |
| 25 | `instance` | [hopfSpec.instFaithful](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/hopfspec-instfaithful--bbb6c0e153521c412bd58798.md) | 185 | `declaration-track:bbb6c0e153521c412bd58798df30c336a7299517c2cb8488de4f4e20c9c0a68c` |
| 26 | `def` | [hopfSpec.fullyFaithful](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/hopfspec-fullyfaithful--6facb48b7bf4a5044725e603.md) | 188 | `declaration-track:6facb48b7bf4a5044725e603e2a152218e623d39ae5ba32ee283cc7bbc2d3f6a` |
| 27 | `instance` | [specOverSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/specoverspec--e0a24e3ae02f2fdfb46521d5.md) | 200 | `declaration-track:e0a24e3ae02f2fdfb46521d523ed07419d44c5a0d57c9449a5271df457c7023d` |
| 28 | `instance` | [locallyOfFiniteType_specOverSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/locallyoffinitetype-specoverspec--88c7db58df1e13ab6e6011ef.md) | 203 | `declaration-track:88c7db58df1e13ab6e6011efe53ed7948bd2ebccbfc832843e36df9d6aa6eff5` |
| 29 | `instance` | [instMonObjSpecAsOverSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instmonobjspecasoverspec--129a1a7647db346866f3f6d7.md) | 210 | `declaration-track:129a1a7647db346866f3f6d710626c75cd5ac0d3e60f6e006206b5538110919b` |
| 30 | `lemma` | [one_spec_asOver_spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/one-spec-asover-spec--fb3dc48eee162c530e1f307e.md) | 215 | `result-track:fb3dc48eee162c530e1f307ef47b83201d1abf95e2cc597bd7df3f0008d75ec3` |
| 31 | `lemma` | [one_spec_asOver_spec_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/one-spec-asover-spec-left--97c40a6628ade6d436c7f11e.md) | 222 | `result-track:97c40a6628ade6d436c7f11e29c7351877d700c5a422f4535c9931553bcb6102` |
| 32 | `lemma` | [mul_spec_asOver_spec_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/mul-spec-asover-spec-left--b3ab9121bcfaafd54dd5d11b.md) | 226 | `result-track:b3ab9121bcfaafd54dd5d11bdcdfaba190ad542943f1b66858c2806fa5b4e4a7` |
| 33 | `instance` | [isCommMonObj_spec_asOver_spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/iscommmonobj-spec-asover-spec--87e322faf18d1ced751e514b.md) | 232 | `declaration-track:87e322faf18d1ced751e514b59b7569cccc04533b9b060fe5fafe90c922c196b` |
| 34 | `instance` | [instGrpObjSpecAsOverSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instgrpobjspecasoverspec--313239d113333c3baa2779f2.md) | 256 | `declaration-track:313239d113333c3baa2779f27c05f56251c860dc2195eb24ecb2c0f27bdf8480` |
| 35 | `instance` | [instCommGrpObjSpecAsOverSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instcommgrpobjspecasoverspec--22c7a02bb8586612e602612d.md) | 260 | `declaration-track:22c7a02bb8586612e602612dc92a4fb5e324b89ae10debf973d87eb8b315f23b` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instance--d46f33d527572d47ffd56893.md) | 263 | `declaration-track:d46f33d527572d47ffd56893a87208645591dd8693753031992e1c35603661ee` |
| 37 | `def` | [Spec.mapMulEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/spec-mapmulequiv--ac1f7bb687bb0fc1ebeca174.md) | 270 | `declaration-track:ac1f7bb687bb0fc1ebeca174af81aba1766cf4a3f7cc64a9520f2171596df275` |
| 38 | `def` | [algΓAlgSpecAdjunction](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/alg-algspecadjunction--b2484184cfd0cc48c773faa7.md) | 301 | `declaration-track:b2484184cfd0cc48c773faa70d8bc61837e355a5cca10412004ae28772f2129d` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instance--a113c0f08f92ab97186edbb8.md) | 312 | `declaration-track:a113c0f08f92ab97186edbb86e3388e31b64089a86eff0a608c5c5fff441a757` |
| 40 | `lemma` | [algebraMap_presheafObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/algebramap-presheafobj--d73d19eccaa09b0879a66e3b.md) | 316 | `result-track:d73d19eccaa09b0879a66e3b814d5dc2137cecfd051b30217a680f5dee3835df` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instance--5f757db8384e82a42b93706b.md) | 322 | `declaration-track:5f757db8384e82a42b93706b13bb2ba6d202613b79ef79aebaf2496e1a2ff208` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instance--188c92b2515f387192463835.md) | 324 | `declaration-track:188c92b2515f3871924638350abd39844fa7f17ed5b9fe01e5e41366cdede380` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instance--2654ef30901751730f6ed464.md) | 328 | `declaration-track:2654ef30901751730f6ed4647768a964b9426d63f439ec829139e0dac8d39482` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instance--46be93057533dc079e63a490.md) | 337 | `declaration-track:46be93057533dc079e63a4906d566e5a0c750aa68173c84d59cf9be3d535bba8` |
| 45 | `def` | [pullbackSpecIso'](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/pullbackspeciso--656c8d774451d5b736ebf138.md) | 355 | `declaration-track:656c8d774451d5b736ebf1382ed8e584ab2c19f82a11a262213a8b24a040a5e4` |
| 46 | `lemma` | [pullbackSpecIso'_symmetry](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/pullbackspeciso-symmetry--9874f04a7836402215590fdd.md) | 360 | `result-track:9874f04a7836402215590fdd06d0fd069f10bb01a3027311586967c8599c6314` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instance--f6c6f7c09b9bdfe450f1da9c.md) | 380 | `declaration-track:f6c6f7c09b9bdfe450f1da9cc32fe4b73ee4ecf75fe13a93175e2474bbe2c6c6` |
| 48 | `lemma` | [μ_pullback_left_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/pullback-left-fst--3b8760d1a88a5ae3d8b08776.md) | 391 | `result-track:3b8760d1a88a5ae3d8b08776a76b153bc0ee99bd7f668632f7fbedebc588d247` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/instance--cad05c49ceaf11bb6f32b489.md) | 424 | `declaration-track:cad05c49ceaf11bb6f32b489c7347b38e2e04ca4f0086ae5b6eb576fa045225f` |
| 50 | `lemma` | [essImage_algSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/essimage-algspec--5d7140f6a2b6fefb787515c5.md) | 471 | `result-track:5d7140f6a2b6fefb787515c5cc98138029a3a895440b55009d5d1e3a72b3b2b6` |
| 51 | `lemma` | [essImage_bialgSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/essimage-bialgspec--03446a924a29bce1da9660a8.md) | 477 | `result-track:03446a924a29bce1da9660a85cae96152a730afb42be59a926e02a5fcd1d4267` |
| 52 | `lemma` | [essImage_hopfSpec](../../../../../mathematics/Geometry/AlgebraicGeometry/Affine/Variant3d6e6f6d576f17c0715b82834f4a17de50a80745dda6f600cc95044589172e0d.lean/declarations/essimage-hopfspec--36f4ded8293a1551068dc33c.md) | 483 | `result-track:36f4ded8293a1551068dc33c0b492eb47f1dd5a613f14b42acc6649e958963da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
