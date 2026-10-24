# Verification target: GRWTSK.Algebra.LucasLehmer.Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57a29880b082de9417c229bbe3ecdb51649a86bd",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/index.md) · [Full source](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57a29880b082de9417c229bbe3ecdb51649a86bd`.

Source path: `GRWTSK/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Interval` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Fintype` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mersenne](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/mersenne--649daf42608de51db8765010.md) | 42 | `declaration-track:649daf42608de51db8765010b0000509674286e887336fa99c1fe1097a795a2e` |
| 2 | `theorem` | [mersenne_pos](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/mersenne-pos--c4026a2fac02a6ccdde4ec2c.md) | 46 | `result-track:c4026a2fac02a6ccdde4ec2c72c4d81cc5d6e1f928125b28f8e8318fe1f44196` |
| 3 | `theorem` | [one_lt_mersenne](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/one-lt-mersenne--59dff2b0427be616cfd3bab7.md) | 53 | `result-track:59dff2b0427be616cfd3bab7ea3de4ce8071318748d4d2c268b587b140816860` |
| 4 | `theorem` | [succ_mersenne](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/succ-mersenne--370fe91c0667c8f7ed3d2051.md) | 59 | `result-track:370fe91c0667c8f7ed3d2051bf1a6db16eb91ca4ac0cbb21b0de9bca046e73b0` |
| 5 | `def` | [s](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/s--3a8e94f3f15887e3d116f325.md) | 80 | `declaration-track:3a8e94f3f15887e3d116f3252ecfb89849eb7afc482fd86c3dfc0b5f3106bcf7` |
| 6 | `def` | [sZMod](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/szmod--6c54f70ae218fab24568bb69.md) | 86 | `declaration-track:6c54f70ae218fab24568bb692289a41dbbc4ea2c47ba6fbf6c77fe3859d68ce0` |
| 7 | `def` | [sMod](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/smod--13845585f319ea2e9497c367.md) | 92 | `declaration-track:13845585f319ea2e9497c3670b994caf0311915fde33794dffebcf568c4fedf3` |
| 8 | `theorem` | [mersenne_int_pos](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/mersenne-int-pos--f1ed3e5fd913a489a9920b6e.md) | 97 | `result-track:f1ed3e5fd913a489a9920b6e20c855a2aa3e1e3061f4b637590f52077f8c8875` |
| 9 | `theorem` | [mersenne_int_ne_zero](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/mersenne-int-ne-zero--6d260a0486652d3253d16022.md) | 100 | `result-track:6d260a0486652d3253d1602276fd05fb85aa6acd3d75f963363e609dc7a614a5` |
| 10 | `theorem` | [sMod_nonneg](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/smod-nonneg--6e2c4e513336f472bc991128.md) | 104 | `result-track:6e2c4e513336f472bc9911283864c44f5b153e09b1e2d0fbf34fcd95b8b99ee1` |
| 11 | `theorem` | [sMod_mod](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/smod-mod--0c7b80dd18805f1ee499af0f.md) | 111 | `result-track:0c7b80dd18805f1ee499af0f750b7ccc5bfc7de834edd6c470eb95ae2cc6d62b` |
| 12 | `theorem` | [sMod_lt](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/smod-lt--bc435a3f69e997c3feab75aa.md) | 114 | `result-track:bc435a3f69e997c3feab75aac7446d86d31ea1fcf6dfc547bbfe697f26964522` |
| 13 | `theorem` | [sZMod_eq_s](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/szmod-eq-s--fe71a29569ae72325476b766.md) | 120 | `result-track:fe71a29569ae72325476b766b8ea0996d7d2ac613da233a79d449065fe6ef623` |
| 14 | `theorem` | [Int.coe_nat_pow_pred](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/int-coe-nat-pow-pred--3062e848f91517a50601d498.md) | 128 | `result-track:3062e848f91517a50601d498d29f0672c34dc3456565b4536e8628bc1d779521` |
| 15 | `theorem` | [Int.coe_nat_two_pow_pred](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/int-coe-nat-two-pow-pred--03f42c66acc774ccb73ba4c4.md) | 133 | `result-track:03f42c66acc774ccb73ba4c4e3c577421df2e9434a0b72a280fb2d23cca3be27` |
| 16 | `theorem` | [sZMod_eq_sMod](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/szmod-eq-smod--051b97a9f59309e651402234.md) | 137 | `result-track:051b97a9f59309e6514022340558db6d939bb4840164bbaaca66011ef4bed0cb` |
| 17 | `def` | [lucasLehmerResidue](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/lucaslehmerresidue--996683f5bec6b764768014d3.md) | 142 | `declaration-track:996683f5bec6b764768014d3e1d75f557cd7c10bbec9c106ce7c5b0819f5df92` |
| 18 | `theorem` | [residue_eq_zero_iff_sMod_eq_zero](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/residue-eq-zero-iff-smod-eq-zero--6c32c340908e93dd1e4c1987.md) | 146 | `result-track:6c32c340908e93dd1e4c1987333a0bfb5c8fe2408e0d782dc3bf9a64d2bcba8f` |
| 19 | `def` | [LucasLehmerTest](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/lucaslehmertest--357f7a56d64bb438c6357258.md) | 166 | `declaration-track:357f7a56d64bb438c63572584b29acf29c5cee8d95fc11d53f00ca3ee71ddfbe` |
| 20 | `def` | [q](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/q--9797c50f2b406ea72f15e2eb.md) | 178 | `declaration-track:9797c50f2b406ea72f15e2eb15da841bbe0e390339bf4b8849e568793d6a89d9` |
| 21 | `def` | [X](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/x--b155f1eef7de5eedf94efa43.md) | 188 | `declaration-track:b155f1eef7de5eedf94efa437acc3be95c750ec25d7337859eb7a507aded25c0` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--7143ecbb160d74cdacbccd87.md) | 197 | `declaration-track:7143ecbb160d74cdacbccd87209d446c36eaef1edba2ec46bdc9d9361bd53df1` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--c968b791ed53faa06abf3d01.md) | 198 | `declaration-track:c968b791ed53faa06abf3d01803aae2dac2face372acbcc229d58f586ae3a7a0` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--a46e5fb22939353dbd9f165d.md) | 199 | `declaration-track:a46e5fb22939353dbd9f165d4ce4d4e325bdeb8cb87f9a3a77d2e1aac3c2e52e` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--9f63c874257abf269086d773.md) | 200 | `declaration-track:9f63c874257abf269086d77318013acbd6bb87cd092407ca5337750e61ba93ef` |
| 26 | `theorem` | [ext](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/ext--9ed6a44d3461d62cfed9ea99.md) | 203 | `result-track:9ed6a44d3461d62cfed9ea99ecb75343ff7497c9c649ae86bb078a48b0355b3c` |
| 27 | `theorem` | [zero_fst](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/zero-fst--0bfe7db9b1eff3f6b4d428e8.md) | 208 | `result-track:0bfe7db9b1eff3f6b4d428e857d3e1f30e4c4b216cea9fe169535ccb9a5fcae8` |
| 28 | `theorem` | [zero_snd](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/zero-snd--acb9c8ffa2b5a14f83122559.md) | 209 | `result-track:acb9c8ffa2b5a14f8312255908599a5f6b3ced40815d3dd65ddbecebe14adb4d` |
| 29 | `theorem` | [add_fst](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/add-fst--a85d759d9fee025bf7e4e14b.md) | 212 | `result-track:a85d759d9fee025bf7e4e14b8affb29fd91dae16c197d17fd683ac05d7451a4e` |
| 30 | `theorem` | [add_snd](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/add-snd--abb398df40742019b511f725.md) | 218 | `result-track:abb398df40742019b511f72530452d127c392c7506669406e1e319581479b8a1` |
| 31 | `theorem` | [neg_fst](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/neg-fst--52297a5c04c210bb6ba0a3a0.md) | 224 | `result-track:52297a5c04c210bb6ba0a3a0060ff25d5e51e7ae65d81acbae2514ebf98e21bd` |
| 32 | `theorem` | [neg_snd](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/neg-snd--ec455ce6033e62a8dcb84f1e.md) | 230 | `result-track:ec455ce6033e62a8dcb84f1e5f70e3ef1ad314e56721b5ef63e4c642e4d5bd08` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--f7cddcfdb0a990674197bff3.md) | 235 | `declaration-track:f7cddcfdb0a990674197bff3096921573934b4bda3dd86484fc4f1b5b8dfdbc2` |
| 34 | `theorem` | [mul_fst](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/mul-fst--3458aebbdb99fe9431bbbd82.md) | 238 | `result-track:3458aebbdb99fe9431bbbd82878ef5860fe2514e0dc4d0a7b91a7217af290752` |
| 35 | `theorem` | [mul_snd](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/mul-snd--35ceacbfc7c8f728f5d5b3e8.md) | 244 | `result-track:35ceacbfc7c8f728f5d5b3e808661c4972eb0fd9f1bfb5c2a8795336b99fe8e2` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--d4eb5d6966ef8222544becb6.md) | 249 | `declaration-track:d4eb5d6966ef8222544becb65e7ec551e4b36c929b862180ed27cbaa2e70825c` |
| 37 | `theorem` | [one_fst](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/one-fst--b61d09fef2ce03ed17025c4c.md) | 252 | `result-track:b61d09fef2ce03ed17025c4c1fb2a93b89b5d6e7d82861924931101c1af7d37b` |
| 38 | `theorem` | [one_snd](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/one-snd--d7c5d5225c198c6c0523a6cb.md) | 258 | `result-track:d7c5d5225c198c6c0523a6cb3ca8a382a7ee22d471d2265319dc5ff3e8f5aa81` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--773f18a5e9b49e6da7057283.md) | 268 | `declaration-track:773f18a5e9b49e6da7057283ebcc1d45fb7fc40e8a5dbc9711ad23f7bdb3feaa` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--e148bbf2edbb8d72e524147c.md) | 274 | `declaration-track:e148bbf2edbb8d72e524147c25602cce11fb32b1fcecf3f0a5314c7c3293c006` |
| 41 | `theorem` | [nat_coe_fst](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/nat-coe-fst--4223542716c8d2119926e323.md) | 277 | `result-track:4223542716c8d2119926e323221fa97902fd1492109be0f865e43b96dfe20671` |
| 42 | `theorem` | [nat_coe_snd](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/nat-coe-snd--ba018b72cb87d290be429f10.md) | 281 | `result-track:ba018b72cb87d290be429f101a7ac968a008977b58d72faa350613d3e00409c1` |
| 43 | `theorem` | [ofNat_fst](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/ofnat-fst--787d969ec8ee10061cf3837a.md) | 285 | `result-track:787d969ec8ee10061cf3837acf1ba2190bec65cac502c8ec6f6247b537cf933a` |
| 44 | `theorem` | [ofNat_snd](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/ofnat-snd--67455b3952524a1aaa7b173b.md) | 289 | `result-track:67455b3952524a1aaa7b173b0db36872195a321d974bdc6edcc269f4d742dff1` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--a976ec8d5322f9860845511f.md) | 293 | `declaration-track:a976ec8d5322f9860845511f8158a665b12f9fe57b4e9b6e0707df3648d2067f` |
| 46 | `theorem` | [left_distrib](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/left-distrib--41ffa23953fe49a7c3e5b16d.md) | 302 | `result-track:41ffa23953fe49a7c3e5b16dda6ba2c18f4140af83b8be562e9ce6011bdead0e` |
| 47 | `theorem` | [right_distrib](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/right-distrib--ac4ca5547fb72fff0b0f4a04.md) | 307 | `result-track:ac4ca5547fb72fff0b0f4a04a34f835a133a0e2d3ad38160a7661fe3926aaba1` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--63222697e9196814ed312f96.md) | 312 | `declaration-track:63222697e9196814ed312f96a56f68904e626661edc2a138634f7588b1892715` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--6fb03a88903eeab1ce245417.md) | 320 | `declaration-track:6fb03a88903eeab1ce245417721bdf2f8a1041665525550b3f5f1fa0ec93565a` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/instance--bfbbe46508c1b097f75b748b.md) | 324 | `declaration-track:bfbbe46508c1b097f75b748b3bfcbf2daf05a2248e07f80dafeffb1102c60b4e` |
| 51 | `theorem` | [int_coe_fst](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/int-coe-fst--a1d2786f5489ea32568c82a6.md) | 328 | `result-track:a1d2786f5489ea32568c82a6795d39763242420ba3586e90ca21117c170daa0b` |
| 52 | `theorem` | [int_coe_snd](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/int-coe-snd--6c85ed8e49b9260fa4e744d1.md) | 334 | `result-track:6c85ed8e49b9260fa4e744d1c9a3c8bd8f285f34673d9b18e8c5a70cf63d2e0b` |
| 53 | `theorem` | [coe_mul](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/coe-mul--9b2a51acfbc67f3611716741.md) | 340 | `result-track:9b2a51acfbc67f3611716741cb0f6949ca5003606bb2a31515f60be56676f57a` |
| 54 | `theorem` | [coe_nat](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/coe-nat--259d976c34aa4f5384c5f3f8.md) | 345 | `result-track:259d976c34aa4f5384c5f3f8543fef865eebd32ce819caf8b8b54dada045b099` |
| 55 | `theorem` | [card_eq](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/card-eq--7363e67ae68b6e101036665e.md) | 350 | `result-track:7363e67ae68b6e101036665ee56c9bbe5a1645b2e15528c0138c7a905e594334` |
| 56 | `theorem` | [card_units_lt](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/card-units-lt--42874132f38af7cfdd887919.md) | 357 | `result-track:42874132f38af7cfdd887919c5cd804e5cee4466027d79a39448e2744729ec7a` |
| 57 | `def` | [ω](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/anonymous--d58af373a29a3c9b30479cf9.md) | 365 | `declaration-track:d58af373a29a3c9b30479cf9ad5dfac7fb0e77d07de54925cd9ae1523cea864d` |
| 58 | `def` | [ωb](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/b--aee558c303fa3fe4c73ca77b.md) | 370 | `declaration-track:aee558c303fa3fe4c73ca77be231b6c67f9e7dbcec2af8de4d9a8e623e332553` |
| 59 | `theorem` | [ω_mul_ωb](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/mul-b--2c328982920c0f62d04b7c4d.md) | 374 | `result-track:2c328982920c0f62d04b7c4d7f1e97103186844f06925f12a9c19c06e96dd854` |
| 60 | `theorem` | [ωb_mul_ω](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/b-mul--1bd1adbecc486afd39fe51a2.md) | 380 | `result-track:1bd1adbecc486afd39fe51a28115216577362e5834630725124f89ea6fbb263e` |
| 61 | `theorem` | [closed_form](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/closed-form--30bc9b2694d50c61e1290356.md) | 386 | `result-track:30bc9b2694d50c61e1290356d0bf488724a284270796257e1dacd04f1aa4d22b` |
| 62 | `theorem` | [two_lt_q](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/two-lt-q--81291ca49796f06a18cc7a9a.md) | 410 | `result-track:81291ca49796f06a18cc7a9a24f16a3425862fb1f22d6ed6f956ed2e25be5ffc` |
| 63 | `theorem` | [ω_pow_formula](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/pow-formula--6e36c35bf5a77eee1a39f3b9.md) | 417 | `result-track:6e36c35bf5a77eee1a39f3b96bc7eda95181a63597ddf64bb674ff8dce7bdd6c` |
| 64 | `theorem` | [mersenne_coe_X](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/mersenne-coe-x--bb119e52d2491eb41727c517.md) | 442 | `result-track:bb119e52d2491eb41727c517a53702a138c471ab1e3b7bbabef6f103b2fe7953` |
| 65 | `theorem` | [ω_pow_eq_neg_one](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/pow-eq-neg-one--9c7ce2f48587c20f0777dbe7.md) | 448 | `result-track:9c7ce2f48587c20f0777dbe76930de2f3d4663b21c3599cf9b83b70d332ed936` |
| 66 | `theorem` | [ω_pow_eq_one](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/pow-eq-one--051e6ad5de8ef58e16164fa6.md) | 455 | `result-track:051e6ad5de8ef58e16164fa6bc358ee44f121a8e85a9e12f6c5156fbd42b5b8b` |
| 67 | `def` | [ωUnit](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/unit--296d6b26353b580976d6a2d0.md) | 465 | `declaration-track:296d6b26353b580976d6a2d05d24d7f7810e1ceed206a14ff9f738b1f32e015d` |
| 68 | `theorem` | [ωUnit_coe](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/unit-coe--9c2fcb3b4cf1435a7964fb70.md) | 473 | `result-track:9c2fcb3b4cf1435a7964fb70ddb876e111e8610b328f0b4cdd2ebbb6ffb5c134` |
| 69 | `theorem` | [order_ω](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/order--6785ab4b60891613cb3ddc7b.md) | 478 | `result-track:6785ab4b60891613cb3ddc7b9f279722a62590cbe9bb69a31c126766c63aa39b` |
| 70 | `theorem` | [order_ineq](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/order-ineq--4c409e057ce9318dcac79224.md) | 498 | `result-track:4c409e057ce9318dcac79224681ce2d5082f32556d6eca9e6976d1e910c8c414` |
| 71 | `theorem` | [lucas_lehmer_sufficiency](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/lucas-lehmer-sufficiency--33bd4ecca3a4027108729805.md) | 512 | `result-track:33bd4ecca3a4027108729805706bbf70d77039f0c7f5769cbd4d7447706bac11` |
| 72 | `def` | [sMod'](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/smod--3d79515895d1fa41f77b70cc.md) | 546 | `declaration-track:3d79515895d1fa41f77b70cc557da84e24c85d2f8adff261ad7cd8e923b68601` |
| 73 | `theorem` | [sMod'_eq_sMod](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/smod-eq-smod--da755bef5d6278c1704871ae.md) | 550 | `result-track:da755bef5d6278c1704871ae300deaf24b64f22cf4ddabf42b00cd0854378a81` |
| 74 | `lemma` | [testTrueHelper](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/testtruehelper--749040935802e0c4dcbfb8bc.md) | 570 | `result-track:749040935802e0c4dcbfb8bcd470ed49f764c1e1e4e066957c52c07a8b198eab` |
| 75 | `lemma` | [testFalseHelper](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/testfalsehelper--a2aa6997b7a35fb5e69c8738.md) | 576 | `result-track:a2aa6997b7a35fb5e69c8738d7def9391c997535f00b095456734b01c41074ee` |
| 76 | `theorem` | [isNat_lucasLehmerTest](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/isnat-lucaslehmertest--63857d08f47b17a9c5f95b83.md) | 583 | `result-track:63857d08f47b17a9c5f95b83200720720ffd399584dbfdc59cd736aff8aff0e3` |
| 77 | `theorem` | [isNat_not_lucasLehmerTest](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/isnat-not-lucaslehmertest--3c4340443d0406e0dccf3301.md) | 587 | `result-track:3c4340443d0406e0dccf330196d9174fdae67aacf157c29791f4a84102531e4c` |
| 78 | `def` | [evalLucasLehmerTest](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/evallucaslehmertest--cbcf0b88fc6ef310694e4764.md) | 594 | `declaration-track:cbcf0b88fc6ef310694e47647f66bf0745f1f05f96c446b977d5d06199a93e49` |
| 79 | `theorem` | [modEq_mersenne](../../../../mathematics/Algebra/LucasLehmer/Variant3fbf138776b24e178715b45c8b3e4c242b2ac6d29dc7579df543a201c02eec6e.lean/declarations/modeq-mersenne--0cafd1a382a9cc59eeb34b11.md) | 634 | `result-track:0cafd1a382a9cc59eeb34b1190945eb97676ec92a8bfed3710b48d108865ee87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
