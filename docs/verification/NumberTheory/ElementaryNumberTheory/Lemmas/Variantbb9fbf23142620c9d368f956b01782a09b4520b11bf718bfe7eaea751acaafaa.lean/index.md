# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c7d74598cb76d7da21544e5765cf1cc956aa1e3",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c7d74598cb76d7da21544e5765cf1cc956aa1e3`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.GCD` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.isCoprime_iff_gcd_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/int-iscoprime-iff-gcd-eq-one--941d0bee877721264dbc722e.md) | 33 | `result-track:941d0bee877721264dbc722e89d2f0bf55e6ba7f44c3630a3c4edc0425b7b317` |
| 2 | `theorem` | [Nat.isCoprime_iff_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/nat-iscoprime-iff-coprime--39d899b04ad31f514197ce51.md) | 42 | `result-track:39d899b04ad31f514197ce51c397779130d493e04acd05959bc6f40eea800a0b` |
| 3 | `theorem` | [ne_zero_or_ne_zero_of_nat_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/ne-zero-or-ne-zero-of-nat-coprime--60e0250c293037c42ce8308d.md) | 50 | `result-track:60e0250c293037c42ce8308d4d84f3b313a494e4bf70168416354e7e9a74a5b7` |
| 4 | `theorem` | [IsCoprime.prod_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-prod-left--bb56678032b2463fc882fda5.md) | 55 | `result-track:bb56678032b2463fc882fda533455c1012ddb673cbbfd3e65380a97f3f63a6f9` |
| 5 | `theorem` | [IsCoprime.prod_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-prod-right--3c56f59e6efaa44d8ea19699.md) | 62 | `result-track:3c56f59e6efaa44d8ea19699ca29d8b0280ad32c2d70cb0776497ad17f13db1f` |
| 6 | `theorem` | [IsCoprime.prod_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-prod-left-iff--b6a1f71bd124a00cb43ab89b.md) | 66 | `result-track:b6a1f71bd124a00cb43ab89be8541c0d8d0b7dbef6fd54c695af981448b1077f` |
| 7 | `theorem` | [IsCoprime.prod_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-prod-right-iff--b68386a5d1261602341d8df8.md) | 71 | `result-track:b68386a5d1261602341d8df8bc0cd502f589c907429e5f6f76858b7b57cab96e` |
| 8 | `theorem` | [IsCoprime.of_prod_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-of-prod-left--335f6bdb0fae10a6e9134c2a.md) | 75 | `result-track:335f6bdb0fae10a6e9134c2a2fe7ce74f8594996705df7e3561a6f964410c488` |
| 9 | `theorem` | [IsCoprime.of_prod_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-of-prod-right--27bae34acbfec40931ef8674.md) | 80 | `result-track:27bae34acbfec40931ef86744285a340f85ed29978565ed815b3ddd1443cb911` |
| 10 | `theorem` | [Finset.prod_dvd_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/finset-prod-dvd-of-coprime--8e7e5d4f6e8cf6933582db16.md) | 86 | `result-track:8e7e5d4f6e8cf6933582db16fdc31323eecaeea51597e1cd7d5c90a46af4f1dd` |
| 11 | `theorem` | [Fintype.prod_dvd_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/fintype-prod-dvd-of-coprime--1fe4aedf19cb4dd5b97dc645.md) | 102 | `result-track:1fe4aedf19cb4dd5b97dc64596a798b8f930b60f511f6b7857b8c86630a7e7dd` |
| 12 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--9eb3feeb6448b501cbf44581.md) | 111 | `result-track:9eb3feeb6448b501cbf44581c94ae5392ca6b361d5b203d3026b9cc67ef05bda` |
| 13 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--b6cde21feec8c634643f7fd8.md) | 172 | `result-track:b6cde21feec8c634643f7fd893475cb2debe955ccaf23710e152399db37709b7` |
| 14 | `theorem` | [pairwise_coprime_iff_coprime_prod](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/pairwise-coprime-iff-coprime-prod--7b7b548c360b601131980867.md) | 179 | `result-track:7b7b548c360b60113198086712e4dc9d7c3925bdeb637b5b4cadea1e510bed17` |
| 15 | `theorem` | [IsCoprime.pow_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-pow-left--37e15667035728b19f65d73f.md) | 193 | `result-track:37e15667035728b19f65d73f28a2cd643da5bb6f1aeda182f32825d38610b256` |
| 16 | `theorem` | [IsCoprime.pow_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-pow-right--296a48bcff2c949833d0668d.md) | 198 | `result-track:296a48bcff2c949833d0668d4147d3ae2c37cf2794dcd20df3d53d2355699957` |
| 17 | `theorem` | [IsCoprime.pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-pow--0c6eb25467cd5112497c1eeb.md) | 203 | `result-track:0c6eb25467cd5112497c1eebfc4d145bd31a6ace53aa3e4f6ef42788a594ad4d` |
| 18 | `theorem` | [IsCoprime.pow_left_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-pow-left-iff--b189697b3b46234fed650824.md) | 207 | `result-track:b189697b3b46234fed6508246be31403a73ef403d32d16e5094bfa5652a5064e` |
| 19 | `theorem` | [IsCoprime.pow_right_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-pow-right-iff--7474685303a5a38db8c35ee2.md) | 215 | `result-track:7474685303a5a38db8c35ee2b8772c3335a593d630b96acf34de0a1d7ffa4d12` |
| 20 | `theorem` | [IsCoprime.pow_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Lemmas/Variantbb9fbf23142620c9d368f956b01782a09b4520b11bf718bfe7eaea751acaafaa.lean/declarations/iscoprime-pow-iff--353cc1f2735fec5184150fe9.md) | 219 | `result-track:353cc1f2735fec5184150fe9a5bb09cde94aa26e3c0febffcb4c5c7f74ada815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
