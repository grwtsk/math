# Verification target: GRWTSK.Algebra.CommutativeAlgebra.AnnihilatingPolynomial.Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c7949750509208b4f90c7a1af150df47b3451d9",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c7949750509208b4f90c7a1af150df47b3451d9`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.AEval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [annIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/annideal--23e0c356da5c0bab61e70a0a.md) | 51 | `declaration-track:23e0c356da5c0bab61e70a0a80273f7bfbe0c9ecd4baf6fe34840b857e1d2290` |
| 2 | `theorem` | [mem_annIdeal_iff_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/mem-annideal-iff-aeval-eq-zero--7e137509f902f6f13e7d13d5.md) | 56 | `result-track:7e137509f902f6f13e7d13d5a1386f80d43fcc398769a80cda34381e08a43904` |
| 3 | `def` | [annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/annidealgenerator--0a3ba5753cc39ea927349969.md) | 74 | `declaration-track:0a3ba5753cc39ea9273499696aeaac1c2a382d4acc618e2befbb7c030f1bc3f5` |
| 4 | `theorem` | [annIdealGenerator_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/annidealgenerator-eq-zero-iff--0e0552c0144d545601f9e05f.md) | 83 | `result-track:0e0552c0144d545601f9e05fce5d116cdc45663d377f84fa10bf5d0490b7e5f4` |
| 5 | `theorem` | [span_singleton_annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/span-singleton-annidealgenerator--2715c618ec56a95abf118616.md) | 91 | `result-track:2715c618ec56a95abf11861673329bc804423930d70232c33488dabc542c0598` |
| 6 | `theorem` | [annIdealGenerator_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/annidealgenerator-mem--43a17bf12593ccafd5ce520a.md) | 103 | `result-track:43a17bf12593ccafd5ce520a3826316d40503aa8b537c74cb53c54a1fe9cd0f8` |
| 7 | `theorem` | [mem_iff_eq_smul_annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/mem-iff-eq-smul-annidealgenerator--a45ded27b057b219978c76e2.md) | 106 | `result-track:a45ded27b057b219978c76e2475ed5c6411164a0e7295db0c2d1cd2573251f72` |
| 8 | `theorem` | [monic_annIdealGenerator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/monic-annidealgenerator--2eb3b19d7334962534bb42a3.md) | 111 | `result-track:2eb3b19d7334962534bb42a3a35fb3ec43f536cc020cd386e8b0ee1f062bf383` |
| 9 | `theorem` | [annIdealGenerator_aeval_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/annidealgenerator-aeval-eq-zero--001e7ce2c25625983b4c45c3.md) | 122 | `result-track:001e7ce2c25625983b4c45c35d0ceebce57de14c8ab9b774c7d530c0b1e5f7c9` |
| 10 | `theorem` | [mem_iff_annIdealGenerator_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/mem-iff-annidealgenerator-dvd--4d5f7b7cf03d3c1c8c4971a3.md) | 127 | `result-track:4d5f7b7cf03d3c1c8c4971a3be08b5f88c36c490df1ce13180b01f47082195c1` |
| 11 | `theorem` | [degree_annIdealGenerator_le_of_mem](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/degree-annidealgenerator-le-of-mem--991123f1fae640b01ac841e7.md) | 133 | `result-track:991123f1fae640b01ac841e70cb541719b5751eba6ee634968d6992c13bdfa8d` |
| 12 | `theorem` | [annIdealGenerator_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/annidealgenerator-eq-minpoly--d2d6fee2196a50fdb8bff597.md) | 140 | `result-track:d2d6fee2196a50fdb8bff597b127d68de2e334c892d1f9286d3be4b79af3fcb5` |
| 13 | `theorem` | [monic_generator_eq_minpoly](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/monic-generator-eq-minpoly--8efc522eb59e0ecd8f5286c8.md) | 153 | `result-track:8efc522eb59e0ecd8f5286c805273e6c69e09e741085457c32f952072cb06e5f` |
| 14 | `theorem` | [span_minpoly_eq_annihilator](../../../../../mathematics/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Variant5fd7d131761fb348e08e61881ba0ca75ed47be28641262c4cfde48661b479ad5.lean/declarations/span-minpoly-eq-annihilator--114949ff362cddc08c11d395.md) | 162 | `result-track:114949ff362cddc08c11d3952b6f416874dea8553895d632f42ca233b1d22c83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
