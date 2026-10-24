# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Prime.Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "850acdd142cdbf01392032deb17292307a293c74",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `850acdd142cdbf01392032deb17292307a293c74`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/topnat--bdb08d80290e3078be2e9cdb.md) | 31 | `declaration-track:bdb08d80290e3078be2e9cdbfff9e12c5af3124434109e27398d505210b95a43` |
| 2 | `instance` | [coePNat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coepnat--63a83325b7a2b0410d967052.md) | 34 | `declaration-track:63a83325b7a2b0410d9670523c9d106ee649397d3dd52d31d82dc264dc63257a` |
| 3 | `theorem` | [coe_pnat_nat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coe-pnat-nat--dbd6ca922a572dd7e8445f93.md) | 39 | `result-track:dbd6ca922a572dd7e8445f9311ec41b7863e02c6dd681fbd0e119c8dddeb1f34` |
| 4 | `theorem` | [coe_pnat_injective](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coe-pnat-injective--11643dbaf6619f60e7097967.md) | 43 | `result-track:11643dbaf6619f60e709796778b619c67e04d540b0cefd205e458682cd30c894` |
| 5 | `theorem` | [coe_pnat_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coe-pnat-inj--74116b48c5b089615cc857f7.md) | 48 | `result-track:74116b48c5b089615cc857f7edb2bddb78fc5e9bccee4bd5ce2a2c694fbbcaba` |
| 6 | `def` | [gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd--dd9526f6b8d677f1c0c32c3c.md) | 60 | `declaration-track:dd9526f6b8d677f1c0c32c3ca84726c3d1310ac7eaffc125b114d484660f3dbd` |
| 7 | `def` | [lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/lcm--414f45a14e37fa14d44273ad.md) | 66 | `declaration-track:414f45a14e37fa14d44273adb9cfa3e7509020a731074664d3fdfd38ba46b59a` |
| 8 | `theorem` | [gcd_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd-coe--61bfef8cff3ad8b38772efff.md) | 74 | `result-track:61bfef8cff3ad8b38772efff37ca1be0b683327454161c7fb6b26ddfa1fa963c` |
| 9 | `theorem` | [lcm_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/lcm-coe--56ab91f12898556e44612892.md) | 79 | `result-track:56ab91f12898556e446128922600fc0bab407d4efd877fddd4fa4a4622f639d0` |
| 10 | `theorem` | [gcd_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd-dvd-left--d9f683d1b98554584f4d2846.md) | 83 | `result-track:d9f683d1b98554584f4d2846d5033115ee72d73dff5865d0b0263f11e80eb478` |
| 11 | `theorem` | [gcd_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd-dvd-right--1e65a6a1f866437a448f659a.md) | 87 | `result-track:1e65a6a1f866437a448f659a7353f99c2425c59766d1103dbb70cbc49da3298e` |
| 12 | `theorem` | [dvd_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/dvd-gcd--da30517044a9311ded1d5500.md) | 91 | `result-track:da30517044a9311ded1d55008d3b89a2d20ca65ca01a47e37a4b49c3dfcc00e6` |
| 13 | `theorem` | [dvd_lcm_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/dvd-lcm-left--de3f37755d11bde449a6d164.md) | 95 | `result-track:de3f37755d11bde449a6d164711bedb16862b1b059ba0af172b91347bebdb984` |
| 14 | `theorem` | [dvd_lcm_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/dvd-lcm-right--2aab0f3015b054abc0b4f88c.md) | 99 | `result-track:2aab0f3015b054abc0b4f88c2f1e4789c340ef1e73811211cc56dfdd4c0dd085` |
| 15 | `theorem` | [lcm_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/lcm-dvd--eab127783ccece8a883104ca.md) | 103 | `result-track:eab127783ccece8a883104ca06f1edb4f8343e8ba2d31f9f2c661b697a8ed833` |
| 16 | `theorem` | [gcd_mul_lcm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd-mul-lcm--a2b26754ec5542fb8ef5db06.md) | 107 | `result-track:a2b26754ec5542fb8ef5db06e5191623525aab6eaaaf6ba4092ce01a2654b453` |
| 17 | `theorem` | [eq_one_of_lt_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/eq-one-of-lt-two--88d6b654c8a89a59c51c0964.md) | 111 | `result-track:88d6b654c8a89a59c51c0964d88327fbbb07ad9b5eac223f5d445f0101d5b93d` |
| 18 | `def` | [Prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/prime--a40603f1f1dc328c402e1fbe.md) | 122 | `declaration-track:a40603f1f1dc328c402e1fbedacb540c1c4ec39bc7f39dd4678b97dfb778803e` |
| 19 | `theorem` | [Prime.one_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/prime-one-lt--44842dd8158177264c27eb16.md) | 126 | `result-track:44842dd8158177264c27eb16cb2abf79e7180854b484724b4df6afe10c66b3d7` |
| 20 | `theorem` | [prime_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/prime-two--1bb31afca4e88ba85dfd7e1e.md) | 130 | `result-track:1bb31afca4e88ba85dfd7e1e9193ed5d8f963dbd785c2d676903b81cd5afb5e1` |
| 21 | `theorem` | [dvd_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/dvd-prime--602c55e015324a5728726379.md) | 134 | `result-track:602c55e015324a57287263795a58488597b2b23396b17c441dd9dc4bad6e89cc` |
| 22 | `theorem` | [Prime.ne_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/prime-ne-one--a23d4b5c0d8646fd108d39d3.md) | 140 | `result-track:a23d4b5c0d8646fd108d39d3620cd599744ac526d0128be55dc6e25054d3065e` |
| 23 | `theorem` | [not_prime_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/not-prime-one--dd28c479fb1dfe77ad635f3f.md) | 149 | `result-track:dd28c479fb1dfe77ad635f3f887de16a5aaf709fa8a4190215b044e1a25335a1` |
| 24 | `theorem` | [Prime.not_dvd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/prime-not-dvd-one--256de07f4e2c5d65d8c903fe.md) | 153 | `result-track:256de07f4e2c5d65d8c903fe79ceea7135b33c6c77fede301212e67d9989725c` |
| 25 | `theorem` | [exists_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/exists-prime-and-dvd--a31be368c4838885e70b466d.md) | 158 | `result-track:a31be368c4838885e70b466d58e1705a824370624d59f5a175615d098f7b0469` |
| 26 | `def` | [Coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime--8679eb31f62a3198aac6918b.md) | 171 | `declaration-track:8679eb31f62a3198aac6918baeb9f681f365dc8e4b8b4e4012ee78abb97f1e6c` |
| 27 | `theorem` | [coprime_coe](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-coe--f239444ca9558bbf7281a217.md) | 176 | `result-track:f239444ca9558bbf7281a2173b8583d2ee08b9ac36936fe490f7d9b05fe8a4e2` |
| 28 | `theorem` | [Coprime.mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-mul--6814b39f309c0c2a6a961115.md) | 182 | `result-track:6814b39f309c0c2a6a961115192339cce2334d21b4f6d1cffca6045dd402f16d` |
| 29 | `theorem` | [Coprime.mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-mul-right--e04152b11d7316c1d230196b.md) | 188 | `result-track:e04152b11d7316c1d230196ba3adc98144de709143b284b7884638c95e51e68a` |
| 30 | `theorem` | [gcd_comm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd-comm--b7a69827922b1a711a62358c.md) | 194 | `result-track:b7a69827922b1a711a62358c3d2ff4c333abde3c0ead6e972f422f0fd26736b9` |
| 31 | `theorem` | [gcd_eq_left_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd-eq-left-iff-dvd--12364cf20f9bc7c460c722d5.md) | 200 | `result-track:12364cf20f9bc7c460c722d55647364c16686e07e7188cf9061946df831479cf` |
| 32 | `theorem` | [gcd_eq_right_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd-eq-right-iff-dvd--e29aaa11d9102c70890e2536.md) | 207 | `result-track:e29aaa11d9102c70890e2536da70bdd8fc699d37db24daaf706921e7ba961502` |
| 33 | `theorem` | [Coprime.gcd_mul_left_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-gcd-mul-left-cancel--fa132228d12cc5eac09ad117.md) | 212 | `result-track:fa132228d12cc5eac09ad117246d68cde8a09a26b16eb39fec0c92efcb74fd0f` |
| 34 | `theorem` | [Coprime.gcd_mul_right_cancel](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-gcd-mul-right-cancel--070c8bf53769ba2207bae817.md) | 218 | `result-track:070c8bf53769ba2207bae8172cf40bc79282feac93909d298c0369460504d99f` |
| 35 | `theorem` | [Coprime.gcd_mul_left_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-gcd-mul-left-cancel-right--03a9db44b9adc2404ae86fd7.md) | 222 | `result-track:03a9db44b9adc2404ae86fd7a656796d2ac392beb18f8a85a425d12ab698eff5` |
| 36 | `theorem` | [Coprime.gcd_mul_right_cancel_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-gcd-mul-right-cancel-right--678c47a1cde707b15c74ca96.md) | 228 | `result-track:678c47a1cde707b15c74ca96dcf444fcfc319db7942912acb276c897d1ed6856` |
| 37 | `theorem` | [one_gcd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/one-gcd--8c256cc43d43075f4a016be3.md) | 235 | `result-track:8c256cc43d43075f4a016be352d7b5a61dfe590c79b80b583e91f53406044680` |
| 38 | `theorem` | [gcd_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd-one--c5f8f8c4cf0218c6103433fc.md) | 241 | `result-track:c5f8f8c4cf0218c6103433fc17964b0370d4815ca9538bf5065efba988ccd527` |
| 39 | `theorem` | [Coprime.symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-symm--752487c478904bfaa2cde08f.md) | 247 | `result-track:752487c478904bfaa2cde08f727b026b546cd61717fe58347f3d981ab1a3ddc4` |
| 40 | `theorem` | [one_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/one-coprime--52db4c048ead9cabc460676c.md) | 254 | `result-track:52db4c048ead9cabc460676c1f57fde616895ef8885a4f1a746db3ce6de19419` |
| 41 | `theorem` | [coprime_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-one--5a892e2ce50b44da23170dfe.md) | 259 | `result-track:5a892e2ce50b44da23170dfe24c479ddb5211baf50636917c9f6e3fb6a9daf9a` |
| 42 | `theorem` | [Coprime.coprime_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-coprime-dvd-left--821ce30d6d9e017ff2fc86e9.md) | 263 | `result-track:821ce30d6d9e017ff2fc86e9f8f0cdefb1752fea50273f844397c37c68d57f1f` |
| 43 | `theorem` | [Coprime.factor_eq_gcd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-factor-eq-gcd-left--55a7a766ca4bf6722094a548.md) | 269 | `result-track:55a7a766ca4bf6722094a5481438f97f183ae80295091f5aacab2ddde79d5e6a` |
| 44 | `theorem` | [Coprime.factor_eq_gcd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-factor-eq-gcd-right--9c4c7de8220edf65435379e1.md) | 278 | `result-track:9c4c7de8220edf65435379e174e3ccc029bed826680f05af4ffa600735cceee0` |
| 45 | `theorem` | [Coprime.factor_eq_gcd_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-factor-eq-gcd-left-right--1f681727a30ef8bd7077bf10.md) | 282 | `result-track:1f681727a30ef8bd7077bf10249fb19727c464b714a9555df5e31824d5b76580` |
| 46 | `theorem` | [Coprime.factor_eq_gcd_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-factor-eq-gcd-right-right--b9530c9941e8ca6fc12b1936.md) | 286 | `result-track:b9530c9941e8ca6fc12b19363c7b542f9ee464525831eaee86c993950530f9f7` |
| 47 | `theorem` | [Coprime.gcd_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-gcd-mul--69cd8245c33beea775a785e3.md) | 292 | `result-track:69cd8245c33beea775a785e3d9535005107e4abfc04509fce1595e4d5903ab67` |
| 48 | `theorem` | [gcd_eq_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/gcd-eq-left--10426c3cdfba1ba62aa40ff9.md) | 298 | `result-track:10426c3cdfba1ba62aa40ff9a6535108d03c9c20d4c21efdb63a8fe6421c8fc9` |
| 49 | `theorem` | [Coprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Prime/Varianteac85875e4608bfd16f541a1c79a91c76f1bead2821f951f5d7261995d9476b3.lean/declarations/coprime-pow--eaef37815ab664cf8fea497b.md) | 306 | `result-track:eaef37815ab664cf8fea497b0d9291e344edb52333308a6f81093dbee16e1924` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
