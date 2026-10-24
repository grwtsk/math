# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReplayAndInspectDivisorCoefficient.Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55a152acdafb670cebce4b04773e566dd277b58a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55a152acdafb670cebce4b04773e566dd277b58a`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorinventory--dc973e5156fe2fbddf2c2967.md) | 38 | `declaration-track:dc973e5156fe2fbddf2c2967bb9c017bc69495b94e2cfca065b13d67ff99dde1` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorcoeff--0cb3253302e585e5b16eca39.md) | 42 | `declaration-track:0cb3253302e585e5b16eca39469888d9849d8c01cada066ae84bd08f0cab0b85` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/mem-propercoprimedivisorinventory--f72ef0a5ed1717a167df391d.md) | 46 | `result-track:f72ef0a5ed1717a167df391d47087bf99417e53af5f30bfa1d77f773ed61a1e1` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorinventory-subset-divisors--abcedb29efb2e70ddea83c60.md) | 52 | `result-track:abcedb29efb2e70ddea83c605f40eac5053d60277e576c42147cb1cbe5296596` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/proper-coprime-six-ge-five--c44eef5b62f3b0c277aa4f57.md) | 58 | `result-track:c44eef5b62f3b0c277aa4f579f29c1812dc81ba4569b5a318c5e918924d6cf83` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/product-ge-ten-of-mem--40487553ece63f17832afab7.md) | 68 | `result-track:40487553ece63f17832afab7ec323bc045bab2d42ca19e325758075bce934a52` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorcoeff-nonneg--dab9f1584bcfe92c7e9bed3d.md) | 78 | `result-track:dab9f1584bcfe92c7e9bed3d795550765c8d26761408c70de7fec72d44d37756` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorcoeff-le-log--c82201407209fb8b9fe71b82.md) | 84 | `result-track:c82201407209fb8b9fe71b820d60c8efcfa4879c46d65946c4de6019a795bdf5` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten--16a2bbc9edc22d26114c854b.md) | 96 | `result-track:16a2bbc9edc22d26114c854b032b6a59378813047bf15bd903f3987ed9dbbce6` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten--b0cbb2258363ed29ead6d1e3.md) | 103 | `result-track:b0cbb2258363ed29ead6d1e3cf8205560842306d68cd2d3d9fbe2a585e14c96e` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorinventory-ten--21a0bb1a4e383f7618b3bf4b.md) | 109 | `result-track:21a0bb1a4e383f7618b3bf4ba6b305a250b34b398ed52f0314fb10827757fb8c` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorcoeff-ten--9fbf82ec636f28809ffa58b5.md) | 129 | `result-track:9fbf82ec636f28809ffa58b546bd95abc6b4a9b33256049cc3256a4108f428c0` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/propercoprimedivisorcoeff-ten-pos--2ce5cef2797510606757f780.md) | 136 | `result-track:2ce5cef2797510606757f780ee10880e1208d87d57efc60503ac47fba0c098ce` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variant1a0d4303b8b93dabf50eb26f7c57ccae2d5b7dfa44e27bb17d526ae36c63e516.lean/declarations/primepower-four-mem-inventory-twenty--e683a33bca493ca318b99ce0.md) | 141 | `result-track:e683a33bca493ca318b99ce06e0b28496116462bdbfe30c0923786547ee828be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
