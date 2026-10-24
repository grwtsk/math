# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaDivisorCoefficientAttempt01.Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5cd82bdce56ca87842d8c85d668d1c44746b374",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5cd82bdce56ca87842d8c85d668d1c44746b374`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 2; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorinventory--d5b48bd6b5380eceead4bc5b.md) | 30 | `declaration-track:d5b48bd6b5380eceead4bc5b0f39326dae92736cbdb06267ff4c21d42422a0af` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorcoeff--376b2117cc0ec2b7ea9e0dee.md) | 34 | `declaration-track:376b2117cc0ec2b7ea9e0dee2255839aece11e3f98ae23b1b0301b05f32aaec3` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/mem-propercoprimedivisorinventory--6713d4477eb8ed2a8494c22d.md) | 38 | `result-track:6713d4477eb8ed2a8494c22ddcfb8c4d72fabd27936b03e00982899585c9be22` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorinventory-subset-divisors--15dfca6ff2d1a2959058c60d.md) | 44 | `result-track:15dfca6ff2d1a2959058c60d256eac85053961f03ad70cdc856e14ead6fd331f` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/proper-coprime-six-ge-five--5838279d3c1b4c1a07a9c5ba.md) | 50 | `result-track:5838279d3c1b4c1a07a9c5ba6baa52911354464ec18e000ae84f137e8c35f24e` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/product-ge-ten-of-mem--4bc476c51403b5bed59d53ac.md) | 57 | `result-track:4bc476c51403b5bed59d53ac38a302da5a3fe9591ead7a6059d66a291d923e35` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorcoeff-nonneg--e746fb98196b3a351761b36c.md) | 67 | `result-track:e746fb98196b3a351761b36c42a0fe99374a0b7c260a24d6e7c880063b405c3b` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorcoeff-le-log--0811822bb4dcd983881a7a6b.md) | 73 | `result-track:0811822bb4dcd983881a7a6bbaf48e4c216722a52e09930d6e604e51960dd5fe` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten--d51fdded479a54ccf5294519.md) | 85 | `result-track:d51fdded479a54ccf5294519947261bc097bff9f40daf9324959141bb9aa74c9` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten--4e8ac00a7cc7d9c8536f88f1.md) | 92 | `result-track:4e8ac00a7cc7d9c8536f88f1a0b3bbc74b4e70628ba30b30e374bc326bc8b539` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorinventory-ten--10c3fbecf121c5c6f1ec8bd1.md) | 98 | `result-track:10c3fbecf121c5c6f1ec8bd16a0493587e783ac39062294106325e821b9e5615` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorcoeff-ten--e289b120ec4d73278f91071e.md) | 117 | `result-track:e289b120ec4d73278f91071e0ecad670c09b2174edc8a019092307137858e3c1` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/propercoprimedivisorcoeff-ten-pos--14d7a9403fd46576a598aabb.md) | 123 | `result-track:14d7a9403fd46576a598aabb34093e0cc0e691823e4f3305c802ad6ef4716c80` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientAttempt01/Variant6052cda5fe0fdb41626d4e8ec611229af4a69bb15f2ed0dc7e5b681586e740b6.lean/declarations/primepower-four-mem-inventory-twenty--dafdfe72baafac9c716c61f6.md) | 128 | `result-track:dafdfe72baafac9c716c61f658e43dad6f2a8793a292aeb824f9f34b488e5199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
