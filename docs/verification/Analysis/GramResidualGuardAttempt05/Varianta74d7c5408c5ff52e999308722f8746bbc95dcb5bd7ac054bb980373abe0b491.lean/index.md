# Verification target: GRWTSK.Analysis.GramResidualGuardAttempt05.Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f21b4b1e8522af767272ee9515d5195fb6a388d",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/index.md) · [Full source](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f21b4b1e8522af767272ee9515d5195fb6a388d`.

Source path: `GRWTSK/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Rayleigh` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Spectrum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [quadratic_difference_abs_le](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/quadratic-difference-abs-le--6248eeb1c596e2bde664ebee.md) | 26 | `result-track:6248eeb1c596e2bde664ebee97babc1a8908cd0cf1a47eb50638a5dab824e0dc` |
| 2 | `theorem` | [positive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/positive-approximation-lower--745a7768f70c83bd1c11666e.md) | 39 | `result-track:745a7768f70c83bd1c11666ee90b3fada20db0962a9304bdc05adb3fee3e1439` |
| 3 | `theorem` | [coercive_approximation_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/coercive-approximation-lower--fdebdee8e8efb860442af527.md) | 47 | `result-track:fdebdee8e8efb860442af527a448af310c4cfb9b2e5e3a3bc30acd0a8041d3fe` |
| 4 | `theorem` | [positive_of_coercive_residual](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/positive-of-coercive-residual--82c312beb4bac4366d33c853.md) | 55 | `result-track:82c312beb4bac4366d33c8537fcf4092fdb78cab2df86bd026446faf1f4fac3c` |
| 5 | `theorem` | [positive_of_arbitrary_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/positive-of-arbitrary-precision--fd68356040bc6a414b35bb6a.md) | 63 | `result-track:fd68356040bc6a414b35bb6a5c32063229348cab23f953d63bbdd6ff68f2f5f6` |
| 6 | `theorem` | [gram_residual_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/gram-residual-lower--b50254575243537fcbff08ad.md) | 85 | `result-track:b50254575243537fcbff08ad51c44cd0d6f7b9ffc2e83a7c14b8e8e05cf55e3c` |
| 7 | `theorem` | [positive_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/positive-of-arbitrary-gram-precision--c971f08e07f2d46c7c32da2e.md) | 94 | `result-track:c971f08e07f2d46c7c32da2e4a839a588a4e6045cea6ddc602862884f8929adc` |
| 8 | `def` | [positiveDistance](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/positivedistance--f8397e9cb827db72b2a980a5.md) | 104 | `declaration-track:f8397e9cb827db72b2a980a5209292221625c8d298b2caac040f60587355141a` |
| 9 | `theorem` | [negative_rayleigh_le_norm](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/negative-rayleigh-le-norm--a798ebbf256584b4da082a7d.md) | 107 | `result-track:a798ebbf256584b4da082a7d664b60d7a1f405f816c298f2c26b125e295f67c9` |
| 10 | `theorem` | [negative_rayleigh_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/negative-rayleigh-distance-lower--ac811cdbee683eb343f19896.md) | 119 | `result-track:ac811cdbee683eb343f198966598cad4ceb06d5a7a48c7a4d8e0d40e72192ec9` |
| 11 | `theorem` | [positiveDistance_eq_zero_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/positivedistance-eq-zero-iff--b7ec4003eef953fe82253cd5.md) | 129 | `result-track:b7ec4003eef953fe82253cd51b4b0d911de812e2c83919ba4979f2392681ef8f` |
| 12 | `theorem` | [negative_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/negative-eigenvalue-distance-lower--318a0fe69c1459bf53451dda.md) | 145 | `result-track:318a0fe69c1459bf53451ddafa938d6e91423929f7500238b26e64097b4311a9` |
| 13 | `def` | [matrixOperator](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/matrixoperator--26046f96a5764eda1dab5e80.md) | 158 | `declaration-track:26046f96a5764eda1dab5e80f414d3685d026949efb3b3bccf3e8c858debcfd3` |
| 14 | `theorem` | [matrixOperator_positive_iff](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/matrixoperator-positive-iff--1110f9aaf06ef3711c8f9b0b.md) | 161 | `result-track:1110f9aaf06ef3711c8f9b0b49e00414ef584434567d90f7903f7495b8b2b88e` |
| 15 | `theorem` | [matrix_posSemidef_of_arbitrary_gram_precision](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/matrix-possemidef-of-arbitrary-gram-precision--e95f263619a7e1d341cb7453.md) | 166 | `result-track:e95f263619a7e1d341cb7453bd193feb5af3cadc02a59203447246a7a843f121` |
| 16 | `theorem` | [matrix_eigenvalue_distance_lower](../../../../mathematics/Analysis/GramResidualGuardAttempt05/Varianta74d7c5408c5ff52e999308722f8746bbc95dcb5bd7ac054bb980373abe0b491.lean/declarations/matrix-eigenvalue-distance-lower--0f4cdb66f8a962eac9d18c34.md) | 178 | `result-track:0f4cdb66f8a962eac9d18c346160bb44440cfcfa405c350a676b8ff5fd11b908` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
