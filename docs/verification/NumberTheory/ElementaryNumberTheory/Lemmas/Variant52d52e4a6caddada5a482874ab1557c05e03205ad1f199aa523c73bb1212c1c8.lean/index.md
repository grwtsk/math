# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6a263c794b22a9b8af07fa4c4dfb7a398bc30c6",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6a263c794b22a9b8af07fa4c4dfb7a398bc30c6`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Div` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [num_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/num-dvd--6fdf473fd6fcde27d3ac2629.md) | 23 | `result-track:6fdf473fd6fcde27d3ac2629908461490f0b47695fec95862138843f384b2b46` |
| 2 | `theorem` | [den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/den-dvd--283e016797adcf220550d834.md) | 31 | `result-track:283e016797adcf220550d834ff0bfe07fd32585b1a45c7d98d65d5c3da57a309` |
| 3 | `theorem` | [num_den_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/num-den-mk--b191fdabbf89e532302928f4.md) | 39 | `result-track:b191fdabbf89e532302928f4b433c41d7ba8fc8bb30b319c2243085f468a58d2` |
| 4 | `theorem` | [num_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/num-mk--4fd74f5a554292b064c0408c.md) | 60 | `result-track:4fd74f5a554292b064c0408cd93c770073b0eee04ab7abb62c8325b328aae2df` |
| 5 | `theorem` | [den_mk](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/den-mk--008470823cbea28c09260fc9.md) | 67 | `result-track:008470823cbea28c09260fc968194f3c2f80bc2615778daa611a229b5b706fe8` |
| 6 | `theorem` | [add_den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/add-den-dvd--26e45542bc36d35e4e7437c4.md) | 74 | `result-track:26e45542bc36d35e4e7437c498d4834fdb31cee988b53df7b6a8dc1c65e409f9` |
| 7 | `theorem` | [mul_den_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/mul-den-dvd--434c5f361d40a1943a55dc6e.md) | 80 | `result-track:434c5f361d40a1943a55dc6e360f3589e2a9300cc3378e127011236feb0cce50` |
| 8 | `theorem` | [mul_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/mul-num--f76c88721f953dee5db187b9.md) | 86 | `result-track:f76c88721f953dee5db187b9ce9500b4558bf3b082d322be53485aad2dae4007` |
| 9 | `theorem` | [mul_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/mul-den--4341b3093604aa5c910af68c.md) | 91 | `result-track:4341b3093604aa5c910af68c3d2726b3f5554f8ec84f1c0eb4ed9dacee79da84` |
| 10 | `theorem` | [mul_self_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/mul-self-num--702a0fd21e90910ffb55f549.md) | 97 | `result-track:702a0fd21e90910ffb55f549e2a1ccb124e290974b8d9268eea7aaf6623554b5` |
| 11 | `theorem` | [mul_self_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/mul-self-den--3ca3874503ae86fcf0c22b6e.md) | 102 | `result-track:3ca3874503ae86fcf0c22b6e82ea3f6e089948d0058f8fee0b3617d572f6184a` |
| 12 | `theorem` | [add_num_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/add-num-den--b3b1c5c410ecc7e22632dbc2.md) | 107 | `result-track:b3b1c5c410ecc7e22632dbc2ad76623589389c5ea99bc784b98a94dc1f1032ac` |
| 13 | `theorem` | [exists_eq_mul_div_num_and_eq_mul_div_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/exists-eq-mul-div-num-and-eq-mul-div-den--a8c4e0ab91ad30d8f9889612.md) | 117 | `result-track:a8c4e0ab91ad30d8f9889612a7b7b028a3dc086857c125bc03f9f1c3dddaa6a8` |
| 14 | `theorem` | [mul_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/mul-num-den--523677758a2bf8e0a395738b.md) | 123 | `result-track:523677758a2bf8e0a395738be31a246f1dace14d79abbb19a64690d14981ff8a` |
| 15 | `theorem` | [add_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/add-num-den--ac653b3e1c10a40dde62098c.md) | 145 | `result-track:ac653b3e1c10a40dde62098cfd0a5bea053ce494ca408de97ce5955ce20d2f3b` |
| 16 | `theorem` | [substr_num_den'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/substr-num-den--b756627847bb145d83ceaef0.md) | 167 | `result-track:b756627847bb145d83ceaef0e14a54c8b9fd041fc4140f876565ad26bbc120ec` |
| 17 | `theorem` | [inv_def''](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-def--97d1b6f0a154e599dec0710f.md) | 175 | `result-track:97d1b6f0a154e599dec0710f5ac1fee185d42abf6205c74a03bdbf9f0e629d0c` |
| 18 | `theorem` | [inv_neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-neg--d39c93b3620ae30657179fbe.md) | 180 | `result-track:d39c93b3620ae30657179fbed79908cc917630198bb31afe654459330abf1e30` |
| 19 | `theorem` | [mul_den_eq_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/mul-den-eq-num--555ae07f75a5e39a9630693d.md) | 186 | `result-track:555ae07f75a5e39a9630693db5e8f635ab9c2761631f4bddac0cf23c2ec787ed` |
| 20 | `theorem` | [den_div_cast_eq_one_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/den-div-cast-eq-one-iff--5710136a65e854a6bdcd0700.md) | 194 | `result-track:5710136a65e854a6bdcd07005bdd6a1359cc962872cb13f12595ec80953444d2` |
| 21 | `theorem` | [num_div_eq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/num-div-eq-of-coprime--97337abb6e81a3ec49b77b83.md) | 208 | `result-track:97337abb6e81a3ec49b77b83341a3954ed2859698a15b78f1ce3d48fcaff8119` |
| 22 | `theorem` | [den_div_eq_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/den-div-eq-of-coprime--d26ddd21f75ce3128a2a185b.md) | 215 | `result-track:d26ddd21f75ce3128a2a185b49bcaa1dafda3d7415750f117cc030f3a1d67937` |
| 23 | `theorem` | [div_int_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/div-int-inj--b76717d994eba35bdaa54194.md) | 222 | `result-track:b76717d994eba35bdaa54194d7cf7069d82c26b1e0777a697f9e4b039e1d92cd` |
| 24 | `theorem` | [coe_int_div_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/coe-int-div-self--c70ead46b31d5a6b3972d01b.md) | 230 | `result-track:c70ead46b31d5a6b3972d01bb3bbd46578ebc6502950ea853eb2ca54e02b95a5` |
| 25 | `theorem` | [coe_nat_div_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/coe-nat-div-self--6cd83f007d7abd5ce891360e.md) | 239 | `result-track:6cd83f007d7abd5ce891360e7610ae5b3afcb7da27dee412b5070482cc431ff7` |
| 26 | `theorem` | [coe_int_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/coe-int-div--44997cb5f8dd7e06260174fe.md) | 243 | `result-track:44997cb5f8dd7e06260174fe4b34ce9b7761e2fcee15f255fe7c7b60f9ebcca8` |
| 27 | `theorem` | [coe_nat_div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/coe-nat-div--0858eaebfea442c0b91a4daa.md) | 249 | `result-track:0858eaebfea442c0b91a4daa72d319b319fcf8e7f7e61bfdd54decc78114189c` |
| 28 | `theorem` | [inv_coe_int_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-coe-int-num-of-pos--bfb85332b773c3cc90d67f08.md) | 255 | `result-track:bfb85332b773c3cc90d67f081d661f1c4ef9713ec74ef2a8bb54cfe90ffe315e` |
| 29 | `theorem` | [inv_coe_nat_num_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-coe-nat-num-of-pos--65afe5f1ecc94c0222ceb39e.md) | 262 | `result-track:65afe5f1ecc94c0222ceb39e347149d6ab2452a3460814ec8dcfb50b7e670fe2` |
| 30 | `theorem` | [inv_coe_int_den_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-coe-int-den-of-pos--8b1aed2f484d9d8df81d1fb0.md) | 266 | `result-track:8b1aed2f484d9d8df81d1fb0cc2d4a1ebd756d476797768ddf596d56bbb8c448` |
| 31 | `theorem` | [inv_coe_nat_den_of_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-coe-nat-den-of-pos--4cec0a76b3808ae4f40c9cd0.md) | 273 | `result-track:4cec0a76b3808ae4f40c9cd01ca4d9c232559e2782825a625a803557e1191315` |
| 32 | `theorem` | [inv_coe_int_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-coe-int-num--934faee8fc02bb50e2b818aa.md) | 279 | `result-track:934faee8fc02bb50e2b818aaaa3ee730233ec559397379cf8f9056ee34e411f5` |
| 33 | `theorem` | [inv_coe_nat_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-coe-nat-num--24612161870b0184170ab27d.md) | 287 | `result-track:24612161870b0184170ab27d7556033e3380ee22afe9e662f6d95a9e0477101b` |
| 34 | `theorem` | [inv_coe_int_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-coe-int-den--12128a553ed67dde2bf7ae77.md) | 292 | `result-track:12128a553ed67dde2bf7ae772e04871fbd6151ff5d144b4210fc9804afef2228` |
| 35 | `theorem` | [inv_coe_nat_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/inv-coe-nat-den--1e62d8db2d9f166e98104e3c.md) | 299 | `result-track:1e62d8db2d9f166e98104e3cd1a2573287eaa927dc0fe59f2f69e0f607b11572` |
| 36 | `theorem` | [«forall»](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/forall--1d0343ee430064dc573cff8f.md) | 303 | `result-track:1d0343ee430064dc573cff8f189da5bbb7ce66fcea1907da7fcc7e2191750d74` |
| 37 | `theorem` | [«exists»](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/exists--8e85204439047f676797051a.md) | 310 | `result-track:8e85204439047f676797051acd3d2ee53df9a8a64dbf3229c8f95373d7292ebd` |
| 38 | `def` | [pnatDen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/pnatden--a75c1df91ac65b93993304bb.md) | 322 | `declaration-track:a75c1df91ac65b93993304bb4ad62fa338ba21bd019c3b448b997ca15727501c` |
| 39 | `theorem` | [coe_pnatDen](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/coe-pnatden--010a7509d69f92145151c360.md) | 327 | `result-track:010a7509d69f92145151c36086ee519d54cd0ce682c96ff736143eebf5e8b9eb` |
| 40 | `theorem` | [pnatDen_eq_iff_den_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/pnatden-eq-iff-den-eq--0bb649f4f634c242f9357b8f.md) | 333 | `result-track:0bb649f4f634c242f9357b8f3008b380dcc324f41072d0efb3374b1408e0b6bc` |
| 41 | `theorem` | [pnatDen_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/pnatden-one--046e8daa0f384243dca1e1c2.md) | 338 | `result-track:046e8daa0f384243dca1e1c2f1c1b562f109421e41cfe8feef35405728b483bc` |
| 42 | `theorem` | [pnatDen_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variant52d52e4a6caddada5a482874ab1557c05e03205ad1f199aa523c73bb1212c1c8.lean/declarations/pnatden-zero--5f474fa9f61adaf2745324cd.md) | 343 | `result-track:5f474fa9f61adaf2745324cd97f964b6548659da5bdc403a60341082fe326255` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
