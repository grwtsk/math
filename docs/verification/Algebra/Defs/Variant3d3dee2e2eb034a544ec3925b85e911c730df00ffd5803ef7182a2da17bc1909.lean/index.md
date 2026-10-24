# Verification target: GRWTSK.Algebra.Defs.Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9554cf30fb157ab3256363117be2f87c2b2a63c1",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9554cf30fb157ab3256363117be2f87c2b2a63c1`.

Source path: `GRWTSK/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean.json)

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
| 1 | `lemma` | [cast_natCast](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-natcast--538d9eab99c23925f79521b3.md) | 38 | `result-track:538d9eab99c23925f79521b342e083286489cd2e8a3cb317682c925aa2170a2d` |
| 2 | `lemma` | [cast_ofNat](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-ofnat--bf326b37a321531269259e37.md) | 40 | `result-track:bf326b37a321531269259e37afe298f0b1043340320ba8e22c9a46375e72fe06` |
| 3 | `lemma` | [cast_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-zero--150b0ca4487cd6755b492fa5.md) | 43 | `result-track:150b0ca4487cd6755b492fa509447c6da087919c77684fc168d7d7ca9ab5352d` |
| 4 | `lemma` | [cast_one](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-one--1de243f527a962edd8ce9ac8.md) | 44 | `result-track:1de243f527a962edd8ce9ac8612469220232f1d57aeadb43dc22ae3c4a5273a1` |
| 5 | `lemma` | [cast_commute](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-commute--2ffc20af74a882e49d3811cb.md) | 46 | `result-track:2ffc20af74a882e49d3811cb9c8bd13fae7d86659ee1cf09c0dca8e0da43f29e` |
| 6 | `lemma` | [commute_cast](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/commute-cast--7e4d39edc6479bb15fd64de5.md) | 49 | `result-track:7e4d39edc6479bb15fd64de5378b27376c3ba4ca6c06c7c9c27a10b7e3c2ea9e` |
| 7 | `lemma` | [cast_comm](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-comm--f3263ec08577ced9294f6bae.md) | 51 | `result-track:f3263ec08577ced9294f6baeb55064149f9734fc6d1c71d315b3af6d3413574c` |
| 8 | `lemma` | [cast_divNat_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-divnat-of-ne-zero--2edf79f3a6be662dcbd26cac.md) | 54 | `result-track:2edf79f3a6be662dcbd26cac9b116147cbfb6ddfcfa7e1de3d1dfcc0aaecef3b` |
| 9 | `lemma` | [cast_add_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-add-of-ne-zero--9d51d21f5e5bdc0d056ce071.md) | 74 | `result-track:9d51d21f5e5bdc0d056ce071fd9ca2d8321b690a3739ef4c484cc14c15cbd6ab` |
| 10 | `lemma` | [cast_mul_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-mul-of-ne-zero--d1054c0593ccc55e6729d252.md) | 84 | `result-track:d1054c0593ccc55e6729d25241de24f45beb306d8c02a309d9369f4ff1ca3569` |
| 11 | `lemma` | [cast_inv_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-inv-of-ne-zero--8c4ed0c506e5c29dcef44527.md) | 94 | `result-track:8c4ed0c506e5c29dcef445274997dc5e809449fbb0377e0af2c1cb5380d14134` |
| 12 | `lemma` | [cast_div_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-div-of-ne-zero--86a862f91a380e7cfe272c93.md) | 98 | `result-track:86a862f91a380e7cfe272c9372e7714a6de97f3fe7a11cb93a6682cb27292189` |
| 13 | `theorem` | [cast_intCast](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-intcast--627be3a031d7f7149f9e9038.md) | 114 | `result-track:627be3a031d7f7149f9e903879a71e5e56b4bed69cc037c98827e0d0164b897b` |
| 14 | `theorem` | [cast_natCast](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-natcast--fc3fd75a3edcb832f8343b2b.md) | 118 | `result-track:fc3fd75a3edcb832f8343b2bcaafb49f338d67516fb25e338640f13a684bc16a` |
| 15 | `lemma` | [cast_ofNat](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-ofnat--cdeeaf3fdba98e39bcf2c3b1.md) | 122 | `result-track:cdeeaf3fdba98e39bcf2c3b1a3dca11e7ec6536a6727bfc2f35e9eb635816ca1` |
| 16 | `theorem` | [cast_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-zero--c328e4ab0db04044a100b152.md) | 127 | `result-track:c328e4ab0db04044a100b15205e4e6823e5c1b64701506b3993b7c96ce7d0f8e` |
| 17 | `theorem` | [cast_one](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-one--4a677397ba919a17fb49d43a.md) | 131 | `result-track:4a677397ba919a17fb49d43ad1918e769d91015ca8f2faa0275016bbf60a64f1` |
| 18 | `theorem` | [cast_commute](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-commute--592279416428d4c5ae8fd45f.md) | 134 | `result-track:592279416428d4c5ae8fd45fb8b9f4810e5857ea03cf6cad0722d2a249efb0e8` |
| 19 | `theorem` | [cast_comm](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-comm--24dfaa64b6c2a23e18bb922f.md) | 137 | `result-track:24dfaa64b6c2a23e18bb922fb89527435e54051af635dbe6a91f35455a00e9fc` |
| 20 | `theorem` | [commute_cast](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/commute-cast--913912663b4f9c60a5e4f507.md) | 140 | `result-track:913912663b4f9c60a5e4f5078e3a04c0484058e217dac6be96070aa3515b6ede` |
| 21 | `lemma` | [cast_divInt_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-divint-of-ne-zero--eafcd4fbcca5b7eb541e2b66.md) | 144 | `result-track:eafcd4fbcca5b7eb541e2b66ea81c53abdf5b2c9c56dd384f32c6ecd04bfa8e9` |
| 22 | `lemma` | [cast_mkRat_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-mkrat-of-ne-zero--a25d1b14c467e94cc8b13d08.md) | 164 | `result-track:a25d1b14c467e94cc8b13d08ebb821f2f52b93507a14752cd199af58fa2f42b5` |
| 23 | `lemma` | [cast_add_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-add-of-ne-zero--6f852c19ce8514e5a02abdfb.md) | 168 | `result-track:6f852c19ce8514e5a02abdfbfa0e8a7f064c47280a457d604498445372090131` |
| 24 | `lemma` | [cast_neg](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-neg--8c1eae169aced256b800b01e.md) | 177 | `result-track:8c1eae169aced256b800b01e62d40b6c23b3ade68ad0ac86eb48643d3bb18c0a` |
| 25 | `lemma` | [cast_sub_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-sub-of-ne-zero--e01d7af7c5288d44a3c2e341.md) | 179 | `result-track:e01d7af7c5288d44a3c2e34163a4119128b8ee0d5a3886ff4ae8ddade2e65b3b` |
| 26 | `lemma` | [cast_mul_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-mul-of-ne-zero--1aa1d1061a18e8364fe194a9.md) | 182 | `result-track:1aa1d1061a18e8364fe194a9f984197e3ef0f895595da9ae7345fdf4d00a7507` |
| 27 | `lemma` | [cast_inv_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-inv-of-ne-zero--f98b6745848b8abc9d578bb2.md) | 192 | `result-track:f98b6745848b8abc9d578bb2addbc52ec99bfebe87ecf74ec78cd387bf5955f3` |
| 28 | `lemma` | [cast_div_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/cast-div-of-ne-zero--d4ca4a0136fee77ebe2c4800.md) | 195 | `result-track:d4ca4a0136fee77ebe2c4800a426118128384157b8ccaa6773ab30f071f374f6` |
| 29 | `lemma` | [map_nnratCast](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/map-nnratcast--18e09fca8cb2304ba5f7c7f3.md) | 210 | `result-track:18e09fca8cb2304ba5f7c7f3ed3a3970f8adeedecbefc3163abb49e743f0a054` |
| 30 | `lemma` | [eq_nnratCast](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/eq-nnratcast--1664249cf8ad98152c1b37d3.md) | 214 | `result-track:1664249cf8ad98152c1b37d39addb8aad333c0650a779552d69924d7c3a8cc5e` |
| 31 | `theorem` | [map_ratCast](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/map-ratcast--6f858554c6bc272f31e3a466.md) | 218 | `result-track:6f858554c6bc272f31e3a4666f56cf5ea6152991be2917ed5c30d74d449c6f56` |
| 32 | `lemma` | [eq_ratCast](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/eq-ratcast--ef15838455de38fc84472db1.md) | 221 | `result-track:ef15838455de38fc84472db1803a1f03f06003b0399e8e379d55dc1f7d425a26` |
| 33 | `lemma` | [ext_nnrat'](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/ext-nnrat--cd93332fd51a134f98441159.md) | 232 | `result-track:cd93332fd51a134f98441159eb616b013792300fec5aad85e6e0cb3db35f10f7` |
| 34 | `lemma` | [ext_nnrat](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/ext-nnrat--2473e783d6e125571f0f9b2e.md) | 241 | `result-track:2473e783d6e125571f0f9b2e48f92fb029cf983d63e9cb9b0a4e86cd7453aab8` |
| 35 | `lemma` | [ext_nnrat_on_pnat](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/ext-nnrat-on-pnat--3d897de5acb197bf21d19ecc.md) | 247 | `result-track:3d897de5acb197bf21d19eccd200c642b9aa8e57e1fc7a7bb592a0449d4627ac` |
| 36 | `theorem` | [ext_rat'](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/ext-rat--3d990856d485b918263a4746.md) | 258 | `result-track:3d990856d485b918263a47468371fd66dd18cddab25b333b26742208f81a0255` |
| 37 | `theorem` | [ext_rat](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/ext-rat--6d9f2ed6366bc018c2d80aff.md) | 268 | `result-track:6d9f2ed6366bc018c2d80affe8cd7ef8b3c3a1fea9e3156f38770e6e6ccb0427` |
| 38 | `theorem` | [ext_rat_on_pnat](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/ext-rat-on-pnat--e76b62609c460f6bd7b4f135.md) | 274 | `result-track:e76b62609c460f6bd7b4f135541fa4cc89ccd6b2f03eb42a25d093e972a65ebb` |
| 39 | `theorem` | [RingHom.ext_rat](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/ringhom-ext-rat--b14f8d67708599ca34215a8d.md) | 288 | `result-track:b14f8d67708599ca34215a8d9891461ea97d44051329f56e9e460be0b615ab66` |
| 40 | `instance` | [NNRat.subsingleton_ringHom](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/nnrat-subsingleton-ringhom--49dec832b89f49ab4f99558c.md) | 294 | `declaration-track:49dec832b89f49ab4f99558c51d3449501aaa670edbc5ad1fe754a4766aea5c3` |
| 41 | `instance` | [Rat.subsingleton_ringHom](../../../../mathematics/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/declarations/rat-subsingleton-ringhom--d1b391cb2cf6980a681ac7da.md) | 297 | `declaration-track:d1b391cb2cf6980a681ac7dac4445b1da7fd324760dd494cac185c747f7df1e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
