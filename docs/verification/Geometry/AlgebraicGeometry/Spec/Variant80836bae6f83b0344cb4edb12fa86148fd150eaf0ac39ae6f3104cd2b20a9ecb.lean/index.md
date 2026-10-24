# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Spec.Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d8023ddae09cd7bb7e908b9b65af9a818c1ee75",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d8023ddae09cd7bb7e908b9b65af9a818c1ee75`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.LocallyRingedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.StructureSheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.LocalizationLocalization` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Functors` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.LocalizedModule` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Spec.topObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-topobj--521f537f61866387713bb0ce.md) | 62 | `declaration-track:521f537f61866387713bb0ce78b5130f1c86d5599a0a56207a7ad385f181931f` |
| 2 | `def` | [Spec.topMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-topmap--e53004053488ad8bdc311ae7.md) | 69 | `declaration-track:e53004053488ad8bdc311ae727b968455cdef9ea8da08ea1f58333f76e4dcbf4` |
| 3 | `theorem` | [Spec.topMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-topmap-id--6d84401c630ea9ba8d3e6738.md) | 75 | `result-track:6d84401c630ea9ba8d3e673878996f3b6b7a14d497ac528130381d645828ddef` |
| 4 | `theorem` | [Spec.topMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-topmap-comp--81e5f7c060b1a95be081cf88.md) | 80 | `result-track:81e5f7c060b1a95be081cf8806c76519af1240d79528760f667630bf02a5ee6a` |
| 5 | `def` | [Spec.toTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-totop--d30127dec4949817a77c4553.md) | 91 | `declaration-track:d30127dec4949817a77c4553203e149c81412ebe68682410d6688e14fb58eb2f` |
| 6 | `def` | [Spec.sheafedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-sheafedspaceobj--03a2f9f0595d8d3850ecd5e1.md) | 102 | `declaration-track:03a2f9f0595d8d3850ecd5e163dd4d4fc2caf8579af94780cc5e219712757aad` |
| 7 | `def` | [Spec.sheafedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-sheafedspacemap--b302f02f3f15557028dc050c.md) | 112 | `declaration-track:b302f02f3f15557028dc050cbe2318533dd55a06bb98f2d78336053c0c07a040` |
| 8 | `theorem` | [Spec.sheafedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-sheafedspacemap-id--de131f4072a191f6be4d5223.md) | 123 | `result-track:de131f4072a191f6be4d5223f038e682ee98c820ff20cebd5caec807be41152f` |
| 9 | `theorem` | [Spec.sheafedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-sheafedspacemap-comp--72518af0b37ffaedc4043721.md) | 134 | `result-track:72518af0b37ffaedc404372128f23f757a5ff4fda74f3adc470b5e6f87f3c69a` |
| 10 | `def` | [Spec.toSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-tosheafedspace--680c7abedbcad38089d02725.md) | 149 | `declaration-track:680c7abedbcad38089d02725378d3abb3053f4a95c860ad470943d20a5f611d0` |
| 11 | `def` | [Spec.toPresheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-topresheafedspace--1f5beef4c4d479ba61e34d16.md) | 159 | `declaration-track:1f5beef4c4d479ba61e34d1602b9645d643acb18c6ceb5f0e0e35c2f95290b97` |
| 12 | `theorem` | [Spec.toPresheafedSpace_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-topresheafedspace-obj--d6b4b7b33eab87896ee8e750.md) | 165 | `result-track:d6b4b7b33eab87896ee8e75010bd67f896f7fdb837af123639b4e901ee533b5c` |
| 13 | `theorem` | [Spec.toPresheafedSpace_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-topresheafedspace-obj-op--38fa675e0df9ca73103ee8c5.md) | 171 | `result-track:38fa675e0df9ca73103ee8c56964d16d4afde921530f71f38c8532255edfda15` |
| 14 | `theorem` | [Spec.toPresheafedSpace_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-topresheafedspace-map--1414cddcc469eb8b5068fa6c.md) | 178 | `result-track:1414cddcc469eb8b5068fa6c2de4eaa6957eaa25e8393c4a18c6d645df0f1116` |
| 15 | `theorem` | [Spec.toPresheafedSpace_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-topresheafedspace-map-op--dd85e664b93ea7b561a359ec.md) | 184 | `result-track:dd85e664b93ea7b561a359ecf66db47a0a9f0bfb3b1ccb2451d8e1c57b02acc7` |
| 16 | `theorem` | [Spec.basicOpen_hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-basicopen-hom-ext--aeb846337636d8197fee4f91.md) | 190 | `result-track:aeb846337636d8197fee4f917dd8e730295f6e44f5b9e9483d920006cd0e830e` |
| 17 | `def` | [Spec.locallyRingedSpaceObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-locallyringedspaceobj--c1ac8d166b76ea7ce3544d0d.md) | 218 | `declaration-track:c1ac8d166b76ea7ce3544d0dd255e39677299c3e196b40329026adab1465eb47` |
| 18 | `theorem` | [stalkMap_toStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/stalkmap-tostalk--8e382c4b8b9312288e5c5c37.md) | 227 | `result-track:8e382c4b8b9312288e5c5c370f6096643109a239adec1fb1408225221565b55e` |
| 19 | `theorem` | [localRingHom_comp_stalkIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/localringhom-comp-stalkiso--1d627a6a0853abaf473f3ad8.md) | 241 | `result-track:1d627a6a0853abaf473f3ad883c4ed5a10444410ea4bb6a17234d50b274d3f1f` |
| 20 | `def` | [Spec.locallyRingedSpaceMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-locallyringedspacemap--7f2789756940277657025b04.md) | 261 | `declaration-track:7f2789756940277657025b04a366c127a6f407cf73cb432ae9003a8c835c9eb6` |
| 21 | `theorem` | [Spec.locallyRingedSpaceMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-locallyringedspacemap-id--4bbe9c4ef2bbcf85cd71ea16.md) | 282 | `result-track:4bbe9c4ef2bbcf85cd71ea16a6808154ba9a120d391b8f5dffc9a38c4fb0a997` |
| 22 | `theorem` | [Spec.locallyRingedSpaceMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-locallyringedspacemap-comp--c425f0f77e0c3535e1b0782b.md) | 289 | `result-track:c425f0f77e0c3535e1b0782bbfda90169c9ba69c940d591a915c98476f61b6b9` |
| 23 | `def` | [Spec.toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-tolocallyringedspace--68bc4fbe8206ffc1d671d009.md) | 300 | `declaration-track:68bc4fbe8206ffc1d671d0090979764fbfb52bf9a8ff14693a91376262842534` |
| 24 | `def` | [toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/tospec--eb6d264f20976b24bdce43c4.md) | 314 | `declaration-track:eb6d264f20976b24bdce43c48bf74fbae956e662589410dcdbe076f269ad90ae` |
| 25 | `instance` | [isIso_toSpecΓ](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/isiso-tospec--e5ad766f96abdb124b82ac44.md) | 319 | `declaration-track:e5ad766f96abdb124b82ac44130c55d4a352d20a1416ad02f5fade8868618ca1` |
| 26 | `theorem` | [Spec_Γ_naturality](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-naturality--4953be41dca4ef8aa4848af2.md) | 325 | `result-track:4953be41dca4ef8aa4848af2a3aa875157bde74c21fe1f2fd44136466405b8f0` |
| 27 | `def` | [SpecΓIdentity](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-identity--5e198cc7961e6d50b33ede42.md) | 335 | `declaration-track:5e198cc7961e6d50b33ede4262d639c396b0281d58a545fe5bdfa9b854ed3ffc` |
| 28 | `theorem` | [Spec_map_localization_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/spec-map-localization-isiso--fb7ef5f68d65aa3c1c6b7449.md) | 346 | `result-track:fb7ef5f68d65aa3c1c6b7449c163790a4c92f46348808190c4baaf75a5390e9b` |
| 29 | `def` | [toPushforwardStalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/topushforwardstalk--2a109505e4bd8f1a8cf494f2.md) | 371 | `declaration-track:2a109505e4bd8f1a8cf494f2705a435e4219a9be67912d88e556362076e96389` |
| 30 | `theorem` | [toPushforwardStalk_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/topushforwardstalk-comp--dc9d01cc85e88858db62d400.md) | 378 | `result-track:dc9d01cc85e88858db62d400f53d02421b1069e90a447ffd18a4a2976a4f7469` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/instance--96c4f0f475c4d89563598d3a.md) | 389 | `declaration-track:96c4f0f475c4d89563598d3abb0c0ef29980c24e59c7a3fce17670f9c630cb36` |
| 32 | `theorem` | [algebraMap_pushforward_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/algebramap-pushforward-stalk--6d8ca51793359cdc85926a7f.md) | 392 | `result-track:6d8ca51793359cdc85926a7f34d20ea6057bedd90a106e8120a1472bbcae2a83` |
| 33 | `def` | [toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/topushforwardstalkalghom--8257fd524dd1d041fec6f036.md) | 407 | `declaration-track:8257fd524dd1d041fec6f03657d05d697c358fbfd1873a0cf8a415d6c11123b4` |
| 34 | `theorem` | [isLocalizedModule_toPushforwardStalkAlgHom_aux](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/islocalizedmodule-topushforwardstalkalghom-aux--92d0318fa4f89a0f942ddf60.md) | 413 | `result-track:92d0318fa4f89a0f942ddf60d67e7af42936df169ecede3ab013bed9081ad08b` |
| 35 | `instance` | [isLocalizedModule_toPushforwardStalkAlgHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Spec/Variant80836bae6f83b0344cb4edb12fa86148fd150eaf0ac39ae6f3104cd2b20a9ecb.lean/declarations/islocalizedmodule-topushforwardstalkalghom--fb66aabfe8d14575363f3317.md) | 448 | `declaration-track:fb66aabfe8d14575363f3317795986088ec8cd4cd07328cfead700b1142d2133` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
