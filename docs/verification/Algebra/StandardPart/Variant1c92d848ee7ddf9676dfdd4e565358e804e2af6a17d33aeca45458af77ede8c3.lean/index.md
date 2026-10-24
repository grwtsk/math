# Verification target: GRWTSK.Algebra.StandardPart.Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "257c0d42e19a2ce43c8766ae128a374546011e77",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/index.md) · [Full source](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `257c0d42e19a2ce43c8766ae128a374546011e77`.

Source path: `GRWTSK/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean.Real.Hom` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteElement](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/finiteelement--030f0b7bd4f72c4d5b6097f4.md) | 57 | `declaration-track:030f0b7bd4f72c4d5b6097f484257d67d39b60f635ee0dc678c340894271a765` |
| 2 | `theorem` | [val_zero](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/val-zero--ced7ae30249bfb54d922ffc1.md) | 63 | `result-track:ced7ae30249bfb54d922ffc1e19c8607fb777948c56beb5954d91c67374a2d47` |
| 3 | `theorem` | [val_one](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/val-one--9a9b6366c47885db992f7098.md) | 64 | `result-track:9a9b6366c47885db992f70980deb586f62aec0dd63d6c80df74d55a2973c032a` |
| 4 | `theorem` | [val_add](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/val-add--89d11618ed45a8fb44463875.md) | 65 | `result-track:89d11618ed45a8fb4446387564724000bd7e3eeb5d2959d510d38a49f6a1801b` |
| 5 | `theorem` | [val_sub](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/val-sub--8b4c972df7215f06a2b60f19.md) | 66 | `result-track:8b4c972df7215f06a2b60f19d8caa363cafbf2027f8562756ba493a8ba398d3d` |
| 6 | `theorem` | [val_mul](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/val-mul--ba322252079706fb3c1748ae.md) | 67 | `result-track:ba322252079706fb3c1748ae208b7ac2d17f65d41ac6be77e549d2d0b3ee3f6c` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/ext--9fa9bc99c93d38dacd4389bd.md) | 69 | `result-track:9fa9bc99c93d38dacd4389bde3b1b52bcc3216140822b347be8ec147ba282b51` |
| 8 | `def` | [mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk--9fb68b34b608ded58351140f.md) | 72 | `declaration-track:9fb68b34b608ded58351140fd2e163c2a6f0474c341199ea0c26497377af5f37` |
| 9 | `theorem` | [mk_zero](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-zero--6b924c9105242070f18a8f06.md) | 74 | `result-track:6b924c9105242070f18a8f060ff7f259ccbb962ac535d1f75bde18797d4606d3` |
| 10 | `theorem` | [mk_one](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-one--e1940d3196a708e945f896bc.md) | 75 | `result-track:e1940d3196a708e945f896bc8cedaff2e8a7f6f3273f01da35cb7da5bd65f17d` |
| 11 | `theorem` | [mk_natCast](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-natcast--06a2f7db068938153b5531eb.md) | 76 | `result-track:06a2f7db068938153b5531ebb6f45d4bd74904c66fba3bc4f2019bf2424cb2ba` |
| 12 | `theorem` | [mk_intCast](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-intcast--d8519c0ce11484ff90a0c21f.md) | 77 | `result-track:d8519c0ce11484ff90a0c21f0bc109bd1a5079bfda45a18ead4bb865b7f3fdfb` |
| 13 | `theorem` | [neg_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/neg-mk--fbb5f8886be2492850516bbe.md) | 80 | `result-track:fbb5f8886be2492850516bbe690919e11f52236816b688852f5b0b798650b08c` |
| 14 | `theorem` | [mk_add_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-add-mk--4b540dfe32c8b1dd1790710d.md) | 85 | `result-track:4b540dfe32c8b1dd1790710d535404c52db06da0e2e058c13191aa1c874650fa` |
| 15 | `theorem` | [mk_sub_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-sub-mk--8635fb5da843b8623e1b5330.md) | 90 | `result-track:8635fb5da843b8623e1b53309295ceee6feda3940587995afebd007b49ff840d` |
| 16 | `theorem` | [mk_mul_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-mul-mk--a698c7cefdb09d598bdb1231.md) | 95 | `result-track:a698c7cefdb09d598bdb12314981974e626e45a95870fe737484fa4cab2eff68` |
| 17 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-le-mk--71d662df1d0c0be3546ae8e2.md) | 100 | `result-track:71d662df1d0c0be3546ae8e26e6bf65d71cf96da3ab267f8c5be316914c2e3d6` |
| 18 | `theorem` | [mk_lt_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-lt-mk--ebebffd92595470201d7dc89.md) | 104 | `result-track:ebebffd92595470201d7dc89bda463e710feafb423be0ba356435a549a706d39` |
| 19 | `theorem` | [not_isUnit_iff_mk_pos](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/not-isunit-iff-mk-pos--0783439441c43f0d27149e48.md) | 107 | `result-track:0783439441c43f0d27149e4876d1c96abbbf4b15d47afb67f7f66d3a4e42da36` |
| 20 | `theorem` | [isUnit_iff_mk_eq_zero](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/isunit-iff-mk-eq-zero--689b91a4a4767500a9ddb67f.md) | 110 | `result-track:689b91a4a4767500a9ddb67ff16288e5f822f511b3cd4a6a64d680c9228254b0` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/instance--579adc3b5ef6d46ab5addd61.md) | 113 | `declaration-track:579adc3b5ef6d46ab5addd613aaeb730cf29d41ed32bc13819cdce0da4b6e475` |
| 22 | `theorem` | [mk_ratCast](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-ratcast--7e1ac27c1dda6d7ef50f71a6.md) | 116 | `result-track:7e1ac27c1dda6d7ef50f71a61787dbaebfb16c7d85ba768bc304885eae8d1260` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/instance--79ead8d393eddaaf0e776a0f.md) | 119 | `declaration-track:79ead8d393eddaaf0e776a0f15d4fd2387026084b1b9e49cc4513df92781a0ee` |
| 24 | `def` | [FiniteResidueField](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/finiteresiduefield--34d01894c3fbc5123ef835d8.md) | 131 | `declaration-track:34d01894c3fbc5123ef835d82e040e2db0fdab03aa000752bfdd8545018391ac` |
| 25 | `instance` | [ordConnected_preimage_mk'](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/ordconnected-preimage-mk--c752c777abb3c202fd602e9e.md) | 138 | `declaration-track:c752c777abb3c202fd602e9e48e615b16426f02f806f7fae9163473fd3b0e31c` |
| 26 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/instance--acbe76bed1334c1501e1079d.md) | 148 | `declaration-track:acbe76bed1334c1501e1079d977b6481badacdd7248fea265533a3b81f966b66` |
| 27 | `def` | [mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk--05ca8b5aa9a6c94a8c489f89.md) | 156 | `declaration-track:05ca8b5aa9a6c94a8c489f89e80b239b356ea8ad231cef6f17c0bcc6ce28e0e2` |
| 28 | `theorem` | [ind](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/ind--df14101c0b6ce82cc06be1b9.md) | 161 | `result-track:df14101c0b6ce82cc06be1b97a0ba5e89cfa93f4599e8acbe50236dc27bf7622` |
| 29 | `instance` | [ordConnected_preimage_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/ordconnected-preimage-mk--a847596e68ec695825b745d1.md) | 164 | `declaration-track:a847596e68ec695825b745d1548cc1d04ebea62c32fc6c3e7507afaa3a228f7d` |
| 30 | `theorem` | [mk_eq_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-eq-mk--6433ebf085d8a982b9f6227d.md) | 169 | `result-track:6433ebf085d8a982b9f6227da25e0ce652cece086e858ef4b58bf01b7eb1b44c` |
| 31 | `theorem` | [mk_eq_zero](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-eq-zero--005dd7eb5a22326d7e3a94f2.md) | 174 | `result-track:005dd7eb5a22326d7e3a94f24b9a340fa7a76f7fdfd3627dd9db983f3c553ebb` |
| 32 | `theorem` | [mk_ne_zero](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-ne-zero--65f267265b4de2ad815c7878.md) | 178 | `result-track:65f267265b4de2ad815c7878888028aa25d9bdbc6bb5604b666aa48c1e85bade` |
| 33 | `theorem` | [mk_le_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-le-mk--d7f5ebfe88f248846e1b3dec.md) | 181 | `result-track:d7f5ebfe88f248846e1b3dece6550dbcd1fe1215f480dffec46ee26c4ed98ffa` |
| 34 | `theorem` | [mk_lt_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-lt-mk--5d8b95aabe873946896a586b.md) | 186 | `result-track:5d8b95aabe873946896a586bc1a6f52ad6392b89ccd6493b6f7302064ec7dd8e` |
| 35 | `theorem` | [lt_of_mk_lt_mk](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/lt-of-mk-lt-mk--03c46b138441361c742dad7d.md) | 191 | `result-track:03c46b138441361c742dad7d95c9cf3ce5505029afbe56b9039f3d6b71100dea` |
| 36 | `theorem` | [mul_le_mul_of_nonneg_left'](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mul-le-mul-of-nonneg-left--0336eb06029685e77cc98abd.md) | 194 | `result-track:0336eb06029685e77cc98abd25861ee29efa6c1f9c34e57705ba36d447a6686b` |
| 37 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/instance--a6423375060896a290dba55f.md) | 204 | `declaration-track:a6423375060896a290dba55f23ea07b8f03214c179dbf8f48b152a23af86d907` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/instance--e76fbe89bcf3d4947c7a3e4e.md) | 218 | `declaration-track:e76fbe89bcf3d4947c7a3e4e95e268592bd2ccdac6e3600b4d1608514bbb348a` |
| 39 | `theorem` | [mk_ratCast](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-ratcast--e4cdc7b347e7cfb4eabeaeeb.md) | 233 | `result-track:e4cdc7b347e7cfb4eabeaeebf93883c78523bace88eb67619cf1737cd17592b3` |
| 40 | `def` | [ofArchimedean](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/ofarchimedean--2668ff2113eb115bf0f305ee.md) | 242 | `declaration-track:2668ff2113eb115bf0f305ee7349ff91fbea90784dd0d4a4ce90b536a132da5b` |
| 41 | `theorem` | [ofArchimedean_apply](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/ofarchimedean-apply--d920eb5700bb10f5141f9d27.md) | 256 | `result-track:d920eb5700bb10f5141f9d27948541bb2fd471071e31856c828c09ac3c1505ac` |
| 42 | `theorem` | [ofArchimedean_injective](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/ofarchimedean-injective--62a247ce9e6193aa5c90fc40.md) | 260 | `result-track:62a247ce9e6193aa5c90fc409ebbb30329e51181b2303715b88c3fb4ca21593d` |
| 43 | `theorem` | [ofArchimedean_inj](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/ofarchimedean-inj--08e00875f2553222fc3e17a5.md) | 268 | `result-track:08e00875f2553222fc3e17a5d0ac2ed11b1a168c2419450fb02892a0c13b2755` |
| 44 | `def` | [stdPart](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart--0fcdaf17b91992a85b16de17.md) | 281 | `declaration-track:0fcdaf17b91992a85b16de178ffa02d30b357bf70ad071a8b6449cb79ba0af6a` |
| 45 | `theorem` | [stdPart_of_mk_nonneg](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-of-mk-nonneg--2aa059b630267664d0674746.md) | 285 | `result-track:2aa059b630267664d0674746ff11d826799b0388fa65f473c48296ecb601f28f` |
| 46 | `theorem` | [stdPart_eq_zero](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-eq-zero--29ec8f0469fca28de144e153.md) | 292 | `result-track:29ec8f0469fca28de144e153e890e5f7df16df22025d2b44ed1c32b3a69b4be8` |
| 47 | `theorem` | [stdPart_monotoneOn](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-monotoneon--6666a437c9170a73f0146b71.md) | 305 | `result-track:6666a437c9170a73f0146b7173a338eef9d1471c30406d99bc690be1c64e8e63` |
| 48 | `theorem` | [stdPart_zero](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-zero--648fac464c563e61740fa40a.md) | 313 | `result-track:648fac464c563e61740fa40a0e93f64b3a6cb0f7e76e11b0db6ffe8d3c1c501b` |
| 49 | `theorem` | [stdPart_one](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-one--4b3835dc2a96d3f0461f23f4.md) | 317 | `result-track:4b3835dc2a96d3f0461f23f4dec45a62513936cb5bc6132fdfa8f49dd8702fd3` |
| 50 | `theorem` | [stdPart_neg](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-neg--305771b00d5d70543677a326.md) | 321 | `result-track:305771b00d5d70543677a3265640a06e2f19cf815d02c5bb843bba83d833cdb8` |
| 51 | `theorem` | [stdPart_inv](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-inv--792936520434e3afc76b1e51.md) | 328 | `result-track:792936520434e3afc76b1e51b863718dba172ee38124559c30cc07a5e0082b61` |
| 52 | `theorem` | [stdPart_add](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-add--c6b7b2c20c003a0aae763842.md) | 342 | `result-track:c6b7b2c20c003a0aae763842f03989352f82801f489f9a9ef56fec29074887e8` |
| 53 | `theorem` | [stdPart_add_eq_right](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-add-eq-right--a846315d5b56419007f1ffc8.md) | 347 | `result-track:a846315d5b56419007f1ffc8016a2574b1a327dc2ed74b787c190e4b49a3ffef` |
| 54 | `theorem` | [stdPart_add_eq_left](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-add-eq-left--e11ea21f79a79858099ee4d4.md) | 354 | `result-track:e11ea21f79a79858099ee4d4c433d33a125057bcc41ea9469d85f172cb815a4a` |
| 55 | `theorem` | [stdPart_sub](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-sub--25e77648387c879673ea428f.md) | 357 | `result-track:25e77648387c879673ea428fa1385011815437361ec482a5f742fcd1e19aa2f3` |
| 56 | `theorem` | [stdPart_sub_eq_right](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-sub-eq-right--e04aba8a4889e4e7a9785f77.md) | 361 | `result-track:e04aba8a4889e4e7a9785f776ac60491cfb1fa676c588ab413af2304308544ad` |
| 57 | `theorem` | [stdPart_sub_eq_left](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-sub-eq-left--becd3b5e6cd226e4c29d69af.md) | 364 | `result-track:becd3b5e6cd226e4c29d69af193866eaedd59cbbf3fbadeb462b6d75ef1621ec` |
| 58 | `theorem` | [stdPart_mul](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-mul--8c8ed7d625942847a10c01b9.md) | 367 | `result-track:8c8ed7d625942847a10c01b9714a50ddb80c2750027f60c1798d09df1e7e6b74` |
| 59 | `theorem` | [stdPart_div](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-div--b7f8363bf527c598910ee88d.md) | 372 | `result-track:b7f8363bf527c598910ee88d47b54784a5bc5d82bd5a927c8b9ebec1fde3d076` |
| 60 | `theorem` | [stdPart_ratCast](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-ratcast--24056df5c69ebc48cd2374f9.md) | 378 | `result-track:24056df5c69ebc48cd2374f93b2fba376d1ce64b00576f28fccb7d7fc8e225e1` |
| 61 | `theorem` | [stdPart_intCast](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-intcast--fe9d4ee345b11e2e5061194b.md) | 383 | `result-track:fe9d4ee345b11e2e5061194bfc8eedefa851cd64b7ac2f1db223fc0e59051a99` |
| 62 | `theorem` | [stdPart_natCast](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-natcast--ee3a899ff961aa4bdb48794d.md) | 387 | `result-track:ee3a899ff961aa4bdb48794d4d4cae304990684ccbdce999f07a14e701c9e92e` |
| 63 | `theorem` | [stdPart_ofNat](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-ofnat--c962af169147a120b9e76dcb.md) | 391 | `result-track:c962af169147a120b9e76dcb3f3a5ebc61c6568cf73cbc76df672893d42dbe72` |
| 64 | `theorem` | [stdPart_map_real](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-map-real--9dfcbb43b8728b97e27e15a9.md) | 395 | `result-track:9dfcbb43b8728b97e27e15a91c921c2cb2c364c959ceb8d365b7dd2dc3998abe` |
| 65 | `theorem` | [stdPart_real](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-real--6e1541ffc21533831051ef21.md) | 400 | `result-track:6e1541ffc21533831051ef2124b1c9d88901a2de050363b4997d317acf65f100` |
| 66 | `theorem` | [ofArchimedean_stdPart](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/ofarchimedean-stdpart--e8ce616c5fd9d7b8f77ea527.md) | 403 | `result-track:e8ce616c5fd9d7b8f77ea5270abedbcd95e13a4f4aeec47a5931894ab4784dec` |
| 67 | `theorem` | [stdPart_nonneg](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-nonneg--869d24789c72d7b9e499d1e7.md) | 408 | `result-track:869d24789c72d7b9e499d1e7602c84238f88a0513b10579e783294b842688bfe` |
| 68 | `theorem` | [stdPart_nonpos](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-nonpos--5f00d7e7e47631f275a15bce.md) | 414 | `result-track:5f00d7e7e47631f275a15bcea3765c98707e3b5fde0414406d12c3274324f5d0` |
| 69 | `theorem` | [mk_sub_pos_iff](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-sub-pos-iff--969434a23b8da5e039ac919f.md) | 418 | `result-track:969434a23b8da5e039ac919f8a834d5a35d8a781caa699927343028356c377a8` |
| 70 | `theorem` | [mk_sub_stdPart_pos](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/mk-sub-stdpart-pos--22b1fb179634c5c194f23ff1.md) | 425 | `result-track:22b1fb179634c5c194f23ff1f7d4418e46501e9c8b7a8e45e16e5bee5ccda918` |
| 71 | `theorem` | [lt_of_lt_stdPart](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/lt-of-lt-stdpart--1020825721fa97e856ae1a5a.md) | 428 | `result-track:1020825721fa97e856ae1a5a73c044dc89ae507406bd15f28a6b3357c64ee958` |
| 72 | `theorem` | [lt_of_stdPart_lt](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/lt-of-stdpart-lt--140413696d6a8e486ffe4f53.md) | 436 | `result-track:140413696d6a8e486ffe4f53f288cae7d162fb7e036ec911889cf5676d1898ae` |
| 73 | `theorem` | [stdPart_le_of_le](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-le-of-le--a6accb91c5d12e27330f0c5a.md) | 440 | `result-track:a6accb91c5d12e27330f0c5a5c0b3d41ab6af785ccc0b35e7115795df2cc008c` |
| 74 | `theorem` | [le_stdPart_of_le](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/le-stdpart-of-le--5b34d940c811679538aa2712.md) | 443 | `result-track:5b34d940c811679538aa2712bf4df9def2baed89669037454260e01c16ec64d1` |
| 75 | `theorem` | [stdPart_eq](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-eq--fccd7d4edbf9587d390b39ca.md) | 446 | `result-track:fccd7d4edbf9587d390b39cab213a77914181309ca40d80cdad5264682654b6f` |
| 76 | `theorem` | [stdPart_eq_sInf](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-eq-sinf--ea486ec4736f6bf9b6146eb9.md) | 457 | `result-track:ea486ec4736f6bf9b6146eb9cb13c0104ea52b89a85298678fc617c4728e89bf` |
| 77 | `theorem` | [stdPart_eq_sSup](../../../../mathematics/Algebra/StandardPart/Variant1c92d848ee7ddf9676dfdd4e565358e804e2af6a17d33aeca45458af77ede8c3.lean/declarations/stdpart-eq-ssup--8be4f373fca9ddaad3f4839a.md) | 480 | `result-track:8be4f373fca9ddaad3f4839a7dfb19d1622e5a89a42b42b173e05eed388a62f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
