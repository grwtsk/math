# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Factors.Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a8e6a64787a3b19c4b4eb7c2289bf8c3f200f13",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a8e6a64787a3b19c4b4eb7c2289bf8c3f200f13`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.List` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Prime` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm.Subperm` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist--8d32f60f35f690d0e1432794.md) | 34 | `declaration-track:8d32f60f35f690d0e143279450ac67660c13dcbca345b353c08ea6d7a3b56c41` |
| 2 | `theorem` | [primeFactorsList_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-zero--1f342adae99d29f3ca43cccf.md) | 43 | `result-track:1f342adae99d29f3ca43cccfe0884c3a42cdcd875bf2a62e95ef02d49f214f98` |
| 3 | `theorem` | [primeFactorsList_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-one--e1dd438c2cc23117acaf794f.md) | 46 | `result-track:e1dd438c2cc23117acaf794f4d444384ce619068bacc01c088de15c693f7dd42` |
| 4 | `theorem` | [primeFactorsList_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-two--934534a552a789bf00549cb7.md) | 49 | `result-track:934534a552a789bf00549cb7f2a5635c8eddd13fe55d97a7f90576e037cc1cc8` |
| 5 | `theorem` | [prime_of_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/prime-of-mem-primefactorslist--e6e75fbe5791f58aa398fb7d.md) | 51 | `result-track:e6e75fbe5791f58aa398fb7df4c2908b4fa8d93183a9caa09ccc2c222a84c97c` |
| 6 | `theorem` | [pos_of_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/pos-of-mem-primefactorslist--9e7ef932f4c5de5f356952d3.md) | 63 | `result-track:9e7ef932f4c5de5f356952d3b548667e0ed399980b95c03a41f04310269adcfb` |
| 7 | `theorem` | [prod_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/prod-primefactorslist--3f693bbf94d9e4350543e8a1.md) | 66 | `result-track:3f693bbf94d9e4350543e8a1cfc505f479ef41369988adb5b347e0dc05286093` |
| 8 | `theorem` | [primeFactorsList_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-prime--aef70dd518e78e7836ce9df9.md) | 79 | `result-track:aef70dd518e78e7836ce9df9b38ade2a4d4d0abc8884259491c00ca3c6c4e4b7` |
| 9 | `theorem` | [primeFactorsList_chain](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-chain--f97074bb6f5430210011eb31.md) | 86 | `result-track:f97074bb6f5430210011eb31f37b16207db69cfd0add581b64c9c1e378a77931` |
| 10 | `theorem` | [primeFactorsList_chain_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-chain-2--8e7080f97d779e6f84d42717.md) | 99 | `result-track:8e7080f97d779e6f84d427177eb65ecee57644dbb032ee8f5ed209b4e6753122` |
| 11 | `theorem` | [primeFactorsList_chain'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-chain--e9e7102c36f6a19e69e711d8.md) | 102 | `result-track:e9e7102c36f6a19e69e711d8b5498a1f855d36be7bc2bb9cd973cc13e549da75` |
| 12 | `theorem` | [primeFactorsList_sorted](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-sorted--6b1ccd43bd6fdde64cff659c.md) | 105 | `result-track:6b1ccd43bd6fdde64cff659c5f92774088e1308b0ff2aa5be4abf6ba5442f00c` |
| 13 | `theorem` | [primeFactorsList_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-add-two--3dcd42b83562e32a89e879de.md) | 110 | `result-track:3dcd42b83562e32a89e879dec46aa2a0ee99c47f52f0f7a910e4f8c5ab9e7b21` |
| 14 | `theorem` | [primeFactorsList_eq_nil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-eq-nil--d7bad77bb42c8a467a51ad2d.md) | 115 | `result-track:d7bad77bb42c8a467a51ad2de326433d83195e6b7eda8947adc1ceab97b604f8` |
| 15 | `theorem` | [eq_of_perm_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/eq-of-perm-primefactorslist--9a50ae212e29ea8f3ca3d434.md) | 127 | `result-track:9a50ae212e29ea8f3ca3d4342eb246a04ffc16765525d4d46043a9ab9b96146d` |
| 16 | `theorem` | [mem_primeFactorsList_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/mem-primefactorslist-iff-dvd--c87b2925b7d11ed91c99d96e.md) | 135 | `result-track:c87b2925b7d11ed91c99d96e7de0a2e31e34c5419433b0103357f299285b0fe7` |
| 17 | `theorem` | [dvd_of_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/dvd-of-mem-primefactorslist--59d5a39f6c2013472cfeca29.md) | 141 | `result-track:59d5a39f6c2013472cfeca29c2652d41ff47fffe75590e52290b1d1b7520d67e` |
| 18 | `theorem` | [mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/mem-primefactorslist--831759ecd72e066d21117335.md) | 146 | `result-track:831759ecd72e066d2111733534080c286ec06b0194559455445bbdabc14c4aae` |
| 19 | `lemma` | [mem_primeFactorsList'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/mem-primefactorslist--fed3a81874ff8330b78ec3b8.md) | 150 | `result-track:fed3a81874ff8330b78ec3b80123728dc2198f7bc5bd08c7c9a1a97aaa6a7542` |
| 20 | `theorem` | [le_of_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/le-of-mem-primefactorslist--653fec751a864c6ee3ef922f.md) | 153 | `result-track:653fec751a864c6ee3ef922f78f1439959db63c3549a8ccf4ef2200e471c39fe` |
| 21 | `theorem` | [primeFactorsList_unique](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-unique--9a20d33cfb557a86d909940b.md) | 160 | `result-track:9a20d33cfb557a86d909940b3b24681e962342c1781ddd07adee2f9ba8d1ad1c` |
| 22 | `theorem` | [Prime.primeFactorsList_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/prime-primefactorslist-pow--b0e323b5785a3f043ac7cbf8.md) | 173 | `result-track:b0e323b5785a3f043ac7cbf8f9f0b34a3be7c93ab13e6c7b2d57d985fdf72db1` |
| 23 | `theorem` | [eq_prime_pow_of_unique_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/eq-prime-pow-of-unique-prime-dvd--586164023a0e695d4e3d48a4.md) | 181 | `result-track:586164023a0e695d4e3d48a426ce14a2b97b5566d7cc35ca875eb140470b1b88` |
| 24 | `theorem` | [perm_primeFactorsList_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/perm-primefactorslist-mul--42eba8c3a192d1c8eb405430.md) | 188 | `result-track:42eba8c3a192d1c8eb405430f0d70d57369a8719ea491e4db8d1a6afe4ad01e3` |
| 25 | `theorem` | [perm_primeFactorsList_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/perm-primefactorslist-mul-of-coprime--24a1bd054434ea2c549e4ded.md) | 197 | `result-track:24a1bd054434ea2c549e4ded595387f75f4aa70edd6831520a4d905394f76154` |
| 26 | `theorem` | [primeFactorsList_sublist_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-sublist-right--c7b53384ee60643503794aa7.md) | 205 | `result-track:c7b53384ee60643503794aa7b7d6c18d6e42b97a66411b88a18e14a168a99d4f` |
| 27 | `theorem` | [primeFactorsList_sublist_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-sublist-of-dvd--30f7150965240d86d663e587.md) | 213 | `result-track:30f7150965240d86d663e58740b283aab1b7def3e58fe739c01adb1476fbf9bb` |
| 28 | `theorem` | [primeFactorsList_subset_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-subset-right--eb9bb9f0b91494b6f6cd5d29.md) | 218 | `result-track:eb9bb9f0b91494b6f6cd5d2967b516f867a550de5f2d38df3d094f227b0fc096` |
| 29 | `theorem` | [primeFactorsList_subset_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/primefactorslist-subset-of-dvd--957c973f85ba10cd93bac9f8.md) | 222 | `result-track:957c973f85ba10cd93bac9f82c419d5e303cc94064e68269af94363cb233164c` |
| 30 | `theorem` | [dvd_of_primeFactorsList_subperm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/dvd-of-primefactorslist-subperm--217fea537568be0ea94d2919.md) | 226 | `result-track:217fea537568be0ea94d2919d37b887c4872a3cae94bf65a3316adf9eb6c3d80` |
| 31 | `theorem` | [replicate_subperm_primeFactorsList_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/replicate-subperm-primefactorslist-iff--ebbbf8ec8ac161b85a42f6ac.md) | 239 | `result-track:ebbbf8ec8ac161b85a42f6acff73b226d9602497d3e2a96620349f3593174626` |
| 32 | `theorem` | [mem_primeFactorsList_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/mem-primefactorslist-mul--716044be5e9b98f5455d49fe.md) | 258 | `result-track:716044be5e9b98f5455d49fe63afc9c3f2bb4491d9dada55f1783205613008ca` |
| 33 | `theorem` | [coprime_primeFactorsList_disjoint](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/coprime-primefactorslist-disjoint--1853ad9f8132ffca1772bb0f.md) | 265 | `result-track:1853ad9f8132ffca1772bb0f99358d539b2a8c49f66711d79c6ecc4029ac7833` |
| 34 | `theorem` | [mem_primeFactorsList_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/mem-primefactorslist-mul-of-coprime--b7ef5a5b1ed637141a7b3c1d.md) | 273 | `result-track:b7ef5a5b1ed637141a7b3c1df4fabe4153409d949ada1c06f7127eaa34a65906` |
| 35 | `theorem` | [mem_primeFactorsList_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/mem-primefactorslist-mul-left--5f8a0e76521bfe9ef84c6f79.md) | 284 | `result-track:5f8a0e76521bfe9ef84c6f791870ed08ac36250ada42765055bd3b56264785d0` |
| 36 | `theorem` | [mem_primeFactorsList_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/mem-primefactorslist-mul-right--c79ebd0d451c8931bbcd0f10.md) | 291 | `result-track:c79ebd0d451c8931bbcd0f10632e8263d6d3900509546a943a179ace1467d112` |
| 37 | `theorem` | [eq_two_pow_or_exists_odd_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/eq-two-pow-or-exists-odd-prime-and-dvd--6673d3cbeed54e56420262ed.md) | 296 | `result-track:6673d3cbeed54e56420262ed9ef558c0f99e10ab82977f694f2fece34553777a` |
| 38 | `theorem` | [four_dvd_or_exists_odd_prime_and_dvd_of_two_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant3f5e288cd5978ec33b4bc12a1e376112a13afed34f223f394bdb4abb592f4adc.lean/declarations/four-dvd-or-exists-odd-prime-and-dvd-of-two-lt--3f26a3c305631efae8685c68.md) | 304 | `result-track:3f26a3c305631efae8685c68cfefdbf733afa9c9a2eb74cf85386b5d70971029` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
