# Verification target: GRWTSK.Algebra.Defs.Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ba90503ee233fe125e45ff82cf80c7dea7aaccc",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ba90503ee233fe125e45ff82cf80c7dea7aaccc`.

Source path: `GRWTSK/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cast_natCast](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-natcast--dea605de446ac703e32d0042.md) | 42 | `result-track:dea605de446ac703e32d0042009a64631c30d5a325e63366b5d83d8ffe5d7abe` |
| 2 | `lemma` | [cast_ofNat](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-ofnat--a5d15d8259b0f67714267c11.md) | 44 | `result-track:a5d15d8259b0f67714267c114d8c9f5609bedf6b111081145df3e6cd07310b39` |
| 3 | `lemma` | [cast_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-zero--959be512f7a615544a5cf3f9.md) | 47 | `result-track:959be512f7a615544a5cf3f9287c86fde27bf0e83713a959b12127a173016611` |
| 4 | `lemma` | [cast_one](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-one--2c50a9a0a42684808335eea3.md) | 48 | `result-track:2c50a9a0a42684808335eea3daa35c3ac24ac5361b3e7f8429c0dfd4ef6a9b1e` |
| 5 | `lemma` | [cast_commute](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-commute--177dc306acb9eb44df6b43e8.md) | 50 | `result-track:177dc306acb9eb44df6b43e8f0930fcd89d9c00cac511887f094edf9479c82e7` |
| 6 | `lemma` | [commute_cast](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/commute-cast--d7f6bb9f3def240a201f13f8.md) | 53 | `result-track:d7f6bb9f3def240a201f13f8bba6e2dc62bf53a6784aa9815626444674d21188` |
| 7 | `lemma` | [cast_comm](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-comm--a9ddf68d27945edc27d726b4.md) | 55 | `result-track:a9ddf68d27945edc27d726b4cdac1e962d9152cc9872b26a1ba2425a21145850` |
| 8 | `lemma` | [cast_divNat_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-divnat-of-ne-zero--fbed274a9266d4becc98241a.md) | 57 | `result-track:fbed274a9266d4becc98241a855ae3127035b5614c89a9bff0cb2995163a9a4b` |
| 9 | `lemma` | [cast_add_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-add-of-ne-zero--d98240fd3e2d99779e6626f9.md) | 78 | `result-track:d98240fd3e2d99779e6626f97b12838ab11ae9d540236ff780f957f5f47d7ce1` |
| 10 | `lemma` | [cast_mul_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-mul-of-ne-zero--ffcca4cb4ee55b0d04b49985.md) | 88 | `result-track:ffcca4cb4ee55b0d04b499859bb118e6f85b6b9f9e50a5068ccd91d03593b513` |
| 11 | `lemma` | [cast_inv_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-inv-of-ne-zero--3bf19be8da0013884cc44119.md) | 98 | `result-track:3bf19be8da0013884cc44119f312890893f8ae62e68257ff21966bac7ebd88d1` |
| 12 | `lemma` | [cast_div_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-div-of-ne-zero--909a379ba79dcc6039d81d67.md) | 102 | `result-track:909a379ba79dcc6039d81d67899cbd163ff44ee5c082f7201566e4f9ab009e20` |
| 13 | `theorem` | [cast_intCast](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-intcast--f0ef1456fce71caed11e03a5.md) | 118 | `result-track:f0ef1456fce71caed11e03a5e913d250832dce03b592d4c4e3e66d125b670c13` |
| 14 | `theorem` | [cast_natCast](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-natcast--2b45c4bb139b4e2fd1e1c9a3.md) | 122 | `result-track:2b45c4bb139b4e2fd1e1c9a330ef31c8bd0c8bb7e9d53ee0c1dce635b46b6a47` |
| 15 | `lemma` | [cast_ofNat](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-ofnat--47fa6d34a7a6ab623194f7da.md) | 126 | `result-track:47fa6d34a7a6ab623194f7dac14b266d91dbbd7328df39a1352d6a3f0f6fd87f` |
| 16 | `theorem` | [cast_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-zero--dcbf35f70e31fe5a82c87271.md) | 131 | `result-track:dcbf35f70e31fe5a82c87271e860cba152cc7cefa5057f6ba7178b95fa8b33f5` |
| 17 | `theorem` | [cast_one](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-one--588b527da8a9f5903cbefa9c.md) | 135 | `result-track:588b527da8a9f5903cbefa9ca39972ef4caecd3dd7ae28aaeacbf3269bb738a3` |
| 18 | `theorem` | [cast_commute](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-commute--0b249ac766fd02ff415e485b.md) | 138 | `result-track:0b249ac766fd02ff415e485bb4ff3048560939c23316c808e75d4bbadb70813d` |
| 19 | `theorem` | [cast_comm](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-comm--a424841c8f539bb255885b7a.md) | 141 | `result-track:a424841c8f539bb255885b7a866a6ef1d8a2b5147dcad6caf7c72296fa0a6748` |
| 20 | `theorem` | [commute_cast](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/commute-cast--b17cdf03fd3f7959431a6db6.md) | 144 | `result-track:b17cdf03fd3f7959431a6db6119685113e7b4ac21606b62ecfe52759f2822ff3` |
| 21 | `lemma` | [cast_divInt_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-divint-of-ne-zero--c9366524c385fbefcb8e951c.md) | 148 | `result-track:c9366524c385fbefcb8e951c9c629765415b7512eb780714888aa7857b991698` |
| 22 | `lemma` | [cast_mkRat_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-mkrat-of-ne-zero--e2a0b6d74eb754435b97b96c.md) | 168 | `result-track:e2a0b6d74eb754435b97b96c683e0bbb34c8e0d01247f6a2e66390ad5666eef7` |
| 23 | `lemma` | [cast_add_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-add-of-ne-zero--57690a1ac1a1100d5f660fa0.md) | 172 | `result-track:57690a1ac1a1100d5f660fa01b07ccc35c9fcb658449e00d716ccc5b4fe5585b` |
| 24 | `lemma` | [cast_neg](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-neg--a61755f184e65658fd88563f.md) | 181 | `result-track:a61755f184e65658fd88563f98165f3e72b80051d9ba16392637071d90aec2c9` |
| 25 | `lemma` | [cast_sub_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-sub-of-ne-zero--cce96535372aca665e23a93d.md) | 183 | `result-track:cce96535372aca665e23a93ddda70f22ee01c5e26c0bd2c370fd09c50b6f7b43` |
| 26 | `lemma` | [cast_mul_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-mul-of-ne-zero--c49849e0d7d32d0a823ce58f.md) | 186 | `result-track:c49849e0d7d32d0a823ce58ff035504e3ad0eb5cb18bbd90b093896afcd32d02` |
| 27 | `lemma` | [cast_inv_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-inv-of-ne-zero--09e852634894d629027e3585.md) | 196 | `result-track:09e852634894d629027e3585ee1dbd221c90c5193c1d2f7420c15c8650521cb0` |
| 28 | `lemma` | [cast_div_of_ne_zero](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/cast-div-of-ne-zero--8e9afe4c7ceff66dc80960dc.md) | 199 | `result-track:8e9afe4c7ceff66dc80960dc7fb290e3293de783e55c0647ecb619090f1afd47` |
| 29 | `lemma` | [map_nnratCast](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/map-nnratcast--db72e6a2bbf5f5ef564da01a.md) | 214 | `result-track:db72e6a2bbf5f5ef564da01a36ac469931d73426988a90ccd1666ed907bb3817` |
| 30 | `lemma` | [eq_nnratCast](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/eq-nnratcast--a94d97df5a272dcc3aa5f28b.md) | 218 | `result-track:a94d97df5a272dcc3aa5f28b403b3e224b4774d9d89371936fcda9e03b46d333` |
| 31 | `theorem` | [map_ratCast](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/map-ratcast--77c9e63316d5fdf9bc96a1b4.md) | 222 | `result-track:77c9e63316d5fdf9bc96a1b42c9553a74b33d690e517fc7bb124e5251697e4fe` |
| 32 | `lemma` | [eq_ratCast](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/eq-ratcast--47997343f990a8da8ee3ef8a.md) | 225 | `result-track:47997343f990a8da8ee3ef8a858a3131e32bb530060b3b0f22662df026053795` |
| 33 | `lemma` | [ext_nnrat'](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/ext-nnrat--186d066b70fdb49edde525ba.md) | 236 | `result-track:186d066b70fdb49edde525bad5c819bb6be174b96a2ee0e46b439fc1c9126feb` |
| 34 | `lemma` | [ext_nnrat](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/ext-nnrat--c929eba2f1c5bb7d30f036c1.md) | 245 | `result-track:c929eba2f1c5bb7d30f036c1c8056e502fca83d77ba2d60e8cbc3d2c8af56d23` |
| 35 | `lemma` | [ext_nnrat_on_pnat](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/ext-nnrat-on-pnat--8ca559d97290db8aa07d7fb4.md) | 251 | `result-track:8ca559d97290db8aa07d7fb4989c6f4e94b49f8041a25a80907c2cd50fac1184` |
| 36 | `theorem` | [ext_rat'](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/ext-rat--f533b4e53569221ee9d41fea.md) | 262 | `result-track:f533b4e53569221ee9d41feaa5d1612be26b2c563ba0548fea3cc28142f3b3f0` |
| 37 | `theorem` | [ext_rat](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/ext-rat--545a10d7276bbb029a95ffa0.md) | 272 | `result-track:545a10d7276bbb029a95ffa06a3c406f17e9118ec39ea6cb8feec901354de6f6` |
| 38 | `theorem` | [ext_rat_on_pnat](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/ext-rat-on-pnat--41cd4f1c7a6779136b3e9f3b.md) | 278 | `result-track:41cd4f1c7a6779136b3e9f3b9421fdb95562cf0699814dfbd40c00645708da66` |
| 39 | `theorem` | [RingHom.ext_rat](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/ringhom-ext-rat--ed3c543536821470e07ee02c.md) | 292 | `result-track:ed3c543536821470e07ee02c6c46c3bd3607031a20f90b3e3ab4bd65fda0a3d3` |
| 40 | `instance` | [NNRat.subsingleton_ringHom](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/nnrat-subsingleton-ringhom--c395b3362eec5b3fc7b45bb8.md) | 298 | `declaration-track:c395b3362eec5b3fc7b45bb8d107867a52ea95f896a84121a9bd72787d9173d2` |
| 41 | `instance` | [Rat.subsingleton_ringHom](../../../../mathematics/Algebra/Defs/Variant2c6a14379332486b3a21e45858dc1c2b790f0a8f337a603f9894ef683412f2bf.lean/declarations/rat-subsingleton-ringhom--03f42fb249159eeeabf8f6ad.md) | 301 | `declaration-track:03f42fb249159eeeabf8f6adcec84293c435106cc96d88a4a6eef5ae39fb7261` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
