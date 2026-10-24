# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98cced46e31723ae8a497f53db52a0765d820e72",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98cced46e31723ae8a497f53db52a0765d820e72`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Nat.Gcd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Nat.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Nat` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gcd_greatest](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/gcd-greatest--90e1a719400f6434895ba241.md) | 32 | `result-track:90e1a719400f6434895ba24182ca03a94057a101e6b52afdedc6d6bac6988c00` |
| 2 | `theorem` | [pow_sub_one_mod_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/pow-sub-one-mod-pow-sub-one--05e3c3b51e6bd49a5510bbc1.md) | 39 | `result-track:05e3c3b51e6bd49a5510bbc1c4cc571fe8bd7726b1293b8991f6b9be28a3ffa4` |
| 3 | `theorem` | [pow_sub_one_gcd_pow_sub_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/pow-sub-one-gcd-pow-sub-one--ad4d87c87c186b3567ece0e0.md) | 56 | `result-track:ad4d87c87c186b3567ece0e00fc485bf244de848ff8a29769034ab41f6ed39c7` |
| 4 | `theorem` | [Coprime.lcm_eq_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-lcm-eq-mul--92feb3d6975f1155578e37c2.md) | 69 | `result-track:92feb3d6975f1155578e37c21c266f655084b3b2c7dfaeaa4c93c9ee1e6cf0b4` |
| 5 | `theorem` | [Coprime.symmetric](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-symmetric--51f2c7d00bd48762e6be4a2d.md) | 72 | `result-track:51f2c7d00bd48762e6be4a2d362a6f3058b7b401e6a8d7411069c7dbb9106c2c` |
| 6 | `theorem` | [Coprime.dvd_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-dvd-mul-right--358a76720db61d82f5db9b99.md) | 74 | `result-track:358a76720db61d82f5db9b99be7682bb3e4469056f9b22a87c8effce2781f498` |
| 7 | `theorem` | [Coprime.dvd_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-dvd-mul-left--af0209f7eefeecf0cce5a3b9.md) | 77 | `result-track:af0209f7eefeecf0cce5a3b9a3c21a8beaf951cb82ef1ad0ef1468d70204ad22` |
| 8 | `theorem` | [coprime_add_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-add-self-right--517fdde4d824a9fba2c0c05a.md) | 81 | `result-track:517fdde4d824a9fba2c0c05a170976076ebeec6f98d8cf56dd9753d4188bdb5a` |
| 9 | `theorem` | [coprime_self_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-self-add-right--6447c6d3ee6fbd26f28197ff.md) | 85 | `result-track:6447c6d3ee6fbd26f28197ff6299ed87967cc6644fe8bfdd9ccfc1a913834614` |
| 10 | `theorem` | [coprime_add_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-add-self-left--9fc98da0ce7f96c7382dbf78.md) | 89 | `result-track:9fc98da0ce7f96c7382dbf789e7734f1b70b38ce6eba5772d2cdc7d26d8e94c4` |
| 11 | `theorem` | [coprime_self_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-self-add-left--a91091107cd889cf50407739.md) | 93 | `result-track:a91091107cd889cf50407739dafecf7402ac8328f78f1cab224009827f86801f` |
| 12 | `theorem` | [coprime_add_mul_right_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-add-mul-right-right--ec9047146ada54d18c892fb4.md) | 97 | `result-track:ec9047146ada54d18c892fb4d4927a3791ad065dde94afb5912552082c4cfe09` |
| 13 | `theorem` | [coprime_add_mul_left_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-add-mul-left-right--cfbbd68ca420fb3d24fd3184.md) | 101 | `result-track:cfbbd68ca420fb3d24fd31848f3f724a171460cd2a511a04e3e80f1676ef5b78` |
| 14 | `theorem` | [coprime_mul_right_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-mul-right-add-right--1d51455769f795968c3ff682.md) | 105 | `result-track:1d51455769f795968c3ff6820844028b1358012a0d9dd87329d3bc9f8471328e` |
| 15 | `theorem` | [coprime_mul_left_add_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-mul-left-add-right--31c1e3cb1ceb48417549d540.md) | 109 | `result-track:31c1e3cb1ceb48417549d54072c546803ff69282297df42b8f4a7e3b5473dc58` |
| 16 | `theorem` | [coprime_add_mul_right_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-add-mul-right-left--24cf08f65856c1ab7c451372.md) | 113 | `result-track:24cf08f65856c1ab7c451372434b645be1dc806e9af13c768a25d15558b0aef9` |
| 17 | `theorem` | [coprime_add_mul_left_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-add-mul-left-left--2aea8399cd7c44d79d766a12.md) | 117 | `result-track:2aea8399cd7c44d79d766a12090ecca01e6f9d3ca80e7f8603b145acd5a743d9` |
| 18 | `theorem` | [coprime_mul_right_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-mul-right-add-left--fa8cda409c8d117f774ff9ee.md) | 121 | `result-track:fa8cda409c8d117f774ff9eed50dae532c57d169cc3fa710c30f416b5aed4922` |
| 19 | `theorem` | [coprime_mul_left_add_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-mul-left-add-left--6add9177af545289c55061c6.md) | 125 | `result-track:6add9177af545289c55061c6ea16fe0edcdae4eb3874ca7a6a3ff228fe7898af` |
| 20 | `lemma` | [add_coprime_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/add-coprime-iff-left--d6733abd4f30de395e4c5378.md) | 128 | `result-track:d6733abd4f30de395e4c53787bff0d94595010753125ad9302c54a868677aadb` |
| 21 | `lemma` | [add_coprime_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/add-coprime-iff-right--6e206cc9246418baadf2cf45.md) | 131 | `result-track:6e206cc9246418baadf2cf45082c54f0981e6e58c73fa4b5d148d5c8f607712d` |
| 22 | `lemma` | [coprime_add_iff_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-add-iff-left--f697ce91978bf2ee19bef736.md) | 134 | `result-track:f697ce91978bf2ee19bef736b053c78a1c479989beefc0f6ae63c003bc161b67` |
| 23 | `lemma` | [coprime_add_iff_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-add-iff-right--26c35e199a696626026239a9.md) | 137 | `result-track:26c35e199a696626026239a9e1659bb5d66e5f13e0b54b87a23f353dcc4e571c` |
| 24 | `lemma` | [Coprime.of_dvd_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-of-dvd-left--5463e25f30199656e236c94b.md) | 141 | `result-track:5463e25f30199656e236c94b4e3985d72c06532d830cb45d65792e4f27ee292d` |
| 25 | `lemma` | [Coprime.of_dvd_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-of-dvd-right--d43ecb29b36f9d47b408d26d.md) | 144 | `result-track:d43ecb29b36f9d47b408d26da864ecca4ac054062061394e6a6bbc5e694a2b66` |
| 26 | `lemma` | [Coprime.of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-of-dvd--ecbe00a8b661b27c6978b455.md) | 147 | `result-track:ecbe00a8b661b27c6978b455c242cc439da39e0d1697b11f3affae4e7363c6bb` |
| 27 | `theorem` | [coprime_sub_self_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-sub-self-left--f250cd97da299fde5be44488.md) | 151 | `result-track:f250cd97da299fde5be44488deca87a8e2f9aeda1fc1d7a85a624356c47ed4bd` |
| 28 | `theorem` | [coprime_sub_self_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-sub-self-right--d0c7a26e1d4f8e747f132110.md) | 155 | `result-track:d0c7a26e1d4f8e747f132110ed2564f4c8bee38f55d15e1477f401adae4f579d` |
| 29 | `theorem` | [coprime_self_sub_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-self-sub-left--10565d9c697f022547355a75.md) | 159 | `result-track:10565d9c697f022547355a751a8e48755e2077e9cefb9081869d1331bcf10c9e` |
| 30 | `theorem` | [coprime_self_sub_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-self-sub-right--41a19ea85dfeddc6f30d1fec.md) | 163 | `result-track:41a19ea85dfeddc6f30d1fec0b62ab2a8fa044ab6d866757fed5bf010b2e8f45` |
| 31 | `theorem` | [coprime_pow_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-pow-left-iff--0b73da406581b85a8f9ab190.md) | 167 | `result-track:0b73da406581b85a8f9ab190d3258a0f1d3c0f25db4611d48cbd0d62bd829ecd` |
| 32 | `theorem` | [coprime_pow_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-pow-right-iff--691b3aa035f4bb5e09889392.md) | 174 | `result-track:691b3aa035f4bb5e0988939265a7634abeeb4f2fe08c8ba07f8018f03125adc8` |
| 33 | `theorem` | [not_coprime_zero_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/not-coprime-zero-zero--7ae149a636fc752f075b11ca.md) | 178 | `result-track:7ae149a636fc752f075b11ca71cbb568ef213e46b07cfc8931454185e4392727` |
| 34 | `theorem` | [coprime_one_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-one-left-iff--6273b2a6e73ac35a980dbdd1.md) | 180 | `result-track:6273b2a6e73ac35a980dbdd1ddf9db9938d59b853a5826dee3b12c24ee3d43f7` |
| 35 | `theorem` | [coprime_one_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-one-right-iff--2ab8a5282db66db8a12f867f.md) | 182 | `result-track:2ab8a5282db66db8a12f867ffe3c6d9a1b0a2dbd66fc0afce87bc6eb5efd8c4e` |
| 36 | `theorem` | [gcd_mul_of_coprime_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/gcd-mul-of-coprime-of-dvd--fb694c9f787573bf893df101.md) | 184 | `result-track:fb694c9f787573bf893df10178c2db1ea1da1031c2fa198bd8dd8105ac854c18` |
| 37 | `theorem` | [Coprime.eq_of_mul_eq_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-eq-of-mul-eq-zero--388cca0018ec9f7bbfb9e6d5.md) | 191 | `result-track:388cca0018ec9f7bbfb9e6d506662550ea71d3ac6dc57c2111be75fd8e487ab6` |
| 38 | `theorem` | [coprime_iff_isRelPrime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-iff-isrelprime--106121d9fa77b1c3aafcc0e9.md) | 199 | `result-track:106121d9fa77b1c3aafcc0e915c8bc1f756a405e637b1e3042b8e63e67867197` |
| 39 | `theorem` | [eq_one_of_dvd_coprimes](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/eq-one-of-dvd-coprimes--5d58d9fad6c85429ef75707e.md) | 204 | `result-track:5d58d9fad6c85429ef75707e32041f23d420bfcc2dc9f524b62d83551d76fb52` |
| 40 | `theorem` | [Coprime.mul_add_mul_ne_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/coprime-mul-add-mul-ne-mul--207056d90a9dd2f1fd970a60.md) | 208 | `result-track:207056d90a9dd2f1fd970a6022d43470a74edde687ba3c42c6a1a2f123eccb02` |
| 41 | `theorem` | [gcd_mul_gcd_eq_iff_dvd_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant2a27322838fcd7efee73769c497d4fa124afb38ed362ed8d287c1aa506c23fa3.lean/declarations/gcd-mul-gcd-eq-iff-dvd-mul-of-coprime--42407c063f8714f34b177d5c.md) | 225 | `result-track:42407c063f8714f34b177d5c078ec731eadf6510dba63b99329aabbd7befd686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
