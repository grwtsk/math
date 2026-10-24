# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Polynomial.Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "394b98168f0a0e8bcac0853d46648337d5828fff",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `394b98168f0a0e8bcac0853d46648337d5828fff`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Inductions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Splits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/continuous-eval--ce637b942c16bb76bf069ec2.md) | 57 | `result-track:ce637b942c16bb76bf069ec2f975f09e6a6d5d5bc6ded076b0fa1c7ac3029423` |
| 2 | `theorem` | [continuous](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/continuous--55832f949713a770f65ef5ac.md) | 64 | `result-track:55832f949713a770f65ef5ac79a1691344915969e7fc6b676e2a5669428cc20c` |
| 3 | `theorem` | [continuousAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/continuousat--9303f49f39cf467f2fbba098.md) | 68 | `result-track:9303f49f39cf467f2fbba09892a77ebd6c1a6cec143e9ae25c12b001b8b231e1` |
| 4 | `theorem` | [continuousWithinAt](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/continuouswithinat--de2bf49d920bdb7ca3e2a6ee.md) | 72 | `result-track:de2bf49d920bdb7ca3e2a6ee09a8f110df168f4af34ce2127cd8f51b899f9160` |
| 5 | `theorem` | [continuousOn](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/continuouson--38de31d3f374a93873c6b640.md) | 76 | `result-track:38de31d3f374a93873c6b6406a66874f811b743cec74b95fe540bbee264c7c56` |
| 6 | `theorem` | [continuous_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/continuous-aeval--e6144786d0fdb3d85d5ed97e.md) | 88 | `result-track:e6144786d0fdb3d85d5ed97e06cd9d512d80ca0e8c4fa0f0768fe89d39705ee4` |
| 7 | `theorem` | [continuousAt_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/continuousat-aeval--60a0df06a46d821b5de83805.md) | 92 | `result-track:60a0df06a46d821b5de83805a9ba59789039c4f518338fe27ca7e0873be7aa7d` |
| 8 | `theorem` | [continuousWithinAt_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/continuouswithinat-aeval--4faea9a15d4c13b29739be8f.md) | 96 | `result-track:4faea9a15d4c13b29739be8f053184949043f4f47d81d408d742c6864157ef18` |
| 9 | `theorem` | [continuousOn_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/continuouson-aeval--5c69ed0beb3cbe947cd80dee.md) | 101 | `result-track:5c69ed0beb3cbe947cd80deeeefdc24d02ea87052f112664eca0c9930848444a` |
| 10 | `theorem` | [tendsto_abv_eval₂_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/tendsto-abv-eval-attop--7927c61d229c5abb5890c7dc.md) | 107 | `result-track:7927c61d229c5abb5890c7dc60f6a12dfca4b162ba94d9edd89fb610d18fef18` |
| 11 | `theorem` | [tendsto_abv_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/tendsto-abv-attop--98e9d7ef71e78d8745457c48.md) | 125 | `result-track:98e9d7ef71e78d8745457c48d24f71087741a5ca139b216cad5f7a5ce0c57a2d` |
| 12 | `theorem` | [tendsto_abv_aeval_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/tendsto-abv-aeval-attop--55cfb274499851d255278c0d.md) | 132 | `result-track:55cfb274499851d255278c0d09a7ab1e935f2a49286ae6b97817ed5bfefa68e7` |
| 13 | `theorem` | [tendsto_norm_atTop](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/tendsto-norm-attop--3f8e47d3b202ffb690c94abb.md) | 141 | `result-track:3f8e47d3b202ffb690c94abb76be27b010c3ee8586e4af8d538fc47f1c67c11f` |
| 14 | `theorem` | [exists_forall_norm_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/exists-forall-norm-le--5cc9044fc3b65519001f2195.md) | 146 | `result-track:5cc9044fc3b65519001f219557dd3a7c35a42ac3bdb5bd46d589718f44da59d2` |
| 15 | `theorem` | [eq_one_of_roots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/eq-one-of-roots-le--413361a97de5bc8bf7ad761c.md) | 161 | `result-track:413361a97de5bc8bf7ad761c54c2a53cba6b197ff7d1803f40119f40b32ec3dd` |
| 16 | `theorem` | [coeff_le_of_roots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/coeff-le-of-roots-le--9ed51a894749c15228249ac9.md) | 170 | `result-track:9ed51a894749c15228249ac9d7975df56a15e53d8d315df1b1ff360da2f7c870` |
| 17 | `theorem` | [coeff_bdd_of_roots_le](../../../../../mathematics/Algebra/CommutativeAlgebra/Polynomial/Variant52d0d825cae2cac9c5d503aae4bdb269d1704b8b503cf40887521c0bc735b6b3.lean/declarations/coeff-bdd-of-roots-le--58a9a69564d9efa28801385e.md) | 200 | `result-track:58a9a69564d9efa28801385e3dcf4baee9d4d3f2b540025a0b59219d6c07bfac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
