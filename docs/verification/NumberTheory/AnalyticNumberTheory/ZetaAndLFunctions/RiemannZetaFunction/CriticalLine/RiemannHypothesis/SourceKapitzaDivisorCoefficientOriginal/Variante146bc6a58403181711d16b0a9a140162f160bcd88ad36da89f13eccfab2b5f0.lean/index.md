# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaDivisorCoefficientOriginal.Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b051a872befa39c3a01b3bb80815d3f7a25f153d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b051a872befa39c3a01b3bb80815d3f7a25f153d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorinventory--d42c3291371a98c44b33e609.md) | 36 | `declaration-track:d42c3291371a98c44b33e6097defc4a8bf34586054c0a6768c0b581e99b6e35a` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorcoeff--cdca6301294d5356429633a2.md) | 40 | `declaration-track:cdca6301294d5356429633a2555f80c7dc4a1a114f67c31ed86f0315384c861a` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/mem-propercoprimedivisorinventory--d5380b28de80077918ea07c9.md) | 44 | `result-track:d5380b28de80077918ea07c904ca7bbd18b23a55ae4568c4cca67f863ca868b4` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorinventory-subset-divisors--b0d0f27a7a61cd9dcf8941c7.md) | 50 | `result-track:b0d0f27a7a61cd9dcf8941c7b9d0a478533d51951b993133647b9c4fa1061db1` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/proper-coprime-six-ge-five--2f9810978a531819711a875f.md) | 56 | `result-track:2f9810978a531819711a875f2b9adb86b9bd22b9e9e30886b6df3e8a23adfb36` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/product-ge-ten-of-mem--8b30681e3eebe76d1b73ceba.md) | 63 | `result-track:8b30681e3eebe76d1b73ceba9192e96a1d2742c303fe4ffaf508c47241d4fc36` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorcoeff-nonneg--378933d1a6ede7fcac1b6e8b.md) | 73 | `result-track:378933d1a6ede7fcac1b6e8b4442d5908f2d2adb30267278f5d60c0def5c8c39` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorcoeff-le-log--7153e6f3d1c52617f70c3603.md) | 79 | `result-track:7153e6f3d1c52617f70c36039e0c4ae741299d66bb0919df7f748ef195be50b1` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten--bcd755bed62b0d3ef85ab749.md) | 91 | `result-track:bcd755bed62b0d3ef85ab7496785e3a9f53d41be1c83322532aa2b56b7e82875` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten--9a31276ab0556eceade47733.md) | 98 | `result-track:9a31276ab0556eceade47733b8cb47022f1483e67437fedbb357095a9c620858` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorinventory-ten--903518cbbee4199ad6a99e3d.md) | 104 | `result-track:903518cbbee4199ad6a99e3d297d2e826fcb17f6a60ffff6eb8d75da340ddce9` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorcoeff-ten--e6a445d8d2b7557d314f4f4c.md) | 123 | `result-track:e6a445d8d2b7557d314f4f4cd833aee54b7e9fc0d1b70c28ce34768f11846414` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/propercoprimedivisorcoeff-ten-pos--8a9ba2c23a5ad2d17e13f7b3.md) | 129 | `result-track:8a9ba2c23a5ad2d17e13f7b3c708b7d156d9baa1b482eebe5c69a951cb09228e` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficientOriginal/Variante146bc6a58403181711d16b0a9a140162f160bcd88ad36da89f13eccfab2b5f0.lean/declarations/primepower-four-mem-inventory-twenty--b692036c2776b3a25b1f8244.md) | 134 | `result-track:b692036c2776b3a25b1f8244ad6043951bbdb2424bf3b00508fcfe01daed91a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
