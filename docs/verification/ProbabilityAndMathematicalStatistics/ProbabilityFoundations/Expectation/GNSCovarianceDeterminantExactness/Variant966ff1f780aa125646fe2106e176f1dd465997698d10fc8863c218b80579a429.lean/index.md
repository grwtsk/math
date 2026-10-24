# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.GNSCovarianceDeterminantExactness.Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a109a236cba2f528410dcf0fab74a6b30e0db558",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a109a236cba2f528410dcf0fab74a6b30e0db558`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.GNSDeterminantExactnessBoundary` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GNSCovarianceDeterminantExactnessBoundary](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean/declarations/gnscovariancedeterminantexactnessboundary--69b550a3148874be17146a84.md) | 17 | `declaration-track:69b550a3148874be17146a8435adbdf73887e1852dbe0e7f0bcbd044fb35eb00` |
| 2 | `abbrev` | [defaultGNSCovarianceDeterminantExactnessBoundary](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean/declarations/defaultgnscovariancedeterminantexactnessboundary--c03c68a50882c121480a16cb.md) | 20 | `declaration-track:c03c68a50882c121480a16cb09274ebe4c2d42ba5098ce45972e9f6bdcd5d7f2` |
| 3 | `abbrev` | [completedConditionalDeterminantExactnessBoundary](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean/declarations/completedconditionaldeterminantexactnessboundary--70050e3d5dbbbcf9eb90e1a2.md) | 23 | `declaration-track:70050e3d5dbbbcf9eb90e1a20f35fdf33a115ff9bfdd5c9948219428d736e0aa` |
| 4 | `theorem` | [completed_boundary_admits_determinant_exactness_conditionally](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean/declarations/completed-boundary-admits-determinant-exactness-conditionally--a50637bc5d08499199f61fb8.md) | 28 | `result-track:a50637bc5d08499199f61fb84b54412729649e62eb9e307ed5b92af560bf2d3f` |
| 5 | `theorem` | [gns_covariance_alone_does_not_give_determinant_exactness](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/GNSCovarianceDeterminantExactness/Variant966ff1f780aa125646fe2106e176f1dd465997698d10fc8863c218b80579a429.lean/declarations/gns-covariance-alone-does-not-give-determinant-exactness--11c4107aee7c838212eeb161.md) | 36 | `result-track:11c4107aee7c838212eeb16137b0b58d2b749ae3ff2bcf857aaf97c90cddbf7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
