# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt05.Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "674c912a7c0160b83d9743d1959e5b307993f470",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `674c912a7c0160b83d9743d1959e5b307993f470`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/quadratic-difference-abs-le--62eca6792c3a1f9beec25902.md) | 18 | `result-track:62eca6792c3a1f9beec25902d4d7a9c33959ac8cf6f5826e4c67c39d1e20233f` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/positive-approximation-lower--63597bffbfe2ffc4135650fd.md) | 31 | `result-track:63597bffbfe2ffc4135650fd0c14e8f0e086cf7107ecb9f9d702524ab404601d` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/coercive-approximation-lower--1a0eadba05ae116076380c2b.md) | 39 | `result-track:1a0eadba05ae116076380c2bbf9750019e0235d30170a649980ce73b2c94d6f1` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/positive-of-coercive-residual--0d2a3c1c99d34ed5aa91ad56.md) | 47 | `result-track:0d2a3c1c99d34ed5aa91ad567074f2edd2f3f9a531eb60509e80325fccae73b5` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/positive-of-arbitrary-precision--18ba5159bb11343cadf0f779.md) | 55 | `result-track:18ba5159bb11343cadf0f779cf2e655b30b2a2b0a65de5eab7545d75de72da66` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/gram-residual-lower--11cdbce6c5a85011962b11c3.md) | 77 | `result-track:11cdbce6c5a85011962b11c3f32639c7d75199884a3bda9931cb5f8c39f75080` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/positive-of-arbitrary-gram-precision--dd9bc46d65aa9ce68cf974c4.md) | 86 | `result-track:dd9bc46d65aa9ce68cf974c460fe32fde08b607c9810ffe17d5517ebec55fefa` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/positivedistance--5d90f77a2aaf5a6fa0be35c7.md) | 96 | `declaration-track:5d90f77a2aaf5a6fa0be35c7baee0652b78e8256d0d45e24967d5bf4833ffcef` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/negative-rayleigh-le-norm--2f009d546326df7ae34b1cb1.md) | 99 | `result-track:2f009d546326df7ae34b1cb1331a46f47bea3072bef7ac849e359936b6ea5a25` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/negative-rayleigh-distance-lower--78c43ca5813b1422631745f8.md) | 111 | `result-track:78c43ca5813b1422631745f8d44b61c475c9217f75c7e0f38e7fe46187311adf` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/positivedistance-eq-zero-iff--5bcd100a0be447ebaf0328a4.md) | 121 | `result-track:5bcd100a0be447ebaf0328a49bcc3b38b09d754987b0179e0943dfed25dc3ba9` |
| 12 | `theorem` | [negative_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/negative-eigenvalue-distance-lower--1aa8b4071345f6ec74053e12.md) | 137 | `result-track:1aa8b4071345f6ec74053e12f0c0b670c85031c001531b49d79d8fdd815c5be7` |
| 13 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/matrixoperator--aea958aeae8f521a703b6a20.md) | 150 | `declaration-track:aea958aeae8f521a703b6a20f96b162c2075e33ba825540ca0411faac60be7d8` |
| 14 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/matrixoperator-positive-iff--1073c5e271332d072711d406.md) | 153 | `result-track:1073c5e271332d072711d4069fcc9919731a69fdc99043ae52d7f4d9564cb514` |
| 15 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--823a946dcb7341abf121695f.md) | 158 | `result-track:823a946dcb7341abf121695ff4d9a84d2a2d8958a6dfa4725567c1bd3c9ab708` |
| 16 | `theorem` | [matrix_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Variant0559fbc6db93b4f4d062a3cc4c140bd4b2192782d7f1cdabdeeb37af49dc783b.lean/declarations/matrix-eigenvalue-distance-lower--3ec9227f5b1c0a05567cc070.md) | 170 | `result-track:3ec9227f5b1c0a05567cc0709a902590391c071571ae1e892e6065a5da3dcb67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
