# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scan.Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0aa498fc7961d29df7e325c3469dc40cb7e16f17",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0aa498fc7961d29df7e325c3469dc40cb7e16f17`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Option.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_scanl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/declarations/length-scanl--fe634fe1b0bc05b2ea8385e7.md) | 18 | `result-track:fe634fe1b0bc05b2ea8385e7a1061b606ef32e47978458bcce556fd2cf3994a9` |
| 2 | `theorem` | [scanl_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/declarations/scanl-nil--ac9855a451d739f7555610d9.md) | 25 | `result-track:ac9855a451d739f7555610d9fa94178d90ec54c41786c9bbc344b208961698b2` |
| 3 | `theorem` | [scanl_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/declarations/scanl-cons--be86e0d3a54fcae9cad890f5.md) | 29 | `result-track:be86e0d3a54fcae9cad890f5e1cf2c6680572734ec4c92f7249a352c547f0b2e` |
| 4 | `theorem` | [getElem?_scanl_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/declarations/getelem-scanl-zero--3373b671c7f1a10f67b07270.md) | 33 | `result-track:3373b671c7f1a10f67b07270466698ea18421ffd418770d855a44c2dbd7635c3` |
| 5 | `theorem` | [getElem_scanl_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/declarations/getelem-scanl-zero--7d6b61d6fce03e03e6682395.md) | 39 | `result-track:7d6b61d6fce03e03e66823956fed08bfee3785a1e09fb7efc76afce0c82a0485` |
| 6 | `theorem` | [getElem?_succ_scanl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/declarations/getelem-succ-scanl--f0221c6661e4166ceb51bfc5.md) | 44 | `result-track:f0221c6661e4166ceb51bfc57185da2966fe636a847302510d69edd9149dab5b` |
| 7 | `theorem` | [getElem_succ_scanl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/declarations/getelem-succ-scanl--47167b99cb3abbe38055c3a4.md) | 59 | `result-track:47167b99cb3abbe38055c3a4e1b95075e95dcbcab3182bbf0e2310adc27b070a` |
| 8 | `theorem` | [scanr_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/declarations/scanr-nil--c1e898bf1856c3116bc0ad87.md) | 79 | `result-track:c1e898bf1856c3116bc0ad876840ea45d0327b7e9529b3083869046137adba19` |
| 9 | `theorem` | [scanr_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Scan/Variante78ba0d55cdbeaa843de8192d2b1682e0dea4352e52f0c46aa385421ec0761bf.lean/declarations/scanr-cons--42523410d6afba9dddb52620.md) | 83 | `result-track:42523410d6afba9dddb52620521f7dc9fa5d68d4e85b566a59f6a77621f5c5f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
