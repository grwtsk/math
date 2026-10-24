# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Factors.Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5372f2b06ddac5b499929a38e791f1e8684062a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5372f2b06ddac5b499929a38e791f1e8684062a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Prime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors--e713317518e43658f9962777.md) | 33 | `declaration-track:e713317518e43658f996277753823b7c00c179f66d9b282d0f5e95ecebe2f861` |
| 2 | `theorem` | [factors_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-zero--364c7faca5548eb98c51544f.md) | 43 | `result-track:364c7faca5548eb98c51544fda0f54bbab16a607bffa194937b4c9345866f1ba` |
| 3 | `theorem` | [factors_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-one--0f5527c32a1fccc854f96c70.md) | 47 | `result-track:0f5527c32a1fccc854f96c70c2a38842a454959c8277f3ed6e5ac1e5381eaab1` |
| 4 | `theorem` | [prime_of_mem_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/prime-of-mem-factors--0241198ce98558b48f5ed760.md) | 50 | `result-track:0241198ce98558b48f5ed7600c90683b4a9ffda1d021112f4ce326fd50fad788` |
| 5 | `theorem` | [pos_of_mem_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/pos-of-mem-factors--7686dfe86f45f3a11533a256.md) | 63 | `result-track:7686dfe86f45f3a11533a2563ddcf87cd914b5a2f7c783fad73aa7693b305854` |
| 6 | `theorem` | [prod_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/prod-factors--4616c313290f9ca73b554884.md) | 67 | `result-track:4616c313290f9ca73b554884e8a955e94c6f25816a7653ea9ca05d33ff8f6d83` |
| 7 | `theorem` | [factors_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-prime--cba341ed0c0659820140bc2a.md) | 80 | `result-track:cba341ed0c0659820140bc2acfe25393b08c6bdec5f4d2822029639bd3fe2297` |
| 8 | `theorem` | [factors_chain](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-chain--4bc6800f7378e6171b191965.md) | 88 | `result-track:4bc6800f7378e6171b191965ab1b568d2595371f1aeac8c416419913cb86eb3e` |
| 9 | `theorem` | [factors_chain_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-chain-2--d44265a82c08c08547d0cccb.md) | 102 | `result-track:d44265a82c08c08547d0cccb7c07e6e19bb9ae191f8ec4716aab0ac98c66c23c` |
| 10 | `theorem` | [factors_chain'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-chain--729909677b815677be40e3da.md) | 106 | `result-track:729909677b815677be40e3daae00135119ae7363e278eda2f17678fcc1a4448a` |
| 11 | `theorem` | [factors_sorted](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-sorted--7be8f3cca13c4f6e78f4fb22.md) | 110 | `result-track:7be8f3cca13c4f6e78f4fb225d8efc477c54e8d479b2d0cc4a03f819dfde7c2d` |
| 12 | `theorem` | [factors_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-add-two--8820d58f8d5ba86698b2d215.md) | 115 | `result-track:8820d58f8d5ba86698b2d215e49ea53fc6e5ff55b2fce077b8d5acbc9d84e313` |
| 13 | `theorem` | [factors_eq_nil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-eq-nil--29224f3fba1dbe5cf44319fa.md) | 120 | `result-track:29224f3fba1dbe5cf44319fa5224064c69069bd94d92533b1f480bd436921a68` |
| 14 | `theorem` | [eq_of_perm_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/eq-of-perm-factors--ed305f66b5c1cbf761b62136.md) | 132 | `result-track:ed305f66b5c1cbf761b621360b47951472c70733f705bf60f1f9091c1df88972` |
| 15 | `theorem` | [mem_factors_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/mem-factors-iff-dvd--f8aab3f5990e81c495fb00d8.md) | 140 | `result-track:f8aab3f5990e81c495fb00d8a22858dcb490aaf6870bc1ef7437fe2cf181e49a` |
| 16 | `theorem` | [dvd_of_mem_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/dvd-of-mem-factors--55d25f675c9aa7592b61870c.md) | 146 | `result-track:55d25f675c9aa7592b61870cc264adf1af89bc7c7df4f50bbcc050d7aab9f773` |
| 17 | `theorem` | [mem_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/mem-factors--7cc0826682f17b6543e467c8.md) | 152 | `result-track:7cc0826682f17b6543e467c8a7b104c702566d9e0aaef409311334b80c6048d1` |
| 18 | `theorem` | [le_of_mem_factors](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/le-of-mem-factors--712b9e6a44ac283106f9764b.md) | 157 | `result-track:712b9e6a44ac283106f9764b11b2f0f73081b4f428c823f31bfa425685dd5c24` |
| 19 | `theorem` | [factors_unique](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-unique--3e038e59a76cc7d7ec305db1.md) | 165 | `result-track:3e038e59a76cc7d7ec305db148a40357162c1c097467ad454f120dfbcb9617b4` |
| 20 | `theorem` | [Prime.factors_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/prime-factors-pow--2b262c8a76d56267c0b69326.md) | 179 | `result-track:2b262c8a76d56267c0b69326267bc5c346ff5b2033f29b2dd392c2103ac3438a` |
| 21 | `theorem` | [eq_prime_pow_of_unique_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/eq-prime-pow-of-unique-prime-dvd--a75a8b1b4d33abfec0ec968c.md) | 188 | `result-track:a75a8b1b4d33abfec0ec968cc037dba4614581dcbddf6814549e4a5111b0da0e` |
| 22 | `theorem` | [perm_factors_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/perm-factors-mul--42b6be121be1825c15302f50.md) | 196 | `result-track:42b6be121be1825c15302f50a88edd31b53e9cffb68f2719f50e05080c555ff3` |
| 23 | `theorem` | [perm_factors_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/perm-factors-mul-of-coprime--e6a4e0cfb89c7f8fc72de922.md) | 206 | `result-track:e6a4e0cfb89c7f8fc72de92298ac5979bcc4ed5c7064cf0feac8f0ca03ac58c3` |
| 24 | `theorem` | [factors_sublist_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-sublist-right--5c83c4e524e1bb83408b531b.md) | 215 | `result-track:5c83c4e524e1bb83408b531bc91227ae97574729e43f41854a059ba192ccfc57` |
| 25 | `theorem` | [factors_sublist_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-sublist-of-dvd--13c3094ccf33f41612ea431e.md) | 223 | `result-track:13c3094ccf33f41612ea431e84c9a0eca080bd385b1ed3bec00629bc338dade1` |
| 26 | `theorem` | [factors_subset_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-subset-right--8b264e8e79dc3bde35e7c453.md) | 228 | `result-track:8b264e8e79dc3bde35e7c453a0020d3679bd22ce152ab056c7849a31aed837f7` |
| 27 | `theorem` | [factors_subset_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/factors-subset-of-dvd--e0572e93af5b45b780af4c7b.md) | 232 | `result-track:e0572e93af5b45b780af4c7b0a804c419e8e258c640c54da185806b51ba1ebf1` |
| 28 | `theorem` | [dvd_of_factors_subperm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/dvd-of-factors-subperm--db7f77db70b49d2297590eaf.md) | 236 | `result-track:db7f77db70b49d2297590eaf88042b19ffe4d695f5a6591cd60effbee2e29f01` |
| 29 | `theorem` | [mem_factors_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/mem-factors-mul--bd06e7cc23f0645f877f9c41.md) | 253 | `result-track:bd06e7cc23f0645f877f9c41873c3a31adee8ecc4d53ca01f04393885fcf08b5` |
| 30 | `theorem` | [coprime_factors_disjoint](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/coprime-factors-disjoint--f2c23f90f7b84c2291210fcc.md) | 260 | `result-track:f2c23f90f7b84c2291210fcc7ecb1e869fe3afc7ae849e3418a139bb96e0fe64` |
| 31 | `theorem` | [mem_factors_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/mem-factors-mul-of-coprime--a330cacfa18b24ce3509d341.md) | 268 | `result-track:a330cacfa18b24ce3509d341769f3c521b4c242bb46a9f97a04e44310f82ae70` |
| 32 | `theorem` | [mem_factors_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/mem-factors-mul-left--8eeca64cd92f4028cebf5a10.md) | 280 | `result-track:8eeca64cd92f4028cebf5a104ff3237cc6fb173099bf3143d06a18dc2846f415` |
| 33 | `theorem` | [mem_factors_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/mem-factors-mul-right--a4d3a7cb3b117cd7df32faf7.md) | 288 | `result-track:a4d3a7cb3b117cd7df32faf702519e7e4347dcc85b044fef9d1b6e861333f51a` |
| 34 | `theorem` | [eq_two_pow_or_exists_odd_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant1243a2d0cb4a32c3723c46c5b3f2746c554686da882846a8992b1952696f0dad.lean/declarations/eq-two-pow-or-exists-odd-prime-and-dvd--19d32f70e4b98da3c5aa8e08.md) | 294 | `result-track:19d32f70e4b98da3c5aa8e088108135a51cf9159902589b045bbb2b3e7a6c899` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
