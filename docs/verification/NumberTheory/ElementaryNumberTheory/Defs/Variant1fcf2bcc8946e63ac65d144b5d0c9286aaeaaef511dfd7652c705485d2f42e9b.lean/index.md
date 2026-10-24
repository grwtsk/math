# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Defs.Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c3ef2c6f5e41de1f6e7c1dc5d3b07785ac496c9",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c3ef2c6f5e41de1f6e7c1dc5d3b07785ac496c9`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Multiset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PrimeFin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicVal.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization--28d1b9eda417612156f9b8b8.md) | 53 | `declaration-track:28d1b9eda417612156f9b8b8625336f1511c46d599bbc06cde814215f5c8c067` |
| 2 | `lemma` | [support_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/support-factorization--8fbb813d7919ee8018fcf3ee.md) | 59 | `result-track:8fbb813d7919ee8018fcf3ee43ea9acfb462e80afbbe66a02a200fa7200059a7` |
| 3 | `theorem` | [factorization_def](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-def--231f1a62c012c6f17ec4ce4d.md) | 61 | `result-track:231f1a62c012c6f17ec4ce4d3f993fc2249e7b1c9b97982093ca134e1752ad5a` |
| 4 | `theorem` | [primeFactorsList_count_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/primefactorslist-count-eq--ca59e0f7a84fbe67bef9cc56.md) | 67 | `result-track:ca59e0f7a84fbe67bef9cc5623eb2d3daea60a4246ba6d54b1e87d41040f4667` |
| 5 | `theorem` | [factorization_eq_primeFactorsList_multiset](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-eq-primefactorslist-multiset--1809459cde28292d8b039d96.md) | 83 | `result-track:1809459cde28292d8b039d9622c70d2cb3ac9ce1ae8f45722bbc0b383c7f8c49` |
| 6 | `theorem` | [Prime.factorization_pos_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/prime-factorization-pos-of-dvd--8c173145760fc2b771dbb09f.md) | 88 | `result-track:8c173145760fc2b771dbb09fdff656728c6e1da95bd487e8bb6b98bf756467a4` |
| 7 | `theorem` | [multiplicity_eq_factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/multiplicity-eq-factorization--c81680b67b42166ae1fa770d.md) | 92 | `result-track:c81680b67b42166ae1fa770d6eb004daf41e245c85ba69c5c924863870fb2406` |
| 8 | `theorem` | [factorization_prod_pow_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-prod-pow-eq-self--d9c833bb3ff5d8a409ff28f9.md) | 100 | `result-track:d9c833bb3ff5d8a409ff28f99edd98142dc392c46c06a6cb582da11ed29fffd0` |
| 9 | `theorem` | [eq_of_factorization_eq](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/eq-of-factorization-eq--5fa5476f3878a042f47ae605.md) | 105 | `result-track:5fa5476f3878a042f47ae605e0e0a53e2a620e405f8730e1f9b98c41e3c0f7e8` |
| 10 | `theorem` | [factorization_inj](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-inj--133240196534a76485435f8f.md) | 112 | `result-track:133240196534a76485435f8f01fb3cebfd5e516b9cddf5baba139028c5eec405` |
| 11 | `theorem` | [factorization_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-zero--cf1992d31948b9d1509b12a0.md) | 116 | `result-track:cf1992d31948b9d1509b12a01ec7a51794c82cf21c887e4cdc9dc0517742f7dc` |
| 12 | `theorem` | [factorization_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-one--2c3a2a290e91d7d4f08be370.md) | 119 | `result-track:2c3a2a290e91d7d4f08be37019e94513decba87062eeaa84e666e3bba02def1a` |
| 13 | `theorem` | [factorization_eq_zero_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-eq-zero-iff--6ba470a42414c07017b2d369.md) | 123 | `result-track:6ba470a42414c07017b2d369d83ce9a2b2c1b6211d30ceedcf69bbc596f65a96` |
| 14 | `theorem` | [factorization_eq_zero_of_non_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-eq-zero-of-non-prime--bf027c4bf2d1aab2a4d25668.md) | 128 | `result-track:bf027c4bf2d1aab2a4d25668e8c9c17205a10f9e1f45c346369c176352a64863` |
| 15 | `theorem` | [factorization_zero_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-zero-right--c031afe76714d0f69da11187.md) | 132 | `result-track:c031afe76714d0f69da111877689f88a0dfcceb35ca9ec278374640ac897b9cc` |
| 16 | `theorem` | [factorization_eq_zero_of_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-eq-zero-of-not-dvd--a2ae4aea8e6a2c3ca71f126c.md) | 135 | `result-track:a2ae4aea8e6a2c3ca71f126c2266b0318ced4d439966bd6d5b13da61b3886e34` |
| 17 | `theorem` | [factorization_eq_zero_of_remainder](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-eq-zero-of-remainder--05ca3a2a979ffd2a76ca3c59.md) | 138 | `result-track:05ca3a2a979ffd2a76ca3c598e10cbd8c2d834aa73b4bbe6293e9c56cf3c4c7a` |
| 18 | `theorem` | [factorization_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-mul--ebe227d54d281a11ee3b2677.md) | 147 | `result-track:ebe227d54d281a11ee3b2677a1829c64189845ed218948fc3a17d74295f72f21` |
| 19 | `theorem` | [factorization_le_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-le-iff-dvd--30c836565af02e90678e45a3.md) | 153 | `result-track:30c836565af02e90678e45a38497ef8ade425e4ee3d75f9b429898b1241673ba` |
| 20 | `theorem` | [factorization_prod](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-prod--d1f39bcf5154e7992405498e.md) | 168 | `result-track:d1f39bcf5154e7992405498ecd6d018f6784223e347ef83f6866d6121673e511` |
| 21 | `theorem` | [factorization_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-pow--938236f6fcafd1c994182e21.md) | 180 | `result-track:938236f6fcafd1c994182e218ba9ba7b27f53d878914351fb1bbcb69abc3d1ba` |
| 22 | `theorem` | [Prime.factorization](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/prime-factorization--f063d64c0e76baf1efc7f623.md) | 192 | `result-track:f063d64c0e76baf1efc7f623a8c0f05c97aeb259fbaf661c96d304c2f5599658` |
| 23 | `theorem` | [Prime.factorization_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/prime-factorization-pow--3afe6d9d6957b2db69d5d993.md) | 198 | `result-track:3afe6d9d6957b2db69d5d9934c6eb1a961940076120f25c98aeba7b00f29af13` |
| 24 | `theorem` | [pow_succ_factorization_not_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/pow-succ-factorization-not-dvd--bfa586230fab7d565e5a7c2d.md) | 201 | `result-track:bfa586230fab7d565e5a7c2d88f1d0701ad8281bf704fea91febd3e772f8a4da` |
| 25 | `theorem` | [prod_pow_factorization_eq_self](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/prod-pow-factorization-eq-self--cc9c20d920cfbafd6a8f05a3.md) | 212 | `result-track:cc9c20d920cfbafd6a8f05a31e2a42c9720b80e40ffa14a5dd1dc60ba3decc07` |
| 26 | `def` | [factorizationEquiv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorizationequiv--e94b68ce1482f60c1019a967.md) | 223 | `declaration-track:e94b68ce1482f60c1019a9673aa0f467c6f9fed82daa08e1a2193cf210267fa7` |
| 27 | `theorem` | [factorization_mul_apply_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-mul-apply-of-coprime--52863a4bfeba4bffd5086c7b.md) | 234 | `result-track:52863a4bfeba4bffd5086c7bcae8b5f088579fbb895f5b6fd78d1ed3789c2ba1` |
| 28 | `theorem` | [factorization_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorization-mul-of-coprime--92cbe46aa8847629e83b0220.md) | 240 | `result-track:92cbe46aa8847629e83b02204b491263ec979481d8be7b281e810033a60ac470` |
| 29 | `theorem` | [ordProj_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/ordproj-dvd--b1784f14e1a54133714dcb30.md) | 257 | `result-track:b1784f14e1a54133714dcb30c807d491d9b0130acdf329a00fb2f54dd1276cbb` |
| 30 | `def` | [factorizationLCMLeft](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorizationlcmleft--f8a15b64b523d2f9e4ca1fa4.md) | 273 | `declaration-track:f8a15b64b523d2f9e4ca1fa41b1acc125142ee5776bdab8d930b5ada7a3f1626` |
| 31 | `def` | [factorizationLCMRight](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Defs/Variant1fcf2bcc8946e63ac65d144b5d0c9286aaeaaef511dfd7652c705485d2f42e9b.lean/declarations/factorizationlcmright--27f4e27eee7e869e200157ae.md) | 286 | `declaration-track:27f4e27eee7e869e200157aea98824df6eeea5c96002244d678078374d831634` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
