# Verification target: GRWTSK.Algebra.Defs.Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "271795db47ffe1508fd9eb219553482ce6ad8abf",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `271795db47ffe1508fd9eb219553482ce6ad8abf`.

Source path: `GRWTSK/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Hom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Opposite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SMulZeroClass](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smulzeroclass--a6880287d9329f16ffc28129.md) | 46 | `declaration-track:a6880287d9329f16ffc28129f7d0621b2e9207fbb91b316398dc81c25998e2a3` |
| 2 | `theorem` | [smul_zero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-zero--93aa994d735bb169d4ff8fd8.md) | 55 | `result-track:93aa994d735bb169d4ff8fd88f9054715a8516e913ea78f69b4f88fb16095559` |
| 3 | `lemma` | [smul_ite_zero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-ite-zero--ac9954db3a6d1a78de81bd22.md) | 58 | `result-track:ac9954db3a6d1a78de81bd22e4e4c875c667130d99b0ff61a58c133e343f18a8` |
| 4 | `lemma` | [smul_eq_zero_of_right](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-eq-zero-of-right--517a16c73347221ecdb4c92f.md) | 61 | `result-track:517a16c73347221ecdb4c92fb67aaa403d225281a045bd5ac1b2abc8a154f1bf` |
| 5 | `lemma` | [right_ne_zero_of_smul](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/right-ne-zero-of-smul--c91b44d65a71ff7a52742674.md) | 62 | `result-track:c91b44d65a71ff7a52742674e4c6eba0a3919a126ef88dc4dc31badcc9650a19` |
| 6 | `abbrev` | [Function.Injective.smulZeroClass](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-injective-smulzeroclass--6a9ad9254ec695f4e7f959a3.md) | 66 | `declaration-track:6a9ad9254ec695f4e7f959a3931dd1d0a5c6fe36167acb1ba93b5cacd0011b80` |
| 7 | `abbrev` | [ZeroHom.smulZeroClass](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/zerohom-smulzeroclass--f3456de1001e18e90cbdd562.md) | 74 | `declaration-track:f3456de1001e18e90cbdd562f4ff9be62d41e6af80078c8135a5b2cd646188aa` |
| 8 | `abbrev` | [Function.Surjective.smulZeroClassLeft](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-surjective-smulzeroclassleft--9ab696034b72c8cc1e132ba5.md) | 84 | `declaration-track:9ab696034b72c8cc1e132ba5cb05b1508d19ff8496fa61ee9e8a7a9b3b8e3cef` |
| 9 | `abbrev` | [SMulZeroClass.compFun](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smulzeroclass-compfun--b602ca6cfc0b9e806dda718f.md) | 95 | `declaration-track:b602ca6cfc0b9e806dda718f2b72af433d9d4b421091990e54e76db8c7bd7071` |
| 10 | `def` | [SMulZeroClass.toZeroHom](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smulzeroclass-tozerohom--7f1ac893d9571b75f350e5ef.md) | 102 | `declaration-track:7f1ac893d9571b75f350e5ef6ac38d8286a44e5bce83f67ca60582c4b5e383bb` |
| 11 | `class` | [SMulWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smulwithzero--28560d43d0bca5b3d4979fe0.md) | 115 | `declaration-track:28560d43d0bca5b3d4979fe0f78ca660a17ee568c5b7bbff13a8dfb22ef5787b` |
| 12 | `instance` | [MulZeroClass.toSMulWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/mulzeroclass-tosmulwithzero--8cc34c6989e687b83323591e.md) | 119 | `declaration-track:8cc34c6989e687b83323591e0718c0645660aa3ab1d45525736a2eda299efddd` |
| 13 | `instance` | [MulZeroClass.toOppositeSMulWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/mulzeroclass-tooppositesmulwithzero--0066ed54ece9d9a308e0e899.md) | 125 | `declaration-track:0066ed54ece9d9a308e0e899f4e8c541c6bb7c579de2662e1175962996b23051` |
| 14 | `theorem` | [zero_smul](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/zero-smul--d6b48b09d68997f0b3f5674e.md) | 133 | `result-track:d6b48b09d68997f0b3f5674eb5fd4a9c58fe4eccf9eb578525d451cefab9caea` |
| 15 | `lemma` | [smul_eq_zero_of_left](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-eq-zero-of-left--bf27131c9a23d264d6fda8b0.md) | 138 | `result-track:bf27131c9a23d264d6fda8b0cc4e7b5ba8614e5fdf0f0f95806202fa6cb454cf` |
| 16 | `lemma` | [left_ne_zero_of_smul](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/left-ne-zero-of-smul--f0bc0cd4d450f18cbba96437.md) | 139 | `result-track:f0bc0cd4d450f18cbba96437172332115b7b546889dff01e8b241088e395432b` |
| 17 | `abbrev` | [Function.Injective.smulWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-injective-smulwithzero--ee1a9d3a817b3ea9eb152b93.md) | 145 | `declaration-track:ee1a9d3a817b3ea9eb152b93adf2b14c7b00f9ebe73467d41e48074c01e87e78` |
| 18 | `abbrev` | [Function.Surjective.smulWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-surjective-smulwithzero--36b9b77c96c137dfd8e9f898.md) | 153 | `declaration-track:36b9b77c96c137dfd8e9f898378634aeebffc2ddde8b4da49afeffe9f302f5ba` |
| 19 | `def` | [SMulWithZero.compHom](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smulwithzero-comphom--b263da0f1d427e92c1abc126.md) | 164 | `declaration-track:b263da0f1d427e92c1abc126ab9e9f127abec1199b414ffebd4790ec0299a4f2` |
| 20 | `instance` | [AddMonoid.natSMulWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/addmonoid-natsmulwithzero--e3ed05eb97f02d7641243f0e.md) | 171 | `declaration-track:e3ed05eb97f02d7641243f0e31b7408876c1f400b3a56937ccedb5c72d0c8eee` |
| 21 | `instance` | [AddGroup.intSMulWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/addgroup-intsmulwithzero--88735d1f098bc8c8ba0a74e4.md) | 175 | `declaration-track:88735d1f098bc8c8ba0a74e4c8f1ba2cf7356803a3f7bb0005533c8441e23876` |
| 22 | `class` | [MulActionWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/mulactionwithzero--df8c6444ef403c8b5217e7c0.md) | 185 | `declaration-track:df8c6444ef403c8b5217e7c09d7ac49e81eb39f6a5f01171adb5892584c9b71f` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/instance--0556d1df0bf5ebc14fadf9aa.md) | 193 | `declaration-track:0556d1df0bf5ebc14fadf9aa6dca99eccec85ce8f4e4e2ceca451b510e3f2966` |
| 24 | `instance` | [MonoidWithZero.toMulActionWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/monoidwithzero-tomulactionwithzero--29fec4e55f3f498615875ea9.md) | 198 | `declaration-track:29fec4e55f3f498615875ea90d717310d34f6a8988b2679a208bbc07db392c42` |
| 25 | `instance` | [MonoidWithZero.toOppositeMulActionWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/monoidwithzero-tooppositemulactionwithzero--5ec30527f7ef658869073bfb.md) | 203 | `declaration-track:5ec30527f7ef658869073bfbb5704d5db429a08bc9d01c38f9979e181c5c49a9` |
| 26 | `lemma` | [MulActionWithZero.subsingleton](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/mulactionwithzero-subsingleton--d95bb6fd41e4e841eec81da0.md) | 206 | `result-track:d95bb6fd41e4e841eec81da004a10866863706db5f5d41182040606b892c31fe` |
| 27 | `lemma` | [MulActionWithZero.nontrivial](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/mulactionwithzero-nontrivial--4b6198059935e3b0ead92a55.md) | 211 | `result-track:4b6198059935e3b0ead92a5590f01fd545bbe36790ecdf863340b731bdfb0e81` |
| 28 | `lemma` | [ite_zero_smul](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/ite-zero-smul--ef66aef2ccf52267f25f3984.md) | 218 | `result-track:ef66aef2ccf52267f25f3984787e6012189084d070799ecd6b627d921b1ff32f` |
| 29 | `lemma` | [boole_smul](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/boole-smul--295e8676e428c7a331ba4623.md) | 221 | `result-track:295e8676e428c7a331ba4623c49ec222379463ba73b071a0c4fcde47086783b1` |
| 30 | `lemma` | [Pi.single_apply_smul](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/pi-single-apply-smul--7993619d708abb248ba5fe84.md) | 223 | `result-track:7993619d708abb248ba5fe8479d2f84d0fda742ed9d88463b9de3300589c6542` |
| 31 | `abbrev` | [Function.Injective.mulActionWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-injective-mulactionwithzero--0b29e3e3017f9b4b3e80deb9.md) | 229 | `declaration-track:0b29e3e3017f9b4b3e80deb906069aa6f7f9c78e794116cd8b5f5d3148a3906b` |
| 32 | `abbrev` | [Function.Surjective.mulActionWithZero](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-surjective-mulactionwithzero--1cd1a9725443d4f4a3259942.md) | 235 | `declaration-track:1cd1a9725443d4f4a32599420e55d80d5de27c7dc455ab59df7fe6963f623f85` |
| 33 | `def` | [MulActionWithZero.compHom](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/mulactionwithzero-comphom--e4ff96f65058480be7f5eb9f.md) | 242 | `declaration-track:e4ff96f65058480be7f5eb9f2a110bba8f790890ff046ee7eebdae075395e2a5` |
| 34 | `lemma` | [smul_inv₀](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-inv--c066aef44aafa78915cf99b1.md) | 253 | `result-track:c066aef44aafa78915cf99b1b3d80c2c16df4b338abbffe7e2c68ab8108055ee` |
| 35 | `class` | [DistribSMul](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/distribsmul--5ec9109ebe0a4285a62c86c6.md) | 268 | `declaration-track:5ec9109ebe0a4285a62c86c6fcf081ca84b42947d56d53ca5f2f2d3a81c2f565` |
| 36 | `theorem` | [smul_add](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-add--a9455ca7601248379628d0a5.md) | 276 | `result-track:a9455ca7601248379628d0a5afc0544122679251e7e2f1297875ec47d9feb496` |
| 37 | `instance` | [AddMonoidHom.smulZeroClass](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/addmonoidhom-smulzeroclass--d2d2dc60f87748597e2f6445.md) | 279 | `declaration-track:d2d2dc60f87748597e2f6445154ca839a90c7435d7dc37d7737ef9158c80c7ea` |
| 38 | `abbrev` | [Function.Injective.distribSMul](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-injective-distribsmul--f85249448f84991f83c04fee.md) | 289 | `declaration-track:f85249448f84991f83c04fee298c3c4dd5996e7048744a7d8faf3270d3c59f0f` |
| 39 | `abbrev` | [Function.Surjective.distribSMul](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-surjective-distribsmul--9f1dec96e979a4437961638c.md) | 297 | `declaration-track:9f1dec96e979a4437961638ca9fc388f33a40e2e9de5a69574609b93343ed9db` |
| 40 | `abbrev` | [Function.Surjective.distribSMulLeft](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-surjective-distribsmulleft--168504d307337e74d22015f4.md) | 309 | `declaration-track:168504d307337e74d22015f48d674f321224413c24b74be7f73e5779dfb8a3c0` |
| 41 | `abbrev` | [DistribSMul.compFun](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/distribsmul-compfun--68eda1c82093f32bf323f898.md) | 319 | `declaration-track:68eda1c82093f32bf323f898f54e8709535473f2f73ad638385fc121e75bdd70` |
| 42 | `def` | [DistribSMul.toAddMonoidHom](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/distribsmul-toaddmonoidhom--a8dc432b911cda491defe953.md) | 325 | `declaration-track:a8dc432b911cda491defe9535e860ef1d556785e990c045ae799c8b8fb291cdb` |
| 43 | `instance` | [AddMonoid.nat_smulCommClass](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/addmonoid-nat-smulcommclass--0f5f4660ea35767f46c7b3f2.md) | 328 | `declaration-track:0f5f4660ea35767f46c7b3f2df0fb34e3194cc9fd137e48ab04812aade82d918` |
| 44 | `instance` | [AddMonoid.nat_smulCommClass'](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/addmonoid-nat-smulcommclass--485b1fe8308cf26377b2a0f9.md) | 333 | `declaration-track:485b1fe8308cf26377b2a0f9a17694c2e418ed4022e68f55531bfc4569e5e1bf` |
| 45 | `class` | [DistribMulAction](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/distribmulaction--1d98ee75e59665826566e8da.md) | 341 | `declaration-track:1d98ee75e59665826566e8da5e6487762d3b13967a022b7a649d7327982085ee` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/instance--eff720255542553ee4d82c4b.md) | 352 | `declaration-track:eff720255542553ee4d82c4b239633fc04a142dce1452f40b29ddee66ae6d89c` |
| 47 | `example` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/example--0f6e5e80e9d6c91f7488333c.md) | 359 | `declaration-track:0f6e5e80e9d6c91f7488333c468408810bdf44a4fe7757a02d7fc04e05c378e6` |
| 48 | `abbrev` | [Function.Injective.distribMulAction](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-injective-distribmulaction--a8be3adc281c3587497361f0.md) | 367 | `declaration-track:a8be3adc281c3587497361f015901345fcbecbcff4fbb8bd75a433bb8d3fcf62` |
| 49 | `abbrev` | [Function.Surjective.distribMulAction](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/function-surjective-distribmulaction--a5e5f610c07f28a163ed6555.md) | 374 | `declaration-track:a5e5f610c07f28a163ed65554dd7c4b22896d6f43764375e4a64a5ada9e47cf7` |
| 50 | `def` | [DistribMulAction.toAddMonoidHom](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/distribmulaction-toaddmonoidhom--e4478a29c7b76cea4bcf6986.md) | 382 | `declaration-track:e4478a29c7b76cea4bcf6986b5e2baba4dd103978f42a65e485b5e184e3d8199` |
| 51 | `def` | [DistribMulAction.toAddMonoidEnd](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/distribmulaction-toaddmonoidend--260a58fed6e2f991d6550fa2.md) | 389 | `declaration-track:260a58fed6e2f991d6550fa200d7333101d968879ae4e91d384cd1ef1ad8502e` |
| 52 | `instance` | [AddGroup.int_smulCommClass](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/addgroup-int-smulcommclass--c6f625978efd8b96f16e332d.md) | 401 | `declaration-track:c6f625978efd8b96f16e332dc2cd27c25cc1c33198afec6f728a42fddf0c8b03` |
| 53 | `instance` | [AddGroup.int_smulCommClass'](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/addgroup-int-smulcommclass--e52f90ff5c68fe421310e84a.md) | 405 | `declaration-track:e52f90ff5c68fe421310e84a79a5d22392ba1533bb583051a0faeb879525b127` |
| 54 | `theorem` | [smul_neg](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-neg--ef38002a06c967b17a6112e0.md) | 409 | `result-track:ef38002a06c967b17a6112e0639c4c2b1c69c89ae8dd770e7c6c2f12b08f7ad8` |
| 55 | `theorem` | [smul_sub](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-sub--4c4a7dadfedb503a12fbd48d.md) | 412 | `result-track:4c4a7dadfedb503a12fbd48def6a3cc5301cd6e83a1b073e763efc47a3c4006d` |
| 56 | `lemma` | [smul_eq_zero_iff_eq](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-eq-zero-iff-eq--5737ce33a906ada26694ad0d.md) | 420 | `result-track:5737ce33a906ada26694ad0da172c94cf0c6f0ff6b73981de1d99774461cb7a4` |
| 57 | `lemma` | [smul_ne_zero_iff_ne](../../../../mathematics/Algebra/Defs/Variant42d5e69f166740976b8d56585c9d5956e443bc7b005d9baa7876162595114994.lean/declarations/smul-ne-zero-iff-ne--4f1c55695a1eb348f8024a13.md) | 423 | `result-track:4f1c55695a1eb348f8024a13e3fb1a011daee7a51d236722328196f1915cde8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
