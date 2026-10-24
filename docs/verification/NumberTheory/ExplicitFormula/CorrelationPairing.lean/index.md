# Verification target: GRWTSK.NumberTheory.ExplicitFormula.CorrelationPairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4ee147604eb5a1618d1c1268244f3db6a487bcd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ExplicitFormula/CorrelationPairing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ExplicitFormula/CorrelationPairing.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ExplicitFormula/CorrelationPairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4ee147604eb5a1618d1c1268244f3db6a487bcd`.

Source path: `GRWTSK/NumberTheory/ExplicitFormula/CorrelationPairing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ExplicitFormula/CorrelationPairing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.PolynomialBumpRegularity`](../../../../mathematics/Analysis/Convolution/PolynomialBumpRegularity.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.ExponentialMoments`](../../../../mathematics/Analysis/Convolution/ExponentialMoments.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.FiniteIntegrationByParts`](../../../../mathematics/NumberTheory/Chebyshev/FiniteIntegrationByParts.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_arithmetic_representation](../../../../mathematics/NumberTheory/ExplicitFormula/CorrelationPairing.lean/declarations/source-arithmetic-representation--202a7bbf74a4df81641f2a0e.md) | 23 | `result-track:202a7bbf74a4df81641f2a0eee2a2a82f09b36ce994d856e145c09105ddf3f24` |
| 2 | `def` | [UniformLowerBound](../../../../mathematics/NumberTheory/ExplicitFormula/CorrelationPairing.lean/declarations/uniformlowerbound--a8a7b43b6aa49dbe61bdba8d.md) | 32 | `declaration-track:a8a7b43b6aa49dbe61bdba8d03ac2a3938329ecbb63fbac4ea8dffd1502b07a5` |
| 3 | `def` | [BridgeObligation](../../../../mathematics/NumberTheory/ExplicitFormula/CorrelationPairing.lean/declarations/bridgeobligation--cc533c2626e504482f9cdaef.md) | 36 | `declaration-track:cc533c2626e504482f9cdaef12cdac3a9528d0088d06249f7718cec5ba0928ab` |
| 4 | `def` | [EstimateObligation](../../../../mathematics/NumberTheory/ExplicitFormula/CorrelationPairing.lean/declarations/estimateobligation--0a6c92f0b3bc71085db58d0d.md) | 39 | `declaration-track:0a6c92f0b3bc71085db58d0d103615f7ec007ad2a3ee9fceff5c120c401955e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
