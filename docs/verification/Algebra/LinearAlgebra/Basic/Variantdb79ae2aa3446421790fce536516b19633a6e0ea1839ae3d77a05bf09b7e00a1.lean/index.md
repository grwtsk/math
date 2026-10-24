# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d2e40a339e1ae5bed9633222717f893e6e03989",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d2e40a339e1ae5bed9633222717f893e6e03989`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Colimit.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Finsupp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Exact` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.CharacterModule` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Injective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Projective` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.DirectSum.TensorProduct` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Small` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Finite` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [_root_.LinearMap.rTensor_injective_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/root-linearmap-rtensor-injective-of-fg--428152c6ba4c99512d85fad9.md) | 83 | `result-track:428152c6ba4c99512d85fad9520098a715c48f0ce0fac2459ecf2f1a3dca7d02` |
| 2 | `lemma` | [_root_.LinearMap.rTensor_injective_iff_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/root-linearmap-rtensor-injective-iff-subtype--588b26d39a61cfe7eceb18b1.md) | 96 | `result-track:588b26d39a61cfe7eceb18b11a2d8b517a18019ddef1cc32c1f42318fb58bde3` |
| 3 | `class` | [Flat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/flat--848c8a2e74ca55d2035414fd.md) | 111 | `declaration-track:848c8a2e74ca55d2035414fd85c4125d5004de0e4d6039a42812c556beb90968` |
| 4 | `theorem` | [rTensor_preserves_injective_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/rtensor-preserves-injective-linearmap--685c03576719884af0ce79dc.md) | 118 | `result-track:685c03576719884af0ce79dc748bc2570099433efe54cd9340d2624745ecfa89` |
| 5 | `theorem` | [lTensor_preserves_injective_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/ltensor-preserves-injective-linearmap--781e07eb825b8cb1a58180d6.md) | 129 | `result-track:781e07eb825b8cb1a58180d60105d09f0aec843fb1e85651948ce1b2d43d1037` |
| 6 | `lemma` | [iff_rTensor_preserves_injective_linearMapₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-rtensor-preserves-injective-linearmap--31f4926ce84e51ed19d9b370.md) | 135 | `result-track:31f4926ce84e51ed19d9b370034ca43d147b6d117149b5900ddf931cc74b1bba` |
| 7 | `lemma` | [iff_lTensor_preserves_injective_linearMapₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-ltensor-preserves-injective-linearmap--c3e39fa3404b0cdd267b27c8.md) | 145 | `result-track:c3e39fa3404b0cdd267b27c89456ae4e24488d9a0c74d046347d927e14b0d3ee` |
| 8 | `lemma` | [iff_rTensor_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-rtensor-injective--6184dc0005a39bf6ed85a83d.md) | 151 | `result-track:6184dc0005a39bf6ed85a83d521c47256c56811fda960014efa8a6c246b01642` |
| 9 | `lemma` | [iff_lTensor_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-ltensor-injective--35d9bcad9bf7bf18ebf8a2d2.md) | 156 | `result-track:35d9bcad9bf7bf18ebf8a2d2cf1b3bd5e56d146bc956148fbbe6aee47c61a5c5` |
| 10 | `instance` | [instSubalgebraToSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/instsubalgebratosubmodule--dfdf318641b6dcc60c123471.md) | 160 | `declaration-track:dfdf318641b6dcc60c1234711caac16454b6e9f681f8b0bac2753466f3c2f242` |
| 11 | `instance` | [self](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/self--91cb4ef9908b1d80dfb5d70e.md) | 163 | `declaration-track:91cb4ef9908b1d80dfb5d70e1be14fa0b10208dde749cd18e45e86589587bbe2` |
| 12 | `lemma` | [of_retract](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/of-retract--c44b4ecf3907f4db3394ef58.md) | 170 | `result-track:c44b4ecf3907f4db3394ef58f1e97270a189d9ef1a822faedde81afe37306733` |
| 13 | `lemma` | [of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/of-linearequiv--ce115875f423145c3843d70f.md) | 179 | `result-track:ce115875f423145c3843d70f80b3bac7989a47c05b867cdc5777b04f0f1ca842` |
| 14 | `lemma` | [equiv_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/equiv-iff--9d27a9970a235ffeb2c55dd8.md) | 184 | `result-track:9d27a9970a235ffeb2c55dd8dd40d020c8a54c6800394b1ecff4f28c1d1e8a8e` |
| 15 | `instance` | [ulift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/ulift--0757dbfd7f12aa9240087b5d.md) | 187 | `declaration-track:0757dbfd7f12aa9240087b5de7189309b5779491157af60ee62f6bdece57ac8b` |
| 16 | `lemma` | [of_ulift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/of-ulift--3a4814c9f8b43469a32d1262.md) | 191 | `result-track:3a4814c9f8b43469a32d12626318e5fb0eabdf1a54ca7adad81f7737e021edcb` |
| 17 | `instance` | [shrink](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/shrink--7d3ad399034e10dda9c40532.md) | 194 | `declaration-track:7d3ad399034e10dda9c405328f08a6ffa1ee90d68e69ce9b2601276232072c6b` |
| 18 | `lemma` | [of_shrink](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/of-shrink--4cf4963bced5d4583fd0b992.md) | 198 | `result-track:4cf4963bced5d4583fd0b99248ac0da4c71674c8755e17c297a81743d7228631` |
| 19 | `theorem` | [directSum_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/directsum-iff--ef049bccbdc3450c9b8e86be.md) | 205 | `result-track:ef049bccbdc3450c9b8e86be5dbd9fb8de80501ef4ced8299f9cc0dbc84fa147` |
| 20 | `theorem` | [dfinsupp_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/dfinsupp-iff--3d77e86201975301e9de08df.md) | 212 | `result-track:3d77e86201975301e9de08df19cfda1478dbe338c5b3872365ea5d906cc760a6` |
| 21 | `instance` | [directSum](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/directsum--291b0e2170a53d42cd149f75.md) | 215 | `declaration-track:291b0e2170a53d42cd149f759bfd6d8c31f9e8c6bdab5a8ca2f8be232a9ac001` |
| 22 | `instance` | [dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/dfinsupp--511ec94091beea8be8528b6d.md) | 217 | `declaration-track:511ec94091beea8be8528b6def50e6e344b1bfc6ef14dd21dd185f0aef4fcc89` |
| 23 | `instance` | [finsupp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/finsupp--46830540ae3790fc3b119265.md) | 222 | `declaration-track:46830540ae3790fc3b119265828331016d0c8d737ecfb8f6e934277b9e06b109` |
| 24 | `instance` | [of_projective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/of-projective--c76b867b2b9efb821080b304.md) | 225 | `declaration-track:c76b867b2b9efb821080b3049c2fd4bdddd4e4b64af2cc9bdc6cb8d0e4b520cb` |
| 25 | `instance` | [of_free](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/of-free--338a75688b1f0e29d77053c4.md) | 231 | `declaration-track:338a75688b1f0e29d77053c47f3b8dd1c0823af9dc04b182e24571418ef7938c` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/instance--2402615033d30e0ba77c1eeb.md) | 233 | `declaration-track:2402615033d30e0ba77c1eeb425762bc5738d13bda75f9841d62e6f6f1d1e9a0` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/example--e4d2ae444b0ae92364ad717b.md) | 243 | `declaration-track:e4d2ae444b0ae92364ad717b53dfa0837a3b43676d7fb832a6b12863f64379dc` |
| 28 | `theorem` | [linearIndependent_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/linearindependent-one-tmul--f28944d94a7af3c16609f6af.md) | 245 | `result-track:f28944d94a7af3c16609f6afa08d0b8a4b0672c6764f46de6c820046cf5edcaa` |
| 29 | `lemma` | [iff_rTensor_preserves_injective_linearMap'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-rtensor-preserves-injective-linearmap--a7695788bc5c340d4a87deb3.md) | 265 | `result-track:a7695788bc5c340d4a87deb392a331c014652b1eb7a7972bb21c3d47396e7df7` |
| 30 | `lemma` | [iff_rTensor_preserves_injective_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-rtensor-preserves-injective-linearmap--e50c38c463fddb8a6a0eba99.md) | 277 | `result-track:e50c38c463fddb8a6a0eba99d6a4dc94597df8f85b0cf195b30de6fb195685ee` |
| 31 | `lemma` | [iff_lTensor_preserves_injective_linearMap'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-ltensor-preserves-injective-linearmap--e5990b073b4f540be293b42d.md) | 285 | `result-track:e5990b073b4f540be293b42de42338b75ecc5cceede1f08164eb67d1a03389e4` |
| 32 | `lemma` | [iff_lTensor_preserves_injective_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-ltensor-preserves-injective-linearmap--6d12a2bd83391d8ab7a32758.md) | 293 | `result-track:6d12a2bd83391d8ab7a3275822f3f88b73b69d4de8e4fd3fe3f2995e35f336ce` |
| 33 | `lemma` | [injective_characterModule_iff_rTensor_preserves_injective_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/injective-charactermodule-iff-rtensor-preserves-injective-linearmap--9e3e41e92a05b972d7d33f88.md) | 303 | `result-track:9e3e41e92a05b972d7d33f88d5d10cc24f6fcca345eff33feff5e41dc35b761f` |
| 34 | `theorem` | [iff_characterModule_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-charactermodule-injective--1660e2c0eec26213f46f7e4f.md) | 311 | `result-track:1660e2c0eec26213f46f7e4f59bcfcb5276727d4effa73d1fb4f029a121cb81e` |
| 35 | `theorem` | [iff_characterModule_baer](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-charactermodule-baer--f3cd419f7616b2da8f1a8276.md) | 317 | `result-track:f3cd419f7616b2da8f1a8276e575c1027cc051c5a733eff8d1865f61f317c4ca` |
| 36 | `theorem` | [iff_rTensor_injective'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-rtensor-injective--db416cf07576ae342c17e458.md) | 324 | `result-track:db416cf07576ae342c17e458531b950b675a756b975f11e4897176228da2ed16` |
| 37 | `theorem` | [iff_lTensor_injective'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-ltensor-injective--e17fc0ed271244e974640f3a.md) | 331 | `result-track:e17fc0ed271244e974640f3ad168428f9596dba6e1f70c2c05e11b2f6eb601ec` |
| 38 | `lemma` | [iff_rTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-rtensor-injective--e10c479375161e031d70115a.md) | 338 | `result-track:e10c479375161e031d70115a0b2f22a5c9baf36ed63f2384066cd857ccffcc3f` |
| 39 | `theorem` | [iff_lTensor_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-ltensor-injective--d457db776101b94df9f7cf21.md) | 347 | `result-track:d457db776101b94df9f7cf212fa92e2b9ad8ec6fd6bd116adf14feb045ae2e38` |
| 40 | `lemma` | [iff_lift_lsmul_comp_subtype_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-lift-lsmul-comp-subtype-injective--c9dfe0954d44fbe7fa80656f.md) | 353 | `result-track:c9dfe0954d44fbe7fa80656f00b972d9bb3399d1518f0451395792b175ec1752` |
| 41 | `lemma` | [lTensor_exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/ltensor-exact--a4c35fc9692c2e1f30118c2b.md) | 359 | `result-track:a4c35fc9692c2e1f30118c2b9a549a06aa2ca6ad63e8211624f4d6ce85291692` |
| 42 | `lemma` | [rTensor_exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/rtensor-exact--a392f5693508167c66d36215.md) | 376 | `result-track:a392f5693508167c66d36215f9ee16297af8c807669f5ca20db966a1f81780de` |
| 43 | `theorem` | [iff_lTensor_exact'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-ltensor-exact--7055a7afb61fec038bd32ac6.md) | 393 | `result-track:7055a7afb61fec038bd32ac6af4bc14d95d1f7c672a4eafb2c0bb387e6e78d01` |
| 44 | `theorem` | [iff_lTensor_exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-ltensor-exact--db77213d1c38185f658b2251.md) | 407 | `result-track:db77213d1c38185f658b22514cc15ad9d63c24e496b0273574c8eec3aa43e20e` |
| 45 | `theorem` | [iff_rTensor_exact'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-rtensor-exact--226a95adcaef84f230e248e9.md) | 415 | `result-track:226a95adcaef84f230e248e93c00680d24cb79d8a7e30b4fa726ddd8b302b810` |
| 46 | `theorem` | [iff_rTensor_exact](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/iff-rtensor-exact--17de2b65a32eaa11eb65f59a.md) | 429 | `result-track:17de2b65a32eaa11eb65f59ad40efbf08f6ba1a75904479ffdfe572f16aa7acc` |
| 47 | `theorem` | [includeLeft_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/includeleft-injective--422bbb7843ef82904e751799.md) | 446 | `result-track:422bbb7843ef82904e75179972c8dd4f9182aa97942c9d7b72a51fa77f862a7c` |
| 48 | `theorem` | [includeRight_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/includeright-injective--984f6d77bace49f47499d576.md) | 452 | `result-track:984f6d77bace49f47499d5760f519ae5e4268d3bcbe1094ef3274101cfe6f57c` |
| 49 | `theorem` | [nontrivial_of_linearMap_injective_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/nontrivial-of-linearmap-injective-of-flat-left--abc764291bf20b874f9aae2f.md) | 472 | `result-track:abc764291bf20b874f9aae2f6f4a3cbd3075135545b90ee4c6573977780a5e54` |
| 50 | `theorem` | [nontrivial_of_linearMap_injective_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/nontrivial-of-linearmap-injective-of-flat-right--8fa64fee96757bc891297e91.md) | 479 | `result-track:8fa64fee96757bc891297e91206cfdd84042a722435f3aa4378a3909765470c5` |
| 51 | `lemma` | [map_injective_of_flat_flat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/map-injective-of-flat-flat--186e81a72036443ac2c6bc83.md) | 490 | `result-track:186e81a72036443ac2c6bc83913ac8dfd4d40e87c15dfb3e3a94aeee3fbe3262` |
| 52 | `lemma` | [map_injective_of_flat_flat'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/map-injective-of-flat-flat--c8e7d319ff0e22feb7df32b7.md) | 501 | `result-track:c8e7d319ff0e22feb7df32b7cc70ce6b42edb3c2a0b81acb9a9a050fe726d518` |
| 53 | `lemma` | [_root_.LinearIndependent.tmul_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/root-linearindependent-tmul-of-flat-left--395d4cffcd6378f0c1cfd738.md) | 516 | `result-track:395d4cffcd6378f0c1cfd73880b60263eb72737e7f95ac3f90172968388b43d1` |
| 54 | `lemma` | [LinearIndepOn.tmul_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/linearindepon-tmul-of-flat-left--7ff3f002cb8ebec3ed9f69d1.md) | 531 | `result-track:7ff3f002cb8ebec3ed9f69d1b8e563ca908ffb3ef5883f0fa3c7d0f61177758f` |
| 55 | `lemma` | [_root_.LinearIndependent.tmul_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/root-linearindependent-tmul-of-flat-right--8db78f5dfa366cbea9d40c4f.md) | 540 | `result-track:8db78f5dfa366cbea9d40c4fb6fff8fbee1a1570131e141d7f526adffa121a5a` |
| 56 | `lemma` | [LinearIndepOn.tmul_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/linearindepon-tmul-of-flat-right--fdbbb0a70733df0fdf2868fc.md) | 551 | `result-track:fdbbb0a70733df0fdf2868fc23cf0d7453e8187664b0605c51adff3a4d706249` |
| 57 | `theorem` | [_root_.Module.Flat.tensorProduct_mapIncl_injective_of_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/root-module-flat-tensorproduct-mapincl-injective-of-right--c3ffad2af263e5f986792ac0.md) | 559 | `result-track:c3ffad2af263e5f986792ac0662e1df87be330a74e15f1d361afcaa1685a8bf8` |
| 58 | `theorem` | [_root_.Module.Flat.tensorProduct_mapIncl_injective_of_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/root-module-flat-tensorproduct-mapincl-injective-of-left--48c7fb332c47e35854c4a528.md) | 565 | `result-track:48c7fb332c47e35854c4a5289677369a66544b84b030329ef73a2433fe3134b8` |
| 59 | `theorem` | [nontrivial_of_algebraMap_injective_of_flat_left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/nontrivial-of-algebramap-injective-of-flat-left--ac171175d83fbc750af9b56b.md) | 577 | `result-track:ac171175d83fbc750af9b56be823ef2a2b60c21b29bb73aa2c16054e923a68c2` |
| 60 | `theorem` | [nontrivial_of_algebraMap_injective_of_flat_right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantdb79ae2aa3446421790fce536516b19633a6e0ea1839ae3d77a05bf09b7e00a1.lean/declarations/nontrivial-of-algebramap-injective-of-flat-right--ad145d2d635b71d37a70e360.md) | 583 | `result-track:ad145d2d635b71d37a70e360745283eb03dda455e92e0ee65d0ef246b6de5500` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
