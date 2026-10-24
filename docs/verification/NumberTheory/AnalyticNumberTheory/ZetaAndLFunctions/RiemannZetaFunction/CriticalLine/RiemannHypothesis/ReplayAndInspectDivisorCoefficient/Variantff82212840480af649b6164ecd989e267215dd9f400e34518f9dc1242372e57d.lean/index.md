# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ReplayAndInspectDivisorCoefficient.Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9f0de7dee73e5138a15709dcb826f171ebbcbfc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9f0de7dee73e5138a15709dcb826f171ebbcbfc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean.json)

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
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorinventory--81d070e99322de772d11f88b.md) | 30 | `declaration-track:81d070e99322de772d11f88b06d40a8b862aa02876412f2b969e087b86f8586c` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorcoeff--fc47bffdee35c6045660460f.md) | 34 | `declaration-track:fc47bffdee35c6045660460f236b4b919e477219ee5dc6ff975960c7eb7727de` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/mem-propercoprimedivisorinventory--5f9c25b71d51d58893457def.md) | 38 | `result-track:5f9c25b71d51d58893457def5a055142313d061738c80e0f01c2208bd4c0e72e` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorinventory-subset-divisors--78aad1828055ab5f92de9dca.md) | 44 | `result-track:78aad1828055ab5f92de9dca7612dbde27c5b757dcb90a6bfb740719bd1a295e` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/proper-coprime-six-ge-five--e6104ff91415878ec258b498.md) | 50 | `result-track:e6104ff91415878ec258b498fe731be186839fb49812d99547d27842667acd31` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/product-ge-ten-of-mem--edba02773f82ef8cd2f23c17.md) | 60 | `result-track:edba02773f82ef8cd2f23c17d0fdab0ea7a981447678c840274f6755593624f9` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorcoeff-nonneg--ac906dcfefdeef24684a9381.md) | 70 | `result-track:ac906dcfefdeef24684a9381b46b1390326ddce9eb8aba32c3adc96e1f64a3be` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorcoeff-le-log--03580795d6e8f13259ac8753.md) | 76 | `result-track:03580795d6e8f13259ac8753733022bf467e9821065d5a09f24596d660f3a5c1` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten--2715ab51d63bba3cb609934b.md) | 88 | `result-track:2715ab51d63bba3cb609934bdc19395269fdb9c4fe8f55eb34c553a227fde3bd` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten--1526bf315ce6bfe92d6bc470.md) | 95 | `result-track:1526bf315ce6bfe92d6bc47008cc025595a28b5f8e02698b7aff6e19442986e2` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorinventory-ten--5e55acfee8a8b630826800b1.md) | 101 | `result-track:5e55acfee8a8b630826800b122e462593812352ddea7c6392b73a6c998846110` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorcoeff-ten--5cbff40b376d9d9105cc8058.md) | 121 | `result-track:5cbff40b376d9d9105cc80582e0e253f4c620bd71b749f39f55d99b031b2564e` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/propercoprimedivisorcoeff-ten-pos--da640d2eeca6820383c6723d.md) | 128 | `result-track:da640d2eeca6820383c6723d780036d317cf1d4df865dde5edadfa9d302819eb` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReplayAndInspectDivisorCoefficient/Variantff82212840480af649b6164ecd989e267215dd9f400e34518f9dc1242372e57d.lean/declarations/primepower-four-mem-inventory-twenty--01ca518fe358a7ca5547db08.md) | 133 | `result-track:01ca518fe358a7ca5547db08a97be8a027e196763c7469176a26d3e5832bebfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
