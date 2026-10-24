# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d85dfd8b99817b939efd1b148689d995e6f11b7",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d85dfd8b99817b939efd1b148689d995e6f11b7`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_greatest](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-greatest--631570ba15303eb7b6a3c98d.md) | 35 | `result-track:631570ba15303eb7b6a3c98d5922630bc472d0ab6d448203f30dc2c526792656` |
| 2 | `theorem` | [gcd_add_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-add-mul-right-right--313778aa06e352db04a17cf3.md) | 42 | `result-track:313778aa06e352db04a17cf3344fe0ea892bdf265aa36b9258c3596be90a0d45` |
| 3 | `theorem` | [gcd_add_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-add-mul-left-right--6a8ba5704972bbac2f2e16ca.md) | 47 | `result-track:6a8ba5704972bbac2f2e16ca8d9bef09ebcf543494cc4deeed167c6daaa9cb7c` |
| 4 | `theorem` | [gcd_mul_right_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-mul-right-add-right--32d2bc9de6736f796fa123e7.md) | 52 | `result-track:32d2bc9de6736f796fa123e790e47640d31fafb3a71289b9be49c70640ceb514` |
| 5 | `theorem` | [gcd_mul_left_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-mul-left-add-right--c4ae56950743ebf3992d0ad2.md) | 56 | `result-track:c4ae56950743ebf3992d0ad20396e0048226b5dd22395d6436a6c2b52ba1e923` |
| 6 | `theorem` | [gcd_add_mul_right_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-add-mul-right-left--af5c9b28985b579c6c6474b3.md) | 60 | `result-track:af5c9b28985b579c6c6474b344a29bdf27d3e4dd2d6fcb3ff40e85176b9eaa38` |
| 7 | `theorem` | [gcd_add_mul_left_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-add-mul-left-left--15d43eebf26dd5fb4636b37b.md) | 65 | `result-track:15d43eebf26dd5fb4636b37b1fc3415d3a79354c70721e505d89341bb8d62657` |
| 8 | `theorem` | [gcd_mul_right_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-mul-right-add-left--a507069f2c3fd9d85cf2d6e1.md) | 70 | `result-track:a507069f2c3fd9d85cf2d6e1185e0ace9241af9d90d4fadcea80fea06297e570` |
| 9 | `theorem` | [gcd_mul_left_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-mul-left-add-left--ed6ea53ac1e01d8edd1c20fa.md) | 75 | `result-track:ed6ea53ac1e01d8edd1c20fa63afecb6012a447ca41e342d872f0e1b5350c0b6` |
| 10 | `theorem` | [gcd_add_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-add-self-right--d37824d0b9dd07c7e23f8ff8.md) | 81 | `result-track:d37824d0b9dd07c7e23f8ff8c2aec54c9eb18389b9e98fc96b2bc3a88f770ad0` |
| 11 | `theorem` | [gcd_add_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-add-self-left--fe7b87f702b375e031b95b42.md) | 86 | `result-track:fe7b87f702b375e031b95b420813314997e4249b1d2cfd161dff34ce44d7a07e` |
| 12 | `theorem` | [gcd_self_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-self-add-left--7b5163e3ea1d209de6eacee8.md) | 91 | `result-track:7b5163e3ea1d209de6eacee8d92a0794780355c7ed00102a76d860cd3e3e667c` |
| 13 | `theorem` | [gcd_self_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-self-add-right--19b8e615317358db237308de.md) | 95 | `result-track:19b8e615317358db237308deecbfc924e457d71031643f1608ff1e299886dc91` |
| 14 | `theorem` | [lcm_dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/lcm-dvd-mul--295a807e4fe55bb696d04999.md) | 101 | `result-track:295a807e4fe55bb696d0499930ec7f77bcade750ba6b02d739ad8d7d4b8e2eab` |
| 15 | `theorem` | [lcm_dvd_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/lcm-dvd-iff--f96d42cc0a0ea057ad11d066.md) | 105 | `result-track:f96d42cc0a0ea057ad11d066ce7e1ef430ccf830c7efb43f7f654a7a3c62ff0c` |
| 16 | `theorem` | [lcm_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/lcm-pos--591f276450d6275e5cdb7b85.md) | 109 | `result-track:591f276450d6275e5cdb7b852459e7d3517869cf1c3e2befef5af3ffa90abda3` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/instance--0ba7cd0022d3d3ebc47b6da5.md) | 120 | `declaration-track:0ba7cd0022d3d3ebc47b6da56404fcbade1a7085c8d9909693f2d2863eaa47ea` |
| 18 | `theorem` | [coprime.lcm_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-lcm-eq-mul--ba73048c226737104861b1b5.md) | 122 | `result-track:ba73048c226737104861b1b58c0e10a0dc770fa75dde425c00c246fe69dd37d7` |
| 19 | `theorem` | [coprime.symmetric](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-symmetric--9404565b22f346b74bd4e7d1.md) | 126 | `result-track:9404565b22f346b74bd4e7d1f9049bb9ad8bf635daa75c2b4399643c05f0dbd4` |
| 20 | `theorem` | [coprime.dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-dvd-mul-right--22fa1561090f9edc67d7ea0b.md) | 129 | `result-track:22fa1561090f9edc67d7ea0bf3192cd1969f5d76adebc3b4b5c822c8730e9c70` |
| 21 | `theorem` | [coprime.dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-dvd-mul-left--65c4f2a9c113cae1e9c89c76.md) | 133 | `result-track:65c4f2a9c113cae1e9c89c769daedb8e651dfefb5bfa1ac5ee8daacbc29a94a7` |
| 22 | `theorem` | [coprime_add_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-add-self-right--4936e62947576b8d0c2987ea.md) | 138 | `result-track:4936e62947576b8d0c2987eaa047159d90957a80b6002aa7fd95e1d3563828ed` |
| 23 | `theorem` | [coprime_self_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-self-add-right--f4ec46bb3923f775f0522f99.md) | 143 | `result-track:f4ec46bb3923f775f0522f99a00e467e18b33a5e8d71cdac502746b657e691ca` |
| 24 | `theorem` | [coprime_add_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-add-self-left--618cc8ddc0ad6d5f54d36d27.md) | 148 | `result-track:618cc8ddc0ad6d5f54d36d2772a941bbd050875e906b13fe614d71e5dfe79352` |
| 25 | `theorem` | [coprime_self_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-self-add-left--7cad7dd35e32d217fcbd1709.md) | 153 | `result-track:7cad7dd35e32d217fcbd17099012848f280fe6a4b32bb5d4fa5149b03001fa94` |
| 26 | `theorem` | [coprime_add_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-add-mul-right-right--ce7922f2ef34781e9f7fccb2.md) | 158 | `result-track:ce7922f2ef34781e9f7fccb2f791f00e56c172863436c804cada15be27f0b90c` |
| 27 | `theorem` | [coprime_add_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-add-mul-left-right--da7db625ee8b84ad9e8e0af6.md) | 163 | `result-track:da7db625ee8b84ad9e8e0af696f37e55413996a056d5cb90322cfabc5ef9a79b` |
| 28 | `theorem` | [coprime_mul_right_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-mul-right-add-right--e416bce1febe22b99980d628.md) | 168 | `result-track:e416bce1febe22b99980d6288ecef6dac7bfa01d27bfe3d8496f5c0a5defb718` |
| 29 | `theorem` | [coprime_mul_left_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-mul-left-add-right--9a4fce60fa8b93e42fda4b50.md) | 173 | `result-track:9a4fce60fa8b93e42fda4b5032b608132279d84cf94322f5433ebca8c995dec9` |
| 30 | `theorem` | [coprime_add_mul_right_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-add-mul-right-left--b285e55546cfeea444f660e7.md) | 178 | `result-track:b285e55546cfeea444f660e7c3ccd34686a9f6005c0cb2e597699cc1767a3a13` |
| 31 | `theorem` | [coprime_add_mul_left_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-add-mul-left-left--0a2ddcbbcb0940a6de7fab66.md) | 183 | `result-track:0a2ddcbbcb0940a6de7fab669325f941bbbd662b905cb573b25d7edcf716abf8` |
| 32 | `theorem` | [coprime_mul_right_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-mul-right-add-left--083eb9fe537e15d4fc45f498.md) | 188 | `result-track:083eb9fe537e15d4fc45f4983c6e32f720c8f7701803f5dd283c6317954e666f` |
| 33 | `theorem` | [coprime_mul_left_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-mul-left-add-left--5b446a4d2b89c59e55a034a3.md) | 193 | `result-track:5b446a4d2b89c59e55a034a3bf76f9c4090caf8accf0de0a316beefbee9c90f3` |
| 34 | `theorem` | [coprime_pow_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-pow-left-iff--58e3388f4ac0eb1707a7ab2f.md) | 198 | `result-track:58e3388f4ac0eb1707a7ab2f72b63d9f23454e9d1e75cb94bdb030b3d74fc355` |
| 35 | `theorem` | [coprime_pow_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-pow-right-iff--a123ab1bfcd63d4228ed72bd.md) | 206 | `result-track:a123ab1bfcd63d4228ed72bddbfff43bb45e32b65afeb0fc2dfcfd1e1801b1db` |
| 36 | `theorem` | [not_coprime_zero_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/not-coprime-zero-zero--fae8acbc0150b663f97b271c.md) | 211 | `result-track:fae8acbc0150b663f97b271c838db62bd1e7cf03aae804a4e8eba4961c1c9a81` |
| 37 | `theorem` | [coprime_one_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-one-left-iff--6ba3571736074fc8ca19e27b.md) | 214 | `result-track:6ba3571736074fc8ca19e27b60d9580406a069862cb0de05dcf826207d78c3f4` |
| 38 | `theorem` | [coprime_one_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-one-right-iff--6fde9428081d75388a578b33.md) | 217 | `result-track:6fde9428081d75388a578b33136bd66e6fb00d1baeca58bde6ac4fbdb5e1c6d9` |
| 39 | `theorem` | [gcd_mul_of_coprime_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/gcd-mul-of-coprime-of-dvd--6c943ddf3f94c3bf0b87231f.md) | 220 | `result-track:6c943ddf3f94c3bf0b87231f4421249da5bf30c98cea5687447ba4f205f59e23` |
| 40 | `theorem` | [coprime.eq_of_mul_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-eq-of-mul-eq-zero--d3d5895c26415987e7e67c99.md) | 228 | `result-track:d3d5895c26415987e7e67c990a95d171cf0ba695d700cf8c5c326ad9570f283c` |
| 41 | `def` | [prodDvdAndDvdOfDvdProd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/proddvdanddvdofdvdprod--2c53721bf88fdb1a5173bab3.md) | 239 | `declaration-track:2c53721bf88fdb1a5173bab325d8f924352e0dad0a67c5fcc40469b218864a10` |
| 42 | `theorem` | [dvd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/dvd-mul--23c5a20cc926be192532c9d7.md) | 255 | `result-track:23c5a20cc926be192532c9d71329457d2c09a754359afa27cd9712487587aef9` |
| 43 | `theorem` | [pow_dvd_pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/pow-dvd-pow-iff--4b25379e51b7d943a121085f.md) | 264 | `result-track:4b25379e51b7d943a121085f17cec6d723fd59626b2d53f472ecc23d7fb249e6` |
| 44 | `theorem` | [eq_one_of_dvd_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/eq-one-of-dvd-coprimes--ff084f652c609f235e598ae8.md) | 277 | `result-track:ff084f652c609f235e598ae8824988a7ecfd62fcb771e4d25c706e10a51a139f` |
| 45 | `theorem` | [coprime.mul_add_mul_ne_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant34bc6aed2e0a327d828b29f6694d68d2982694982c037528dbe888f42c253ba2.lean/declarations/coprime-mul-add-mul-ne-mul--706fc26ba8f9caa9196cf5f6.md) | 285 | `result-track:706fc26ba8f9caa9196cf5f6c4e15f79ecdd3abb7d241dfbb903d998fec5e952` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
