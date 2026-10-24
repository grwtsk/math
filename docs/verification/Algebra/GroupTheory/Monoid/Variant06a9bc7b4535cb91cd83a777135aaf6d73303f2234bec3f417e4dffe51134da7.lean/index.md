# Verification target: GRWTSK.Algebra.GroupTheory.Monoid.Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c05203915d4f735c0fc83dbb174a65040c5a05bd",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c05203915d4f735c0fc83dbb174a65040c5a05bd`.

Source path: `GRWTSK/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Nat.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natCast_mul](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/natcast-mul--54dd21715be5a430fc22ee69.md) | 31 | `result-track:54dd21715be5a430fc22ee690f57d09f960ac00bc704ddec0b3647ecb1da3d05` |
| 2 | `theorem` | [mul_top](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/mul-top--bf1f228cb0589bb2b54da387.md) | 35 | `result-track:bf1f228cb0589bb2b54da3871844c1961ccd4de6452e0cd8b2bd8fa28f53a1e5` |
| 3 | `theorem` | [top_mul](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/top-mul--260642bb58115ae6953e8d8b.md) | 36 | `result-track:260642bb58115ae6953e8d8bd13417fddd282c856f0bc810dcbd96ae5b4778d3` |
| 4 | `theorem` | [mul_top'](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/mul-top--3df8424791183b0b3acb2b71.md) | 39 | `result-track:3df8424791183b0b3acb2b710e1ab1676051dc5a2f08ad052366eebc247cdf6c` |
| 5 | `theorem` | [top_mul'](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/top-mul--8d6d8d34941d2c190f4b731e.md) | 42 | `result-track:8d6d8d34941d2c190f4b731ed086d7f83f747445889bd82ea83fa6cf94f97abf` |
| 6 | `lemma` | [top_pow](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/top-pow--b2da14b31bc190e00caadf7e.md) | 44 | `result-track:b2da14b31bc190e00caadf7ebc5d720d88c6dc5175d45db3730d325ccdbb7c39` |
| 7 | `lemma` | [pow_eq_top_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/pow-eq-top-iff--95391a2513d0c059dce83f0c.md) | 46 | `result-track:95391a2513d0c059dce83f0c9cd6b9f2d6edc91738dcc0035fb4bae6ffe56db1` |
| 8 | `lemma` | [pow_ne_top_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/pow-ne-top-iff--4613a076ead6966a9faade36.md) | 48 | `result-track:4613a076ead6966a9faade3698ca9957f0bd336dc0fc465566a76d22eb3ad7cf` |
| 9 | `lemma` | [pow_lt_top_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/pow-lt-top-iff--bc329fe9ad2b1cc26ad6b8ce.md) | 50 | `result-track:bc329fe9ad2b1cc26ad6b8cec4e9e2452c5d2af8b04ae0936949a6789fecb59c` |
| 10 | `lemma` | [eq_top_of_pow](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/eq-top-of-pow--3b2f2e8719fcd9bd4447c137.md) | 52 | `result-track:3b2f2e8719fcd9bd4447c13745885d822fed4a14f24deaa532350437f8370c4a` |
| 11 | `theorem` | [lift_add](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/lift-add--9e098d4278761730c7af07fb.md) | 54 | `result-track:9e098d4278761730c7af07fbd2f9453cef87b4e3d79075f7ccc1573ccc8e0d47` |
| 12 | `def` | [toNatHom](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/tonathom--4e1b117d895bcefab8c75385.md) | 60 | `declaration-track:4e1b117d895bcefab8c753851d01fd94479d9c7cefb09e65ec0d119147b95acd` |
| 13 | `lemma` | [coe_toNatHom](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/coe-tonathom--8c87ec2ce66290f62b5d9206.md) | 66 | `result-track:8c87ec2ce66290f62b5d920609a96341b1ab55adfc8a8655a81292bee0afa134` |
| 14 | `lemma` | [toNatHom_apply](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/tonathom-apply--ddd9056f92d2165b60316ca4.md) | 68 | `result-track:ddd9056f92d2165b60316ca489ad11eec15cdce01f9f675da59d750993b3bcda` |
| 15 | `theorem` | [toNat_mul](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/tonat-mul--e9acee0c497f6a9d36a3b991.md) | 70 | `result-track:e9acee0c497f6a9d36a3b99182a9043d032bcd454320b58f42110c9e6ad4996f` |
| 16 | `lemma` | [add_one_pos](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-one-pos--c7812999a8f48eec6000b188.md) | 78 | `result-track:c7812999a8f48eec6000b188fba632ebf6ba2142c9fa6fa1800d1381997d7c2f` |
| 17 | `lemma` | [natCast_lt_succ](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/natcast-lt-succ--aa9007d8e3c07888f1b2bace.md) | 81 | `result-track:aa9007d8e3c07888f1b2bace2d22010303429f108be5f664e992e4539acfc6e6` |
| 18 | `lemma` | [le_sub_of_add_le_left](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/le-sub-of-add-le-left--85cde67489488050d95a7246.md) | 86 | `result-track:85cde67489488050d95a724623f1ee7d5bd062b8785546c78cd23517a977de98` |
| 19 | `lemma` | [le_sub_of_add_le_right](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/le-sub-of-add-le-right--f33cbdde4d931928c08d38e3.md) | 89 | `result-track:f33cbdde4d931928c08d38e392b9ef92d3103f5b0795bd39c2b8178b91a04aeb` |
| 20 | `lemma` | [lt_add_left](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/lt-add-left--2ee5178a168abd6320e41e51.md) | 92 | `result-track:2ee5178a168abd6320e41e51cd6921b08c5554c2cacd9994574d92941fc525f2` |
| 21 | `lemma` | [sub_sub_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/sub-sub-cancel--4ab1869a050ee640afac375d.md) | 96 | `result-track:4ab1869a050ee640afac375ddd5894a2e0acd2578b8de7aba3c97d819457f46c` |
| 22 | `lemma` | [add_left_injective_of_ne_top](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-left-injective-of-ne-top--bcd7b290a035a0cb7b369a29.md) | 99 | `result-track:bcd7b290a035a0cb7b369a29cdecf0c2e5b2bf4d8ec75de0898bda15920d9fa2` |
| 23 | `lemma` | [add_right_injective_of_ne_top](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-right-injective-of-ne-top--6824c1d7edbfbc3372edef46.md) | 105 | `result-track:6824c1d7edbfbc3372edef460725f2780e5ccfe7f55aa9bb227d88733f7c3f3e` |
| 24 | `lemma` | [mul_right_strictMono](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/mul-right-strictmono--4002bc0a976a08d581ee257c.md) | 109 | `result-track:4002bc0a976a08d581ee257c3d6c22c53b61e4805e649df334b1c9b83bd7ce1e` |
| 25 | `lemma` | [mul_left_strictMono](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/mul-left-strictmono--3d0f54a6a454c36db6d14883.md) | 112 | `result-track:3d0f54a6a454c36db6d14883956d5ec4768c7dbaefcefd8c5969677aae7faa5a` |
| 26 | `lemma` | [mul_le_mul_left_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/mul-le-mul-left-iff--7089a44a307362d6a2ec6ffb.md) | 116 | `result-track:7089a44a307362d6a2ec6ffbee99ec22475e36e6df9dfaa98dd7aec42327b05d` |
| 27 | `lemma` | [mul_le_mul_right_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/mul-le-mul-right-iff--9d5b13d66df00cf538631b84.md) | 120 | `result-track:9d5b13d66df00cf538631b844967a5bdffeff35e702ac93553d36831ef12a292` |
| 28 | `lemma` | [mul_le_mul_of_le_right](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/mul-le-mul-of-le-right--0c54ab4af2434385258046bf.md) | 124 | `result-track:0c54ab4af2434385258046bfd3647435c6f6c9843f70f713b210f8a5c1a812fb` |
| 29 | `lemma` | [self_le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/self-le-mul-right--541dc688dd83933924956056.md) | 128 | `result-track:541dc688dd83933924956056bbead6d978c922f2f3e90c56a0ed1ec6f1bc2ebd` |
| 30 | `lemma` | [self_le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/self-le-mul-left--3fc242bdf9e7fb4278bc3c43.md) | 142 | `result-track:3fc242bdf9e7fb4278bc3c435ecf74b676e10f58e40720c883cfbb5d96931694` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/instance--c99ae13c282d25a0cd5f8581.md) | 146 | `declaration-track:c99ae13c282d25a0cd5f8581a628989929c198bab9db3e37e114f200d011b463` |
| 32 | `lemma` | [add_one_natCast_le_withTop_of_lt](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-one-natcast-le-withtop-of-lt--342720bfd04b822964676044.md) | 161 | `result-track:342720bfd04b8229646760440feae98af22e155e31db644cd660ff27b0831849` |
| 33 | `lemma` | [coe_top_add_one](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/coe-top-add-one--d56966d31ae3552230a2a6bb.md) | 167 | `result-track:d56966d31ae3552230a2a6bb889c52d5121f10dd9090bb8f3938243bf5e1bbc4` |
| 34 | `lemma` | [add_one_eq_coe_top_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-one-eq-coe-top-iff--6649cabd0201952ddaee9b8d.md) | 169 | `result-track:6649cabd0201952ddaee9b8d302bd2d4f14c0a069cf13a786eefc19fa7856f73` |
| 35 | `lemma` | [natCast_ne_coe_top](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/natcast-ne-coe-top--70137a87a301383400c377f0.md) | 177 | `result-track:70137a87a301383400c377f0acd7bba687ca4d86fffd487ec4f4b188052f67c5` |
| 36 | `lemma` | [one_le_iff_ne_zero_withTop](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/one-le-iff-ne-zero-withtop--b64a17c128b2390550987993.md) | 179 | `result-track:b64a17c128b2390550987993dd5fefa878e1a24993a96844130267d90486e3b6` |
| 37 | `lemma` | [natCast_le_of_coe_top_le_withTop](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/natcast-le-of-coe-top-le-withtop--79df96587b8a24f5077a3bf1.md) | 183 | `result-track:79df96587b8a24f5077a3bf1edcb98edb740024931fe84a5d7f39ea57e15c14b` |
| 38 | `lemma` | [natCast_lt_of_coe_top_le_withTop](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/natcast-lt-of-coe-top-le-withtop--49d5b1aa4160bd51e78e2c62.md) | 186 | `result-track:49d5b1aa4160bd51e78e2c62a94367ee6113ac7cc33392488860896029ac6850` |
| 39 | `lemma` | [map_natCast_nonneg](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/map-natcast-nonneg--120dc0ffea9f026dc48654b6.md) | 192 | `result-track:120dc0ffea9f026dc48654b6e49977277ffe10ad85e8a50d6de65d651f8f2e84` |
| 40 | `lemma` | [map_natCast_strictMono](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/map-natcast-strictmono--26a0888eec56f2b113556bfd.md) | 197 | `result-track:26a0888eec56f2b113556bfdba3c6d1e3c3d250a51d54cd8365f8eb5fd8d3c23` |
| 41 | `lemma` | [map_natCast_injective](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/map-natcast-injective--c001e74910da60ef4d423924.md) | 200 | `result-track:c001e74910da60ef4d423924f6c4da752f926d0cf4b2f1d4f6021f7c133963d8` |
| 42 | `lemma` | [map_natCast_inj](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/map-natcast-inj--6d003c97c34d7f622a3f2d16.md) | 203 | `result-track:6d003c97c34d7f622a3f2d1615c1efd799b8f2e4af02108976852b2a19d74c0e` |
| 43 | `lemma` | [map_natCast_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/map-natcast-eq-zero--897c7df9c1650af3dbf2e34b.md) | 206 | `result-track:897c7df9c1650af3dbf2e34b82176f535321955c00c1ee4d8d649e8b0a3b2aed` |
| 44 | `def` | [_root_.AddMonoidHom.ENatMap](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/root-addmonoidhom-enatmap--3eae74307c7382b632bc4626.md) | 213 | `declaration-track:3eae74307c7382b632bc4626e235cbf23a2e5cf9cf877c51b79cdbbd6c397b0a` |
| 45 | `def` | [_root_.MonoidWithZeroHom.ENatMap](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/root-monoidwithzerohom-enatmap--82775585de8c65e7a6b4b3fb.md) | 219 | `declaration-track:82775585de8c65e7a6b4b3fba614855c2bcdfb752cb9b133301ba668df55731c` |
| 46 | `def` | [_root_.RingHom.ENatMap](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/root-ringhom-enatmap--8685868676365018423bc417.md) | 242 | `declaration-track:8685868676365018423bc41748d774e1fe6936d248a17881cf81d646102e3fa7` |
| 47 | `lemma` | [map_natCast_mul](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/map-natcast-mul--71271f36509d51f48bd031b1.md) | 248 | `result-track:71271f36509d51f48bd031b1d59dc051cadb833d9ab5eaf0122ac0b1efa616a0` |
| 48 | `lemma` | [add_natCast_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-natcast-cancel--f70dac891e354c070ee873da.md) | 255 | `result-track:f70dac891e354c070ee873da68ead4ab6015fe9ddf6e6091af22bb20fbec8ebd` |
| 49 | `lemma` | [add_one_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-one-cancel--19341ce4cb07e1d5ff79d8f9.md) | 259 | `result-track:19341ce4cb07e1d5ff79d8f969dbfe14cc4bf8f92aa2b3369a794365bdffe1b2` |
| 50 | `lemma` | [add_ofNat_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-ofnat-cancel--58fd2643ef9e0ad60466fcb1.md) | 262 | `result-track:58fd2643ef9e0ad60466fcb15315ed7d0a67176ddc248a44b295b080870e1937` |
| 51 | `lemma` | [natCast_add_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/natcast-add-cancel--7150e12eb0c472e9d71ffcb6.md) | 267 | `result-track:7150e12eb0c472e9d71ffcb64c7064c1793ff3b21087fedc92dddd6f3fd4b0d6` |
| 52 | `lemma` | [one_add_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/one-add-cancel--8552c0bb413e1c9c1b3314d1.md) | 271 | `result-track:8552c0bb413e1c9c1b3314d170ba9955d22d0f2b4a9e2c25322ed2a738480fcc` |
| 53 | `lemma` | [ofNat_add_cancel](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/ofnat-add-cancel--819b4e675b988e79cbb471ab.md) | 274 | `result-track:819b4e675b988e79cbb471ab0e22f3aa78ff03963ad95218917156bc5cb53955` |
| 54 | `lemma` | [add_le_add_natCast_right_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-le-add-natcast-right-iff--7c7217390da975be29bb223d.md) | 278 | `result-track:7c7217390da975be29bb223d0917db11ebf830a34ffebf8f544744a36a15f41b` |
| 55 | `lemma` | [add_le_add_one_right_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-le-add-one-right-iff--3f90639b91cc68a183b255df.md) | 281 | `result-track:3f90639b91cc68a183b255df26035a39fbb7d6b58c4a21a1a286e0071530f00c` |
| 56 | `lemma` | [add_le_add_natCast_left_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-le-add-natcast-left-iff--f4bc69b1615f1becaf847f0e.md) | 284 | `result-track:f4bc69b1615f1becaf847f0ed6d64f3b98617e3ab4674f7198d7c18af51402d3` |
| 57 | `lemma` | [add_le_add_one_left_iff](../../../../../mathematics/Algebra/GroupTheory/Monoid/Variant06a9bc7b4535cb91cd83a777135aaf6d73303f2234bec3f417e4dffe51134da7.lean/declarations/add-le-add-one-left-iff--69d326f824f7ebb5e4d7bf94.md) | 287 | `result-track:69d326f824f7ebb5e4d7bf94a3aecc36ebd94d5f24c10916fd6ec6f123db5416` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
