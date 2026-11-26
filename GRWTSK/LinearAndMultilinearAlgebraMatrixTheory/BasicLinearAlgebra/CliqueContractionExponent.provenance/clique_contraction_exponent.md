# `clique_contraction_exponent`

Local attribution: grwtsk contributors. Local base `b7225b69f2710ee8beb4c1a7b9adbaa6f9b0075c`.

`GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.CliqueContractionExponent.clique_contraction_exponent` composes the exact [OpenAI rectangular exponent](https://github.com/openai/math/blob/3344da59991ed94f9ba711217b29c1d760badfa6/lean/OAI/LinearAlgebra/SpectralBooks/ExactExponent.lean) at `3344da59991ed94f9ba711217b29c1d760badfa6` (Apache-2.0) with an algebraic identity on three sorted nonnegative leaf counts. The relation between cut edges and the three dense weights comes from the clique models in [Majdoddin, arXiv:2610.41622v1, §2](https://arxiv.org/abs/2610.41622v1).

The smaller weights are `a*c` and `b*c`. For `c>0`, remove a positive common factor `a*b*c` from the positive part. Divide its square by the exact denominator and complete the square separately on the two sign regions. At `c=0`, total division in the rectangular formula drops the correction and the right side reduces to `a*b`. The same formula therefore covers a root merge with empty complement. This scale is a dense arithmetic shape exponent. A theorem about an algorithm on structured intermediates needs a shape-to-execution comparison. See [SignedNetworkContractions.md](../../../ComputerScience/TheoryOfComputing/AnalysisOfAlgorithmsAndProblemComplexity/SignedNetworkContractions.md) for the full return and limitations.

Source candidate. Local elaboration, kernel replay, axiom audit and independent formal statement comparison are `NOT_RUN`. [Tracking issue #1856](https://github.com/grwtsk/math/issues/1856)
