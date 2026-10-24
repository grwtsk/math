# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaDivisorCoefficient.Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0195586dfe855f99916cb9e4ba3364ca33dfb76",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0195586dfe855f99916cb9e4ba3364ca33dfb76`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean.json)

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
| 1 | `def` | [properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorinventory--096414573f071646e7a58f93.md) | 37 | `declaration-track:096414573f071646e7a58f939d85b8f6d42d043f035eb5d2d82cc72079a36b14` |
| 2 | `def` | [properCoprimeDivisorCoeff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorcoeff--ee551d50b43bed693c56aa1f.md) | 41 | `declaration-track:ee551d50b43bed693c56aa1f103afb3c25d74582758cea37b0c0c87bfb33b830` |
| 3 | `theorem` | [mem_properCoprimeDivisorInventory](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/mem-propercoprimedivisorinventory--9fc41d4cf49f74b10b8bfa8c.md) | 45 | `result-track:9fc41d4cf49f74b10b8bfa8cfd23c12acad07c1f271933a8691c5158549126c1` |
| 4 | `theorem` | [properCoprimeDivisorInventory_subset_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorinventory-subset-divisors--747aa6ea02a5c171baca5eca.md) | 51 | `result-track:747aa6ea02a5c171baca5eca6e222e305e7b559bedbddd4b921bb1d0f8e724e2` |
| 5 | `theorem` | [proper_coprime_six_ge_five](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/proper-coprime-six-ge-five--fa22176b48d186036c91e88d.md) | 57 | `result-track:fa22176b48d186036c91e88d0511cdfc965f46388c20a0e8dbb3ed31fc101333` |
| 6 | `theorem` | [product_ge_ten_of_mem](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/product-ge-ten-of-mem--575ea4dee9904eb5cd21debe.md) | 64 | `result-track:575ea4dee9904eb5cd21debe9a25cba923bd5ef734866d8ae2e4c1b7e131700b` |
| 7 | `theorem` | [properCoprimeDivisorCoeff_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorcoeff-nonneg--c6b406b78be30a137ede1153.md) | 74 | `result-track:c6b406b78be30a137ede1153493296d9c46facd615023e5eda5a5f68265c47a1` |
| 8 | `theorem` | [properCoprimeDivisorCoeff_le_log](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorcoeff-le-log--d6120bca60d299130b7491ab.md) | 80 | `result-track:d6120bca60d299130b7491aba9adfed2eed42e3368c8ebe367c4c90a11e74205` |
| 9 | `theorem` | [properCoprimeDivisorInventory_empty_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorinventory-empty-of-lt-ten--c557f39026ec16721f8b0d50.md) | 92 | `result-track:c557f39026ec16721f8b0d50b314a18ee17e29cc9201fddee33bb56513f92b46` |
| 10 | `theorem` | [properCoprimeDivisorCoeff_eq_zero_of_lt_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorcoeff-eq-zero-of-lt-ten--6ed225e5287ad2aa22f7d1f4.md) | 99 | `result-track:6ed225e5287ad2aa22f7d1f4c649cdc2882e0ed6cac187056b1fd48e77a51ad4` |
| 11 | `theorem` | [properCoprimeDivisorInventory_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorinventory-ten--8c748adc28da76f1368e0e58.md) | 105 | `result-track:8c748adc28da76f1368e0e583e07dbadb6108b4766c0a926c5f061ea8228da1e` |
| 12 | `theorem` | [properCoprimeDivisorCoeff_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorcoeff-ten--82365150e09b704772e1cc3f.md) | 124 | `result-track:82365150e09b704772e1cc3fd89311c3d4622be435d85c986e4f0cb8f6d657f5` |
| 13 | `theorem` | [properCoprimeDivisorCoeff_ten_pos](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/propercoprimedivisorcoeff-ten-pos--ee41250dcecad5b798127982.md) | 130 | `result-track:ee41250dcecad5b798127982f080ce2bcd80607e7cbff3077caf711f56ab789a` |
| 14 | `theorem` | [primePower_four_mem_inventory_twenty](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaDivisorCoefficient/Variant2df3380962041919ff5d41cb1433e96335b569e83fb55d2a5c96c9a846615441.lean/declarations/primepower-four-mem-inventory-twenty--ac3280e0d37ee60e5ab792ca.md) | 135 | `result-track:ac3280e0d37ee60e5ab792ca8098f7acf3c9d99ab3539797b69b02b928d7d1b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
