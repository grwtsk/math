# Verification target: GRWTSK.Algebra.Symmetry.Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e2df824c903e7685d8f6df66526da567889a880",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e2df824c903e7685d8f6df66526da567889a880`.

Source path: `GRWTSK/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Network.Permutation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BitPerm](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/bitperm--0212e2ad43ed64dc7afd7927.md) | 31 | `declaration-track:0212e2ad43ed64dc7afd79279158c3bd254ed843e11868a5e0c9cd3b6bd474af` |
| 2 | `def` | [BitPerm.ofBijective](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/bitperm-ofbijective--695862c7df7528a95ee826ce.md) | 34 | `declaration-track:695862c7df7528a95ee826ce653fa05f9e8e826ab388d5e7e8954d8c304a2dc6` |
| 3 | `theorem` | [BitPerm.ofBijective_apply](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/bitperm-ofbijective-apply--35124f23dc9e3598f2f63f24.md) | 41 | `result-track:35124f23dc9e3598f2f63f247e8656b4fc8b53afe58746e841357c03a5dc69c8` |
| 4 | `def` | [XorGroup](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/xorgroup--91ba27cd58d8e6c7edd48284.md) | 56 | `declaration-track:91ba27cd58d8e6c7edd48284818ca4747f1d4155018b517d52152be55e661544` |
| 5 | `instance` | [instOne](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/instone--8a8e202b359d2caf61e584f6.md) | 60 | `declaration-track:8a8e202b359d2caf61e584f6feefcf24cdceb139271dbf582aac84382ede3dbd` |
| 6 | `instance` | [instMul](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/instmul--205547f30fbe4809d4cee631.md) | 63 | `declaration-track:205547f30fbe4809d4cee6319292d5f3916f8c4cc8e51a7c19b851717af52465` |
| 7 | `instance` | [instInv](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/instinv--2a7a2fec0e0888f18c35d8d2.md) | 66 | `declaration-track:2a7a2fec0e0888f18c35d8d2f0675280460a7f91a40e627d0279e486c60878a6` |
| 8 | `instance` | [instCommGroup](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/instcommgroup--25f1307e7a04c8e60cfe8d50.md) | 69 | `declaration-track:25f1307e7a04c8e60cfe8d507e7dc82318d2c1b363cf2576954e3dd7306552b2` |
| 9 | `def` | [toBits](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/tobits--252ca8646b0ed0b355f652c0.md) | 77 | `declaration-track:252ca8646b0ed0b355f652c0e4edc1fb1742960b63f6522d84f635c8cdc49efa` |
| 10 | `theorem` | [one_toBits](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/one-tobits--05a0662f7a0ff9d33c3d457b.md) | 81 | `result-track:05a0662f7a0ff9d33c3d457b7f347931a71a32e43ba603923581793ef1e5274f` |
| 11 | `theorem` | [mul_toBits](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/mul-tobits--6c4759488044eb635b7dad60.md) | 86 | `result-track:6c4759488044eb635b7dad601ee2ffbc9f83215ec3d7ef42db16293c3e2a867c` |
| 12 | `theorem` | [inv_eq](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/inv-eq--0821b9c26c449d6b0a4c29e6.md) | 91 | `result-track:0821b9c26c449d6b0a4c29e6691f57f23c4923d91f5cf8775c31daa52148d09c` |
| 13 | `structure` | [MonoidEmbedding](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/monoidembedding--547163472f0fe3ae0b282778.md) | 102 | `declaration-track:547163472f0fe3ae0b2827788e0d98ffa79e567d394f8f70a1fd99462190e862` |
| 14 | `instance` | [instCoeFunForall](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/instcoefunforall--8f9293a426cb946340072375.md) | 110 | `declaration-track:8f9293a426cb946340072375cffe9d96389a983cb783d0b744db5fe78999a156` |
| 15 | `theorem` | [injective](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/injective--0a11cc48f918ac0328e6f886.md) | 115 | `result-track:0a11cc48f918ac0328e6f8865b0a5a3a2f8b57e50574abad6c0a265abf52ee85` |
| 16 | `theorem` | [translation_mul_apply](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/translation-mul-apply--842add3de08b28c076d96a82.md) | 124 | `result-track:842add3de08b28c076d96a82ebb14a1f1487bbbd31563fcec129837951b0a93e` |
| 17 | `def` | [translationHom](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/translationhom--c7d5064786e7adbe8bd2a551.md) | 135 | `declaration-track:c7d5064786e7adbe8bd2a551c353ec46d6eeaf02b36f5ca41f4d46d0e4ac1c42` |
| 18 | `theorem` | [translationHom_apply](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/translationhom-apply--c5b59cf11815dc45882540d0.md) | 144 | `result-track:c5b59cf11815dc45882540d0b69669cff1123bbaaf76ff62615cc06eab4ab68f` |
| 19 | `theorem` | [translationHom_injective](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/translationhom-injective--fbb1fe6ff1b6f7383c76c532.md) | 151 | `result-track:fbb1fe6ff1b6f7383c76c532abb78a87aa0c7c042b71f0b480b2d88f88a03669` |
| 20 | `def` | [translationEmbedding](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/translationembedding--0a9369525eee63eae9a1b652.md) | 159 | `declaration-track:0a9369525eee63eae9a1b65267a5e06b561960f0496250ea4a7eeb68036bd47f` |
| 21 | `theorem` | [translationHom_one](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/translationhom-one--2eeba0f70f41b4d7cc63e5c0.md) | 164 | `result-track:2eeba0f70f41b4d7cc63e5c09a3ae0d367511000f1051f49df7c47d7f60e5d0b` |
| 22 | `theorem` | [translation_comm](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/translation-comm--771d12cec7a9c2fbc533fd9e.md) | 168 | `result-track:771d12cec7a9c2fbc533fd9ee9aaadc486684b4915bb123cf378ab6c1d6e8e76` |
| 23 | `theorem` | [translation_order_two](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/translation-order-two--6cdabd51403f4b9c6c4a9298.md) | 173 | `result-track:6cdabd51403f4b9c6c4a9298fe1eb6cdcf877182e8d91f00c240e667c2442ccb` |
| 24 | `def` | [coordinatePermutationHom](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/coordinatepermutationhom--ad37bcd5b15484802b5edd10.md) | 184 | `declaration-track:ad37bcd5b15484802b5edd1021ae3475c8aad034983c5114298c2d21bc08c33c` |
| 25 | `theorem` | [coordinatePermutationHom_apply](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/coordinatepermutationhom-apply--2a29326e328025167cc70129.md) | 193 | `result-track:2a29326e328025167cc70129accb47b1006cecc6cc8eb3b1b90def60e719db00` |
| 26 | `theorem` | [coordinatePermutation_basisBit](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/coordinatepermutation-basisbit--311270f1519a7103fec587a8.md) | 200 | `result-track:311270f1519a7103fec587a86d79ed80504768204688c792000be202585b0331` |
| 27 | `theorem` | [basisBit_injective](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/basisbit-injective--63bf594e326750e0cd534888.md) | 209 | `result-track:63bf594e326750e0cd534888205bba53477b5d22f56e26efa2ba123fa1d2be9a` |
| 28 | `theorem` | [coordinatePermutationHom_injective](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/coordinatepermutationhom-injective--7f7d33e25c86231016e2fd21.md) | 217 | `result-track:7f7d33e25c86231016e2fd21bcf6cab3c3f44d0dff145d4792171eee63c4896c` |
| 29 | `def` | [coordinatePermutationEmbedding](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/coordinatepermutationembedding--e2e7b40666430a28046eafd9.md) | 231 | `declaration-track:e2e7b40666430a28046eafd9ed6957732733a553162ded5b8776c495f368ac4b` |
| 30 | `def` | [hammingDistance](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingdistance--f4c4b5921ede16cd069b9a38.md) | 239 | `declaration-track:f4c4b5921ede16cd069b9a38385e8a19fe684973ed143d950820a3209e6ee661` |
| 31 | `theorem` | [hammingDistance_self](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingdistance-self--f2d6d5e0220f40f94f5a662d.md) | 243 | `result-track:f2d6d5e0220f40f94f5a662dcc49efd424eac9db15172f3e4aac491b7d13b1d2` |
| 32 | `theorem` | [hammingDistance_comm](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingdistance-comm--4d93fab74aa704fabf0c88a9.md) | 247 | `result-track:4d93fab74aa704fabf0c88a9d9d31a08d157ba2f5106a567e1cb185a9a438ab5` |
| 33 | `theorem` | [hammingDistance_eq_zero_iff](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingdistance-eq-zero-iff--917866c0aae987d020604f34.md) | 251 | `result-track:917866c0aae987d020604f34f4721d815b64909322790edbdab470d8333af393` |
| 34 | `structure` | [HammingIso](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingiso--0eb2beb906e7367dbbc17318.md) | 257 | `declaration-track:0eb2beb906e7367dbbc1731894c262aa0c878ddec871501c7e2dc9d73321c006` |
| 35 | `def` | [HammingIso.toPerm](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingiso-toperm--ed8c3fc31b9fdc2864bcd682.md) | 262 | `declaration-track:ed8c3fc31b9fdc2864bcd68216b97a0942968c29d8685129e293498eb97f3efe` |
| 36 | `theorem` | [HammingIso.toPerm_apply](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingiso-toperm-apply--554f7c324e217af2661eee47.md) | 266 | `result-track:554f7c324e217af2661eee477acb080a904729954903845ed7f01f0b3bcd3f80` |
| 37 | `theorem` | [xorBits_cancel_both_right](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/xorbits-cancel-both-right--025851dc10c22f856aba6a21.md) | 273 | `result-track:025851dc10c22f856aba6a21e2fbc9f9921c6572db4639a7a5e837d72ca1cb72` |
| 38 | `theorem` | [coordinatePermutation_zero](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/coordinatepermutation-zero--eeb46bde1e30b7e4f5c7543b.md) | 280 | `result-track:eeb46bde1e30b7e4f5c7543b22053beee56aae731a85d0d306c3675616a2033a` |
| 39 | `theorem` | [HammingIso.hammingDistance_toPerm](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingiso-hammingdistance-toperm--e389796ab0138c67ecb9806c.md) | 287 | `result-track:e389796ab0138c67ecb9806cd0759b68d76e5853a5c3f2d1f49240e13d9f4ff3` |
| 40 | `theorem` | [HammingIso.toPerm_injective](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingiso-toperm-injective--c38783172fbedc9195ce16f7.md) | 298 | `result-track:c38783172fbedc9195ce16f78f7914dd9ec85c03909c0b98d844a77b7227d26c` |
| 41 | `def` | [conjugate](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/conjugate--3a72d631c3aa03a69ff2b7ae.md) | 317 | `declaration-track:3a72d631c3aa03a69ff2b7ae8b68a92bc709738e7454431e706bc568fef968fd` |
| 42 | `theorem` | [conjugate_apply](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/conjugate-apply--b16b9676febf8f9c53e819e0.md) | 321 | `result-track:b16b9676febf8f9c53e819e06bce7fc4e735788d80f02f9a4d8bce1b3f748fba` |
| 43 | `theorem` | [conjugate_one](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/conjugate-one--5b258db5709dff3bc31456ff.md) | 328 | `result-track:5b258db5709dff3bc31456ffe4a2634eb218e6bbb10ead5aa735e91bd4426d1b` |
| 44 | `theorem` | [conjugate_self](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/conjugate-self--f3773ff90f287a284562832e.md) | 334 | `result-track:f3773ff90f287a284562832e708a6c46e47a6146d363e896cef3f8316e62a881` |
| 45 | `theorem` | [conjugate_pow](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/conjugate-pow--7cd8d8760452e00d553c29a4.md) | 341 | `result-track:7cd8d8760452e00d553c29a445b6fccdf1767be4ff4da699d00495e96a1ce4dc` |
| 46 | `theorem` | [HammingIso.toPerm_symm_apply](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingiso-toperm-symm-apply--ea73c6d32843e6eb1cc436d4.md) | 360 | `result-track:ea73c6d32843e6eb1cc436d40c6368ae2ac7f17a469e006fde698d3842b0f8b2` |
| 47 | `theorem` | [HammingIso.toPerm_symm_xor_basis](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingiso-toperm-symm-xor-basis--02380317f103dc4aed5c5bb9.md) | 367 | `result-track:02380317f103dc4aed5c5bb9f05fc5a8c7138f376386b80046f368d25052e95d` |
| 48 | `theorem` | [HammingIso.toPerm_xor_cancel](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/hammingiso-toperm-xor-cancel--a37fc62e441469c9c1ed0373.md) | 379 | `result-track:a37fc62e441469c9c1ed0373f52ce011d76c29e1948eb3ccd56af73eec594bfe` |
| 49 | `theorem` | [bitDerivative_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/bitderivative-conjugate-hammingiso--92a14c6394644dbb8f49f27f.md) | 391 | `result-track:92a14c6394644dbb8f49f27f4d779f94166f02d554197edbe260c22a734a1047` |
| 50 | `theorem` | [derivativeBit_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/derivativebit-conjugate-hammingiso--83e5979591dddf8df1e60797.md) | 405 | `result-track:83e5979591dddf8df1e6079778a11b52f842891811097c4adf13603ccb347a6b` |
| 51 | `theorem` | [sacCount_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/saccount-conjugate-hammingiso--0d36f54922a99d5917af5fb0.md) | 417 | `result-track:0d36f54922a99d5917af5fb062f1ab234dfddcb9cac2038fc5f220208e207c74` |
| 52 | `theorem` | [strictSAC_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/strictsac-conjugate-hammingiso--8932d9ef91ace591eb2ecfe4.md) | 431 | `result-track:8932d9ef91ace591eb2ecfe469090ee9a505edb0054e75488b70b8bedef72ab6` |
| 53 | `theorem` | [sacEntry_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/sacentry-conjugate-hammingiso--f26e9debeb50b9f474baf709.md) | 443 | `result-track:f26e9debeb50b9f474baf709cc89cb41b195471fa1c04ed5e17d7ccc701b8c53` |
| 54 | `theorem` | [sum_sacEntry_relabel](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/sum-sacentry-relabel--b554438814f75f51bcd2cb10.md) | 451 | `result-track:b554438814f75f51bcd2cb10648f44039b19760f48ee8291610ccade4c126e5a` |
| 55 | `theorem` | [sacScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/sacscore-conjugate-hammingiso--5361fbe14d31c1333c6895c4.md) | 478 | `result-track:5361fbe14d31c1333c6895c4ea31e5631a5f10e93df07c9daf533ef1dc761a59` |
| 56 | `theorem` | [varianceScore_conjugate_hammingIso](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/variancescore-conjugate-hammingiso--59e1246e344cbfa2a349fd52.md) | 488 | `result-track:59e1246e344cbfa2a349fd527b5a76cbe0b2f9ced339f72057549fa6acd271be` |
| 57 | `def` | [fixedPoints](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/fixedpoints--7416858ae61528b59ff81bbd.md) | 505 | `declaration-track:7416858ae61528b59ff81bbddebdc7c461565672aa3079b0bd045f65a1243ab8` |
| 58 | `def` | [fixedPointCount](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/fixedpointcount--ad1fc53adb96b34cf0d9aded.md) | 509 | `declaration-track:ad1fc53adb96b34cf0d9aded2b80f23e59007a92145828c70b6771d849ca7883` |
| 59 | `theorem` | [mem_fixedPoints_iff](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/mem-fixedpoints-iff--f253050c96075a2dc3f46795.md) | 512 | `result-track:f253050c96075a2dc3f46795fa3a2aaa08c636432f8cef450e2cd2f74b675c81` |
| 60 | `theorem` | [fixedPoints_zero](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/fixedpoints-zero--7453cbff035a19e451a00815.md) | 520 | `result-track:7453cbff035a19e451a00815f132cb307b0c47d8e288ec3fb8501fe5ce30ac59` |
| 61 | `theorem` | [fixedPointCount_zero](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/fixedpointcount-zero--93777d315270c976ccaa3dbd.md) | 526 | `result-track:93777d315270c976ccaa3dbd56b15e28dd614fe6a2bfb9d8a158716ece1f7c9e` |
| 62 | `theorem` | [fixedPointCount_le](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/fixedpointcount-le--15c26817051aa40a8b97c858.md) | 531 | `result-track:15c26817051aa40a8b97c858fdc04a71fbf7ac7226b6daaa394eb3667758e7ce` |
| 63 | `theorem` | [fixedPointCount_conjugate](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/fixedpointcount-conjugate--05dadfa66bb55de64f907e27.md) | 537 | `result-track:05dadfa66bb55de64f907e276aa2b161fdb31baa5df1b07c5750105bc3b49566` |
| 64 | `theorem` | [fixedPointCount_identity](../../../../mathematics/Algebra/Symmetry/Variantec14e8913e14ac2ba9ba288a05b5aa5257a9626896fda1a00d516b9ba292e65d.lean/declarations/fixedpointcount-identity--c922bdb9750ec7e53dd7455b.md) | 555 | `result-track:c922bdb9750ec7e53dd7455bb68a99870215199dd0690f31a56b49255ef44484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
