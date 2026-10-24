# Verification target: GRWTSK.Algebra.Defs.Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abf10f00b2cdb468af3680e420bf573937f85313",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/index.md) · [Full source](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abf10f00b2cdb468af3680e420bf573937f85313`.

Source path: `GRWTSK/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Dvd.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Defs` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pos](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/pos--df5640ed8972bbf07bc8957b.md) | 46 | `result-track:df5640ed8972bbf07bc8957b65304c4d7f998a129beb860da993b01a0d4c188f` |
| 2 | `theorem` | [ofInt_eq_cast](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/ofint-eq-cast--3a71b45a94bc813b697396e5.md) | 52 | `result-track:3a71b45a94bc813b697396e5d8ae304ac676179a204706fb922c5771a706e6fc` |
| 3 | `theorem` | [coe_int_num](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/coe-int-num--544f1bcf4bdee80c71a650db.md) | 57 | `result-track:544f1bcf4bdee80c71a650dbaa87f5ed02393427b7ca252d4fd88e6f210732fe` |
| 4 | `theorem` | [coe_int_den](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/coe-int-den--73a4eac8a3b1096311c76f82.md) | 62 | `result-track:73a4eac8a3b1096311c76f82c7ec2bc85e2535931756a00bf21d1d98e8382ee0` |
| 5 | `theorem` | [mkRat_eq](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mkrat-eq--ec59720259abb9fd900394cb.md) | 73 | `result-track:ec59720259abb9fd900394cbb1dadd8763b080ba19e50f92c312f4e05db9e6a1` |
| 6 | `theorem` | [zero_mk](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/zero-mk--0c7371cbc03cd569aab415a6.md) | 80 | `result-track:0c7371cbc03cd569aab415a6f2b276cff776274189db1c4c1b427df35b555dce` |
| 7 | `lemma` | [num_eq_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/num-eq-zero--949fe4a5d02d3a4ccaa15668.md) | 88 | `result-track:949fe4a5d02d3a4ccaa15668030d64f9735ecaf8e632f21bcc2db205a1904474` |
| 8 | `theorem` | [gcd_abs_dvd_left](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/gcd-abs-dvd-left--08ef2f05862d53e9315d4e58.md) | 95 | `result-track:08ef2f05862d53e9315d4e581c9780296c29b026b7c5470e596c2cb165f91404` |
| 9 | `theorem` | [divInt_eq_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-eq-zero--99e4e5d1e13e0672907a1ffe.md) | 100 | `result-track:99e4e5d1e13e0672907a1ffe560fbda0f3cb5ca68c98fb678ecdb0f11965565d` |
| 10 | `theorem` | [divInt_ne_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-ne-zero--35f8383874f0a37add15e570.md) | 104 | `result-track:35f8383874f0a37add15e570ba6581a40ba278a80a77a4d47cb7cf1b9b1fd0fa` |
| 11 | `theorem` | [normalize_eq_mk'](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/normalize-eq-mk--38c0900ab470f1ae72604ee7.md) | 112 | `result-track:38c0900ab470f1ae72604ee716e147f8b6ec324f1a46d94807ef092af18094f3` |
| 12 | `theorem` | [num_den](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/num-den--d63d6674517864b519ebc1e0.md) | 119 | `result-track:d63d6674517864b519ebc1e0bfd28699fe3b2adf4e97f8fda68b58a9fc8e607a` |
| 13 | `theorem` | [num_den'](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/num-den--9d00feec27ddbb0413b28a96.md) | 122 | `result-track:9d00feec27ddbb0413b28a9619f20d03d8c44f69713aeae627bfbb0338e03480` |
| 14 | `theorem` | [coe_int_eq_divInt](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/coe-int-eq-divint--bc17bd87889a01d4d4162ea2.md) | 125 | `result-track:bc17bd87889a01d4d4162ea2dd9480b62c48aa1228f42ba18891d56f6e9354d0` |
| 15 | `def` | [numDenCasesOn.](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/numdencaseson--83b8e13820771cd28d5ab506.md) | 131 | `declaration-track:83b8e13820771cd28d5ab50696cb3c9b82b55f6b9401cd330f8d68d375138df3` |
| 16 | `def` | [numDenCasesOn'.](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/numdencaseson--4a87c224383441cfcea71ce6.md) | 139 | `declaration-track:4a87c224383441cfcea71ce67d3f3cf92ea9f22986d0eb34b5ed3ebf4382507b` |
| 17 | `theorem` | [lift_binop_eq](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/lift-binop-eq--6fb553c1796ef371542d2a22.md) | 148 | `result-track:6fb553c1796ef371542d2a22ddf216fe72ae3d7f9481147188cbaa7e8122fc23` |
| 18 | `theorem` | [add_def''](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/add-def--25a7eeb710304908d62003b2.md) | 168 | `result-track:25a7eeb710304908d62003b2e1ae43fbf37e9225244a42fbc8a92e4648d6f4e0` |
| 19 | `theorem` | [neg_def](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/neg-def--15fe46ce66950a0813a8a4b9.md) | 178 | `result-track:15fe46ce66950a0813a8a4b9e7fa0fef051c5963e77b4ef7159094e81980999f` |
| 20 | `theorem` | [divInt_neg_den](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-neg-den--31e485a73f880116bf6889ba.md) | 182 | `result-track:31e485a73f880116bf6889ba462529f8cb5c702c96833ce0766ffa85d856fc75` |
| 21 | `theorem` | [sub_def''](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/sub-def--f091b13afc32aaf89e200967.md) | 186 | `result-track:f091b13afc32aaf89e200967067ebe9668223ade189ba556cd4118386a5a5712` |
| 22 | `theorem` | [mul_def'](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mul-def--cbcc4632c185287224a46e81.md) | 194 | `result-track:cbcc4632c185287224a46e81a6760e5013a7bdf57a992c1e888aeef4c194ba26` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/instance--9d1dca05ebf3d32493aedfbb.md) | 200 | `declaration-track:9d1dca05ebf3d32493aedfbb24775b40bb4cf854140252523f18b4d60caa7543` |
| 24 | `theorem` | [inv_def'](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/inv-def--010105141fb2e57b3c17750c.md) | 206 | `result-track:010105141fb2e57b3c17750c61ff68707ab9028c56187e168448b39a04f4e513` |
| 25 | `theorem` | [add_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/add-zero--0cd18e40bad6f7ba15b72bb0.md) | 214 | `result-track:0cd18e40bad6f7ba15b72bb0c38e0d544878e8f7f502c412068702f28a3574ee` |
| 26 | `theorem` | [zero_add](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/zero-add--763a083839101f2a23769cef.md) | 219 | `result-track:763a083839101f2a23769cef2a60d03b909bc22d9ce6e98a02de1c75868ab94e` |
| 27 | `theorem` | [add_comm](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/add-comm--572f247964c529d7c84ac7f8.md) | 224 | `result-track:572f247964c529d7c84ac7f86fb30b1bac9addc0da65429d50bea35bcafc9577` |
| 28 | `theorem` | [add_assoc](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/add-assoc--df593b315236d8344e206110.md) | 229 | `result-track:df593b315236d8344e2061100b1c1a444b6b6e9d473806b4777f54c51f43b77c` |
| 29 | `theorem` | [add_left_neg](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/add-left-neg--0d8a2241196309d485e96a02.md) | 239 | `result-track:0d8a2241196309d485e96a02389414e60175be768c1343a320680659c1c486ee` |
| 30 | `theorem` | [divInt_zero_one](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-zero-one--d82cedcbbf03783d9b455e34.md) | 243 | `result-track:d82cedcbbf03783d9b455e34e60f2d0dc836cfcfcf1bfa0375e0afa7237f45ad` |
| 31 | `theorem` | [divInt_one_one](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-one-one--ff31951feb12bb8e486d8da0.md) | 250 | `result-track:ff31951feb12bb8e486d8da0e9325ed43339ca7b16df6cd3f5b30708ee59c892` |
| 32 | `theorem` | [divInt_neg_one_one](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-neg-one-one--2ccc8eae8b0b8d92a82e6f5b.md) | 257 | `result-track:2ccc8eae8b0b8d92a82e6f5b409bc33bcc7004653537970402b801477ff317d2` |
| 33 | `theorem` | [divInt_one](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-one--db205f9843869a56685f39c0.md) | 263 | `result-track:db205f9843869a56685f39c024b1fcfeea01030ff604be665f900b3f0f042a3b` |
| 34 | `theorem` | [mkRat_one](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mkrat-one--b788fe97d91a790d4bf8883c.md) | 269 | `result-track:b788fe97d91a790d4bf8883ca7c434daca9e6f3fdb1948b935ff182af2e80636` |
| 35 | `theorem` | [mul_assoc](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mul-assoc--357d64e1c291a9f2788e4e8c.md) | 276 | `result-track:357d64e1c291a9f2788e4e8c1d2c215ce0e5195a64c73301961eb385cb748f5b` |
| 36 | `theorem` | [add_mul](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/add-mul--41ada70b7706f77464aebb21.md) | 283 | `result-track:41ada70b7706f77464aebb21aeda93d6697002b312250d3b68c00ee8dfa29322` |
| 37 | `theorem` | [mul_add](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mul-add--4ca1d0bdb30ef3b126d17249.md) | 292 | `result-track:4ca1d0bdb30ef3b126d17249fa1afd01ecfd5974e5b5e5f20ad1ee914c7503b9` |
| 38 | `theorem` | [zero_ne_one](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/zero-ne-one--e52a147cac094bd5b0c9e151.md) | 296 | `result-track:e52a147cac094bd5b0c9e151846899661d999917062c4be884b0e6ee577c653d` |
| 39 | `theorem` | [mul_inv_cancel](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mul-inv-cancel--52480cdec64d56e9e152c0a9.md) | 301 | `result-track:52480cdec64d56e9e152c0a94f886b2a51b8f5396b5edba667250426a9ccadcc` |
| 40 | `theorem` | [inv_mul_cancel](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/inv-mul-cancel--b477625a250eda149078d421.md) | 307 | `result-track:b477625a250eda149078d42105cae6fe25d7499c11c8ad45822f31d1ab77a3b9` |
| 41 | `instance` | [commRing](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/commring--5210aa78ec0defa92fb3f847.md) | 318 | `declaration-track:5210aa78ec0defa92fb3f847b55db1fd24742c372093e511bc405d493c53b8ee` |
| 42 | `instance` | [commGroupWithZero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/commgroupwithzero--6fdb1f6cedb4335964abed09.md) | 345 | `declaration-track:6fdb1f6cedb4335964abed09085674737eaf6accd5f33b1f5b5bf2dba139d679` |
| 43 | `instance` | [isDomain](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/isdomain--f1bfb0d83dae85709ae10994.md) | 355 | `declaration-track:f1bfb0d83dae85709ae10994466c3355d04e60be895881a91c8d86f37d08624c` |
| 44 | `instance` | [nontrivial](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/nontrivial--95b99abe68ded3a17d0a71eb.md) | 360 | `declaration-track:95b99abe68ded3a17d0a71eb5a1b46a1106d4586941fb29ba22b9dd9335955a7` |
| 45 | `instance` | [commSemiring](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/commsemiring--de664a3aa8404b654274341c.md) | 362 | `declaration-track:de664a3aa8404b654274341c5f799b6feb29f8656aae4ce8b31ea2a57f139f8e` |
| 46 | `instance` | [semiring](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/semiring--8e4876cd66859b02b6b96591.md) | 364 | `declaration-track:8e4876cd66859b02b6b965918a42235bb994ab0c5498315cd78d0a86b9aa471f` |
| 47 | `instance` | [addCommGroup](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/addcommgroup--c6445f38f5cf8d643137b526.md) | 366 | `declaration-track:c6445f38f5cf8d643137b5264dc396baa0cdf36265d1ac1b009f68d11febc07b` |
| 48 | `instance` | [addGroup](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/addgroup--3c9ef4c43c3b87bfaf73b324.md) | 368 | `declaration-track:3c9ef4c43c3b87bfaf73b324c2e5ae9d8fd7c20c66b75dbd6c768e721c7a1f6a` |
| 49 | `instance` | [addCommMonoid](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/addcommmonoid--653e3180f4d7e16669e07476.md) | 370 | `declaration-track:653e3180f4d7e16669e07476213dae732babfbfa8a768c41ab9a9199015b7401` |
| 50 | `instance` | [addMonoid](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/addmonoid--01c5f70c99b5c36351f95911.md) | 372 | `declaration-track:01c5f70c99b5c36351f9591157af01217f782c2fb8c5ba85160e4375083710ef` |
| 51 | `instance` | [addLeftCancelSemigroup](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/addleftcancelsemigroup--cf4a487f58d1d30ea4895805.md) | 374 | `declaration-track:cf4a487f58d1d30ea4895805c786264bd10ddee840dc9ae38f027a1339115deb` |
| 52 | `instance` | [addRightCancelSemigroup](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/addrightcancelsemigroup--a6067abd1e18705750db62b1.md) | 376 | `declaration-track:a6067abd1e18705750db62b1eb63fd94f56ddfaf1e04976132c1b642ee2f75ef` |
| 53 | `instance` | [addCommSemigroup](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/addcommsemigroup--30dfdd95161f891b7f8bc7d1.md) | 378 | `declaration-track:30dfdd95161f891b7f8bc7d12eeec7d1661baf2a677eecd5e128c0b2c1523721` |
| 54 | `instance` | [addSemigroup](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/addsemigroup--5117c2331aa215382a57b5ea.md) | 380 | `declaration-track:5117c2331aa215382a57b5ea4b37fe4b1656e8d84076b64bfac3d65cea165815` |
| 55 | `instance` | [commMonoid](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/commmonoid--67a5cea960ce4030722b0f08.md) | 382 | `declaration-track:67a5cea960ce4030722b0f0850cfd12a527a8d68efab5b3615c489a39518a037` |
| 56 | `instance` | [monoid](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/monoid--62413cdee4388c3077e63927.md) | 384 | `declaration-track:62413cdee4388c3077e639274f2b0f2b250d338ea90e1e17810907372733ec28` |
| 57 | `instance` | [commSemigroup](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/commsemigroup--658110f635406437cd90ff13.md) | 386 | `declaration-track:658110f635406437cd90ff1313096bf1a6f424adb26806efa03f43dbb3c5c5bb` |
| 58 | `instance` | [semigroup](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/semigroup--e718a04b18779c0969b53b51.md) | 388 | `declaration-track:e718a04b18779c0969b53b5136c8edb54b7c90643126d11f30bdf284685d7abb` |
| 59 | `theorem` | [eq_iff_mul_eq_mul](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/eq-iff-mul-eq-mul--29486aae6a591405c46e5ad8.md) | 392 | `result-track:29486aae6a591405c46e5ad8c54057a87e73f0d78fd1fb125890cc0a73fc00b6` |
| 60 | `theorem` | [den_neg_eq_den](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/den-neg-eq-den--e60d051a721b8ab415f43b0d.md) | 402 | `result-track:e60d051a721b8ab415f43b0d5bfc4731255b89f629fb080af465d8bd0f49652a` |
| 61 | `theorem` | [num_neg_eq_neg_num](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/num-neg-eq-neg-num--1bf992a0c384c1349989499e.md) | 407 | `result-track:1bf992a0c384c1349989499ea9f2bbc9789ab40683f837580bc786e37d83ad46` |
| 62 | `theorem` | [num_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/num-zero--a212318f2cf0f66ea47e92b9.md) | 412 | `result-track:a212318f2cf0f66ea47e92b9acdb852e46a59e183a7d6f92d6e1fb2de8f0e826` |
| 63 | `theorem` | [den_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/den-zero--7deabf8bb8f5aaddd48ec632.md) | 417 | `result-track:7deabf8bb8f5aaddd48ec632ee9c6a5138c9a09b42cd071bdcacc22f27414d47` |
| 64 | `theorem` | [zero_of_num_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/zero-of-num-zero--41c93db983ab20bd9ae0fd53.md) | 421 | `result-track:41c93db983ab20bd9ae0fd532a3ac55f1b98576ba9854054f490457172b38f7e` |
| 65 | `theorem` | [zero_iff_num_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/zero-iff-num-zero--facd84c4f6a5a27d428ff187.md) | 426 | `result-track:facd84c4f6a5a27d428ff18704910318ed953f169fec3207958c8a5f0687d46a` |
| 66 | `theorem` | [num_ne_zero_of_ne_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/num-ne-zero-of-ne-zero--fd55edc83207415fcda38ea1.md) | 430 | `result-track:fd55edc83207415fcda38ea1a50e7ad40946ff2022d12ff3834121bf2edc7abc` |
| 67 | `theorem` | [num_one](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/num-one--e32e5c1224a6cb7284e7e3a5.md) | 435 | `result-track:e32e5c1224a6cb7284e7e3a5cc89a38f616a22a17e8ff39b314197c4eeb325b2` |
| 68 | `theorem` | [den_one](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/den-one--134d2121b2e773591add1d86.md) | 440 | `result-track:134d2121b2e773591add1d86139d904a0b0532a02f1ef73f1978564b0baa9e9b` |
| 69 | `theorem` | [mk_num_ne_zero_of_ne_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mk-num-ne-zero-of-ne-zero--cf5e97e3ce563afe7056c007.md) | 444 | `result-track:cf5e97e3ce563afe7056c007a0f62fdc61a6d8e05173e52bb37645602769d517` |
| 70 | `theorem` | [mk_denom_ne_zero_of_ne_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mk-denom-ne-zero-of-ne-zero--ede3a41efc6336aaed891276.md) | 448 | `result-track:ede3a41efc6336aaed89127623b9eb7f96dc39b71997cd7607198b21ab5dc7f7` |
| 71 | `theorem` | [divInt_ne_zero_of_ne_zero](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-ne-zero-of-ne-zero--d037efb9f3bfc5d067a5325c.md) | 452 | `result-track:d037efb9f3bfc5d067a5325c458385dda64f124bd0ab364d2023c2054e5744cc` |
| 72 | `theorem` | [mul_num_den](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mul-num-den--7764f7ec07796dd607164bd9.md) | 456 | `result-track:7764f7ec07796dd607164bd9ec010c020b5bf00adee35e1f3064c98667b5f08f` |
| 73 | `theorem` | [div_num_den](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/div-num-den--f1f678872bae3c05ad4bd3f9.md) | 464 | `result-track:f1f678872bae3c05ad4bd3f9619f901043c336fdfd116a3cdfd6003542b0cce5` |
| 74 | `theorem` | [add_divInt](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/add-divint--44553267d58e50ca906e036d.md) | 478 | `result-track:44553267d58e50ca906e036d6275cf6d80fe6569aa7199b0fb312763d19d1925` |
| 75 | `theorem` | [divInt_eq_div](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-eq-div--5ca6b7fc2704fe5d54320484.md) | 485 | `result-track:5ca6b7fc2704fe5d54320484ff14ea5cdd9203c5f8ea964ba3b0ccb2ece5f16e` |
| 76 | `theorem` | [divInt_mul_divInt_cancel](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-mul-divint-cancel--860fc467b4d36d204203f354.md) | 491 | `result-track:860fc467b4d36d204203f354a3add2fc364dbf41e217c50c2ea324d31e54388d` |
| 77 | `theorem` | [divInt_div_divInt_cancel_left](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-div-divint-cancel-left--35d6f7da5c371d9339161f03.md) | 498 | `result-track:35d6f7da5c371d9339161f03aa7d1a0ec2eb31a4ac410a30b294f4677673c02f` |
| 78 | `theorem` | [divInt_div_divInt_cancel_right](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/divint-div-divint-cancel-right--dcfda54732388797c8fdeb4a.md) | 503 | `result-track:dcfda54732388797c8fdeb4acbaaaa0d23694405d65cf0cb453dabe25f0e09b0` |
| 79 | `theorem` | [coe_int_div_eq_divInt](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/coe-int-div-eq-divint--a62068d6df59c2b6f3f980ab.md) | 508 | `result-track:a62068d6df59c2b6f3f980ab6c96a5a70d0f563116971b7bbcba8db5d3e2dacb` |
| 80 | `theorem` | [num_div_den](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/num-div-den--b5a215db76b9f41c6c70dea6.md) | 514 | `result-track:b5a215db76b9f41c6c70dea62fc3d65cc832de234f3e9d04154b61b61604a20e` |
| 81 | `theorem` | [coe_int_num_of_den_eq_one](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/coe-int-num-of-den-eq-one--ef9a291bb6f653750338a6e9.md) | 519 | `result-track:ef9a291bb6f653750338a6e986271a860bcb506866ff5a5eda579e18018f5be2` |
| 82 | `theorem` | [den_eq_one_iff](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/den-eq-one-iff--b501db6219cdc64692cb3bf2.md) | 525 | `result-track:b501db6219cdc64692cb3bf2397a1a13fce56775c44b5ab9bd063b273db43bb1` |
| 83 | `instance` | [canLift](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/canlift--7f115943d8a5ce2b054a5c34.md) | 529 | `declaration-track:7f115943d8a5ce2b054a5c34991bb30ff25de97c6085bc519861e32f34d68f7b` |
| 84 | `theorem` | [coe_nat_eq_divInt](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/coe-nat-eq-divint--0a74a06692d122634825c573.md) | 533 | `result-track:0a74a06692d122634825c57378819d47c4aacc020dfeaf8835db49024d9a963c` |
| 85 | `theorem` | [coe_nat_num](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/coe-nat-num--e2a0a98e32ecbe4c93269352.md) | 538 | `result-track:e2a0a98e32ecbe4c9326935254af5f8a5acfcb8bcfe85fcdb379d8e7d6b06ff0` |
| 86 | `theorem` | [coe_nat_den](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/coe-nat-den--0d4a374e92517ab55fc68235.md) | 543 | `result-track:0d4a374e92517ab55fc68235fc02615b0d03cce1e79a225ea7309111ff414d5f` |
| 87 | `theorem` | [coe_int_inj](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/coe-int-inj--88bec0f0d5237c876e6099fd.md) | 549 | `result-track:88bec0f0d5237c876e6099fd190cc6f7cdfe05c4c8bb921bf6994f048804b515` |
| 88 | `theorem` | [mkRat_eq_div](../../../../mathematics/Algebra/Defs/Variante77853b7659b127fcbf90bd7fdfc8171a22ef38e713c31af74b0e9d67043b008.lean/declarations/mkrat-eq-div--7a1be13a82a184d426bdc664.md) | 555 | `result-track:7a1be13a82a184d426bdc6642d47700f3a84bdfd478721f67044469185667b8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
