# Verification target: GRWTSK.Algebra.ESHP.Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9e468fee2e01d3278a32ef82ef1c44b2545514b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/index.md) · [Full source](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9e468fee2e01d3278a32ef82ef1c44b2545514b`.

Source path: `GRWTSK/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Star` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 3; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.eSHP.eSHP_tables` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [table_8_prime_gap_test](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/table-8-prime-gap-test--b9442b51cce5fc9a0cceaea1.md) | 28 | `result-track:b9442b51cce5fc9a0cceaea10c0abc586c2a0e6c705f8db7a5acad68e4b5e41f` |
| 2 | `theorem` | [table_8_prime_gap](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/table-8-prime-gap--bf8c862217281ad5e92fc055.md) | 85 | `result-track:bf8c862217281ad5e92fc05581197dda5ed56fd19148da346bd49881542e5076` |
| 3 | `theorem` | [table_8_prime_gap_complete_test](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/table-8-prime-gap-complete-test--029b1ebd6e61c6e68e39cfab.md) | 97 | `result-track:029b1ebd6e61c6e68e39cfab3d8f6fb6d76f19d98ff702a714ec7e4e74318782` |
| 4 | `theorem` | [table_8_prime_gap_complete](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/table-8-prime-gap-complete--1c163d4004d77ca27671ad30.md) | 129 | `result-track:1c163d4004d77ca27671ad30b54a5b38876e2b82b5783d3ca8532d6933ccc384` |
| 5 | `lemma` | [exists_prime_gap_record_le](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/exists-prime-gap-record-le--43940ff540e415a5d6bd94b3.md) | 133 | `result-track:43940ff540e415a5d6bd94b389f215f7f6e4e4ff852c6f729d9353351e27d0dc` |
| 6 | `theorem` | [max_prime_gap](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/max-prime-gap--8f1879278a3cb678c7b7d6c4.md) | 160 | `result-track:8f1879278a3cb678c7b7d6c4e778a841fa541b6c525a0ee58e746ee108686aa3` |
| 7 | `theorem` | [table_9_prime_gap_test](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/table-9-prime-gap-test--f6b35c297d79d382e9bb8f07.md) | 178 | `result-track:f6b35c297d79d382e9bb8f07f33f6dfe5cda6bd8747318db10a9e8a89d201a19` |
| 8 | `theorem` | [table_9_prime_gap](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/table-9-prime-gap--3cfed128ccd896611b061ebe.md) | 304 | `result-track:3cfed128ccd896611b061ebe33e3abef152c9efcc84856bc7230203e9b90ccb3` |
| 9 | `lemma` | [nth_prime_vals](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/nth-prime-vals--88deac41ea3080b5c40315a5.md) | 308 | `result-track:88deac41ea3080b5c40315a52d0e1b3217e2a44c8d93a58631f9ce810b897375` |
| 10 | `lemma` | [first_gap_odd_gt_1](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/first-gap-odd-gt-1--d823d13d5d74657220e0b865.md) | 341 | `result-track:d823d13d5d74657220e0b865d1310e2df688c9427ecc270e84c96e75274913ee` |
| 11 | `lemma` | [first_gap_1](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/first-gap-1--aa8643d6e9aefda4c0756d50.md) | 356 | `result-track:aa8643d6e9aefda4c0756d500eff1ab6df239cd15820ba778260bb449c3aba42` |
| 12 | `lemma` | [first_gap_2](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/first-gap-2--03431455e6d5d0e2297dad17.md) | 364 | `result-track:03431455e6d5d0e2297dad171d7393fe80276922e94faabef3cddc2d7b127f37` |
| 13 | `lemma` | [first_gap_3](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/first-gap-3--139233511abf4097580d2ca8.md) | 375 | `result-track:139233511abf4097580d2ca8dbcad186aa6e5f3cac802371f060a85d5d2bd98d` |
| 14 | `lemma` | [first_gap_4](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/first-gap-4--6baf1ed6fca6f4b8734b714c.md) | 379 | `result-track:6baf1ed6fca6f4b8734b714c9e0e9527d9c27f42d0eacc8f25f38ba6fa5ce9b7` |
| 15 | `lemma` | [first_gap_5](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/first-gap-5--81c918090730632b6725fa53.md) | 390 | `result-track:81c918090730632b6725fa53c50aada415abe7074ab15c0415209941d841fb84` |
| 16 | `lemma` | [first_gap_6](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/first-gap-6--f0034eb7406fac50e73c8d3e.md) | 394 | `result-track:f0034eb7406fac50e73c8d3ec70efcb8b5ec496b777cca1aeba7f87e0724c048` |
| 17 | `lemma` | [first_gap_7](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/first-gap-7--b3de90ee256479fe842f80d9.md) | 419 | `result-track:b3de90ee256479fe842f80d98b1659305f65cbaeb57b59c7e626c219a926c9a4` |
| 18 | `theorem` | [table_9_prime_gap_complete_test](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/table-9-prime-gap-complete-test--7fab826138d4bc7f8e8d6964.md) | 431 | `result-track:7fab826138d4bc7f8e8d69640ff0dae5bb698c8783954d139ceb866462ca47e9` |
| 19 | `theorem` | [table_9_prime_gap_complete](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/table-9-prime-gap-complete--717f1a62029b35f34a41c06f.md) | 449 | `result-track:717f1a62029b35f34a41c06f71d290751ab5c073c9747be03c544de85a7cd3ba` |
| 20 | `theorem` | [exists_prime_gap](../../../../mathematics/Algebra/ESHP/Variant4d60b47033437b85c2f2e1465353b9e5ac2dc6a7cc27aced382c540fbe11cd40.lean/declarations/exists-prime-gap--fc1b05834e575eecee270ba2.md) | 464 | `result-track:fc1b05834e575eecee270ba2c804fee9e2b153888e799b46ac3116c2fc0b92d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
