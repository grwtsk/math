# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt03.Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f49f4bf7f87badd31fda0e461cec401c5c405f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f49f4bf7f87badd31fda0e461cec401c5c405f`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/quadratic-difference-abs-le--84529bca4762024427ffd234.md) | 26 | `result-track:84529bca4762024427ffd234b60c66a7a087535cdbe313e6a995fc4720b783ba` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/positive-approximation-lower--2809af3083f8a8dc3b4e0d2c.md) | 39 | `result-track:2809af3083f8a8dc3b4e0d2cf4dcf1096f6d59e1e80ec6d9cc4c1d4598e0c151` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/coercive-approximation-lower--a8f11cd372f1a97f715f4cea.md) | 47 | `result-track:a8f11cd372f1a97f715f4cea496af1694c574ab62744e0ad74893cf1c3a35572` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/positive-of-coercive-residual--5b6be0cf200a2b5bb11acd74.md) | 55 | `result-track:5b6be0cf200a2b5bb11acd74caf66504794d9c1dab5efdbe5077b2693629c283` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/positive-of-arbitrary-precision--888ba24f65aae5259b1e152c.md) | 63 | `result-track:888ba24f65aae5259b1e152ce4c506be80f42c0a0107e4d721865a17fa1dd876` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/gram-residual-lower--8491fbda349dfb0edff023f4.md) | 85 | `result-track:8491fbda349dfb0edff023f402836947e662b9fcc2627963ce04a093e6cece4f` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/positive-of-arbitrary-gram-precision--89c801ee4ca85b264691b565.md) | 94 | `result-track:89c801ee4ca85b264691b56557d31e06b46211c576e0a0bacb6f3de8fae55664` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/positivedistance--d4c230c8bd46d80ecfd331aa.md) | 104 | `declaration-track:d4c230c8bd46d80ecfd331aa5b2eda5afedf2db480e1d840128cb30ad262f4d8` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/negative-rayleigh-le-norm--3f6049a015e37b4ce5b58b97.md) | 107 | `result-track:3f6049a015e37b4ce5b58b97425250b75093207cc5658b3760ab696a291144c0` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/negative-rayleigh-distance-lower--1d3783e312603d4a349c1829.md) | 119 | `result-track:1d3783e312603d4a349c1829cf793ebe1dba2d24b3ae61c011152d79f605b338` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/positivedistance-eq-zero-iff--34d4b9d36ec7f80eac9d8ad9.md) | 129 | `result-track:34d4b9d36ec7f80eac9d8ad9f61ef049e96a9c713963ea8c0fddd27ce4f9edb3` |
| 12 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/matrixoperator--1392ef25e7ad08ed32e7ffba.md) | 149 | `declaration-track:1392ef25e7ad08ed32e7ffba6e5679e7e57d4ad445578cfc71b4af2ba4c4513b` |
| 13 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/matrixoperator-positive-iff--5ceab9e6fd28162c3f309723.md) | 152 | `result-track:5ceab9e6fd28162c3f3097236d0f66181914eb5f8c04465bac0cf07e1e1f991a` |
| 14 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt03/Variantd2f94be88d77990cbd47b529824fc850a33ec3092f60342b043f163fda33d2ca.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--f9478d6444ebeb425a8a5a1d.md) | 157 | `result-track:f9478d6444ebeb425a8a5a1d60f057caac3c269668d1ccf3a61c66388dd1ad62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
