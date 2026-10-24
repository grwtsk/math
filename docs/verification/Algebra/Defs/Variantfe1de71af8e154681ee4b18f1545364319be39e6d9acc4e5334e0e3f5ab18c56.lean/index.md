# Verification target: GRWTSK.Algebra.Defs.Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83a7d595e291f84a1a799518f2a755b9ee9455a8",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83a7d595e291f84a1a799518f2a755b9ee9455a8`.

Source path: `GRWTSK/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_natCast](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-natcast--1bdf8708a5e12ec1eca91a60.md) | 46 | `result-track:1bdf8708a5e12ec1eca91a6037182506ed2f5e0f4f506190a92403f8240685aa` |
| 2 | `lemma` | [cast_ofNat](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-ofnat--768ae3d57afb5191e9275dff.md) | 48 | `result-track:768ae3d57afb5191e9275dff9ae2414e7ce76c1ae4ed12154259904fccfe06c2` |
| 3 | `lemma` | [cast_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-zero--0f14252843f1a1fff153e05f.md) | 51 | `result-track:0f14252843f1a1fff153e05faa04ec5b404d4b16989c3c9512591b5f6bb12b47` |
| 4 | `lemma` | [cast_one](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-one--677b598af08d3cdc0be8e352.md) | 52 | `result-track:677b598af08d3cdc0be8e3524827e764be60bf08ea1aa97c20c523f980c557b7` |
| 5 | `lemma` | [cast_commute](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-commute--bef0e0db3a9e6dc57dcfc78f.md) | 54 | `result-track:bef0e0db3a9e6dc57dcfc78f9e2ef0e167c733892195ff956e41dcb13b9ceb27` |
| 6 | `lemma` | [commute_cast](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/commute-cast--f8d2e9dde5004a231be6643c.md) | 57 | `result-track:f8d2e9dde5004a231be6643ca172c333a386f20cb253efd100cbdb16b629f247` |
| 7 | `lemma` | [cast_comm](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-comm--1ac343d1f7b318e7bcfcf796.md) | 59 | `result-track:1ac343d1f7b318e7bcfcf79686b2fa065264d2170356bc8b77ed7e20880c7403` |
| 8 | `lemma` | [cast_divNat_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-divnat-of-ne-zero--0bf1abb64fcae1a6f943200e.md) | 62 | `result-track:0bf1abb64fcae1a6f943200ee7e2ae7bdc2a3e6466b6938be94f17ac296ef55e` |
| 9 | `lemma` | [cast_add_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-add-of-ne-zero--fdeded77c8643d061db0f6c4.md) | 82 | `result-track:fdeded77c8643d061db0f6c45c5f7c320003280d4a4a3e1f56e13b462125989c` |
| 10 | `lemma` | [cast_mul_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-mul-of-ne-zero--79e76c790cb72beccabdc2ef.md) | 92 | `result-track:79e76c790cb72beccabdc2efb01b6f00bb1706a89982f37dcdd30774f4b168ee` |
| 11 | `lemma` | [cast_inv_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-inv-of-ne-zero--a27357caa5e603d38f9b2b7c.md) | 102 | `result-track:a27357caa5e603d38f9b2b7cf9f08d72d41acf83a1e70a031402aba907e3b61c` |
| 12 | `lemma` | [cast_div_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-div-of-ne-zero--7343eb492e1d2bc886fce9cb.md) | 106 | `result-track:7343eb492e1d2bc886fce9cbfc879d59aec0edc6800b7edb1d6ab1b101ffea56` |
| 13 | `theorem` | [cast_intCast](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-intcast--43e1e75ce2de3ae59bc3a2c5.md) | 122 | `result-track:43e1e75ce2de3ae59bc3a2c5b4dd6e4a05194300cf6cd730cadf5876364d1da2` |
| 14 | `theorem` | [cast_natCast](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-natcast--e3fa3188b2a3c51be629916a.md) | 126 | `result-track:e3fa3188b2a3c51be629916ad929f2bced6289f4a77f629d7602111202abf7ff` |
| 15 | `lemma` | [cast_ofNat](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-ofnat--f05af3742205aed1badf9a0a.md) | 130 | `result-track:f05af3742205aed1badf9a0a54f9f945771b8747a3f2c074d9cbdcf8f62bc902` |
| 16 | `theorem` | [cast_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-zero--1d2fdafc987e0fb736641d7b.md) | 135 | `result-track:1d2fdafc987e0fb736641d7bb1a0f8687fee9f7d5a2c1162d89895266735c71c` |
| 17 | `theorem` | [cast_one](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-one--c7531143165ff47acf8885bc.md) | 139 | `result-track:c7531143165ff47acf8885bcff05a52bcfd4bad8a0785a0109cdb08535735920` |
| 18 | `theorem` | [cast_commute](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-commute--427973db5dfab931d76f97d1.md) | 142 | `result-track:427973db5dfab931d76f97d185ae06bc640194b7d2940362a075f730a678b36d` |
| 19 | `theorem` | [cast_comm](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-comm--589960572fe0293311375e3d.md) | 145 | `result-track:589960572fe0293311375e3d2c42127a729fc2bba930632a9382b7c1b8b9fe58` |
| 20 | `theorem` | [commute_cast](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/commute-cast--e598e58697a121b1c3a690fc.md) | 148 | `result-track:e598e58697a121b1c3a690fc4c898749a719c5367b8fb7d534ab563082f03609` |
| 21 | `lemma` | [cast_divInt_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-divint-of-ne-zero--c01019feb0c2919f59aeee97.md) | 152 | `result-track:c01019feb0c2919f59aeee97f3425bbc0a07d7d42fcebbae4593ceb2f2067d91` |
| 22 | `lemma` | [cast_mkRat_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-mkrat-of-ne-zero--9bb19d87f7f4fcba3837c7ad.md) | 172 | `result-track:9bb19d87f7f4fcba3837c7ad862d516d45d036cf7c8d0c790e3741f349047e33` |
| 23 | `lemma` | [cast_add_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-add-of-ne-zero--46331185074992acc66e6ab8.md) | 176 | `result-track:46331185074992acc66e6ab841bf4771979eaadf5059bf5926ce8a6f68f3b377` |
| 24 | `lemma` | [cast_neg](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-neg--be5eaecb3b368321222089be.md) | 185 | `result-track:be5eaecb3b368321222089be448b373cf58849d0662661745316d16e6fbd1b25` |
| 25 | `lemma` | [cast_sub_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-sub-of-ne-zero--1d8093ea4dbda0842e02b53f.md) | 187 | `result-track:1d8093ea4dbda0842e02b53f4652e4d7ca0ff7f4737616a38d3d12cc37e64478` |
| 26 | `lemma` | [cast_mul_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-mul-of-ne-zero--164609ab891cb8c643297883.md) | 190 | `result-track:164609ab891cb8c64329788306e65625900f145a0563acfb63eb57364f94bd5f` |
| 27 | `lemma` | [cast_inv_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-inv-of-ne-zero--7db0c1cfca0c00890209aa8e.md) | 200 | `result-track:7db0c1cfca0c00890209aa8e24b90a88198a1850cba0c87edf4b1beab3c75b7b` |
| 28 | `lemma` | [cast_div_of_ne_zero](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/cast-div-of-ne-zero--9da702b8eb2904256f2caddc.md) | 203 | `result-track:9da702b8eb2904256f2caddccef10fdb7f9169c2ac970d31bc36f788209bbdb4` |
| 29 | `lemma` | [map_nnratCast](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/map-nnratcast--b469bdb5a153beeeb68d8e64.md) | 218 | `result-track:b469bdb5a153beeeb68d8e642625c6a6a5e1b9628b7cff6c9efd79fcdae39523` |
| 30 | `lemma` | [eq_nnratCast](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/eq-nnratcast--16eb7c07571b9d6f94e87a11.md) | 222 | `result-track:16eb7c07571b9d6f94e87a11438724848ba8874de14787d9d03b2abf486f97c4` |
| 31 | `theorem` | [map_ratCast](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/map-ratcast--934a0633de8681f46bde40ac.md) | 226 | `result-track:934a0633de8681f46bde40ac652192baceb31e6c19129531a7c6f1707395c9f8` |
| 32 | `lemma` | [eq_ratCast](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/eq-ratcast--bbb46d73b28ea00a372db6a7.md) | 229 | `result-track:bbb46d73b28ea00a372db6a7da6d8d7ec3b701f492037ab5a95a51f43ac427ab` |
| 33 | `lemma` | [ext_nnrat'](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/ext-nnrat--866695aad7e6dc48e93d7337.md) | 240 | `result-track:866695aad7e6dc48e93d7337d715c536d79231f2bd0ad500e0a5068fe7349955` |
| 34 | `lemma` | [ext_nnrat](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/ext-nnrat--1aee6a4b459cd1829cfbed0c.md) | 249 | `result-track:1aee6a4b459cd1829cfbed0c7804d2d109382d46f2f6be52cb699689272d2884` |
| 35 | `lemma` | [ext_nnrat_on_pnat](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/ext-nnrat-on-pnat--3ffc395561dd813d8ced83f8.md) | 255 | `result-track:3ffc395561dd813d8ced83f8133453adbf4968270afb54a06ab57956ee4021a0` |
| 36 | `theorem` | [ext_rat'](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/ext-rat--131e9467446174578a662bd9.md) | 266 | `result-track:131e9467446174578a662bd9fdfcbef0cd3c29fd60defca8dab47ebdf9df2c85` |
| 37 | `theorem` | [ext_rat](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/ext-rat--c61ef3a3b2b9be8ada44477a.md) | 276 | `result-track:c61ef3a3b2b9be8ada44477ae3d5d2101a8d2e745589f234e0cd1148be47810b` |
| 38 | `theorem` | [ext_rat_on_pnat](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/ext-rat-on-pnat--6085a63fb178545319d2c89e.md) | 282 | `result-track:6085a63fb178545319d2c89e29f3e3dd8319a0d95afa40e5284cd330032c56c4` |
| 39 | `theorem` | [RingHom.ext_rat](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/ringhom-ext-rat--e8e9d29ce1209ec24a5a5c9e.md) | 296 | `result-track:e8e9d29ce1209ec24a5a5c9eb98393bf51e0f700c63ccae0fc7aac4bf8c40e84` |
| 40 | `instance` | [NNRat.subsingleton_ringHom](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/nnrat-subsingleton-ringhom--5d2f95cb50fd335505677560.md) | 302 | `declaration-track:5d2f95cb50fd33550567756037bd5a8fdd17b14694ff5dbbc926f7e6fc413a36` |
| 41 | `instance` | [Rat.subsingleton_ringHom](../../../../mathematics/Algebra/Defs/Variantfe1de71af8e154681ee4b18f1545364319be39e6d9acc4e5334e0e3f5ab18c56.lean/declarations/rat-subsingleton-ringhom--5c53a86f4be9cf51e8d9695d.md) | 305 | `declaration-track:5c53a86f4be9cf51e8d9695da96403f6e7ec0b082ac07a9d0aee2a5e247696ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
