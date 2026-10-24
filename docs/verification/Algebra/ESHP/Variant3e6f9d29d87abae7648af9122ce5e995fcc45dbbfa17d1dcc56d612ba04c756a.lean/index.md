# Verification target: GRWTSK.Algebra.ESHP.Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21ceaf279b9771b68f9aa5184d964814d97bd5f8",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/index.md) · [Full source](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21ceaf279b9771b68f9aa5184d964814d97bd5f8`.

Source path: `GRWTSK/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Star` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Star` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.eSHP.eSHP_tables` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [table_8_prime_gap_test](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/table-8-prime-gap-test--b188cb1af4fd6b686321610c.md) | 36 | `result-track:b188cb1af4fd6b686321610ca92d9dbcf5a6f54631c36f8ac7cdfa5cac7aa43e` |
| 2 | `theorem` | [table_8_prime_gap](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/table-8-prime-gap--d97034934c3f20a7e021f994.md) | 93 | `result-track:d97034934c3f20a7e021f99474eb51b5c6fc17897f9930029c5a21456b0ff93e` |
| 3 | `theorem` | [table_8_prime_gap_complete_test](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/table-8-prime-gap-complete-test--6a08ad816e3d7e2c9e32e64b.md) | 105 | `result-track:6a08ad816e3d7e2c9e32e64b1f2546254bef4f22e7ecf02f13d634c0bbadb5ba` |
| 4 | `theorem` | [table_8_prime_gap_complete](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/table-8-prime-gap-complete--7d241b2dc14aaa782951a851.md) | 137 | `result-track:7d241b2dc14aaa782951a8512eb93ef38aff05226a62f4b430336d899e54d982` |
| 5 | `lemma` | [exists_prime_gap_record_le](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/exists-prime-gap-record-le--a9155ced2f46d1caa91c2835.md) | 141 | `result-track:a9155ced2f46d1caa91c2835b1ef44e34eafcd7f181526f883a47eca7cc957c6` |
| 6 | `theorem` | [max_prime_gap](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/max-prime-gap--d1379d278f13fcd9a21f166e.md) | 168 | `result-track:d1379d278f13fcd9a21f166e589714a4490e4906c39d1116bb58adba6b7d177f` |
| 7 | `theorem` | [table_9_prime_gap_test](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/table-9-prime-gap-test--626e40ef2d763ea1f9db4a6d.md) | 186 | `result-track:626e40ef2d763ea1f9db4a6d932b7e3572edfde6a97b88ab3b58048a1a27b0ea` |
| 8 | `theorem` | [table_9_prime_gap](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/table-9-prime-gap--03e1fbdde68262e579b5fbbc.md) | 312 | `result-track:03e1fbdde68262e579b5fbbcb66f599735f5825845a378152f1e6bc1b4eee10d` |
| 9 | `lemma` | [nth_prime_vals](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/nth-prime-vals--6645871944394377a84c0d79.md) | 316 | `result-track:6645871944394377a84c0d796e8e9c82c02f997ca27efcc5f4a1675e9eec48ee` |
| 10 | `lemma` | [first_gap_odd_gt_1](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/first-gap-odd-gt-1--e157ca64eae2f0fb14995e77.md) | 349 | `result-track:e157ca64eae2f0fb14995e77b75be449e3a3174ed4a51729fe20c09414c0f72b` |
| 11 | `lemma` | [first_gap_1](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/first-gap-1--77e957d3e802669c9e78d1af.md) | 364 | `result-track:77e957d3e802669c9e78d1afb2b091d0aa68902ce11e51b4550f550ac3d5395f` |
| 12 | `lemma` | [first_gap_2](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/first-gap-2--5631befa23ed65a4adb363d7.md) | 372 | `result-track:5631befa23ed65a4adb363d76d17b4e15f74f3c6ca2712f94aa7288ee15f28ef` |
| 13 | `lemma` | [first_gap_3](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/first-gap-3--953720929a834f9be2904d3b.md) | 383 | `result-track:953720929a834f9be2904d3b2b0bf4b7c0bae79e1f6423cf6ec2992661c76469` |
| 14 | `lemma` | [first_gap_4](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/first-gap-4--0aa570ec9e9c6235a3c2054f.md) | 387 | `result-track:0aa570ec9e9c6235a3c2054ff54c11d9d21f1e0330fc5d49b43aaa72d9389d27` |
| 15 | `lemma` | [first_gap_5](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/first-gap-5--f5e77e33de32b1f489c138e2.md) | 398 | `result-track:f5e77e33de32b1f489c138e2c18d6dd10dd7fb166b3470c7119aa86dd647b51e` |
| 16 | `lemma` | [first_gap_6](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/first-gap-6--83bcfb4efd6443c5ce750b72.md) | 402 | `result-track:83bcfb4efd6443c5ce750b721b1bd53dfedaf0819124828c5e05f93fea0259e4` |
| 17 | `lemma` | [first_gap_7](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/first-gap-7--bac8bf70c9cbb618217334c6.md) | 427 | `result-track:bac8bf70c9cbb618217334c6f31c723361819f003798cb3f440bedf5c180cb1f` |
| 18 | `theorem` | [table_9_prime_gap_complete_test](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/table-9-prime-gap-complete-test--ead1adfab181932673ec4d3b.md) | 439 | `result-track:ead1adfab181932673ec4d3b37f25669d3c8520250d689fb06b1a88ddaf56a3d` |
| 19 | `theorem` | [table_9_prime_gap_complete](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/table-9-prime-gap-complete--afa3e1cb8df237ea3d2bb383.md) | 457 | `result-track:afa3e1cb8df237ea3d2bb3831fa32c4707aad20fcb9766d5b402d24063c650c8` |
| 20 | `theorem` | [exists_prime_gap](../../../../mathematics/Algebra/ESHP/Variant3e6f9d29d87abae7648af9122ce5e995fcc45dbbfa17d1dcc56d612ba04c756a.lean/declarations/exists-prime-gap--916eccc396291f831940bf37.md) | 472 | `result-track:916eccc396291f831940bf376091e3070df9253dd75fa9c44ea7f8418400f05b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
