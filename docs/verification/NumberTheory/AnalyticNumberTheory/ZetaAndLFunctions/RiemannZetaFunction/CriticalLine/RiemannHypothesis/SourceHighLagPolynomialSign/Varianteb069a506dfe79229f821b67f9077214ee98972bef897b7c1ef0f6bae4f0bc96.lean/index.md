# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceHighLagPolynomialSign.Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d99a22ca5a4bf2b55bff40f90b16966e1d5862e4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d99a22ca5a4bf2b55bff40f90b16966e1d5862e4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgeNumerator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/declarations/edgenumerator--d67142e6eb12eef6174b4afb.md) | 34 | `declaration-track:d67142e6eb12eef6174b4afb15849b9bb8950288840c004c49b9b04d0cc003c8` |
| 2 | `def` | [algebraicEdgeCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/declarations/algebraicedgecoefficient--a6d27487f2c671ed328d86ee.md) | 42 | `declaration-track:a6d27487f2c671ed328d86eecbdd6535dc3b9638f7ff1e23420d89dbcd9caf43` |
| 3 | `theorem` | [edgeNumerator_at_ten_add](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/declarations/edgenumerator-at-ten-add--b0a408c199c9e99d708f2419.md) | 45 | `result-track:b0a408c199c9e99d708f24190546aee653adab3568901c53cd5d8ae2586a2f7c` |
| 4 | `theorem` | [edgeNumerator_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/declarations/edgenumerator-neg--079983f79fe48aa46898e785.md) | 59 | `result-track:079983f79fe48aa46898e78519ad3ae387416408b64c609e81421bef828cee38` |
| 5 | `theorem` | [algebraicEdgeCoefficient_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/declarations/algebraicedgecoefficient-neg--9dcb805369ebfcd4f5d80735.md) | 77 | `result-track:9dcb805369ebfcd4f5d80735f08a3d42f0e27ebc52e08d8e5174a0d147f07667` |
| 6 | `theorem` | [algebraicEdgeCoefficient_ten](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/declarations/algebraicedgecoefficient-ten--2cafa81c9783bfc02789f434.md) | 84 | `result-track:2cafa81c9783bfc02789f434aab200c731542d828bbb35b2342751d57586a3ef` |
| 7 | `theorem` | [algebraicEdgeCoefficient_normalized_neg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/declarations/algebraicedgecoefficient-normalized-neg--dea6d0f913a158edb7fb2e3b.md) | 90 | `result-track:dea6d0f913a158edb7fb2e3b3ec58d7765fbfd15401647531df57d887481d14e` |
| 8 | `theorem` | [not_eventually_algebraicEdgeCoefficient_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceHighLagPolynomialSign/Varianteb069a506dfe79229f821b67f9077214ee98972bef897b7c1ef0f6bae4f0bc96.lean/declarations/not-eventually-algebraicedgecoefficient-nonneg--e31949a20cfe508ed72b801e.md) | 96 | `result-track:e31949a20cfe508ed72b801e6a1d32d4d2373e5ba547fca7cef28a42f2b2b92e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
