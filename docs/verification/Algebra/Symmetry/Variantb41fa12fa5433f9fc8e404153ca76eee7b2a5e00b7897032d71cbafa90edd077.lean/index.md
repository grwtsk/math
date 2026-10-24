# Verification target: GRWTSK.Algebra.Symmetry.Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2009fd9780bcdddc8e081e1794f17173b45d587",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2009fd9780bcdddc8e081e1794f17173b45d587`.

Source path: `GRWTSK/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitPerm](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/bitperm--7752c8a373d1032d00b86468.md) | 39 | `declaration-track:7752c8a373d1032d00b86468b5234a98d3f328ec3f63b7ef3dd0fe3bb76de473` |
| 2 | `def` | [BitPerm.ofBijective](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/bitperm-ofbijective--5c667a5e8a0777f2c4abbc10.md) | 42 | `declaration-track:5c667a5e8a0777f2c4abbc101087d752868d62087d806e2a45982784805e329a` |
| 3 | `theorem` | [BitPerm.ofBijective_apply](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/bitperm-ofbijective-apply--05c7879f3ee9782c5b82d93d.md) | 49 | `result-track:05c7879f3ee9782c5b82d93dbc054353ca26d44e3b59477a16d0845d4f35184d` |
| 4 | `def` | [XorGroup](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/xorgroup--710e04c8d6c6de7820aad315.md) | 64 | `declaration-track:710e04c8d6c6de7820aad3154665aef12c94552e1da0246346353ff091945aae` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/instance--545e663ab8323e30081d6cba.md) | 68 | `declaration-track:545e663ab8323e30081d6cba5fc7517aad9dc04d8127151a6d4acb2dd61faa55` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/instance--bf664118b4a7da17703dcb74.md) | 71 | `declaration-track:bf664118b4a7da17703dcb748773d5db59c53611ac3e3496022f32552262bef1` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/instance--79ca2bb9d9393b273248bd95.md) | 74 | `declaration-track:79ca2bb9d9393b273248bd95b3d13b3788ca216dd598a8b0902f9ff35bb2d2d7` |
| 8 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/instance--3dd0dcf4e3d82236335e5380.md) | 77 | `declaration-track:3dd0dcf4e3d82236335e5380f92e3544839d7224ca4ed035a0a76d97fa64eafc` |
| 9 | `def` | [toBits](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/tobits--a1d652e0e548a843d6f98d4a.md) | 85 | `declaration-track:a1d652e0e548a843d6f98d4a64bfa94e1b0b4d985e0f75ae8a86b8c4d716acce` |
| 10 | `theorem` | [one_toBits](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/one-tobits--a7da07518e65d9fdf9c4b93b.md) | 89 | `result-track:a7da07518e65d9fdf9c4b93b999e4de4157133d5d23ad41f6bac468fcd0bf5d1` |
| 11 | `theorem` | [mul_toBits](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/mul-tobits--6a84b7b8dc083e10eb6693c2.md) | 94 | `result-track:6a84b7b8dc083e10eb6693c2b7d84149b39f56dc657e275a6df3d2358d530d7e` |
| 12 | `theorem` | [inv_eq](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/inv-eq--7851b47496de4c6372be53f1.md) | 99 | `result-track:7851b47496de4c6372be53f1cf3cafe02949c67bc356ee86a86cd9ff286ffa70` |
| 13 | `structure` | [MonoidEmbedding](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/monoidembedding--3526b46f3c9e6772766d9002.md) | 110 | `declaration-track:3526b46f3c9e6772766d9002a0e5bf50255adafd05ce360ab5afe4057cb12892` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/instance--55a037c0c0a516a3b5d9ef3b.md) | 118 | `declaration-track:55a037c0c0a516a3b5d9ef3bce694a638388133cd96fd26439b3d51d2c188c47` |
| 15 | `theorem` | [injective](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/injective--a14b530e8d446b0fb4fefb67.md) | 123 | `result-track:a14b530e8d446b0fb4fefb67121b91c79f3415e520c9dee8ef276c4786c80de8` |
| 16 | `theorem` | [translation_mul_apply](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/translation-mul-apply--30d46e9c1ee58177a40a862e.md) | 132 | `result-track:30d46e9c1ee58177a40a862e057cc25218fe7526aea95702d45c9731cc797452` |
| 17 | `def` | [translationHom](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/translationhom--e88b95591687f8e25cb62d08.md) | 143 | `declaration-track:e88b95591687f8e25cb62d0822397a99ba128d860aa88b2cd4ad1c172de8bfd3` |
| 18 | `theorem` | [translationHom_apply](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/translationhom-apply--ffaebe7da2e111de8a286a64.md) | 152 | `result-track:ffaebe7da2e111de8a286a64e134190416bc314c875dfb551d089dba643557dc` |
| 19 | `theorem` | [translationHom_injective](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/translationhom-injective--6a7047d6f21c7b558b72e00f.md) | 159 | `result-track:6a7047d6f21c7b558b72e00f0d288a0cdb3190241c0931f5218def26f40ea1c9` |
| 20 | `def` | [translationEmbedding](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/translationembedding--a3c6aadc4f6fb23ea47e85d0.md) | 167 | `declaration-track:a3c6aadc4f6fb23ea47e85d0217aee319d7d7d70ecd7eccfa41b1818b51feb93` |
| 21 | `theorem` | [translationHom_one](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/translationhom-one--f06e4e43fa69f6073dd63654.md) | 172 | `result-track:f06e4e43fa69f6073dd636541e2a6b43c9f1f1338d585ff65a90ef1012295698` |
| 22 | `theorem` | [translation_comm](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/translation-comm--343453dca8360573c0e41494.md) | 176 | `result-track:343453dca8360573c0e414943aad5052979720ef7350fa4cf2fc1cbcf64dceaa` |
| 23 | `theorem` | [translation_order_two](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/translation-order-two--aab7b218c1ac145a5ec963ed.md) | 181 | `result-track:aab7b218c1ac145a5ec963eddae9b781d592ac2f665e742c2e15656f080850ec` |
| 24 | `def` | [coordinatePermutationHom](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/coordinatepermutationhom--317b39b11ca7d41e1d01c856.md) | 192 | `declaration-track:317b39b11ca7d41e1d01c856c9b1a070d267d82b636b3c635fed66b20e656ae2` |
| 25 | `theorem` | [coordinatePermutationHom_apply](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/coordinatepermutationhom-apply--7c23d150bc68c90a2767472a.md) | 201 | `result-track:7c23d150bc68c90a2767472afdb2a7d0434ebff5b73cab8bedd1e169ae4e6ed8` |
| 26 | `theorem` | [coordinatePermutation_basisBit](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/coordinatepermutation-basisbit--170b48adf7b2c0db44ffe94a.md) | 208 | `result-track:170b48adf7b2c0db44ffe94a4e8bfe86b1266569fec9d9ed3445802018650a71` |
| 27 | `theorem` | [basisBit_injective](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/basisbit-injective--4e5e79915d574108368063a5.md) | 217 | `result-track:4e5e79915d574108368063a5c5a313f8842a2f15f178d7eac5659c7fc44b6998` |
| 28 | `theorem` | [coordinatePermutationHom_injective](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/coordinatepermutationhom-injective--bc914588da07574420fe2680.md) | 225 | `result-track:bc914588da07574420fe2680d485f5b1aeb49034f50c8e8857172ad32f106a3d` |
| 29 | `def` | [coordinatePermutationEmbedding](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/coordinatepermutationembedding--4cc7e8ef15384146781c2530.md) | 239 | `declaration-track:4cc7e8ef15384146781c25306e59a82316765a6c3b7f3b9b1d4766745e186940` |
| 30 | `def` | [hammingDistance](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingdistance--c3225e07e1f619e2a2722dfb.md) | 247 | `declaration-track:c3225e07e1f619e2a2722dfb75e78161b7af45373d4fea8d387c050c3025229d` |
| 31 | `theorem` | [hammingDistance_self](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingdistance-self--11f5abff1e8afd5eb48b144f.md) | 251 | `result-track:11f5abff1e8afd5eb48b144ffc161a77f5db6ab383f3e593934a941cbbda0efe` |
| 32 | `theorem` | [hammingDistance_comm](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingdistance-comm--d488c30385ab07a70e3b38aa.md) | 255 | `result-track:d488c30385ab07a70e3b38aa7b10f41650365117f21eb434f424781862ae5e58` |
| 33 | `theorem` | [hammingDistance_eq_zero_iff](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingdistance-eq-zero-iff--3b70cb41da1b4fbd6fe12303.md) | 259 | `result-track:3b70cb41da1b4fbd6fe123030eccccfffa7487a0c59866f747d71e29c7764ce0` |
| 34 | `structure` | [HammingIso](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingiso--48c892695a09e950e1b3ba51.md) | 265 | `declaration-track:48c892695a09e950e1b3ba5148e2f3d0ff2e8e5b81f65da32448e9175fba518a` |
| 35 | `def` | [HammingIso.toPerm](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingiso-toperm--4afced29dbb772d9043291c6.md) | 270 | `declaration-track:4afced29dbb772d9043291c69f0aa0e931aeac7daa45857e983c0329dd603cf5` |
| 36 | `theorem` | [HammingIso.toPerm_apply](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingiso-toperm-apply--4758f50c6cf1fb525eb26e5b.md) | 274 | `result-track:4758f50c6cf1fb525eb26e5ba80698037c214a708d2d1dab81ad9db12fc29f06` |
| 37 | `theorem` | [xorBits_cancel_both_right](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/xorbits-cancel-both-right--dae59fd1efd0fce748efe07e.md) | 281 | `result-track:dae59fd1efd0fce748efe07ea36261d792e1fa1e4b154d5c8e0aaf5af4966a85` |
| 38 | `theorem` | [coordinatePermutation_zero](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/coordinatepermutation-zero--ba3498c60a829abe0ed71491.md) | 288 | `result-track:ba3498c60a829abe0ed714914d257f3450a3dde4c13da1334c12c335c8f004e9` |
| 39 | `theorem` | [HammingIso.hammingDistance_toPerm](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingiso-hammingdistance-toperm--c49818bcf2c860d5296e122d.md) | 295 | `result-track:c49818bcf2c860d5296e122df1bf73748c04282bd0e6c3d9321ccb6be9adb03a` |
| 40 | `theorem` | [HammingIso.toPerm_injective](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingiso-toperm-injective--958b18ac7abf083d07656a76.md) | 306 | `result-track:958b18ac7abf083d07656a765c5d61ad2f8d67596039c41da368970a667a1290` |
| 41 | `def` | [conjugate](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/conjugate--ee987a664862eac7f538f9d6.md) | 325 | `declaration-track:ee987a664862eac7f538f9d61eab64c7a4dead84a53d7b2893c0cfbf1565fbb2` |
| 42 | `theorem` | [conjugate_apply](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/conjugate-apply--89a8bf850daba584bf52420a.md) | 329 | `result-track:89a8bf850daba584bf52420ae11e7122bcb9a2abe6371f41b61cc6c3e924e2ad` |
| 43 | `theorem` | [conjugate_one](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/conjugate-one--ffba07205e8a84e9d9e32001.md) | 336 | `result-track:ffba07205e8a84e9d9e320011acd4e2a6dd260e0379df7194539e7e167afc6ca` |
| 44 | `theorem` | [conjugate_self](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/conjugate-self--5a1d7aab9c158c1b98bbbcd8.md) | 342 | `result-track:5a1d7aab9c158c1b98bbbcd84bdbe625f613e3053c958820d5cb0a078eea2c49` |
| 45 | `theorem` | [conjugate_pow](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/conjugate-pow--005d5571c92206b133db9b65.md) | 349 | `result-track:005d5571c92206b133db9b65bcfb5503fe845033d5fef93287f3cd0e85d11e18` |
| 46 | `theorem` | [HammingIso.toPerm_symm_apply](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingiso-toperm-symm-apply--ed3230293c0848cfeba46c99.md) | 368 | `result-track:ed3230293c0848cfeba46c999c4310b76d2a2d6ecf5a19ecbb642a089ff08c39` |
| 47 | `theorem` | [HammingIso.toPerm_symm_xor_basis](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingiso-toperm-symm-xor-basis--dac17e3de40e31104352c7f9.md) | 375 | `result-track:dac17e3de40e31104352c7f95c54ca676968a65e1afc60b31f3475092188edb5` |
| 48 | `theorem` | [HammingIso.toPerm_xor_cancel](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/hammingiso-toperm-xor-cancel--47caaeb353f85310e94a0cf8.md) | 387 | `result-track:47caaeb353f85310e94a0cf8594c84f9e4516238af6d31e9f06a1930611b8a7d` |
| 49 | `theorem` | [bitDerivative_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/bitderivative-conjugate-hammingiso--a9edd6f2cba6445442eb736e.md) | 399 | `result-track:a9edd6f2cba6445442eb736e164bd06cea3a718e3f995dc892b1908339628271` |
| 50 | `theorem` | [derivativeBit_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/derivativebit-conjugate-hammingiso--a3d7b6c96d3013e042423102.md) | 413 | `result-track:a3d7b6c96d3013e04242310271fac0ee6270386db94071388e3a677bf9e04ba5` |
| 51 | `theorem` | [sacCount_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/saccount-conjugate-hammingiso--78cc212b83c32af6e8db12d1.md) | 425 | `result-track:78cc212b83c32af6e8db12d113df2d96af0dd85182dcf7c03968e5d0b8be53d7` |
| 52 | `theorem` | [strictSAC_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/strictsac-conjugate-hammingiso--2d373ee0bf46562e5b004d20.md) | 439 | `result-track:2d373ee0bf46562e5b004d20a0b2dd0133c4d54314d6c2507b8a9b2c84de91d5` |
| 53 | `theorem` | [sacEntry_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/sacentry-conjugate-hammingiso--dbd61cdf9b045e39524ebe2a.md) | 451 | `result-track:dbd61cdf9b045e39524ebe2a72a4bae366f74be4b7f14a76432733120021a5ca` |
| 54 | `theorem` | [sum_sacEntry_relabel](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/sum-sacentry-relabel--f7d22978e05b12d62b7885c7.md) | 459 | `result-track:f7d22978e05b12d62b7885c771c27057ed8762f3003477f0ec36c5b819df0742` |
| 55 | `theorem` | [sacScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/sacscore-conjugate-hammingiso--ea68c54a8560a2bba4a636d1.md) | 486 | `result-track:ea68c54a8560a2bba4a636d15ca5794f878ea080228857f57f7121de14774521` |
| 56 | `theorem` | [varianceScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/variancescore-conjugate-hammingiso--a60730ecd2108f41580ea3be.md) | 496 | `result-track:a60730ecd2108f41580ea3be11d00a3894a3876a7d40f03f76553d1485313c93` |
| 57 | `def` | [fixedPoints](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/fixedpoints--5a40e3a322798295e63a9c24.md) | 513 | `declaration-track:5a40e3a322798295e63a9c244bf588eca76ac9fd806e460c723dd8a0ed8ee456` |
| 58 | `def` | [fixedPointCount](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/fixedpointcount--dcd92d668f53a5d0e6bd2240.md) | 517 | `declaration-track:dcd92d668f53a5d0e6bd224030102ff03a1c32136f9b517157b09ddb12e5f6c3` |
| 59 | `theorem` | [mem_fixedPoints_iff](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/mem-fixedpoints-iff--6acab7f1beb4b576f67bc6da.md) | 520 | `result-track:6acab7f1beb4b576f67bc6dabb5d1cffa465a9b74c035cc0e228fe17be542041` |
| 60 | `theorem` | [fixedPoints_zero](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/fixedpoints-zero--6eb3307e0021e54f7d326ce4.md) | 528 | `result-track:6eb3307e0021e54f7d326ce4f8685f2e12766e2d0327de02dc331d25969e58c7` |
| 61 | `theorem` | [fixedPointCount_zero](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/fixedpointcount-zero--adc3a16502eeb82f6cad863a.md) | 534 | `result-track:adc3a16502eeb82f6cad863af7c9fe3408488c23b354f4c9c3784a7354685725` |
| 62 | `theorem` | [fixedPointCount_le](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/fixedpointcount-le--35a7fb21e624efe4af4d54a5.md) | 539 | `result-track:35a7fb21e624efe4af4d54a58595156cfe04c81bc8d0fd40bb4dfe1e1282470d` |
| 63 | `theorem` | [fixedPointCount_conjugate](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/fixedpointcount-conjugate--38f091dc3d834cbdf9ebb53e.md) | 545 | `result-track:38f091dc3d834cbdf9ebb53ef583c42a2593c659b85fdeb5c06b951ddbfd344f` |
| 64 | `theorem` | [fixedPointCount_identity](../../../../mathematics/Algebra/Symmetry/Variantb41fa12fa5433f9fc8e404153ca76eee7b2a5e00b7897032d71cbafa90edd077.lean/declarations/fixedpointcount-identity--bfe14927cb37c8603fa1f5a2.md) | 563 | `result-track:bfe14927cb37c8603fa1f5a2770f0f7e973d8126a6746db5b565af529288f0fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
