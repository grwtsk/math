# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Factors.Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65f041697c9c6bbcc7c8a8a4c241f7040be6d11b",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65f041697c9c6bbcc7c8a8a4c241f7040be6d11b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Multiset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Prime` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimeMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/primemultiset--05aa85b712524e4d29c7bfa8.md) | 38 | `declaration-track:05aa85b712524e4d29c7bfa898a3097aebe32ff6f4c975567647c54640a99af7` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/instance--460144727607cc7741071dbb.md) | 43 | `declaration-track:460144727607cc7741071dbb4d2a0b996ffcd272ccb45dc2182d0d39f9f44135` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/instance--02bfcb7245a6d45bce21f1ec.md) | 46 | `declaration-track:02bfcb7245a6d45bce21f1ec605e2edae7cd23f18e23e3e8ddaa03750b2a7b74` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/instance--4a478a47e653c73df9e096cb.md) | 52 | `declaration-track:4a478a47e653c73df9e096cb99f095affcff08a3e0fb95312e3e309c4af0c46a` |
| 5 | `def` | [ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/ofprime--9e89d99df8bae391cc318bd7.md) | 55 | `declaration-track:9e89d99df8bae391cc318bd7931f22915278c98a6ce4d01d1e825956a78f52c3` |
| 6 | `theorem` | [card_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/card-ofprime--fd79abe0d8970b079def4b62.md) | 59 | `result-track:fd79abe0d8970b079def4b62b938185e317fdfdb0107525f59d292958a8eb4eb` |
| 7 | `def` | [toNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/tonatmultiset--a91d5ef91f1f852db600bd06.md) | 71 | `declaration-track:a91d5ef91f1f852db600bd060fb7dcda56d22b982980790037b31ff51e5f22bb` |
| 8 | `instance` | [coeNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coenat--80e2bb5dd1f9ca3e30d75468.md) | 74 | `declaration-track:80e2bb5dd1f9ca3e30d754684955cf9a4408c8d134160bdb55781329bf73df2e` |
| 9 | `def` | [coeNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coenatmonoidhom--d1e1f758a086565732ec08ac.md) | 80 | `declaration-track:d1e1f758a086565732ec08acb8b912f0d9f438abc6cb5926bfa061c1615c3d7f` |
| 10 | `theorem` | [coe_coeNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coe-coenatmonoidhom--8ee62812407464e248d513f9.md) | 85 | `result-track:8ee62812407464e248d513f9c05a6096f6757626d394f9982738bb95abb56824` |
| 11 | `theorem` | [coeNat_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coenat-injective--0c95530a475bd3aea7d7d442.md) | 89 | `result-track:0c95530a475bd3aea7d7d442ffa0d49ce3a5932a429a58ba7c01dec768a5ded7` |
| 12 | `theorem` | [coeNat_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coenat-ofprime--a23c4ac47800a4b2f054bfa3.md) | 93 | `result-track:a23c4ac47800a4b2f054bfa3fe4b94ec55414ec64a8775ef8ba0deddd1035275` |
| 13 | `theorem` | [coeNat_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coenat-prime--102d2b2cf345d10cfd732e64.md) | 97 | `result-track:102d2b2cf345d10cfd732e643404bab6099171926d8596b33534efc428e3ceb8` |
| 14 | `def` | [toPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/topnatmultiset--9538fa83309a2baf37087198.md) | 103 | `declaration-track:9538fa83309a2baf37087198fb036b8de214a59cb9650a271d9df59c343bf8e2` |
| 15 | `instance` | [coePNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coepnat--c5a99a6a2d92ea777b579b2a.md) | 106 | `declaration-track:c5a99a6a2d92ea777b579b2ae48a108a305f52ced94e1e5284cd00156a352df9` |
| 16 | `def` | [coePNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coepnatmonoidhom--6dda775d7d7893c7f1a61870.md) | 112 | `declaration-track:6dda775d7d7893c7f1a61870864f0400095d1d2df26f7ff456c162cb58893d3b` |
| 17 | `theorem` | [coe_coePNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coe-coepnatmonoidhom--f829bddb70aaf120f0d441aa.md) | 117 | `result-track:f829bddb70aaf120f0d441aa7e455e7481f17552ac5f989f7539b00aa42d0367` |
| 18 | `theorem` | [coePNat_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coepnat-injective--1df650ea8c410ab3473e4ce9.md) | 121 | `result-track:1df650ea8c410ab3473e4ce92a7f40036a40ace1047e1969031405244f3b1152` |
| 19 | `theorem` | [coePNat_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coepnat-ofprime--e20d32e4436dafb4457b9b0a.md) | 125 | `result-track:e20d32e4436dafb4457b9b0ab760df9557461ec1b5ad2f2d011c31f8c1d0bd92` |
| 20 | `theorem` | [coePNat_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coepnat-prime--42c9f1da0e207f5ad110bdc1.md) | 129 | `result-track:42c9f1da0e207f5ad110bdc1da3e64439cd7d0bef6a0a6a2f9069b83ba6b2c8f` |
| 21 | `instance` | [coeMultisetPNatNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coemultisetpnatnat--93986060d5f2b758d0415355.md) | 134 | `declaration-track:93986060d5f2b758d0415355b8bf654e97bf6362e878ba9a3e2f7f1ae01d12e3` |
| 22 | `theorem` | [coePNat_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coepnat-nat--995ab01f47b8525c73e09a7c.md) | 138 | `result-track:995ab01f47b8525c73e09a7c5dd67c434c139249d568cd5c338bc243dda63d3b` |
| 23 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod--0bd2971fcd79e34df5b1bad1.md) | 145 | `declaration-track:0bd2971fcd79e34df5b1bad12820980ae07f1d6194816388b8ca553dafa28348` |
| 24 | `theorem` | [coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coe-prod--bde8ed78dae7698cd16471b5.md) | 149 | `result-track:bde8ed78dae7698cd16471b58533169c62119d60cd32a9fd3bdee69b9e91cd7c` |
| 25 | `theorem` | [prod_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-ofprime--8c89205c71e42d04b6376aa4.md) | 157 | `result-track:8c89205c71e42d04b6376aa4a31ad74deca1c7f96857b5b83f125c54c9041f1e` |
| 26 | `def` | [ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/ofnatmultiset--e1d9dce3b3667acbcd6fe459.md) | 162 | `declaration-track:e1d9dce3b3667acbcd6fe4591efa75c06d264206e608ed573b2031d04a1e2c33` |
| 27 | `theorem` | [to_ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/to-ofnatmultiset--bbe235ca8cec5a93f9c6cee2.md) | 166 | `result-track:bbe235ca8cec5a93f9c6cee231ebc08a70581fab88dbfae3d517d47b4acd0c53` |
| 28 | `theorem` | [prod_ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-ofnatmultiset--57af2bb013ca557eb0a50534.md) | 174 | `result-track:57af2bb013ca557eb0a50534df0c6bda596d740c2f2e68b3fd19dccf869d92a2` |
| 29 | `def` | [ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/ofpnatmultiset--02a192bb5e8c3dd513be4994.md) | 179 | `declaration-track:02a192bb5e8c3dd513be4994f24245e6361f0b75b687d48cb70a43db4d642468` |
| 30 | `theorem` | [to_ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/to-ofpnatmultiset--39197570f3bb2747e8c341cb.md) | 183 | `result-track:39197570f3bb2747e8c341cb1344624f18ce05ef928a7e3491d4eddac8c83c64` |
| 31 | `theorem` | [prod_ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-ofpnatmultiset--d098ca69bf51caa768ca954e.md) | 192 | `result-track:d098ca69bf51caa768ca954e18657b406b31b21d6dacdfd30dbb5ab74b0f25ee` |
| 32 | `def` | [ofNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/ofnatlist--d1ba44d754a33e1d930a7387.md) | 199 | `declaration-track:d1ba44d754a33e1d930a7387c72e77902bdb3d7b5052be70c1c981fa7660f6cf` |
| 33 | `theorem` | [prod_ofNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-ofnatlist--c714554a8435f71a93bb9ebe.md) | 203 | `result-track:c714554a8435f71a93bb9ebe1a8914cfcd4348d12b8405a410a0bbe23cdb16bf` |
| 34 | `def` | [ofPNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/ofpnatlist--cbb5cb3e293e7118aa1db012.md) | 211 | `declaration-track:cbb5cb3e293e7118aa1db0126a04b853296db02cc521e9e60e4ee7deab03b4fa` |
| 35 | `theorem` | [prod_ofPNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-ofpnatlist--6f9c0c27a20f8b40055551e4.md) | 215 | `result-track:6f9c0c27a20f8b40055551e46e307cfe8039535c5764959980810f217d88a0a0` |
| 36 | `theorem` | [prod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-zero--88556e50262eba3aa45e0f23.md) | 223 | `result-track:88556e50262eba3aa45e0f231000c6b48df065f1e08fe4691e60c12684399f1f` |
| 37 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-add--0ea2195430c9d5bea53fb381.md) | 227 | `result-track:0ea2195430c9d5bea53fb381f9dcbd86695c927dcb9f539e6d95543f1a0f3e93` |
| 38 | `theorem` | [prod_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-smul--8f399875916e78883c338b47.md) | 234 | `result-track:8f399875916e78883c338b47485efdb54f73e6f9399c09fe3208320a267f6829` |
| 39 | `def` | [factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset--00322ca8f44484d943702463.md) | 246 | `declaration-track:00322ca8f44484d943702463dc4c3406fd7aae6004e915304688423934cdecca` |
| 40 | `theorem` | [prod_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-factormultiset--4fc8bf52bf9d844b073b2346.md) | 251 | `result-track:4fc8bf52bf9d844b073b23463a67babb745ea0fd3d07168300366e2cceb54db7` |
| 41 | `theorem` | [coeNat_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/coenat-factormultiset--100f4ab76ad2687778b1edfd.md) | 258 | `result-track:100f4ab76ad2687778b1edfdd4b8976b56863a3dd010712013dc4a18ca9cdedb` |
| 42 | `theorem` | [factorMultiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset-prod--31f2fe058bf24e6949480fed.md) | 269 | `result-track:31f2fe058bf24e6949480fed51d09287b4157c6717065f978a333a5c95c7c0aa` |
| 43 | `def` | [factorMultisetEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultisetequiv--f8e603220adfe0d6be752352.md) | 289 | `declaration-track:f8e603220adfe0d6be7523525c06a37c05dddc9ad9659bce1d9523567752db9c` |
| 44 | `theorem` | [factorMultiset_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset-one--4db34ddc1d4f72c00920d2ee.md) | 299 | `result-track:4db34ddc1d4f72c00920d2ee7770d9482f1bff2cdc57dc0d75543309602e009e` |
| 45 | `theorem` | [factorMultiset_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset-mul--80a623a3a3cb1d3fa5cd4805.md) | 303 | `result-track:80a623a3a3cb1d3fa5cd480533c32473880e894d9c4a04f0ee58473599addcf5` |
| 46 | `theorem` | [factorMultiset_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset-pow--b9adce5515ba8ce282537397.md) | 313 | `result-track:b9adce5515ba8ce28253739799458cb22a4e1b3915499212726a7599540b4649` |
| 47 | `theorem` | [factorMultiset_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset-ofprime--18d8f5c19a36370c9074256b.md) | 322 | `result-track:18d8f5c19a36370c9074256b37f88fce48e11304eb651a73a624448edca66766` |
| 48 | `theorem` | [factorMultiset_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset-le-iff--6b11098031063a43c1c49faa.md) | 332 | `result-track:6b11098031063a43c1c49faa433f18ce0bde2d070fa0bbd20e56dfe4fb164cfc` |
| 49 | `theorem` | [factorMultiset_le_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset-le-iff--f754628c9fcac3f82034b9ee.md) | 344 | `result-track:f754628c9fcac3f82034b9ee0b43c919e538043b83a8a9b5ae217b82c96a6895` |
| 50 | `theorem` | [prod_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-dvd-iff--6deb9f4cc44552504f94bfef.md) | 355 | `result-track:6deb9f4cc44552504f94bfefb974513322943c3538f0324cd7b0605ee4ee20b6` |
| 51 | `theorem` | [prod_dvd_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-dvd-iff--32116f94a02e78b0aa56fa0b.md) | 361 | `result-track:32116f94a02e78b0aa56fa0b1c565152b1bbba86390ca22ea781de32b5f9ccbf` |
| 52 | `theorem` | [factorMultiset_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset-gcd--7451f30913f4a26de5a6bcdc.md) | 373 | `result-track:7451f30913f4a26de5a6bcdcd340dc95288427f74abcbbf7d03fcaa3dd030cb7` |
| 53 | `theorem` | [factorMultiset_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/factormultiset-lcm--b78e042a1b4809bf0a2d898a.md) | 385 | `result-track:b78e042a1b4809bf0a2d898a4dc1a95c5323ca537fce8cadb0c8e5df041a423a` |
| 54 | `theorem` | [count_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/count-factormultiset--a52dd2a2f218e0387f823e6d.md) | 399 | `result-track:a52dd2a2f218e0387f823e6d1c969895e6b28a81113d69da87cbcdd106fb307d` |
| 55 | `theorem` | [prod_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-inf--054944be7d04676bb171bfd4.md) | 417 | `result-track:054944be7d04676bb171bfd469bfc82dd50db5b3a0093f0f0f947415e4a6a988` |
| 56 | `theorem` | [prod_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/declarations/prod-sup--3174b0be88bcad480a166aeb.md) | 426 | `result-track:3174b0be88bcad480a166aeb20b7e2899e78e36913762f37564088f804ec9fb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
