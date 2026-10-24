# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Prime.Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a378344ba09e3bb7f14b4e1a9869f3a713c7a8f",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a378344ba09e3bb7f14b4e1a9869f3a713c7a8f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/topnat--a00c9803a83a11c10ac4d163.md) | 20 | `declaration-track:a00c9803a83a11c10ac4d1638b3aa6650799576d456dbcd2b14e3656f3ddceef` |
| 2 | `instance` | [coePNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coepnat--861886643cdbe4c7b10b0a63.md) | 23 | `declaration-track:861886643cdbe4c7b10b0a63dc5db976b90f85a8195b7b2654689e1b14f9cf5d` |
| 3 | `theorem` | [coe_pnat_nat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coe-pnat-nat--220164217ad38cb20d0106b7.md) | 27 | `result-track:220164217ad38cb20d0106b7c139eeb73a6c23fd9476415be7006e537c8b41a3` |
| 4 | `theorem` | [coe_pnat_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coe-pnat-injective--d854836065d057f4421c1de7.md) | 30 | `result-track:d854836065d057f4421c1de721708c38cb1cfa82a1fb846d673b5d852368b0a7` |
| 5 | `theorem` | [coe_pnat_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coe-pnat-inj--f86cc28355c01cad3493864e.md) | 34 | `result-track:f86cc28355c01cad3493864ec51899ec9bf403395e4157019d4791b6222f2b41` |
| 6 | `def` | [gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd--57a33014fdca93ce0e42c04d.md) | 45 | `declaration-track:57a33014fdca93ce0e42c04dab510de2a0f1c81563be8d4a244cdec72d3031d9` |
| 7 | `def` | [lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/lcm--0e5a73fc78200da51d3a832f.md) | 50 | `declaration-track:0e5a73fc78200da51d3a832f2abf88f875df0e57d475870a90804e364cfbde19` |
| 8 | `theorem` | [gcd_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd-coe--404da80e4e26f8d2866d6bc1.md) | 57 | `result-track:404da80e4e26f8d2866d6bc16471f262c9c646c82e6f365276f47c2ce20b705f` |
| 9 | `theorem` | [lcm_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/lcm-coe--12d8890a73292ca468323a80.md) | 61 | `result-track:12d8890a73292ca468323a804cae6b3ea9339513a211991f4b2d1aaa15af2736` |
| 10 | `theorem` | [gcd_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd-dvd-left--69708d5aa8f1ec908512d492.md) | 64 | `result-track:69708d5aa8f1ec908512d492dcb7fe5496817aa01d4af844d2e18d0d5bcdd51d` |
| 11 | `theorem` | [gcd_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd-dvd-right--83c4a9f9b062c63f5a620702.md) | 67 | `result-track:83c4a9f9b062c63f5a620702c7d9ff43d2ed8302c7a042243cb7a940e3ec2de0` |
| 12 | `theorem` | [dvd_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/dvd-gcd--8636ace0cdc8683aae12ca30.md) | 70 | `result-track:8636ace0cdc8683aae12ca302eca8f11d2e931bf9efcc7e42fb58ffdbe88ccf5` |
| 13 | `theorem` | [dvd_lcm_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/dvd-lcm-left--618471722ffbd74fd711c810.md) | 73 | `result-track:618471722ffbd74fd711c810dc6e02a2991b507792cc60240e713896fde7495e` |
| 14 | `theorem` | [dvd_lcm_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/dvd-lcm-right--fefef292bcc07e42117f0517.md) | 76 | `result-track:fefef292bcc07e42117f0517000348f390772d4de73371fdb2ce666bde637f7a` |
| 15 | `theorem` | [lcm_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/lcm-dvd--74591a2eeba83a29f27fbbdf.md) | 79 | `result-track:74591a2eeba83a29f27fbbdf320ff65473ae429efc1e2cc76c8f785139f31562` |
| 16 | `theorem` | [gcd_mul_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd-mul-lcm--5a8140fea6f0ee0019a5397f.md) | 82 | `result-track:5a8140fea6f0ee0019a5397fbe99e1a19006123294c47a813f77a5caed8876d9` |
| 17 | `theorem` | [eq_one_of_lt_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/eq-one-of-lt-two--43c2880d78ef6fde94a9be3b.md) | 85 | `result-track:43c2880d78ef6fde94a9be3b3cf71660e4a9f33ebe62d4486f3b6943ada50089` |
| 18 | `def` | [Prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/prime--8747bdb853b86db56160ec09.md) | 96 | `declaration-track:8747bdb853b86db56160ec094c99794d3ae3c215ff5edccbb03504dc5a0079cd` |
| 19 | `theorem` | [Prime.one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/prime-one-lt--233f0fe4d49b0302fcc7d774.md) | 99 | `result-track:233f0fe4d49b0302fcc7d7743e94da20430607ab8e7be154dbcc28bb2e8d5541` |
| 20 | `theorem` | [prime_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/prime-two--55e91855979cac669c40aeac.md) | 102 | `result-track:55e91855979cac669c40aeac1a99dad02c0b2c42718d5cb6b8c78b66e2ecd107` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/instance--42e23e192ae38659c1df35dc.md) | 105 | `declaration-track:42e23e192ae38659c1df35dcec7a891a180e1ae6bbd5c2671c9a8c3a280c9b12` |
| 22 | `instance` | [fact_prime_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/fact-prime-two--131197d78f04a3fc54343df0.md) | 107 | `declaration-track:131197d78f04a3fc54343df098197752ea71895344f47047d698d83bcbadbb01` |
| 23 | `theorem` | [prime_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/prime-three--4e414e019df1ba9c96f90d8a.md) | 110 | `result-track:4e414e019df1ba9c96f90d8a91b4200be5bfd4c37465491bb5f3887e17db62a4` |
| 24 | `instance` | [fact_prime_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/fact-prime-three--b27c261b71e5cff7a3d7079c.md) | 113 | `declaration-track:b27c261b71e5cff7a3d7079c2c348d719372521184d790a004053befdd82ebf2` |
| 25 | `theorem` | [prime_five](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/prime-five--8d88a36f3359c93bcfa9d6e5.md) | 116 | `result-track:8d88a36f3359c93bcfa9d6e560e6c64626d7bb6ff56b8c05a22b3e5c53ad59a7` |
| 26 | `instance` | [fact_prime_five](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/fact-prime-five--5b12e0c1db1c3fe68bde697e.md) | 119 | `declaration-track:5b12e0c1db1c3fe68bde697e3adbf5a69f930ecc5a436ea07130e1282ee06222` |
| 27 | `theorem` | [dvd_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/dvd-prime--558428694bb6afc8636a8aa8.md) | 122 | `result-track:558428694bb6afc8636a8aa8e02a223f916131d51cf5735caebf8d2e9b20d0a0` |
| 28 | `theorem` | [Prime.ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/prime-ne-one--ef846116e9f29293385fe335.md) | 127 | `result-track:ef846116e9f29293385fe3357de2e57e4cda8643a3c862ba8d0bf2bad4f789b4` |
| 29 | `theorem` | [not_prime_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/not-prime-one--325c5668a78d9f8cdd6103c1.md) | 135 | `result-track:325c5668a78d9f8cdd6103c1d2504db4adb03ab4cf6bc1d5e34322c22c6f5bb1` |
| 30 | `theorem` | [Prime.not_dvd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/prime-not-dvd-one--cf7a9edd1ee08d2859cf5d0d.md) | 138 | `result-track:cf7a9edd1ee08d2859cf5d0dcac8f2779dce6e47af17ad9825511e1ddd177217` |
| 31 | `theorem` | [exists_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/exists-prime-and-dvd--1889054d6a40dfd65dcd0c35.md) | 142 | `result-track:1889054d6a40dfd65dcd0c3594a972388db8a7d2aadf551e3c3a438410ef3c96` |
| 32 | `def` | [Coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime--4a3b09114e121f92c3c303c0.md) | 154 | `declaration-track:4a3b09114e121f92c3c303c08455c528b6a91ee525dad82cdb3ff37872805f2d` |
| 33 | `theorem` | [coprime_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-coe--ef39468ff18769224240d26a.md) | 158 | `result-track:ef39468ff18769224240d26aac1cb82d9318139d4d650e456afbe895316f49e3` |
| 34 | `theorem` | [Coprime.mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-mul--df9d5b15b04f2d472cbe0fa0.md) | 163 | `result-track:df9d5b15b04f2d472cbe0fa089d1a9a37571694950e233e5ade71aab5a46c876` |
| 35 | `theorem` | [Coprime.mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-mul-right--d2475a8b689e2f623048395c.md) | 168 | `result-track:d2475a8b689e2f623048395cf3defaa546fafc06cba6ad1d9037b836a1edc9c5` |
| 36 | `theorem` | [gcd_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd-comm--f227bdf6e22c5dfe82af1b6f.md) | 173 | `result-track:f227bdf6e22c5dfe82af1b6f6d7e1d6d68e34bcbd5a1b3c3a7b8b4551d63c6e8` |
| 37 | `theorem` | [gcd_eq_left_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd-eq-left-iff-dvd--bca170f4879d449dbb223e91.md) | 178 | `result-track:bca170f4879d449dbb223e916e193c0d1eb71aa6eab4d8d4ee69145d5d5e23f0` |
| 38 | `theorem` | [gcd_eq_right_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd-eq-right-iff-dvd--686a1fa4524523afd6838e14.md) | 182 | `result-track:686a1fa4524523afd6838e14e135a678ddf16b0e7f941221f29c5fd0cf575ffc` |
| 39 | `theorem` | [Coprime.gcd_mul_left_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-gcd-mul-left-cancel--8151a3e1520bf3b35516e224.md) | 186 | `result-track:8151a3e1520bf3b35516e2244fff6c2e7aeba722cbf00abc84c71425f10e7795` |
| 40 | `theorem` | [Coprime.gcd_mul_right_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-gcd-mul-right-cancel--79cbeb33b2506ec42187953f.md) | 191 | `result-track:79cbeb33b2506ec42187953f8b55c8e6f3e053cb1bf8db2409f377912c06d096` |
| 41 | `theorem` | [Coprime.gcd_mul_left_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-gcd-mul-left-cancel-right--8ab69303bc0621ff44357ce1.md) | 194 | `result-track:8ab69303bc0621ff44357ce1c07285ed6caa4f752f9d59463b733cd668abca72` |
| 42 | `theorem` | [Coprime.gcd_mul_right_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-gcd-mul-right-cancel-right--fd26f9c0cf5835ff8a02b02f.md) | 199 | `result-track:fd26f9c0cf5835ff8a02b02ff8363622d017ceb13c679d0ff980a1d1b8aeb6f4` |
| 43 | `theorem` | [one_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/one-gcd--e4778f55a7e86ef62d7d1b8c.md) | 205 | `result-track:e4778f55a7e86ef62d7d1b8c391abf0415eb3d8beebfe0da43da1728a3cb3d56` |
| 44 | `theorem` | [gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd-one--3f606b9e3b39612e68492e40.md) | 210 | `result-track:3f606b9e3b39612e68492e40da039716923424eefdae87673b4d21642279f4de` |
| 45 | `theorem` | [Coprime.symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-symm--a655d6d0dc8c1b1e3f874d9c.md) | 215 | `result-track:a655d6d0dc8c1b1e3f874d9ca7749dee1af075b819f9a89a839f2ad2c9870429` |
| 46 | `theorem` | [one_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/one-coprime--22fced71d1904d02aa1383d1.md) | 221 | `result-track:22fced71d1904d02aa1383d17d5aae9323d81ca27be8f662a3522421616efae6` |
| 47 | `theorem` | [coprime_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-one--e7ad6a34bd2679e1498884e9.md) | 225 | `result-track:e7ad6a34bd2679e1498884e90a0c21e0bc38ef284dce2c689e7edb145c130d73` |
| 48 | `theorem` | [Coprime.coprime_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-coprime-dvd-left--cb0a91f35d7ba08063d9deef.md) | 228 | `result-track:cb0a91f35d7ba08063d9deefb4ff4dc5f3e8e60b86607816f1935ae4a51c182e` |
| 49 | `theorem` | [Coprime.factor_eq_gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-factor-eq-gcd-left--15c7681f3a7f816abaec32d4.md) | 233 | `result-track:15c7681f3a7f816abaec32d47a0eeccba294124cd68ee298464dc4488dd70a87` |
| 50 | `theorem` | [Coprime.factor_eq_gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-factor-eq-gcd-right--2f3e8762c11357b173244d20.md) | 241 | `result-track:2f3e8762c11357b173244d200b94c3faa91ffb1518faaa26e77dc7e1861d5444` |
| 51 | `theorem` | [Coprime.factor_eq_gcd_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-factor-eq-gcd-left-right--08ae32f768b67a64543598f2.md) | 244 | `result-track:08ae32f768b67a64543598f288b3ef28e526e20157451b3d9b3f3d3cfb211731` |
| 52 | `theorem` | [Coprime.factor_eq_gcd_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-factor-eq-gcd-right-right--e50d80313fa2a6cd183ac619.md) | 247 | `result-track:e50d80313fa2a6cd183ac619140336aa2f4c66173b8c536e06636df47e337099` |
| 53 | `theorem` | [Coprime.gcd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-gcd-mul--feb02dd24c7cc264b8584f95.md) | 252 | `result-track:feb02dd24c7cc264b8584f95a2cd4793757c53a705d1b83ed02f2643dbeaa7f5` |
| 54 | `theorem` | [gcd_eq_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/gcd-eq-left--db01598cbd1553a88aa8a7ed.md) | 257 | `result-track:db01598cbd1553a88aa8a7edc41534ddc3b4f556341cf75b15a668b3640bfeac` |
| 55 | `theorem` | [Coprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Variantadbadb5c3a1cf0151b3e722c70380ba322e63e967439c8f97b95cdaae800dec8.lean/declarations/coprime-pow--4975c87e4786e287a581ac67.md) | 264 | `result-track:4975c87e4786e287a581ac67186acab4a00eee3c43863ca32507da51a7ea4615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
