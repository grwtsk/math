# Verification target: GRWTSK.NumberTheory.Basic.Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1946164d82bcbd41f15e053d24ac92b20fa6411",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1946164d82bcbd41f15e053d24ac92b20fa6411`.

Source path: `GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MulChar](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/mulchar--61a212c827c64fa75a57a1ab.md) | 65 | `declaration-track:61a212c827c64fa75a57a1ab39d6b4f37141581b9329cae8148c58314bb5ccf7` |
| 2 | `instance` | [MulChar.instFunLike](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/mulchar-instfunlike--bd6b7b49925e6900f7e628d7.md) | 68 | `declaration-track:bd6b7b49925e6900f7e628d70cc8c5d7aaf1823cf5501eae912221aa9fa1680c` |
| 3 | `class` | [MulCharClass](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/mulcharclass--bad19a39972b7a4f7dac2b5e.md) | 73 | `declaration-track:bad19a39972b7a4f7dac2b5ea60743b14e3d739d3bb2419569485363a4560f09` |
| 4 | `def` | [trivial](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/trivial--a276d0aa59a81f7a583cc3de.md) | 97 | `declaration-track:a276d0aa59a81f7a583cc3dea8f1fac6d49163df1f06d0226ab3e6a6d3a21ad5` |
| 5 | `theorem` | [coe_mk](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/coe-mk--a223584ca2267c490315c6f9.md) | 110 | `result-track:a223584ca2267c490315c6f9925355e3600108f95fe6f2e9f768b8e34a6c43f2` |
| 6 | `theorem` | [ext'](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ext--972fe5686301173bd1ceb92c.md) | 114 | `result-track:972fe5686301173bd1ceb92c0f5180de021fe6afdd82ed9aed8042ac8eaea624` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/instance--66ddddb6383405ed116cbfef.md) | 120 | `declaration-track:66ddddb6383405ed116cbfef8f78382a7328b4aadb1585c5067499d74f18fd4a` |
| 8 | `theorem` | [map_nonunit](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/map-nonunit--8d274f6dec1945d60b968251.md) | 125 | `result-track:8d274f6dec1945d60b968251584f9d1063117e9146fa4c97d5da4fea64417454` |
| 9 | `theorem` | [ext](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ext--9bf0414e11c33bc505200356.md) | 131 | `result-track:9bf0414e11c33bc50520035672fc57e7042b464129c228c2257fd18f4853c28e` |
| 10 | `def` | [toUnitHom](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/tounithom--89f98057f8e009517bf585de.md) | 147 | `declaration-track:89f98057f8e009517bf585ded5a9499fbacc8adb5d72aac83c322933f30f3ce4` |
| 11 | `theorem` | [coe_toUnitHom](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/coe-tounithom--9b9e9037a419a88e7b1f72a9.md) | 150 | `result-track:9b9e9037a419a88e7b1f72a972aeca72940e068034bcd6162964568a71ec09ab` |
| 12 | `def` | [ofUnitHom](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ofunithom--b122227f77f97e119e4ec6e8.md) | 154 | `declaration-track:b122227f77f97e119e4ec6e867224c1b4f873ab20f8020e34fad318df60a58c3` |
| 13 | `theorem` | [ofUnitHom_coe](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ofunithom-coe--8cfb41343ca5270b6d252e1d.md) | 175 | `result-track:8cfb41343ca5270b6d252e1d0aa2cf75d9f4457004788084664c9c768e7b1ca4` |
| 14 | `def` | [equivToUnitHom](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/equivtounithom--e8ca04d253619039d3d0a792.md) | 178 | `declaration-track:e8ca04d253619039d3d0a792016d3368a7e0bae3effccd71d4adecf85281e2c0` |
| 15 | `theorem` | [toUnitHom_eq](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/tounithom-eq--563278ea8428655ef4a7eed3.md) | 191 | `result-track:563278ea8428655ef4a7eed31824f9c5582504c1e7829b88da68c7fa00726c04` |
| 16 | `theorem` | [ofUnitHom_eq](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ofunithom-eq--cdd3f32b752f650be95cd71b.md) | 195 | `result-track:cdd3f32b752f650be95cd71b409341e3b6026666a4c9f0bdb7368c60f2faa64c` |
| 17 | `theorem` | [coe_equivToUnitHom](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/coe-equivtounithom--d8e9d8d1f6f4e37c27471c53.md) | 199 | `result-track:d8e9d8d1f6f4e37c27471c531952b470f821325702f01e8d8895d92bb96d460a` |
| 18 | `theorem` | [equivToUnitHom_symm_coe](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/equivtounithom-symm-coe--2d5e60b587146c48b9c52275.md) | 203 | `result-track:2d5e60b587146c48b9c52275239504cb3b8cbde4a4f25d8b18db355453658d6c` |
| 19 | `lemma` | [coe_toMonoidHom](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/coe-tomonoidhom--2551ba0a1b7a37b8fc51bb0f.md) | 207 | `result-track:2551ba0a1b7a37b8fc51bb0fb464d33790b240d3fed09762e9f9bf7b83d2530a` |
| 20 | `theorem` | [map_one](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/map-one--c6f7a9ef874befb820b72bd6.md) | 217 | `result-track:c6f7a9ef874befb820b72bd618a0535614015336114bdbfd7c050d37f5bb0283` |
| 21 | `theorem` | [map_zero](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/map-zero--800ff13b76242124d5ee7346.md) | 221 | `result-track:800ff13b76242124d5ee73464566545d0d8c6167c26147c55ab7c575cb11f532` |
| 22 | `def` | [toMonoidWithZeroHom](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/tomonoidwithzerohom--c61be33c59db97c37daa4e64.md) | 227 | `declaration-track:c61be33c59db97c37daa4e64baff12a4232f422ed2705c78f27b55d224392760` |
| 23 | `theorem` | [map_ringChar](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/map-ringchar--38c56ddeb0301789e4d7997f.md) | 235 | `result-track:38c56ddeb0301789e4d7997f49b83c333bbdee4f3b1b10ee4cfeca2acf740864` |
| 24 | `instance` | [hasOne](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/hasone--e9a0db19a54b4e62fb421a78.md) | 238 | `declaration-track:e9a0db19a54b4e62fb421a7898d3f5958f48ccad815e3415d8d5ce22f89d5a02` |
| 25 | `instance` | [inhabited](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/inhabited--36bea98daac9eae5099c4f8c.md) | 241 | `declaration-track:36bea98daac9eae5099c4f8c4772c98512b08357cc3cb8513c5d803892e5eb61` |
| 26 | `theorem` | [one_apply_coe](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/one-apply-coe--d7222c9281ca5c87f78e2d75.md) | 246 | `result-track:d7222c9281ca5c87f78e2d75319d6e880390bccb0e9f3fbfd1e92ed259fabbf9` |
| 27 | `lemma` | [one_apply](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/one-apply--7bf43af75ef9801bde7d3647.md) | 249 | `result-track:7bf43af75ef9801bde7d364743259cb8093f295ba77da4756cb621176971b051` |
| 28 | `def` | [mul](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/mul--cf8ce24f9e1db8770ba3729f.md) | 252 | `declaration-track:cf8ce24f9e1db8770ba3729f07718effec1e276873a210e6820815d1ffcedd14` |
| 29 | `instance` | [hasMul](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/hasmul--ca49349e6a662356cda6016d.md) | 257 | `declaration-track:ca49349e6a662356cda6016d0ca2cd18e7944b48539b1aac9b37d0dc7e745e3a` |
| 30 | `theorem` | [mul_apply](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/mul-apply--80c26da7baa5987acff22201.md) | 260 | `result-track:80c26da7baa5987acff22201d140e25a5083ffcae1c91468d6b313fcd0eb95ec` |
| 31 | `theorem` | [coeToFun_mul](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/coetofun-mul--b83a94e96802d19631600e7d.md) | 264 | `result-track:b83a94e96802d19631600e7d1704ae3c42e602040fac47800fdcdf18307b6808` |
| 32 | `theorem` | [one_mul](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/one-mul--b40927d8b6a32bd3d3544746.md) | 267 | `result-track:b40927d8b6a32bd3d3544746e1218ede81c6a9a948f2ba1ece6cb848b00f99af` |
| 33 | `theorem` | [mul_one](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/mul-one--1d5550e3416af98f6e87ef06.md) | 271 | `result-track:1d5550e3416af98f6e87ef06138b64be5af0e16f2d08cb85d3c74def6ee5705b` |
| 34 | `def` | [inv](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/inv--aa3f587b78551e92b8adab87.md) | 276 | `declaration-track:aa3f587b78551e92b8adab872937be35459205f98e5ba33ddac3f04ec6ddc213` |
| 35 | `instance` | [hasInv](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/hasinv--68c20fb74e2c2f5312679120.md) | 281 | `declaration-track:68c20fb74e2c2f5312679120a50aa971d8680d582acd093d3cd8c7e043cecf35` |
| 36 | `theorem` | [inv_apply_eq_inv](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/inv-apply-eq-inv--684922ba189b1836da6d8ca7.md) | 285 | `result-track:684922ba189b1836da6d8ca7271e26f70f2b8016c1ceac094fb1f36dcc2b830a` |
| 37 | `theorem` | [inv_apply_eq_inv'](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/inv-apply-eq-inv--fa4e6faaa5fb56073103c28f.md) | 290 | `result-track:fa4e6faaa5fb56073103c28fffe6b306a3c7f053f7a3b034dbecedc51f541bd8` |
| 38 | `theorem` | [inv_apply](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/inv-apply--d18ca0eaadee8b1999c45754.md) | 296 | `result-track:d18ca0eaadee8b1999c4575493bafac34456ab2c4c9ab3f0cdf440d42266d299` |
| 39 | `theorem` | [inv_apply'](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/inv-apply--c440219826ba6683731483e4.md) | 312 | `result-track:c440219826ba6683731483e44478fee8aa176f1ef31ae2dfd8a1628687231900` |
| 40 | `theorem` | [inv_mul](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/inv-mul--f4540aeeb01cf47c2190ec9a.md) | 316 | `result-track:f4540aeeb01cf47c2190ec9a80e1321c0b185641d4a8bd840f1420eb69c9ce10` |
| 41 | `instance` | [commGroup](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/commgroup--b96c8f9ef0eedb721be6de34.md) | 323 | `declaration-track:b96c8f9ef0eedb721be6de345ac5b4770b43b173bf6b0e36e7eccf2faebb0a32` |
| 42 | `theorem` | [pow_apply_coe](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/pow-apply-coe--9675a0cc7af53cda355117f1.md) | 340 | `result-track:9675a0cc7af53cda355117f1550c47ecc1cbb56fd84f8e2d3b2b2f8b6fa2bd4e` |
| 43 | `theorem` | [pow_apply'](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/pow-apply--73e02816367e425793138b72.md) | 346 | `result-track:73e02816367e425793138b7268341ea1f03d6f088502fd1bc51a392f5d733fde` |
| 44 | `lemma` | [equivToUnitHom_mul_apply](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/equivtounithom-mul-apply--cb1a26b36f3dc8f865245e7d.md) | 351 | `result-track:cb1a26b36f3dc8f865245e7d1e5d633b8a6aff9b905bfeaf80c0b84ef35b6f0b` |
| 45 | `def` | [mulEquivToUnitHom](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/mulequivtounithom--8afb12b9c5ce4df5915a7ecc.md) | 360 | `declaration-track:8afb12b9c5ce4df5915a7ecce09ceafa46c90fb0061c5406b2be3a12a7cdf939` |
| 46 | `lemma` | [eq_one_iff](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/eq-one-iff--7851d61a7731f2e9b819f339.md) | 388 | `result-track:7851d61a7731f2e9b819f339c75020ee4a3cdb1caf3a6d6180ae911c1f1f428e` |
| 47 | `lemma` | [ne_one_iff](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ne-one-iff--a381e5030a8f3a30fbeb96be.md) | 391 | `result-track:a381e5030a8f3a30fbeb96beb742af5cf79a49e66b85e2df7ff106b3c84faf86` |
| 48 | `def` | [IsQuadratic](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/isquadratic--3a852071afbf056b624f134f.md) | 401 | `declaration-track:3a852071afbf056b624f134f4896a1988c750f99ca8bfcf18657efb7eee39cb8` |
| 49 | `theorem` | [IsQuadratic.eq_of_eq_coe](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/isquadratic-eq-of-eq-coe--5404f9c184069fcadfa3cfa3.md) | 406 | `result-track:5404f9c184069fcadfa3cfa30879384dc01aabd97af376fb4208a386e567aaa2` |
| 50 | `def` | [ringHomComp](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ringhomcomp--189a6088fa1f4ed88c396ca8.md) | 413 | `declaration-track:189a6088fa1f4ed88c396ca8a0af82c363ff9b148c1999396a5007100386ab12` |
| 51 | `lemma` | [ringHomComp_one](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ringhomcomp-one--33bc6d0959feee4689becb2b.md) | 419 | `result-track:33bc6d0959feee4689becb2bbc44ddfd42ad101f21e2d79a206fcdcc801022ab` |
| 52 | `lemma` | [ringHomComp_inv](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ringhomcomp-inv--25b00e8c6a6e1b58eba1a680.md) | 423 | `result-track:25b00e8c6a6e1b58eba1a680b8c1774240b57693d3276a9960650c5111f5d629` |
| 53 | `lemma` | [ringHomComp_mul](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ringhomcomp-mul--d335057812d9015ef8446000.md) | 428 | `result-track:d335057812d9015ef84460000b444f508b23cb2c68782c48dd7af9aa292f8956` |
| 54 | `lemma` | [ringHomComp_pow](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ringhomcomp-pow--4ec9f3db01476c0ec05cd1c0.md) | 433 | `result-track:4ec9f3db01476c0ec05cd1c0ea91e14e167347ab7be2550a3ea9b8ff226f36e8` |
| 55 | `lemma` | [injective_ringHomComp](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/injective-ringhomcomp--b300599ccbea899a3be7e518.md) | 439 | `result-track:b300599ccbea899a3be7e518fcaf979360835b51a3a7682c49f5f066c12cb40f` |
| 56 | `lemma` | [ringHomComp_eq_one_iff](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ringhomcomp-eq-one-iff--cc183d38e76f063a0e0a9404.md) | 445 | `result-track:cc183d38e76f063a0e0a9404c382fe5dfbe6074c41f6dc805d18d93630068017` |
| 57 | `lemma` | [ringHomComp_ne_one_iff](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/ringhomcomp-ne-one-iff--6cff04c27db464000eeba99c.md) | 450 | `result-track:6cff04c27db464000eeba99cb7323a59593fcee59192bd15b55b2c692f01bf9f` |
| 58 | `theorem` | [IsQuadratic.comp](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/isquadratic-comp--d75bed5bb6bbeacc789139ea.md) | 455 | `result-track:d75bed5bb6bbeacc789139ea9e5a87b96dd71692758c1471242321af725a2358` |
| 59 | `theorem` | [IsQuadratic.inv](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/isquadratic-inv--3e94b7ee0bc3159971845fd0.md) | 461 | `result-track:3e94b7ee0bc3159971845fd03bcf58d1c929f4580c2bd4d7688afcdf57f0d44e` |
| 60 | `theorem` | [IsQuadratic.sq_eq_one](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/isquadratic-sq-eq-one--34d5fde86d3a30e892174016.md) | 473 | `result-track:34d5fde86d3a30e89217401650f42568947813b091b7f9e4e2dd6c59424ab327` |
| 61 | `theorem` | [IsQuadratic.pow_char](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/isquadratic-pow-char--0f9a65c1f919d5580f4a684b.md) | 478 | `result-track:0f9a65c1f919d5580f4a684ba20790bd8e74084d3e3ecd0c2a9382524319c94c` |
| 62 | `theorem` | [IsQuadratic.pow_even](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/isquadratic-pow-even--384dd891c4f4dd869389f704.md) | 488 | `result-track:384dd891c4f4dd869389f704a5b0f4972b99b1a5d0be5b04f554cd1538ac4a4d` |
| 63 | `theorem` | [IsQuadratic.pow_odd](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/isquadratic-pow-odd--b74b0c8f3cbc1edcdfa5fa0f.md) | 494 | `result-track:b74b0c8f3cbc1edcdfa5fa0fa8acd697cc21c6da61b7560d43dcace408232b33` |
| 64 | `lemma` | [isQuadratic_iff_sq_eq_one](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/isquadratic-iff-sq-eq-one--ea1b71b1381e4719ce44e238.md) | 501 | `result-track:ea1b71b1381e4719ce44e2381c8cd074b58741fff45bda5eeeb1e4ae9e4d17f7` |
| 65 | `lemma` | [pow_card_eq_one](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/pow-card-eq-one--edd5761fd05f4b20a05dead3.md) | 530 | `result-track:edd5761fd05f4b20a05dead30b6f5219aefe9ce2023e8be078fbe92bc22410a0` |
| 66 | `lemma` | [orderOf_pos](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/orderof-pos--7c533a049c89484548aa67d8.md) | 537 | `result-track:7c533a049c89484548aa67d891e2524239e0d740085d64569df7227af2f469d8` |
| 67 | `theorem` | [sum_eq_zero_of_ne_one](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/sum-eq-zero-of-ne-one--58c71c9e310d770b951d90ae.md) | 550 | `result-track:58c71c9e310d770b951d90ae4aa1fb599ad406589feeac55e94c87ed89cd8529` |
| 68 | `theorem` | [sum_one_eq_card_units](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/sum-one-eq-card-units--b9b48c38cd55439003043e32.md) | 557 | `result-track:b9b48c38cd55439003043e3266ddf8df01f74299558571fb5bb976da0cae15eb` |
| 69 | `lemma` | [val_neg_one_eq_one_of_odd_order](../../../../mathematics/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/declarations/val-neg-one-eq-one-of-odd-order--1ffa9d1a9c71b51aafd48289.md) | 584 | `result-track:1ffa9d1a9c71b51aafd48289f7cb37af45fca191cebf7779f3db823101a1d5e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
