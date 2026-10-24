# Verification target: GRWTSK.Geometry.AlgebraicGeometry.PullbackCarrier.Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3f7d41c291f01b5ea34ea2dd12b8f3b39d04598",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3f7d41c291f01b5ea34ea2dd12b8f3b39d04598`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.LinearAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.ResidueField` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Triplet](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/triplet--e3836698d81d46f0b4283ccb.md) | 45 | `declaration-track:e3836698d81d46f0b4283ccb8e1f1335ca354d8017068ffc2d122659ae3a757e` |
| 2 | `lemma` | [ext](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/ext--30ffaa4362a8c6a6a178d4ef.md) | 60 | `result-track:30ffaa4362a8c6a6a178d4ef6231c6503c7bc911883cfc19fce797454b71433b` |
| 3 | `def` | [mk'](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/mk--cc6743e7591b25054cb2974c.md) | 65 | `declaration-track:cc6743e7591b25054cb2974ce16eae5b8bffc5adafa122dbd449b103fd48b22f` |
| 4 | `def` | [tensor](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensor--96faa3d3e4b91bf1c7e681fc.md) | 73 | `declaration-track:96faa3d3e4b91bf1c7e681fc821f7f584a248d8d08b28e272ec85c456b6dc616` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/instance--410ff33058105a3920d63284.md) | 77 | `declaration-track:410ff33058105a3920d63284549f52436ad74a94da78a7b03a8a2fe12a16ae82` |
| 6 | `def` | [tensorInl](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensorinl--e1ebeaad6be0eb0678588498.md) | 83 | `declaration-track:e1ebeaad6be0eb06785884982ed9f4a0ebc4a5a85fb675e29cf1203a7958fdd3` |
| 7 | `def` | [tensorInr](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensorinr--e130bbbb7e43a48d8a8bc1e8.md) | 87 | `declaration-track:e130bbbb7e43a48d8a8bc1e8b9c2637a56f50ec0a39bfdbc4987965f5cf4ece1` |
| 8 | `lemma` | [Spec_map_tensor_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/spec-map-tensor-ispullback--743dae627f8f9b164713e073.md) | 89 | `result-track:743dae627f8f9b164713e073da5ad132979072d17ee35323464d1c27a6391fa5` |
| 9 | `def` | [tensorCongr](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensorcongr--d704ea3965f53df655e5fe27.md) | 99 | `declaration-track:d704ea3965f53df655e5fe27442ca092872cdb06668332d5a6abea88463d3506` |
| 10 | `lemma` | [tensorCongr_refl](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensorcongr-refl--00d9cd50781305c8912e01a1.md) | 104 | `result-track:00d9cd50781305c8912e01a1e37286d0a0b2a64b4c514d235feb1cde486b4d7c` |
| 11 | `lemma` | [tensorCongr_symm](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensorcongr-symm--14d8e0ca6e38030023e2f0d3.md) | 108 | `result-track:14d8e0ca6e38030023e2f0d3f7fad78ae955f339dc6f1a0d70db791b61372754` |
| 12 | `lemma` | [tensorCongr_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensorcongr-inv--eaa0745b208a8b87a6abdc08.md) | 112 | `result-track:eaa0745b208a8b87a6abdc0823fb3a3f0dd0f35e2a38cc8ad52ca4486dcb659e` |
| 13 | `lemma` | [tensorCongr_trans](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensorcongr-trans--095d597295a1afad51770c3e.md) | 116 | `result-track:095d597295a1afad51770c3e4dc3065f8f774a3ae08509f96f4abf0a8113467f` |
| 14 | `lemma` | [tensorCongr_trans_hom](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensorcongr-trans-hom--cbf8de8c528e8da6aa6b11cf.md) | 123 | `result-track:cbf8de8c528e8da6aa6b11cf90f33a8f73382f276c58f8e1df344c8fd970297e` |
| 15 | `lemma` | [Spec_map_tensorInl_fromSpecResidueField](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/spec-map-tensorinl-fromspecresiduefield--a3abefdbbe96df85452a39fb.md) | 133 | `result-track:a3abefdbbe96df85452a39fb790216e33887505f82f08f8601d867ebdc1fe59a` |
| 16 | `def` | [SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/spectensorto--479a822ba627af72b2fe0d59.md) | 144 | `declaration-track:479a822ba627af72b2fe0d59c9cc2d0f36a9bb77f4442d668128b2abc9f34fd4` |
| 17 | `lemma` | [specTensorTo_base_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/spectensorto-base-fst--930f26d1156d85898edb4b76.md) | 150 | `result-track:930f26d1156d85898edb4b76f189ec2c1e2fa2af809402344dbc185419757e76` |
| 18 | `lemma` | [specTensorTo_base_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/spectensorto-base-snd--4ca36957f4281deaf10bfd72.md) | 157 | `result-track:4ca36957f4281deaf10bfd72c90709363394752a4b73b71754a90119e8970e94` |
| 19 | `lemma` | [specTensorTo_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/spectensorto-fst--628dfbfda9f7c605276a1f01.md) | 164 | `result-track:628dfbfda9f7c605276a1f01fbc5abaf7308a86f1157c70ce6900fb954ecb6a9` |
| 20 | `lemma` | [specTensorTo_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/spectensorto-snd--659409fb17e477ff5ea332df.md) | 169 | `result-track:659409fb17e477ff5ea332df30daff335116671b7c9e765671b491cab22df8da` |
| 21 | `def` | [ofPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/ofpoint--5788257aecb84e11b9a3d989.md) | 176 | `declaration-track:5788257aecb84e11b9a3d9897b9a749f23148741d52ae1b41f7d0c5f4007b378` |
| 22 | `lemma` | [ofPoint_SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/ofpoint-spectensorto--7ccc1a204e9de64a52dafbb5.md) | 181 | `result-track:7ccc1a204e9de64a52dafbb58111e6593c96da4545ae7b6ad0a132c1c2d621f3` |
| 23 | `lemma` | [residueFieldCongr_inv_residueFieldMap_ofPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/residuefieldcongr-inv-residuefieldmap-ofpoint--7fc0e562c7a03bb6bd251dcb.md) | 187 | `result-track:7fc0e562c7a03bb6bd251dcbc9f0b1e2f0fd2c18d75169def7bc0eff17111362` |
| 24 | `def` | [ofPointTensor](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/ofpointtensor--b011ba211a97d199ed16e135.md) | 195 | `declaration-track:b011ba211a97d199ed16e135887f898bc362caddd9995f2551980ab7418555ac` |
| 25 | `lemma` | [ofPointTensor_SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/ofpointtensor-spectensorto--0c110174535bbb848d457456.md) | 203 | `result-track:0c110174535bbb848d457456e22aa4738c4c5e0811bb787b0ba6bd0ddc73f154` |
| 26 | `def` | [SpecOfPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/specofpoint--bdf67d02cd97a5fece4b3d2a.md) | 218 | `declaration-track:bdf67d02cd97a5fece4b3d2a6258386f5b4da60ef37568731e35bb591d72ca94` |
| 27 | `lemma` | [SpecTensorTo_SpecOfPoint](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/spectensorto-specofpoint--18b2fa9333479d4d59aca78d.md) | 222 | `result-track:18b2fa9333479d4d59aca78d9f9a315a50dc5ad3fb16b7a27859fdcd9cedf944` |
| 28 | `lemma` | [tensorCongr_SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/tensorcongr-spectensorto--6955a2ac2468019c6a6c7cdc.md) | 227 | `result-track:6955a2ac2468019c6a6c7cdc3385b2b52604671155cfa4c6db2209cde36bd104` |
| 29 | `lemma` | [Triplet.Spec_ofPointTensor_SpecTensorTo](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/triplet-spec-ofpointtensor-spectensorto--d137756698a4b5b752e660c9.md) | 232 | `result-track:d137756698a4b5b752e660c9309534f0328b2bec938fb923072b91b28875b166` |
| 30 | `lemma` | [carrierEquiv_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/carrierequiv-eq-iff--8a95f4933398d3d22a9017b1.md) | 246 | `result-track:8a95f4933398d3d22a9017b16c02940ee2808adafd4d26dd2a76c19ba4e8a57a` |
| 31 | `def` | [carrierEquiv](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/carrierequiv--540ac3ab7810aebb67e79f88.md) | 261 | `declaration-track:540ac3ab7810aebb67e79f88a142b8336594b68acedf5574a1ca4d676616d588` |
| 32 | `lemma` | [carrierEquiv_symm_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/carrierequiv-symm-fst--dafc6975d56f299b8f6f71e3.md) | 277 | `result-track:dafc6975d56f299b8f6f71e3e60c07715b0d63e765930460169b0d8abaf3bb75` |
| 33 | `lemma` | [carrierEquiv_symm_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/carrierequiv-symm-snd--7eddcd998b6c70da9f818ab1.md) | 282 | `result-track:7eddcd998b6c70da9f818ab1b35ce5f1075ada2c98642339d446743ecf25770c` |
| 34 | `lemma` | [Triplet.exists_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/triplet-exists-preimage--5713a6fde9a2a9b14a39247e.md) | 289 | `result-track:5713a6fde9a2a9b14a39247ecece1c0634dd54019b67baf409f12d27a1d0f783` |
| 35 | `lemma` | [exists_preimage_pullback](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/exists-preimage-pullback--ec5240b931eaa889efcb3be2.md) | 301 | `result-track:ec5240b931eaa889efcb3be2072315c68d9cf660d4e3a776577c9d758e25bbd2` |
| 36 | `lemma` | [_root_.GRWTSK.Geometry.AlgebraicGeometry.Triplet.Variantd5aa19ed9fbdc74d31d7c4b914021f583c7cfa25d15a8d4f79ab1ae52445d6b6.AlgebraicGeometry.Scheme.isEmpty_pullback_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/root-grwtsk-geometry-algebraicgeometry-triplet-variantd5aa19ed9fbdc74d31--fc6dc16c340e519db159f018.md) | 306 | `result-track:fc6dc16c340e519db159f018a583f8a96af79e3115af5b4198eb864ed7c84aeb` |
| 37 | `lemma` | [range_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/range-fst--37019dd811deb2bf01d25876.md) | 317 | `result-track:37019dd811deb2bf01d25876b3ef66b632ebf587a66d728710368da4b445e85b` |
| 38 | `lemma` | [range_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/range-snd--460d8c5a4b623edd4fdae3ec.md) | 326 | `result-track:460d8c5a4b623edd4fdae3ec6f02373c224d3411f9d191e9f181759656b6f461` |
| 39 | `lemma` | [range_fst_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/range-fst-comp--d258efd80415da94f70baee1.md) | 335 | `result-track:d258efd80415da94f70baee1ea05fa7110a157f33b0f61415d5d97ab0146d4a8` |
| 40 | `lemma` | [range_snd_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/range-snd-comp--4b5967af9b719b9bf6dc9c45.md) | 339 | `result-track:4b5967af9b719b9bf6dc9c450673d5a678108b21a56109afa0188cbbdc0d999b` |
| 41 | `lemma` | [range_map](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/range-map--f845a743cf30e80d5102dffa.md) | 343 | `result-track:f845a743cf30e80d5102dffa8e6085823a1d4e7fb6f66d527287e9650f59cd01` |
| 42 | `instance` | [isJointlySurjectivePreserving](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/isjointlysurjectivepreserving--55ca8de92d0f246e3abffd64.md) | 373 | `declaration-track:55ca8de92d0f246e3abffd64d962c2e0b49923315c74cb0c30c28cf87d47b95d` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/instance--04170fb1438fcd1502a9d8fd.md) | 383 | `declaration-track:04170fb1438fcd1502a9d8fdf91b168e14488c6565c59883f95be8f16236a1b3` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/instance--83675f52ff60f5b864d674ac.md) | 389 | `declaration-track:83675f52ff60f5b864d674acb840ec9b78f90c5a8261b837cb01bd6ebc1a6457` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/PullbackCarrier/Variante4e8768752dece08dc3cbdc6b71bffbbb97d4bdbc1bf21aeb0872d5451728211.lean/declarations/instance--339212bdb1a152cee03b1870.md) | 393 | `declaration-track:339212bdb1a152cee03b18706b67521201fb88b850757b1f94280b21a73c9a0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
