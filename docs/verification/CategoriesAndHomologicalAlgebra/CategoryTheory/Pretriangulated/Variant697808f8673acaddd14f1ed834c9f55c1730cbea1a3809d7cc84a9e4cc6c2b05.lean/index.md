# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pretriangulated.Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e28435f51d41f5749433645689aec8adb76dd399",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e28435f51d41f5749433645689aec8adb76dd399`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Triangulated.Rotate` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Pretriangulated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/pretriangulated--ea55d0c12e2fe68ad428f685.md) | 67 | `declaration-track:ea55d0c12e2fe68ad428f68572831607929e2e0643061062120b524110e259b0` |
| 2 | `lemma` | [distinguished_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/distinguished-iff-of-iso--26daf569f3fbfc3180f7f1a5.md) | 102 | `result-track:26daf569f3fbfc3180f7f1a5a2758c126b8276ddd5560a715afd0a09ccd11a0e` |
| 3 | `theorem` | [rot_of_dist_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/rot-of-dist-triangle--e868cec0ec11c674573c579d.md) | 109 | `result-track:e868cec0ec11c674573c579d783f84456990ddb78642c314059e26e3fd091129` |
| 4 | `theorem` | [inv_rot_of_dist_triangle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/inv-rot-of-dist-triangle--a1e9ecb4e0f178d9195145c5.md) | 115 | `result-track:a1e9ecb4e0f178d9195145c5e0d59f466f1adc3616007727d72b2a6c088c538d` |
| 5 | `theorem` | [comp_dist_triangle_mor_zero₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/comp-dist-triangle-mor-zero--5719fa822f6f1f1376cb4223.md) | 130 | `result-track:5719fa822f6f1f1376cb42237405b92ed7caaa20e1a2e9ac9c1f970c89470d79` |
| 6 | `theorem` | [comp_dist_triangle_mor_zero₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/comp-dist-triangle-mor-zero--60f53d5c477964b12f918d9d.md) | 146 | `result-track:60f53d5c477964b12f918d9dfb62d8801582693640bfc1d826216a9a0085b6e6` |
| 7 | `theorem` | [comp_dist_triangle_mor_zero₃₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/comp-dist-triangle-mor-zero--f8dea5c1fdf5bbfd432346d1.md) | 160 | `result-track:f8dea5c1fdf5bbfd432346d119cf2201c36fa3335459a498a0c8c3392eb74ca6` |
| 8 | `lemma` | [distinguished_cocone_triangle₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/distinguished-cocone-triangle--ef3d7c00d7aa895b4ab04773.md) | 167 | `result-track:ef3d7c00d7aa895b4ab0477396401e8dabd030fa9b67a5fbfe46769e9a88d231` |
| 9 | `lemma` | [distinguished_cocone_triangle₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/distinguished-cocone-triangle--ac1acdcdee8bd8c1cfe71a33.md) | 173 | `result-track:ac1acdcdee8bd8c1cfe71a331f9eeee5aa71d6769084ab736cf2535740b8f4a3` |
| 10 | `lemma` | [complete_distinguished_triangle_morphism₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/complete-distinguished-triangle-morphism--439720d9f452538b7ec87271.md) | 185 | `result-track:439720d9f452538b7ec87271a4fea7dcc786aaa72244e16eee037f3f3b2891a6` |
| 11 | `lemma` | [complete_distinguished_triangle_morphism₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/complete-distinguished-triangle-morphism--40ba825ec5f08d21272696f4.md) | 201 | `result-track:40ba825ec5f08d21272696f468e34eb9c07bdd0441e283cbba1567742c64df26` |
| 12 | `lemma` | [contractible_distinguished₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/contractible-distinguished--bd9c19c81abb23d4ab87a24c.md) | 216 | `result-track:bd9c19c81abb23d4ab87a24c14edb9c3a16b1ab957b6f67221f1bf6b33ca96f5` |
| 13 | `lemma` | [contractible_distinguished₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/contractible-distinguished--e450605938b3d3004502f135.md) | 224 | `result-track:e450605938b3d3004502f13537acd86e696887a4bb1256bdb6936ce010978025` |
| 14 | `lemma` | [yoneda_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/yoneda-exact--22cd1eabccfeee2c89d2adc7.md) | 236 | `result-track:22cd1eabccfeee2c89d2adc7a2d050f8f14ee3676fcea8251e78f46d5e9c1284` |
| 15 | `lemma` | [yoneda_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/yoneda-exact--c1a24056f8bbfe52cd288eb0.md) | 242 | `result-track:c1a24056f8bbfe52cd288eb095c106790b0e8707b690e06bb8fc94f019734d61` |
| 16 | `lemma` | [coyoneda_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/coyoneda-exact--469e62722bf5aca02b790d69.md) | 246 | `result-track:469e62722bf5aca02b790d696a0473b14c70f1bb9131572ddc8016ae4924e72a` |
| 17 | `lemma` | [coyoneda_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/coyoneda-exact--87621353536e42ce74538a7b.md) | 252 | `result-track:87621353536e42ce74538a7b4798f86045773abbc6a051d3765a3fadb3c4ae23` |
| 18 | `lemma` | [coyoneda_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/coyoneda-exact--4d44d0a8710f39c73eb6c586.md) | 256 | `result-track:4d44d0a8710f39c73eb6c586dcc4afe3cf4065b70bb7f6d00fe257f5ea84187f` |
| 19 | `lemma` | [mor₃_eq_zero_iff_epi₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-iff-epi--0673ef6d46285f0de756692a.md) | 260 | `result-track:0673ef6d46285f0de756692a11c19c836966d4ad3aa8899a588703b6cf91ded4` |
| 20 | `lemma` | [mor₂_eq_zero_iff_epi₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-iff-epi--517b42e73f0afb36a4a32587.md) | 270 | `result-track:517b42e73f0afb36a4a32587ad567020921416f5a5fb9c117257bc3590abcb6f` |
| 21 | `lemma` | [mor₁_eq_zero_iff_epi₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-iff-epi--680fc4023d649de49a8af775.md) | 275 | `result-track:680fc4023d649de49a8af775b3cd971dccbf793e1ebeaad058e4039dd3887b6f` |
| 22 | `lemma` | [mor₃_eq_zero_of_epi₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-of-epi--dd7d9a99ea8dc01ad28b66e4.md) | 285 | `result-track:dd7d9a99ea8dc01ad28b66e4052211ff2808f46b67f79055a7168a2a411b79c5` |
| 23 | `lemma` | [mor₂_eq_zero_of_epi₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-of-epi--c4f72998994ee5fb68bff67c.md) | 286 | `result-track:c4f72998994ee5fb68bff67c3168cadde817aa8e4528e2d3fa502d116300a7a8` |
| 24 | `lemma` | [mor₁_eq_zero_of_epi₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-of-epi--5873ba5f1a1e7e5c97d4afb8.md) | 287 | `result-track:5873ba5f1a1e7e5c97d4afb8f270a5e743cec360c93dfd3f7d030c123afe1b6b` |
| 25 | `lemma` | [epi₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/epi--e6c96c5391c18bf57327774e.md) | 289 | `result-track:e6c96c5391c18bf57327774e3b5ea7e1e3922ba05a2b71bb31bfbb156e636b65` |
| 26 | `lemma` | [epi₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/epi--7cc0642f46d963c4efe68a6a.md) | 290 | `result-track:7cc0642f46d963c4efe68a6ab97dcf427ecfae98fd7b2d8690a3015b9592f711` |
| 27 | `lemma` | [epi₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/epi--0313434faaa4af70674fac7a.md) | 291 | `result-track:0313434faaa4af70674fac7a02cd20116e19821b38471f90456af4bbf6fe14c1` |
| 28 | `lemma` | [mor₁_eq_zero_iff_mono₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-iff-mono--f35cb70506aa6822a0a8637b.md) | 293 | `result-track:f35cb70506aa6822a0a8637bf50232153a9a2c6dca4db4c6c03f072205ad2f27` |
| 29 | `lemma` | [mor₂_eq_zero_iff_mono₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-iff-mono--add5c1fe432ab21cbf380ae8.md) | 303 | `result-track:add5c1fe432ab21cbf380ae84850f71f6f2f5b7d2c0835bfcfb2cff30380b081` |
| 30 | `lemma` | [mor₃_eq_zero_iff_mono₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-iff-mono--de186138d714278c9c3e7d9a.md) | 306 | `result-track:de186138d714278c9c3e7d9af50d11cb815b2ebff6c7bdfd65d589729f3661da` |
| 31 | `lemma` | [mor₁_eq_zero_of_mono₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-of-mono--692e3fccf1d4c0d7c4af7c56.md) | 316 | `result-track:692e3fccf1d4c0d7c4af7c560cc6f197040af91ea3d2bc111b0d1201bcd8f27a` |
| 32 | `lemma` | [mor₂_eq_zero_of_mono₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-of-mono--6661c9eb55caca896c61ee31.md) | 317 | `result-track:6661c9eb55caca896c61ee317480c52d64a735f6c73bebd64ef3c16ccaf6a5b4` |
| 33 | `lemma` | [mor₃_eq_zero_of_mono₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mor-eq-zero-of-mono--7d1f360d2df6957842b41eb4.md) | 318 | `result-track:7d1f360d2df6957842b41eb4038f5944111de53a6a3e2953622cd39d8a6881b2` |
| 34 | `lemma` | [mono₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mono--767e4fc542616e92f72f3307.md) | 320 | `result-track:767e4fc542616e92f72f33079335636b67d05f47339b693bd99821298dab4e39` |
| 35 | `lemma` | [mono₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mono--a0da2bed2c21b69ac35bfd4d.md) | 321 | `result-track:a0da2bed2c21b69ac35bfd4dfd4149ad867969a29d44cdf23cebd503b4a9d2fb` |
| 36 | `lemma` | [mono₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/mono--e5e34d5893fef2aba806a23a.md) | 322 | `result-track:e5e34d5893fef2aba806a23afffc55074dbc7218eff11f2f61db9b43b5786729` |
| 37 | `lemma` | [isZero₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-iff--f759b2445ce0ec7cd300dac3.md) | 324 | `result-track:f759b2445ce0ec7cd300dac31b9f35336a3351e7ad52a288990a3023249f5c21` |
| 38 | `lemma` | [isZero₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-iff--fb8c109a1b88b4c9e54f9d64.md) | 332 | `result-track:fb8c109a1b88b4c9e54f9d643d4c916f3d718fc3ded2bfb673b75371448bb1e5` |
| 39 | `lemma` | [isZero₃_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-iff--7776a1f245a757529a4533b4.md) | 338 | `result-track:7776a1f245a757529a4533b46d6ad87cbf4a043311c44a96616a91d718d796de` |
| 40 | `lemma` | [isZero₁_of_isZero₂₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-of-iszero--b3a073c484794835536099cd.md) | 343 | `result-track:b3a073c484794835536099cd211655cf58dbac39211a2ae210c3c6a1de2752bb` |
| 41 | `lemma` | [isZero₂_of_isZero₁₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-of-iszero--1b51429dd1a65cb984ba258c.md) | 347 | `result-track:1b51429dd1a65cb984ba258c1ca6aefb0668e443e2a934c190208ad68ba86b22` |
| 42 | `lemma` | [isZero₃_of_isZero₁₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-of-iszero--c0fef6cda7d7ce7b6d3f4ec6.md) | 351 | `result-track:c0fef6cda7d7ce7b6d3f4ec6ea99460936b2d5af44a5deda048fba964a0bc14c` |
| 43 | `lemma` | [isZero₁_iff_isIso₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-iff-isiso--4458872827c819e4a0714756.md) | 357 | `result-track:4458872827c819e4a0714756504fac84a91b8c69f21fb46e7b0eaecf662edcf6` |
| 44 | `lemma` | [isZero₂_iff_isIso₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-iff-isiso--bb0a78d1599813d7b8268a50.md) | 369 | `result-track:bb0a78d1599813d7b8268a50a1219631faa2994e4aab9a06d0e0a9fcea90933e` |
| 45 | `lemma` | [isZero₃_iff_isIso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-iff-isiso--bde3af3fd282db542886c551.md) | 372 | `result-track:bde3af3fd282db542886c551bdb53ca6ee23ee543ac25e92c64364ce7134f926` |
| 46 | `lemma` | [isZero₁_of_isIso₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-of-isiso--66a9dff80b18ea5de7a247db.md) | 377 | `result-track:66a9dff80b18ea5de7a247db2dcac6b51f686ed22243c59837fd91cb0aea5971` |
| 47 | `lemma` | [isZero₂_of_isIso₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-of-isiso--f08cf0531f4878243d561632.md) | 378 | `result-track:f08cf0531f4878243d5616321121160480691f845c573a9142b7cfedff29ab50` |
| 48 | `lemma` | [isZero₃_of_isIso₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/iszero-of-isiso--c599191f9ce7ccc46ebbc0f8.md) | 379 | `result-track:c599191f9ce7ccc46ebbc0f87c24f690c26501125954fafb055ee4e6584b0b0c` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/instance--7d08ac714458ff4f7c6017b8.md) | 383 | `declaration-track:7d08ac714458ff4f7c6017b8f5df00ce7f10279728b585fedd1d22db1b38e900` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variant697808f8673acaddd14f1ed834c9f55c1730cbea1a3809d7cc84a9e4cc6c2b05.lean/declarations/instance--3c46ce6dd94de09ebffa87aa.md) | 390 | `declaration-track:3c46ce6dd94de09ebffa87aa88b114c84cab5836b03a58fd8280d0f865968916` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
