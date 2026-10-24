# Verification target: GRWTSK.Analysis.TwoDim.Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e93594459a7c90848da7218b4b567acd48d19682",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/index.md) · [Full source](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e93594459a7c90848da7218b4b567acd48d19682`.

Source path: `GRWTSK/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Dual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Orientation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Orientation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Alternating.Curry` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [FiniteDimensional.of_fact_finrank_eq_two](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/finitedimensional-of-fact-finrank-eq-two--c26e6c428b31dbfe636202f7.md) | 77 | `result-track:c26e6c428b31dbfe636202f7d16d61657d0505f0038f676d54dbd930b055b591` |
| 2 | `theorem` | [areaForm_to_volumeForm](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-to-volumeform--60d190539e10e519d0b6ae77.md) | 100 | `result-track:60d190539e10e519d0b6ae778d045337acdf43b9e1afbaa584c672fad1464a4a` |
| 3 | `theorem` | [areaForm_apply_self](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-apply-self--8a20f978ae0988686364c7d6.md) | 103 | `result-track:8a20f978ae0988686364c7d63518e324105c94aea998ce7454c8e1da7f057591` |
| 4 | `theorem` | [areaForm_swap](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-swap--2204861fde2739599c897bc4.md) | 109 | `result-track:2204861fde2739599c897bc4e03bb2dea210c8ec812d57297980037820775681` |
| 5 | `theorem` | [areaForm_neg_orientation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-neg-orientation--799dd65ef1bd61b87ca85766.md) | 117 | `result-track:799dd65ef1bd61b87ca857665b55fd1debab37102942fe0b6cdab6a8384b1bf4` |
| 6 | `def` | [areaForm'](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform--1290c78f29c8c5b6b2c8092f.md) | 122 | `declaration-track:1290c78f29c8c5b6b2c8092f6e2039b6c6d101288b35f78257559b1291a61b87` |
| 7 | `theorem` | [areaForm'_apply](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-apply--d7fb0eff38771449dff1a43b.md) | 127 | `result-track:d7fb0eff38771449dff1a43b68c982a5c35078551a256db7c4687e32a7ad6e3f` |
| 8 | `theorem` | [abs_areaForm_le](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/abs-areaform-le--b0e1363a9177b2b4a4bb77b0.md) | 131 | `result-track:b0e1363a9177b2b4a4bb77b0c21edeb23b81641c353b6a0abe3afffa8bdd5144` |
| 9 | `theorem` | [areaForm_le](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-le--5deb8fbc33a4b1a0b66df14d.md) | 134 | `result-track:5deb8fbc33a4b1a0b66df14de269c66eee76499e72b9bb36ff21c4465d1ca2df` |
| 10 | `theorem` | [abs_areaForm_of_orthogonal](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/abs-areaform-of-orthogonal--7ee968f450073de632b672f6.md) | 137 | `result-track:7ee968f450073de632b672f6b6988c223b0102e4e17575f589a8b5ff5880199e` |
| 11 | `theorem` | [areaForm_map](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-map--74d5c13b49418a58f9eb2631.md) | 147 | `result-track:74d5c13b49418a58f9eb2631ea080b420dd20554c63f21640dfea5657bc74e24` |
| 12 | `theorem` | [areaForm_comp_linearIsometryEquiv](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-comp-linearisometryequiv--659f936137c2df754e2eb860.md) | 157 | `result-track:659f936137c2df754e2eb860d57741bbca64085a23a3d664cfc40e41ca6731fd` |
| 13 | `theorem` | [inner_rightAngleRotationAux₁_left](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-rightanglerotationaux-left--3c61290022355ac6fcaaa6ef.md) | 175 | `result-track:3c61290022355ac6fcaaa6ef441084cba83916925cb84be7eca1ad84654dab2b` |
| 14 | `theorem` | [inner_rightAngleRotationAux₁_right](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-rightanglerotationaux-right--3ef5e2325213397107d355bb.md) | 183 | `result-track:3ef5e2325213397107d355bb16d24676c7d2e1199e4961e1016e3222699bd657` |
| 15 | `def` | [rightAngleRotationAux₂](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotationaux--a70ba1da14fe0ef4bcd447cf.md) | 190 | `declaration-track:a70ba1da14fe0ef4bcd447cf17374b97dfeebb9219c29d220c3f2d70ffd0f3d5` |
| 16 | `theorem` | [rightAngleRotationAux₁_rightAngleRotationAux₁](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotationaux-rightanglerotationaux--067d32bb0ea64ef3b9178c86.md) | 219 | `result-track:067d32bb0ea64ef3b9178c8651879f536a36be8e06f7a5aa9d8c65f984ca777a` |
| 17 | `theorem` | [inner_rightAngleRotation_left](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-rightanglerotation-left--de07ed3bfc5029c1f22bdfef.md) | 238 | `result-track:de07ed3bfc5029c1f22bdfefd34b98d081227812d9f7bbeab757b3f5272a7e94` |
| 18 | `theorem` | [inner_rightAngleRotation_right](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-rightanglerotation-right--da97577a1d3a08bea33bac00.md) | 243 | `result-track:da97577a1d3a08bea33bac002673c408d9de973282d4b1132df6bc6831432d81` |
| 19 | `theorem` | [rightAngleRotation_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotation-rightanglerotation--83d95b719c4ac9444a219c23.md) | 248 | `result-track:83d95b719c4ac9444a219c232ee4b2d311b370d8a184a860a951887c4d169988` |
| 20 | `theorem` | [rightAngleRotation_symm](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotation-symm--4b6d713d7ce9b8f75b6a95ab.md) | 253 | `result-track:4b6d713d7ce9b8f75b6a95ab75d2f3646e937bc8027ad9e6982ce79a9468fe77` |
| 21 | `theorem` | [inner_rightAngleRotation_self](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-rightanglerotation-self--4adb0f5d5ac58431b7d10382.md) | 258 | `result-track:4adb0f5d5ac58431b7d1038296c3b387732df29f19840c58d930c38ec86413f2` |
| 22 | `theorem` | [inner_rightAngleRotation_swap](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-rightanglerotation-swap--61675ec4a397cb5b335c9a9f.md) | 260 | `result-track:61675ec4a397cb5b335c9a9f7cf682c78af80a99177271c4afb15b7174b6080d` |
| 23 | `theorem` | [inner_rightAngleRotation_swap'](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-rightanglerotation-swap--259fc645c6992d3e14c5b474.md) | 262 | `result-track:259fc645c6992d3e14c5b47497a043e5ee3c59d7a840123e43fb988bee569616` |
| 24 | `theorem` | [inner_comp_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-comp-rightanglerotation--083d0a75b34cce2a1a9b7341.md) | 265 | `result-track:083d0a75b34cce2a1a9b734151bb46313b05c01224b3780cb3332879a3474581` |
| 25 | `theorem` | [areaForm_rightAngleRotation_left](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-rightanglerotation-left--3033382aa000e72ec3a5f350.md) | 269 | `result-track:3033382aa000e72ec3a5f350d2fe3dcce69806b00545aa8f53f15189a921d8d9` |
| 26 | `theorem` | [areaForm_rightAngleRotation_right](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-rightanglerotation-right--894b9935099ba6f238408e33.md) | 273 | `result-track:894b9935099ba6f238408e3364122412c8f227351b27b13680982843d071a28c` |
| 27 | `theorem` | [areaForm_comp_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-comp-rightanglerotation--2043c28056c0b847fa60a11e.md) | 276 | `result-track:2043c28056c0b847fa60a11ee544ecb8668bfcb996f0d590ff51f76e35a3be72` |
| 28 | `theorem` | [rightAngleRotation_trans_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotation-trans-rightanglerotation--20698035d85a593035190aae.md) | 279 | `result-track:20698035d85a593035190aae64606aa1d748bc98892ce7eece23a692895d2ce3` |
| 29 | `theorem` | [rightAngleRotation_neg_orientation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotation-neg-orientation--caf4fab7ec05e662745833dd.md) | 282 | `result-track:caf4fab7ec05e662745833dd190c22ee267f029ffe5256b2f3fbfbca63043b28` |
| 30 | `theorem` | [rightAngleRotation_trans_neg_orientation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotation-trans-neg-orientation--1d7aa95e87cd1ebd1acec161.md) | 290 | `result-track:1d7aa95e87cd1ebd1acec161c40f44e0c7e5f987bb0ce994a8013c3502afb53a` |
| 31 | `theorem` | [rightAngleRotation_map](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotation-map--5922a6c8c2b89ad42981cacd.md) | 294 | `result-track:5922a6c8c2b89ad42981cacd09d89d7b71a60bd7af6f2471dabcd5860a9025ed` |
| 32 | `theorem` | [linearIsometryEquiv_comp_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/linearisometryequiv-comp-rightanglerotation--514bdbbfaedaf91a91c399f5.md) | 308 | `result-track:514bdbbfaedaf91a91c399f5a430a0883ae15f59c690a88623ecf714f59347dd` |
| 33 | `theorem` | [rightAngleRotation_map'](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotation-map--1e1d9ba1c803585c2a99e6c1.md) | 316 | `result-track:1e1d9ba1c803585c2a99e6c12eb277d954bb2601fcb9158c49890ebde778cbbd` |
| 34 | `theorem` | [linearIsometryEquiv_comp_rightAngleRotation'](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/linearisometryequiv-comp-rightanglerotation--ad5666799bf16e296131c9f1.md) | 323 | `result-track:ad5666799bf16e296131c9f11e461f1a9b7dd047254f646824d7348c77c05558` |
| 35 | `def` | [basisRightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/basisrightanglerotation--4b70408fd1632b669ec9245e.md) | 330 | `declaration-track:4b70408fd1632b669ec9245ec9eca9d62fd32487046873a3624ef2c9edf5335e` |
| 36 | `theorem` | [coe_basisRightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/coe-basisrightanglerotation--93a8afb638b96fa5856abff1.md) | 339 | `result-track:93a8afb638b96fa5856abff1962639f73499c1930b4beeb4f0b4b75df39bd27c` |
| 37 | `theorem` | [inner_mul_inner_add_areaForm_mul_areaForm'](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-mul-inner-add-areaform-mul-areaform--a174ee72f9e83a4ca85e8798.md) | 345 | `result-track:a174ee72f9e83a4ca85e8798886ca14763b50dcf61ea34a0f7b343e157d20aec` |
| 38 | `theorem` | [inner_mul_inner_add_areaForm_mul_areaForm](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-mul-inner-add-areaform-mul-areaform--855e8af6a72d43c898e67e14.md) | 356 | `result-track:855e8af6a72d43c898e67e1466c0b0e721ef46b335d8e951f84a7b042307f3ea` |
| 39 | `theorem` | [inner_sq_add_areaForm_sq](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-sq-add-areaform-sq--0f50d395a57a406e1dd92a24.md) | 360 | `result-track:0f50d395a57a406e1dd92a24d9fc58475e8e4a5b9eca058dcd86e79e2de9ef27` |
| 40 | `theorem` | [inner_mul_areaForm_sub'](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-mul-areaform-sub--17837c77ad5bac66ba422700.md) | 365 | `result-track:17837c77ad5bac66ba422700bf7f4340961c77a715a50a4385bc550b19c2b2e2` |
| 41 | `theorem` | [inner_mul_areaForm_sub](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/inner-mul-areaform-sub--0549f4241ae0f36c3520a992.md) | 375 | `result-track:0549f4241ae0f36c3520a992246c41b85c3823e4e30f65bc4361838b1ce21cd0` |
| 42 | `theorem` | [nonneg_inner_and_areaForm_eq_zero_iff_sameRay](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/nonneg-inner-and-areaform-eq-zero-iff-sameray--d6661a424b6b64188177e21c.md) | 378 | `result-track:d6661a424b6b64188177e21ca9ec473384dfd2aee2a527e6a006b2e9ebf59030` |
| 43 | `def` | [kahler](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler--9b246ca26117b69561e19aab.md) | 409 | `declaration-track:9b246ca26117b69561e19aabeb0d845a7c6df525f2e49a88892806932cd2c9a8` |
| 44 | `theorem` | [kahler_apply_apply](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-apply-apply--15d36a2fe9f7aaa0c4e57012.md) | 413 | `result-track:15d36a2fe9f7aaa0c4e57012089ccb835636d84e221bf8dd62dd62b30946cac4` |
| 45 | `theorem` | [kahler_swap](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-swap--123aef9103fc2741ac65d3c3.md) | 416 | `result-track:123aef9103fc2741ac65d3c3c516ed1e8d38962565ac0ff444df53e0065dd18e` |
| 46 | `theorem` | [kahler_apply_self](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-apply-self--dbaf097d417d5cd8cc65bb9f.md) | 422 | `result-track:dbaf097d417d5cd8cc65bb9f5a569f1989d61bf73d55aa2cea9e9460a13290fa` |
| 47 | `theorem` | [kahler_rightAngleRotation_left](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-rightanglerotation-left--ad355f381d9c33df5337c1e3.md) | 426 | `result-track:ad355f381d9c33df5337c1e3c903226f6ef46c21479aeb7f5a59a72675edf7f8` |
| 48 | `theorem` | [kahler_rightAngleRotation_right](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-rightanglerotation-right--8a779a68ed77b2849f151553.md) | 433 | `result-track:8a779a68ed77b2849f151553021cef1df6f6792a81975059411dcc2cde2f7b1d` |
| 49 | `theorem` | [kahler_comp_rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-comp-rightanglerotation--43c5f092510ab95cae68cf78.md) | 440 | `result-track:43c5f092510ab95cae68cf78a6116822639ab301f49de2dcfbfa4c98dbb4e7ae` |
| 50 | `theorem` | [kahler_comp_rightAngleRotation'](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-comp-rightanglerotation--eb8f4faec371a8e358bdd64c.md) | 444 | `result-track:eb8f4faec371a8e358bdd64c977a7925612971fa7af1c46610b78c9b1db880c5` |
| 51 | `theorem` | [kahler_neg_orientation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-neg-orientation--a11ad0d991a54d2805fc85a4.md) | 449 | `result-track:a11ad0d991a54d2805fc85a47362f4fd448977f79538d8c6b325ad6722aa7d83` |
| 52 | `theorem` | [kahler_mul](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-mul--eef04a3ba5221d5bdfe2ef4a.md) | 452 | `result-track:eef04a3ba5221d5bdfe2ef4a21af62a3bb1b5d5ddb7724513a610eeb0487d8c0` |
| 53 | `theorem` | [normSq_kahler](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/normsq-kahler--e588bc1ebd57726cbfbb2eef.md) | 465 | `result-track:e588bc1ebd57726cbfbb2eefea811ca58b6198037df11db14dcdd8e1ec4bb4ab` |
| 54 | `theorem` | [norm_kahler](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/norm-kahler--90a570cd87464835e583f99d.md) | 468 | `result-track:90a570cd87464835e583f99d9b204b2741ab12b30eb754594f3674d748fa382b` |
| 55 | `theorem` | [eq_zero_or_eq_zero_of_kahler_eq_zero](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/eq-zero-or-eq-zero-of-kahler-eq-zero--877c2a1f7f5fcadca53cb804.md) | 476 | `result-track:877c2a1f7f5fcadca53cb804faecd0933a0653a19ae4a81038e30c220196cd95` |
| 56 | `theorem` | [kahler_eq_zero_iff](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-eq-zero-iff--c12ac51cd1d677d00009fd27.md) | 484 | `result-track:c12ac51cd1d677d00009fd27998ee4f3981aa954196a0c466c6d7435fefb57e5` |
| 57 | `theorem` | [kahler_ne_zero](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-ne-zero--83a9faefa932fdce6f7adac9.md) | 488 | `result-track:83a9faefa932fdce6f7adac9de5c8acf8c5f05d87ee9822c949b9648ad9885ed` |
| 58 | `theorem` | [kahler_ne_zero_iff](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-ne-zero-iff--2a133e333d6ade8ac0a2ae61.md) | 492 | `result-track:2a133e333d6ade8ac0a2ae61153dacbde5fecf194b67c844c9291dcad9f5f8f1` |
| 59 | `theorem` | [kahler_map](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-map--0c016df3c36fc30c14fc246a.md) | 498 | `result-track:0c016df3c36fc30c14fc246af4462437623c74ea81e3d623e574fce81f2fcc99` |
| 60 | `theorem` | [kahler_comp_linearIsometryEquiv](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-comp-linearisometryequiv--188b9db5bdf06ef90e8d27ee.md) | 505 | `result-track:188b9db5bdf06ef90e8d27ee3f0fd82054f16c015464e7997d4dd71760db35d6` |
| 61 | `theorem` | [areaForm](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform--ffa3265a2e8027e8968fc3fd.md) | 517 | `result-track:ffa3265a2e8027e8968fc3fd0932023e9403dda014b10ee290e277395bfc7e8c` |
| 62 | `theorem` | [rightAngleRotation](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotation--28e717d65aeb49886be690c6.md) | 526 | `result-track:28e717d65aeb49886be690c66f9e3036ff44dc20751da1215df177d3aa359567` |
| 63 | `theorem` | [kahler](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler--491fe88bfb81a99079d5bf1f.md) | 536 | `result-track:491fe88bfb81a99079d5bf1f210fad3b5299214434dc1fb57526f332378d5728` |
| 64 | `theorem` | [areaForm_map_complex](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/areaform-map-complex--f5ad7740f182bd9db7163a3c.md) | 557 | `result-track:f5ad7740f182bd9db7163a3c334117c93ee9b1d39a73a8e96ba72d24c583d2da` |
| 65 | `theorem` | [rightAngleRotation_map_complex](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/rightanglerotation-map-complex--3245141bd64bca5d4fbbd82e.md) | 565 | `result-track:3245141bd64bca5d4fbbd82e6fe66f3fb3dfbc04948905470432f765bba7d685` |
| 66 | `theorem` | [kahler_map_complex](../../../../mathematics/Analysis/TwoDim/Variant1f3aad0ab8ba3b13bbe4221391855d42f2968d08e8dbbf14213b2451f4905976.lean/declarations/kahler-map-complex--d5fb7648b8637d02130cd7b7.md) | 573 | `result-track:d5fb7648b8637d02130cd7b7088e93d488a1fcfcd3054725e6834398af55058f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
