# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Expand.Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2f5b6b2441d4fdb70bbf03cbf470027ca561262",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2f5b6b2441d4fdb70bbf03cbf470027ca561262`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Cyclotomic.Roots` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cyclotomic_expand_eq_cyclotomic_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/declarations/cyclotomic-expand-eq-cyclotomic-mul--04874c9563f9b4f0b89dde41.md) | 35 | `result-track:04874c9563f9b4f0b89dde413db915c0ee4aee4b2ec1e327e9bb099418d318d2` |
| 2 | `theorem` | [cyclotomic_expand_eq_cyclotomic](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/declarations/cyclotomic-expand-eq-cyclotomic--749befb8b556891fd522bbfe.md) | 77 | `result-track:749befb8b556891fd522bbfee1ddb8a96db1dc787b21e417cbf0fa949ce6ccda` |
| 3 | `theorem` | [cyclotomic_irreducible_pow_of_irreducible_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/declarations/cyclotomic-irreducible-pow-of-irreducible-pow--143ce628c449c94db3a5c4ee.md) | 99 | `result-track:143ce628c449c94db3a5c4ee60ef8aa948ac7011315633656b87d1ef41372737` |
| 4 | `theorem` | [cyclotomic_irreducible_of_irreducible_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/declarations/cyclotomic-irreducible-of-irreducible-pow--14943743a20c8703f7ad02e8.md) | 113 | `result-track:14943743a20c8703f7ad02e8b3822302af311bbe1e9f9a594727a17816e58343` |
| 5 | `theorem` | [cyclotomic_mul_prime_eq_pow_of_not_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/declarations/cyclotomic-mul-prime-eq-pow-of-not-dvd--ab9011be8c32c8fb59b04a73.md) | 123 | `result-track:ab9011be8c32c8fb59b04a73ed90b9e34aada5c1fbb3ee2729785d7a775549ff` |
| 6 | `theorem` | [cyclotomic_mul_prime_dvd_eq_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/declarations/cyclotomic-mul-prime-dvd-eq-pow--8ff319a1ba6bf5579234c948.md) | 138 | `result-track:8ff319a1ba6bf5579234c948880df1d21fe519e5a698bdfe3cfa2a174ab81354` |
| 7 | `theorem` | [cyclotomic_mul_prime_pow_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/declarations/cyclotomic-mul-prime-pow-eq--7ce7ff370e3d6217c14526af.md) | 150 | `result-track:7ce7ff370e3d6217c14526af7bde039503a444406c27775badb4e8e1287b9bad` |
| 8 | `theorem` | [isRoot_cyclotomic_prime_pow_mul_iff_of_charP](../../../../../mathematics/Algebra/CommutativeAlgebra/Expand/Variant867d6146c74492b9870bf970a08ec52742a6ce540fe44dd54ce2cb81b61e9fbf.lean/declarations/isroot-cyclotomic-prime-pow-mul-iff-of-charp--4a20948f5a98edf287c258b4.md) | 165 | `result-track:4a20948f5a98edf287c258b4b85e9daf63094dc8d1bd7e48ba1d625f7cd0c3bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
