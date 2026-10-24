# Verification target: GRWTSK.Algebra.Symmetry.Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da9611ccbb419b3dfd0f0629058f4387d0db54e1",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da9611ccbb419b3dfd0f0629058f4387d0db54e1`.

Source path: `GRWTSK/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.PermutationNetwork` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitPerm](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/bitperm--a879e5abe04b1267eeeae633.md) | 31 | `declaration-track:a879e5abe04b1267eeeae63333c63e3caa3ee6e3beaba1a7767dfb497e1a167a` |
| 2 | `def` | [BitPerm.ofBijective](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/bitperm-ofbijective--e11e363e18076f55b10fabcd.md) | 34 | `declaration-track:e11e363e18076f55b10fabcddcad7346490cea90b7e95d3dbfcb3a58863743df` |
| 3 | `theorem` | [BitPerm.ofBijective_apply](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/bitperm-ofbijective-apply--e0a64b20ea82ad97cdf06050.md) | 41 | `result-track:e0a64b20ea82ad97cdf060507f0da1ce03d1ca71c7d47e2e405933338d3d8ad8` |
| 4 | `def` | [XorGroup](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/xorgroup--5b5a8e93fb2927f4330e6a02.md) | 56 | `declaration-track:5b5a8e93fb2927f4330e6a021455ff6549c77591c37bd64fb80346012cac6497` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/instance--9bd78853774e8398844d0a4c.md) | 60 | `declaration-track:9bd78853774e8398844d0a4ccb50b4165151bb6a967e9dff33db76f78a22dfef` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/instance--b51d001e09910107fa0aa379.md) | 63 | `declaration-track:b51d001e09910107fa0aa3791a542a414b2a987ecf64027fcc1c124f669b2531` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/instance--552c6d03df345cf358bc3f2c.md) | 66 | `declaration-track:552c6d03df345cf358bc3f2cd0d555c5df9450e2a0619df332a6ae739151f8e8` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/instance--2f4c02b32fb3d2f42400b089.md) | 69 | `declaration-track:2f4c02b32fb3d2f42400b089342e32c0257b355f5451d21caa215b2d843a4070` |
| 9 | `def` | [toBits](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/tobits--5832314372767d72b1096a68.md) | 77 | `declaration-track:5832314372767d72b1096a68e0f963a0724ed1d038a71dced29dd7b0621eae9a` |
| 10 | `theorem` | [one_toBits](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/one-tobits--b2379ee110f4e6fcbb2e1001.md) | 81 | `result-track:b2379ee110f4e6fcbb2e1001f41db371969925c2cd7f6649ae7fdea6b4e3d7ca` |
| 11 | `theorem` | [mul_toBits](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/mul-tobits--d3fb141a506e2f23ddb4304b.md) | 86 | `result-track:d3fb141a506e2f23ddb4304bf8a05986b010355fce84a08d849e4ba9de0cb368` |
| 12 | `theorem` | [inv_eq](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/inv-eq--8e9290cbf939707501dc87bb.md) | 91 | `result-track:8e9290cbf939707501dc87bb48b0db6928c755bc0a5a79d9a317615bc23762db` |
| 13 | `structure` | [MonoidEmbedding](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/monoidembedding--dbaaf05ee6713aa456b504b0.md) | 102 | `declaration-track:dbaaf05ee6713aa456b504b0db8317d572a07a69d5e7b33f06243a3de67e4ce0` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/instance--1f868431ed5beb688585e4d8.md) | 110 | `declaration-track:1f868431ed5beb688585e4d8cd6a56b6d1badf14b9c86b9bd1dda158fca66a13` |
| 15 | `theorem` | [injective](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/injective--eb2502395556e76139eb9cd7.md) | 115 | `result-track:eb2502395556e76139eb9cd7a9b2419a34105dc531455db82cce4d6f9e17f3ce` |
| 16 | `theorem` | [translation_mul_apply](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/translation-mul-apply--8d4a31733804a2b31c1c19ce.md) | 124 | `result-track:8d4a31733804a2b31c1c19ce98eb4edef387d566f250cf416d46ccfcc646803a` |
| 17 | `def` | [translationHom](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/translationhom--1b906416ee0c161301f5249d.md) | 135 | `declaration-track:1b906416ee0c161301f5249ded7c3e5deb8512712670e03a6b23324bb3b71801` |
| 18 | `theorem` | [translationHom_apply](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/translationhom-apply--53c8ae2112c67df132c7cb85.md) | 144 | `result-track:53c8ae2112c67df132c7cb85f57f757e045b62775c85901a7c9fed078266ea45` |
| 19 | `theorem` | [translationHom_injective](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/translationhom-injective--0a4027a56374a33e6118dac1.md) | 151 | `result-track:0a4027a56374a33e6118dac1a32dc58e2123db1501d887e03c40b608f82a0ba1` |
| 20 | `def` | [translationEmbedding](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/translationembedding--d9823b0ac35b24c77f0ddc82.md) | 159 | `declaration-track:d9823b0ac35b24c77f0ddc82f5b2ecb185af6a9fe22fc43914284ad7bf8c8a06` |
| 21 | `theorem` | [translationHom_one](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/translationhom-one--8e162f0fc7f6b003c02a3248.md) | 164 | `result-track:8e162f0fc7f6b003c02a324890f161e460835a20288034807f5450ad55823e71` |
| 22 | `theorem` | [translation_comm](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/translation-comm--a61a72918568af78746307a4.md) | 168 | `result-track:a61a72918568af78746307a4b0c25c957321b00574fab4ba53780c431f127fd0` |
| 23 | `theorem` | [translation_order_two](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/translation-order-two--c73f706efa00fd90c7dadfdb.md) | 173 | `result-track:c73f706efa00fd90c7dadfdb747656fd78f66388ad18387e0ef3bcb2b2227eda` |
| 24 | `def` | [coordinatePermutationHom](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/coordinatepermutationhom--c539c559e94e3049e933831b.md) | 184 | `declaration-track:c539c559e94e3049e933831b03819d37c36285ee3a221a07f9d647510c80ecf7` |
| 25 | `theorem` | [coordinatePermutationHom_apply](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/coordinatepermutationhom-apply--6a6f2396539b303b0f737c8a.md) | 193 | `result-track:6a6f2396539b303b0f737c8a8a31154864bc70fd24bbd9b256232c5f46f25e2b` |
| 26 | `theorem` | [coordinatePermutation_basisBit](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/coordinatepermutation-basisbit--f41e4853704bdb83fa04c6f0.md) | 200 | `result-track:f41e4853704bdb83fa04c6f090d167d3f3ad97c57092f50823b89e0ccae4f9f7` |
| 27 | `theorem` | [basisBit_injective](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/basisbit-injective--a5920bda9fa5a512700c112a.md) | 209 | `result-track:a5920bda9fa5a512700c112af11de31afbe955a8fa7af440857b1b6dd88b30e6` |
| 28 | `theorem` | [coordinatePermutationHom_injective](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/coordinatepermutationhom-injective--ee7f150805d058f6c3be6209.md) | 217 | `result-track:ee7f150805d058f6c3be62094d2857537d801d64e44e1a0eb6eb347ecd6c230c` |
| 29 | `def` | [coordinatePermutationEmbedding](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/coordinatepermutationembedding--f4e68b8d593c87c68ad6b458.md) | 231 | `declaration-track:f4e68b8d593c87c68ad6b458d26b54d27d79c52664b6ca8b184feb6c332fc875` |
| 30 | `def` | [hammingDistance](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingdistance--c53a07eb04f07476e0f671c3.md) | 239 | `declaration-track:c53a07eb04f07476e0f671c39cf05da99425d479cb708039f6dcdadbb80617c8` |
| 31 | `theorem` | [hammingDistance_self](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingdistance-self--6a088438cb820add33976774.md) | 243 | `result-track:6a088438cb820add339767742f4d19420da258cfe954a9fc4bab65d6bd9087c5` |
| 32 | `theorem` | [hammingDistance_comm](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingdistance-comm--db17cf08ff49614d68461c91.md) | 247 | `result-track:db17cf08ff49614d68461c914717178ee3b58c33a2beafc2905cb3ad238ce8dc` |
| 33 | `theorem` | [hammingDistance_eq_zero_iff](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingdistance-eq-zero-iff--8b64d12ba9f4b77fddb252e5.md) | 251 | `result-track:8b64d12ba9f4b77fddb252e52534a9f0b8b07bbe9084e4d8d7254e9f139f5d04` |
| 34 | `structure` | [HammingIso](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingiso--8e7e9f7c8163cca7eef0e4b6.md) | 257 | `declaration-track:8e7e9f7c8163cca7eef0e4b6ddd0fef671843561d59f0730097970ad4b95163a` |
| 35 | `def` | [HammingIso.toPerm](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingiso-toperm--d969c33be4f080a9f5e5f41c.md) | 262 | `declaration-track:d969c33be4f080a9f5e5f41c7f3f01ad51c816b73d01682019f1f7e745e64220` |
| 36 | `theorem` | [HammingIso.toPerm_apply](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingiso-toperm-apply--80c43d56f389b22adb334d8a.md) | 266 | `result-track:80c43d56f389b22adb334d8a90834807acbb14feed4d3bb1e7f2386871c57596` |
| 37 | `theorem` | [xorBits_cancel_both_right](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/xorbits-cancel-both-right--419d3e381fd77580804a2cc5.md) | 273 | `result-track:419d3e381fd77580804a2cc5eb03bb85ef17b0222375483373701ea8fbf0cdf7` |
| 38 | `theorem` | [coordinatePermutation_zero](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/coordinatepermutation-zero--d02a745aa194ce2d87b767b9.md) | 280 | `result-track:d02a745aa194ce2d87b767b9c50d628aab711f2d0db34d97f7a8201dc3ac65fb` |
| 39 | `theorem` | [HammingIso.hammingDistance_toPerm](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingiso-hammingdistance-toperm--29c4a8ebef2bf357cfcbdb3c.md) | 287 | `result-track:29c4a8ebef2bf357cfcbdb3c9658da6b2504195cf18f56a9b7208d26236ceea4` |
| 40 | `theorem` | [HammingIso.toPerm_injective](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingiso-toperm-injective--c0d8a7a9a22df4f260369b94.md) | 298 | `result-track:c0d8a7a9a22df4f260369b947bd3357ef19f7ab596ce5f9d8973299466ca768e` |
| 41 | `def` | [conjugate](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/conjugate--47014742a98947258f22aee5.md) | 317 | `declaration-track:47014742a98947258f22aee5652572ba040a6389ef2c137306bfbc9e672149ba` |
| 42 | `theorem` | [conjugate_apply](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/conjugate-apply--714c5cabbc4537712e5c467b.md) | 321 | `result-track:714c5cabbc4537712e5c467b204df87112e983e59c03e1f35fdb21fe0a31e282` |
| 43 | `theorem` | [conjugate_one](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/conjugate-one--ad0bf4133a68b2703cb3ddc2.md) | 328 | `result-track:ad0bf4133a68b2703cb3ddc2af131b71a384943704b54e42ff37176f58703c53` |
| 44 | `theorem` | [conjugate_self](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/conjugate-self--c8d25f62d9f937d37600f58e.md) | 334 | `result-track:c8d25f62d9f937d37600f58ebb983008a38b1551a2e7db9f668a3ef6bcf333b8` |
| 45 | `theorem` | [conjugate_pow](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/conjugate-pow--2d98307e01bc33ae7d8823fe.md) | 341 | `result-track:2d98307e01bc33ae7d8823fea3bc8e539672529fab85dc0e0e9ba99ed95b402f` |
| 46 | `theorem` | [HammingIso.toPerm_symm_apply](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingiso-toperm-symm-apply--ad74c8edc8d3a0ac9da81147.md) | 360 | `result-track:ad74c8edc8d3a0ac9da811477639b05f746c4990a80aaf98f1e266a6b1702400` |
| 47 | `theorem` | [HammingIso.toPerm_symm_xor_basis](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingiso-toperm-symm-xor-basis--640a003dd9d5b9093eae366c.md) | 367 | `result-track:640a003dd9d5b9093eae366cdbe47e0bbe8e1c12b66171b903eab055b0a8495d` |
| 48 | `theorem` | [HammingIso.toPerm_xor_cancel](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/hammingiso-toperm-xor-cancel--e0a6a10b6c2fa78e8d4e5416.md) | 379 | `result-track:e0a6a10b6c2fa78e8d4e541695089b6eb4a789a259efd464915564be8ab80acb` |
| 49 | `theorem` | [bitDerivative_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/bitderivative-conjugate-hammingiso--cf1376bc2787b8a4543094c4.md) | 391 | `result-track:cf1376bc2787b8a4543094c41065d48a0bae45919df09440248e4343730e2523` |
| 50 | `theorem` | [derivativeBit_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/derivativebit-conjugate-hammingiso--709e795c12e2ddf1cbd2b687.md) | 405 | `result-track:709e795c12e2ddf1cbd2b6875bc28e1e0990ec62800dc14bbacd635fd8330dae` |
| 51 | `theorem` | [sacCount_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/saccount-conjugate-hammingiso--57d6351fd7594205a4a60b48.md) | 417 | `result-track:57d6351fd7594205a4a60b4835f174223459355c991651fd2166954efcaef241` |
| 52 | `theorem` | [strictSAC_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/strictsac-conjugate-hammingiso--cad33727f79b239ec920be69.md) | 431 | `result-track:cad33727f79b239ec920be698519757ac731c334005387c223490fa5e12ae6db` |
| 53 | `theorem` | [sacEntry_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/sacentry-conjugate-hammingiso--f9aff937cdcb08fc09cd774f.md) | 443 | `result-track:f9aff937cdcb08fc09cd774f9ff33f59737744a0a832723be702f88ea158866c` |
| 54 | `theorem` | [sum_sacEntry_relabel](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/sum-sacentry-relabel--b89461c11f173484585786ef.md) | 451 | `result-track:b89461c11f173484585786ef996717b229dc842627fa9861722254ec4dcdcfb5` |
| 55 | `theorem` | [sacScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/sacscore-conjugate-hammingiso--8a73f40786671b9735ada45f.md) | 478 | `result-track:8a73f40786671b9735ada45fcb2705fae9e20807a087913dda9a0c50272b8f4c` |
| 56 | `theorem` | [varianceScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/variancescore-conjugate-hammingiso--ac6fa09cfbef473cff46a615.md) | 488 | `result-track:ac6fa09cfbef473cff46a6158ee1580b3d3ce2a4e8de17d429775e70ada1a083` |
| 57 | `def` | [fixedPoints](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/fixedpoints--da484a9a948fdbe292994245.md) | 505 | `declaration-track:da484a9a948fdbe2929942455571d46f2fb62a17ab6a6f51f8d1a5f631e99798` |
| 58 | `def` | [fixedPointCount](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/fixedpointcount--494c2472155bdeba3518376c.md) | 509 | `declaration-track:494c2472155bdeba3518376cbfd4e52f534277d9a71d7b37aeb4c0b004244fd5` |
| 59 | `theorem` | [mem_fixedPoints_iff](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/mem-fixedpoints-iff--e1516939305c3f1d8c522f37.md) | 512 | `result-track:e1516939305c3f1d8c522f37172ce8bab26c961651100f74bbcf2019f46a9615` |
| 60 | `theorem` | [fixedPoints_zero](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/fixedpoints-zero--273653fe6fc694c44497795d.md) | 520 | `result-track:273653fe6fc694c44497795df5652c8d36e7c4ac740a38fde4e464d40d0d62e5` |
| 61 | `theorem` | [fixedPointCount_zero](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/fixedpointcount-zero--e9cf9831a870b00ef3e8a77f.md) | 526 | `result-track:e9cf9831a870b00ef3e8a77f0bcdcb1a038d16412c6a7cccec8438a7c300cb51` |
| 62 | `theorem` | [fixedPointCount_le](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/fixedpointcount-le--c36e0dfb23954fbd3f718dfd.md) | 531 | `result-track:c36e0dfb23954fbd3f718dfd4090a27d318c7a0ea8f440514690764a4e788dae` |
| 63 | `theorem` | [fixedPointCount_conjugate](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/fixedpointcount-conjugate--7851e1fab21067325c933083.md) | 537 | `result-track:7851e1fab21067325c933083399db591e42eba8f1942941bf03348fd318eba11` |
| 64 | `theorem` | [fixedPointCount_identity](../../../../mathematics/Algebra/Symmetry/Variant2f186a24b7f18683c4ac8979196ab8291c0f0b1e8b15a4860d46abc7c71ee634.lean/declarations/fixedpointcount-identity--d82c339e0cb3ff4717bb5ab5.md) | 555 | `result-track:d82c339e0cb3ff4717bb5ab52a7039c1ff412fac51f48134712eba507b036092` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
