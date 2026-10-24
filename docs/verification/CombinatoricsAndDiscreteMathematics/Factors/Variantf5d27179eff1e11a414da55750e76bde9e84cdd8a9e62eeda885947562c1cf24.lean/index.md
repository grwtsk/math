# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Factors.Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f48fca6d29e72e80349cba89bc65f1854c6c0de",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f48fca6d29e72e80349cba89bc65f1854c6c0de`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Multiset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Prime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.OrderedMonoid` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimeMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/primemultiset--10bf8d363801a8831d6b02de.md) | 35 | `declaration-track:10bf8d363801a8831d6b02de7f05eb21cc7ca95ce661c08c3e4116d4a00bba47` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/instance--59d230efd5dcb20bc21c1d83.md) | 42 | `declaration-track:59d230efd5dcb20bc21c1d83f7b27879374c1d20dec545fd3d9aa40adc70ed26` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/instance--c91ccd3357556485db9a24d3.md) | 45 | `declaration-track:c91ccd3357556485db9a24d367b6446845e479208cef35f3b0488de24064113e` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/instance--bb1fc19a80111450e163ec65.md) | 48 | `declaration-track:bb1fc19a80111450e163ec658206e528f1a67956be038023af09bec0a888b0e7` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/instance--856fe25f4cd2a52f810ed9aa.md) | 51 | `declaration-track:856fe25f4cd2a52f810ed9aa0aae46f06d854d12acfd5d3e8021d11445f11db1` |
| 6 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/instance--a26b0622028e80b49bd78c4f.md) | 57 | `declaration-track:a26b0622028e80b49bd78c4f1de1d184ada7b274bef6643b4b9899b49d576804` |
| 7 | `def` | [ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/ofprime--8801e24b267ab9d3f17871ac.md) | 60 | `declaration-track:8801e24b267ab9d3f17871ac8c184549dbbaef67be32f14088e18fddc24424c1` |
| 8 | `theorem` | [card_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/card-ofprime--342759848b8228cb2fdbfbde.md) | 63 | `result-track:342759848b8228cb2fdbfbde754fdcd4225d2f58c95a227e8f04ea4d87d5ab8e` |
| 9 | `def` | [toNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/tonatmultiset--340313b501689ff2c34990c1.md) | 74 | `declaration-track:340313b501689ff2c34990c100ccc5a31778aac1b93c399d99fd979e0c9231cb` |
| 10 | `instance` | [coeNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coenat--fdbfd4dd84be34008b17f5cf.md) | 76 | `declaration-track:fdbfd4dd84be34008b17f5cf6b9aaf1be687ae9fc1b141cdcf60f3d0fe0abf8e` |
| 11 | `def` | [coeNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coenatmonoidhom--d15fd3fefe7440e041ec9c43.md) | 81 | `declaration-track:d15fd3fefe7440e041ec9c43489991c66dc62806b7a8d0b46b46b5be5dc4895a` |
| 12 | `theorem` | [coe_coeNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coe-coenatmonoidhom--04dc481d3cc43fea0ac17d59.md) | 85 | `result-track:04dc481d3cc43fea0ac17d593c6963defdea986e4b30da56f33bbd350c983ee9` |
| 13 | `theorem` | [coeNat_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coenat-injective--e6b86749ae31e54ac8832a32.md) | 88 | `result-track:e6b86749ae31e54ac8832a32cc514af550ccbd70a12121666223c624d54b6a2c` |
| 14 | `theorem` | [coeNat_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coenat-ofprime--9938dd2b0a03994eac8462e4.md) | 91 | `result-track:9938dd2b0a03994eac8462e44ed8ea05abf92feaf8c3ea91ac240869a5a3847f` |
| 15 | `theorem` | [coeNat_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coenat-prime--83e0e65c35c7c37fe60eb198.md) | 94 | `result-track:83e0e65c35c7c37fe60eb1981f02810e4d3aec9492920745fae7152bd1faee2c` |
| 16 | `def` | [toPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/topnatmultiset--9e7ef02621ce2e1439f418de.md) | 99 | `declaration-track:9e7ef02621ce2e1439f418deed76aa5815919d43ee9b0a2a6e94ac9aadd0f154` |
| 17 | `instance` | [coePNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coepnat--8872038d90f50352a91edbac.md) | 101 | `declaration-track:8872038d90f50352a91edbac21c93a2972957d77f01cdeea2efe83f44196a2a0` |
| 18 | `def` | [coePNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coepnatmonoidhom--b381660e04678ad4f97228ea.md) | 106 | `declaration-track:b381660e04678ad4f97228eac87721765159c56957594d618b0a9df91b2b0408` |
| 19 | `theorem` | [coe_coePNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coe-coepnatmonoidhom--386e7c8fbe4913acc794c09d.md) | 110 | `result-track:386e7c8fbe4913acc794c09df44891521b786bfc9b85815a8e8c5fcc4e146ad7` |
| 20 | `theorem` | [coePNat_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coepnat-injective--1788bece1f19713f37df9f6b.md) | 113 | `result-track:1788bece1f19713f37df9f6ba7880fc8b2c06fe55863766294724432bac6681f` |
| 21 | `theorem` | [coePNat_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coepnat-ofprime--0755d47084f48825e5ef20c0.md) | 116 | `result-track:0755d47084f48825e5ef20c0022f2ca46226204e3f0e767823dbe937719624f8` |
| 22 | `theorem` | [coePNat_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coepnat-prime--63af32a498f6d8c808ad826d.md) | 119 | `result-track:63af32a498f6d8c808ad826da9f3b6f5fdb829c34848f6b64ef70aaf7f5983a2` |
| 23 | `instance` | [coeMultisetPNatNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coemultisetpnatnat--2603ff4b2b7dbc17e0a01492.md) | 123 | `declaration-track:2603ff4b2b7dbc17e0a01492163ba9f1bc9407fa317e3e3d209ff8bd946c7cb3` |
| 24 | `theorem` | [coePNat_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coepnat-nat--18b85d96a4a29a9a71b81227.md) | 126 | `result-track:18b85d96a4a29a9a71b81227d7959ac7462b49cfbe802f360e53cf712383c0b5` |
| 25 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod--080f4022764ada35cb7e9abe.md) | 132 | `declaration-track:080f4022764ada35cb7e9abe09b9f5109c7f9ecdfba01bc3f75229e2d3a3d5ca` |
| 26 | `theorem` | [coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coe-prod--05150cb527fc142b90dabbaa.md) | 135 | `result-track:05150cb527fc142b90dabbaac360e2dfee5e7bbadf4b7edf7cef3dc0bf98125b` |
| 27 | `theorem` | [prod_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-ofprime--a08e57860f96bd1334de0879.md) | 140 | `result-track:a08e57860f96bd1334de08799172ab269816aca63129785871a18b043d473bc5` |
| 28 | `def` | [ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/ofnatmultiset--10e8fb5e96191ae714c6bc26.md) | 144 | `declaration-track:10e8fb5e96191ae714c6bc261cb8e4e34281f1edfb659f6e34ab73ab3f49877a` |
| 29 | `theorem` | [to_ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/to-ofnatmultiset--5742c1a3b01e1ab52e3d3819.md) | 147 | `result-track:5742c1a3b01e1ab52e3d3819ef06702c21a5d12395d0469ea1dce6fdd9bcb034` |
| 30 | `theorem` | [prod_ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-ofnatmultiset--384c3e1f50765dc2b134690d.md) | 151 | `result-track:384c3e1f50765dc2b134690d22fcd3d752a2c84434fa283df321e824dd28aca5` |
| 31 | `def` | [ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/ofpnatmultiset--d7438e16cf9fecbdf985083b.md) | 155 | `declaration-track:d7438e16cf9fecbdf985083b66efd6f70a60181e0d51ace0f7f031210a9871f7` |
| 32 | `theorem` | [to_ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/to-ofpnatmultiset--2db63af5efc0bfaa4b93e295.md) | 158 | `result-track:2db63af5efc0bfaa4b93e2953c9974954b608238e74b706d9dc2008d3b80ec2f` |
| 33 | `theorem` | [prod_ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-ofpnatmultiset--0aadacd29dd6a2627978b14d.md) | 166 | `result-track:0aadacd29dd6a2627978b14d000769dc272b7397d456a53b3e45c3d9ba42cbda` |
| 34 | `def` | [ofNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/ofnatlist--3ef7625553f232d5072e66c1.md) | 172 | `declaration-track:3ef7625553f232d5072e66c1fc48bb642bc4f98eae3710686111c373e219f0f1` |
| 35 | `theorem` | [prod_ofNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-ofnatlist--247fe13f141bd9b18a1b8ed0.md) | 175 | `result-track:247fe13f141bd9b18a1b8ed0584470edb7d8a6a891ef437e3092283bafeb15b2` |
| 36 | `def` | [ofPNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/ofpnatlist--2bb28f34f9d39638aeee1b7f.md) | 182 | `declaration-track:2bb28f34f9d39638aeee1b7ff3253f3ec4204c4cac059e971853eef8d324adbf` |
| 37 | `theorem` | [prod_ofPNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-ofpnatlist--a33f416033915bd6b4f1265d.md) | 185 | `result-track:a33f416033915bd6b4f1265d1cef51964fdce01ee214eccf7f38fe4b020a8757` |
| 38 | `theorem` | [prod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-zero--992e15fb60804f1950950ac3.md) | 192 | `result-track:992e15fb60804f1950950ac3ae01a34ca6e61d3dc3411f0f6d8a29696a009d4d` |
| 39 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-add--c6e95799397a5664eba305fb.md) | 195 | `result-track:c6e95799397a5664eba305fba864464083015d9b42d773dd487b0cf8689b482d` |
| 40 | `theorem` | [prod_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-smul--c3a9616560779e26e72847e5.md) | 200 | `result-track:c3a9616560779e26e72847e5fb50a3dc7053200eb1dac70fa5b4fa8dc1aabc38` |
| 41 | `def` | [factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset--28a651902649ad6dbc73c84f.md) | 210 | `declaration-track:28a651902649ad6dbc73c84f5be084fb155254c07da4a502b5c59cad7518e0cc` |
| 42 | `theorem` | [prod_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-factormultiset--a8fdfde630a5590f9fcc538f.md) | 214 | `result-track:a8fdfde630a5590f9fcc538f20390ff08b737c754dd34d78ad87e7e86b236a5b` |
| 43 | `theorem` | [coeNat_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/coenat-factormultiset--bfc17c027cd17ee2eede2378.md) | 220 | `result-track:bfc17c027cd17ee2eede2378e6a7936e84be27b7e62271d554b73ceb5a7c7224` |
| 44 | `theorem` | [factorMultiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset-prod--00f39dd381e3119a297f2695.md) | 230 | `result-track:00f39dd381e3119a297f2695ac8bb95725d528677f6e9b63dc0cf584bd24c95d` |
| 45 | `def` | [factorMultisetEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultisetequiv--cbbbbda4d67a4c7deb029f1c.md) | 247 | `declaration-track:cbbbbda4d67a4c7deb029f1c989c20f21c5fc29f400ec440e5a81b8f2f22c16a` |
| 46 | `theorem` | [factorMultiset_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset-one--1b766feddecfd447a70dddc7.md) | 255 | `result-track:1b766feddecfd447a70dddc78d70f95840ab2079dfb59605772a729d2c117167` |
| 47 | `theorem` | [factorMultiset_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset-mul--ef6e911326de33b606373e47.md) | 258 | `result-track:ef6e911326de33b606373e47983f741ddf9ce697d169b3aba6ab40ff92050e66` |
| 48 | `theorem` | [factorMultiset_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset-pow--420a8c6d2c7ec7f603e6b26d.md) | 267 | `result-track:420a8c6d2c7ec7f603e6b26d9a23392de01021f23dc18d35cb4e3a9569bc5388` |
| 49 | `theorem` | [factorMultiset_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset-ofprime--739c8dff51c43f62156e9c67.md) | 275 | `result-track:739c8dff51c43f62156e9c674799a155c41e3d92cb34b6b6698d4869186dbfdd` |
| 50 | `theorem` | [factorMultiset_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset-le-iff--c7b1f4d9bc763dffa1b2710e.md) | 284 | `result-track:c7b1f4d9bc763dffa1b2710ec2d6c3f93857dc4627919aa0d1c9a15634796e4c` |
| 51 | `theorem` | [factorMultiset_le_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset-le-iff--3f91d3681159571c5276e4cd.md) | 295 | `result-track:3f91d3681159571c5276e4cd004d2e9bf12036a5ace010ea4d518b85856eb8a2` |
| 52 | `theorem` | [prod_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-dvd-iff--ad36227f1d9da34f822afa18.md) | 305 | `result-track:ad36227f1d9da34f822afa18bd3e4deaf0cf48edd19c3aa7a42f2dbac1f6a1a7` |
| 53 | `theorem` | [prod_dvd_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-dvd-iff--db4fa7577d18ac167e171b5f.md) | 310 | `result-track:db4fa7577d18ac167e171b5fe0f0e6a3fb1aeb3f9edc3e2c4adb2b70d61d41d3` |
| 54 | `theorem` | [factorMultiset_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset-gcd--127d3089e04bbc2d257a7c40.md) | 321 | `result-track:127d3089e04bbc2d257a7c4014725993f50fa8b7e503cbd9d054cecf5fc262ca` |
| 55 | `theorem` | [factorMultiset_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/factormultiset-lcm--0776fcaab54b4e44b2c62e73.md) | 332 | `result-track:0776fcaab54b4e44b2c62e7306fa43f46789cb40d852b54b1f3eac347ec24198` |
| 56 | `theorem` | [count_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/count-factormultiset--a63876ea85c86ac771cba274.md) | 345 | `result-track:a63876ea85c86ac771cba274405f69250bbf3b4c1e2f6c4c987ed0c850caff43` |
| 57 | `theorem` | [prod_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-inf--6ab81bf98f737a0c1d5e676d.md) | 361 | `result-track:6ab81bf98f737a0c1d5e676d345ed263469d79bfe076655a467aad1226f23b32` |
| 58 | `theorem` | [prod_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variantf5d27179eff1e11a414da55750e76bde9e84cdd8a9e62eeda885947562c1cf24.lean/declarations/prod-sup--a4ef6168597b94e2c3fc7590.md) | 369 | `result-track:a4ef6168597b94e2c3fc75908c1f1284ebb91add07b22b1b4418d172d03970aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
