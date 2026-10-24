# Verification target: GRWTSK.Geometry.AlgebraicGeometry.PullbackCarrier.Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5fd49d784d6617cd0f916ec886ef77fff4919f3",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5fd49d784d6617cd0f916ec886ef77fff4919f3`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.LinearAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.ResidueField` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Triplet](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/triplet--c9d577da96efb1fc2a92459a.md) | 37 | `declaration-track:c9d577da96efb1fc2a92459a33c22aa4b8d740cb0551a7d8179acdef9c0eead7` |
| 2 | `lemma` | [ext](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/ext--95bf345924415045fddf9093.md) | 52 | `result-track:95bf345924415045fddf9093adc5a07463d4edeef19437fe4294948e26cfa15d` |
| 3 | `def` | [mk'](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/mk--ed0295d7fdcbc69d8ad2ce49.md) | 57 | `declaration-track:ed0295d7fdcbc69d8ad2ce4915c9f055c5eb87c924240e48e95e7b48dc726cba` |
| 4 | `def` | [tensor](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensor--b70ceaf37db307dc5ab2537a.md) | 65 | `declaration-track:b70ceaf37db307dc5ab2537a4d1322689fcc3104fc3ddf1a6e6de97acc6847f4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/instance--ba459bae76dd171688aeab6b.md) | 69 | `declaration-track:ba459bae76dd171688aeab6b363941258b330d21377b6a4439c6bb259256f5cb` |
| 6 | `def` | [tensorInl](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensorinl--2465a0e19ff82c97679738c2.md) | 75 | `declaration-track:2465a0e19ff82c97679738c236f5fd57c40d92bffc8377cb01e5286f5f9bd83a` |
| 7 | `def` | [tensorInr](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensorinr--8a64056877c1c8d53d46ed1f.md) | 79 | `declaration-track:8a64056877c1c8d53d46ed1fcab2e3616ba7a6f9f90e74cfa811b3d114b0532f` |
| 8 | `lemma` | [Spec_map_tensor_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/spec-map-tensor-ispullback--17efac6a45cd702e1626f20d.md) | 81 | `result-track:17efac6a45cd702e1626f20dec41ceac41159d9aad72c90635bd0d577336cde9` |
| 9 | `def` | [tensorCongr](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensorcongr--6f2de89a1a0e34ec79a3a607.md) | 91 | `declaration-track:6f2de89a1a0e34ec79a3a607925c86703a9f385a6b74b6daeaa1b323d8fb5042` |
| 10 | `lemma` | [tensorCongr_refl](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensorcongr-refl--d047ea4ff1d5257d668a704d.md) | 96 | `result-track:d047ea4ff1d5257d668a704df7de0d7e2f5859e0f021edd755fb5f9a5f49df3b` |
| 11 | `lemma` | [tensorCongr_symm](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensorcongr-symm--d858bee7d2bb1b01cb30bdef.md) | 100 | `result-track:d858bee7d2bb1b01cb30bdef8e7f22c8575f7b4078a8f0850621d3ffedbd9f22` |
| 12 | `lemma` | [tensorCongr_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensorcongr-inv--d0a46c33b1269584c40c9951.md) | 104 | `result-track:d0a46c33b1269584c40c9951b182d1270a2d11d45e1519dbe5a9bcd56429a013` |
| 13 | `lemma` | [tensorCongr_trans](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensorcongr-trans--0e07bc551e66401f50d37894.md) | 108 | `result-track:0e07bc551e66401f50d37894d35d074403437c26e44a49b174779983024b388b` |
| 14 | `lemma` | [tensorCongr_trans_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensorcongr-trans-hom--2379e4125299ba31d873f879.md) | 115 | `result-track:2379e4125299ba31d873f879fd7d2037456cfe7c0ba1bbb652fe92301459a21e` |
| 15 | `lemma` | [Spec_map_tensorInl_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/spec-map-tensorinl-fromspecresiduefield--cfcbdd0bc634b2e3168628f2.md) | 125 | `result-track:cfcbdd0bc634b2e3168628f221b1b348c15a4872d7a9d3774d62f357dbb21544` |
| 16 | `def` | [SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/spectensorto--7ed5e143d5d9a4c3089b0cf0.md) | 136 | `declaration-track:7ed5e143d5d9a4c3089b0cf0f9774141fc79ccf9ba0369528e53b0e3b1a325a8` |
| 17 | `lemma` | [specTensorTo_base_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/spectensorto-base-fst--ad2879fd78e82b0d36d3a5e0.md) | 142 | `result-track:ad2879fd78e82b0d36d3a5e0e756c3bc361a267565810fd6b6dd045e05107b1e` |
| 18 | `lemma` | [specTensorTo_base_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/spectensorto-base-snd--7445571d184770946e456f4b.md) | 149 | `result-track:7445571d184770946e456f4ba08694b2af959c53520d44eae3f9e950e3b33428` |
| 19 | `lemma` | [specTensorTo_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/spectensorto-fst--0c313245484cf19ba6bea8a8.md) | 156 | `result-track:0c313245484cf19ba6bea8a8ba466314c87217ad6661c2718d41bb069e6b0d28` |
| 20 | `lemma` | [specTensorTo_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/spectensorto-snd--8630a8d71942d9eaa1848878.md) | 161 | `result-track:8630a8d71942d9eaa1848878ea9c9524e485a6bb3b2d44ca396d83d25d3a9bd8` |
| 21 | `def` | [ofPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/ofpoint--c333619c11c9d158d8d08692.md) | 168 | `declaration-track:c333619c11c9d158d8d08692324040fec5b419467f3f30a6102957eda9916d6a` |
| 22 | `lemma` | [ofPoint_SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/ofpoint-spectensorto--be2c6ce8453bd146ab737fb9.md) | 173 | `result-track:be2c6ce8453bd146ab737fb90d07ff044143493700b27bf37a89592044fe877f` |
| 23 | `lemma` | [residueFieldCongr_inv_residueFieldMap_ofPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/residuefieldcongr-inv-residuefieldmap-ofpoint--5f5139b6e58d0242a7f1fb4d.md) | 179 | `result-track:5f5139b6e58d0242a7f1fb4d7832e4a09c94c5a57e8e7c075b5624138f00dc73` |
| 24 | `def` | [ofPointTensor](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/ofpointtensor--49ddf0b4ebe4d633b1594e67.md) | 187 | `declaration-track:49ddf0b4ebe4d633b1594e67175178b574408cb2c4154a099e8fce052d7d934b` |
| 25 | `lemma` | [ofPointTensor_SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/ofpointtensor-spectensorto--c08885f9d8a15d5075ddfec4.md) | 195 | `result-track:c08885f9d8a15d5075ddfec46411b7481852455166829fd7c400c29c6c32c9e1` |
| 26 | `def` | [SpecOfPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/specofpoint--cbf35b192c4eeaba3704ad22.md) | 210 | `declaration-track:cbf35b192c4eeaba3704ad22cf14bfc89beeee8a439c8f16d66c157603ab2faf` |
| 27 | `lemma` | [SpecTensorTo_SpecOfPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/spectensorto-specofpoint--24b2faf44c903f4dc2bd2e6e.md) | 214 | `result-track:24b2faf44c903f4dc2bd2e6ee9b64069795d13076092931b42ee9ce06626fa81` |
| 28 | `lemma` | [tensorCongr_SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/tensorcongr-spectensorto--09637e9a71bbe75a5799e91d.md) | 219 | `result-track:09637e9a71bbe75a5799e91dc201097b865c8488180f316e4c78df08fc61727b` |
| 29 | `lemma` | [Triplet.Spec_ofPointTensor_SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/triplet-spec-ofpointtensor-spectensorto--58195521a725effb49e48903.md) | 224 | `result-track:58195521a725effb49e489031db96ec7b0ad41fff605870af2b07c8dd2146381` |
| 30 | `lemma` | [carrierEquiv_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/carrierequiv-eq-iff--18565772192dd7fc0bc72c37.md) | 238 | `result-track:18565772192dd7fc0bc72c3764283f7fbb9ac09a2993d1591d3fa9102be5f07e` |
| 31 | `def` | [carrierEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/carrierequiv--ca1696cc26e732141e118043.md) | 253 | `declaration-track:ca1696cc26e732141e118043a27209928c34d910dce0631ec039fc965d661211` |
| 32 | `lemma` | [carrierEquiv_symm_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/carrierequiv-symm-fst--36c67476652711e3b89bac94.md) | 269 | `result-track:36c67476652711e3b89bac94d4958b8adf8973d77edc525453bf5e38cbe5c535` |
| 33 | `lemma` | [carrierEquiv_symm_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/carrierequiv-symm-snd--8f5f9e99ee6d4398a0054498.md) | 274 | `result-track:8f5f9e99ee6d4398a00544981d3bf9110031d58442801ead36e42c9981bf443a` |
| 34 | `lemma` | [Triplet.exists_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/triplet-exists-preimage--9d43287c66b43db50d9fa0bf.md) | 281 | `result-track:9d43287c66b43db50d9fa0bfe6cac90dad895758feb4db07f58563def9fa27a5` |
| 35 | `lemma` | [exists_preimage_pullback](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/exists-preimage-pullback--d3677f172bc8bc0cb8202700.md) | 293 | `result-track:d3677f172bc8bc0cb8202700d6c8d2303bfa7737d024b69ce666488187eea62a` |
| 36 | `lemma` | [_root_.AlgebraicGeometry.Scheme.isEmpty_pullback_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/root-algebraicgeometry-scheme-isempty-pullback-iff--fc17c775bf231afef71cceb0.md) | 298 | `result-track:fc17c775bf231afef71cceb014bf308f64958e0a9352c425dad16a123ec62726` |
| 37 | `lemma` | [range_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/range-fst--a018358de0d5da6ba372e993.md) | 309 | `result-track:a018358de0d5da6ba372e99316ea96ef452e907c9d941a766569895eedb0fcb8` |
| 38 | `lemma` | [range_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/range-snd--6feae5d186040e96ba5f61db.md) | 318 | `result-track:6feae5d186040e96ba5f61dbe95c57df8b64bf49352c1dae4aba41735399f410` |
| 39 | `lemma` | [range_fst_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/range-fst-comp--f7239dc275eac9bd974fccd6.md) | 327 | `result-track:f7239dc275eac9bd974fccd6f7d9d1535780f5e306ed9d1961d868e10e772f60` |
| 40 | `lemma` | [range_snd_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/range-snd-comp--b97afe35a9d50193b8569312.md) | 331 | `result-track:b97afe35a9d50193b8569312a8d01208d3433dd4867c3ac1b8f49a08dc1ef765` |
| 41 | `lemma` | [range_map](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/range-map--e0fcd9ee65a8cb915ea6a50d.md) | 335 | `result-track:e0fcd9ee65a8cb915ea6a50d642b4ffd5e4e2196009b312f996fc7ef358dcad9` |
| 42 | `instance` | [isJointlySurjectivePreserving](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/isjointlysurjectivepreserving--1d2a9fbfb442a6c68073d374.md) | 365 | `declaration-track:1d2a9fbfb442a6c68073d3744d70fa1fdb953277390ce4b7897c97c317180743` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/instance--cd15de675a3898948bad81a3.md) | 375 | `declaration-track:cd15de675a3898948bad81a3f0eceee07a212cf73ed334cf8fd8908c98528f78` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/instance--b9abc534a5f1109a2745a944.md) | 381 | `declaration-track:b9abc534a5f1109a2745a9441332b5d567f97fea2af65c57229bdf2b2b6b9467` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.lean/declarations/instance--80822098f052672f9fbe9c7d.md) | 385 | `declaration-track:80822098f052672f9fbe9c7d77c82f74db97fa5543bfe100b14a19d6a5000e36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
