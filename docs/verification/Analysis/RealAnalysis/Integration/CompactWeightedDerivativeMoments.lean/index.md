# Verification target: GRWTSK.Analysis.Integration.CompactWeightedDerivativeMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d8dee70d9ad79b5930ab83c75820a082f4b907b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integration/CompactWeightedDerivativeMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/index.md) · [Full source](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d8dee70d9ad79b5930ab83c75820a082f4b907b`.

Source path: `GRWTSK/Analysis/Integration/CompactWeightedDerivativeMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integration/CompactWeightedDerivativeMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compact_weight_integrable](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/declarations/compact-weight-integrable--c50b1287d36b54f47fee37dd.md) | 27 | `result-track:c50b1287d36b54f47fee37dd153812c9accae8ebbe5bb5dcf3e706b9493695d9` |
| 2 | `theorem` | [weighted_deriv_integral](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/declarations/weighted-deriv-integral--a287a16d2f9dd64987c4620f.md) | 32 | `result-track:a287a16d2f9dd64987c4620f75513a995c5be79fe0dca3ee43d3feb8d964960d` |
| 3 | `theorem` | [first_weighted_deriv_integral](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/declarations/first-weighted-deriv-integral--6a0307a756178508c917d5d0.md) | 53 | `result-track:6a0307a756178508c917d5d0b00213da65eb82b074bb60e516126de63d6753ee` |
| 4 | `theorem` | [weighted_second_deriv_integral](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/declarations/weighted-second-deriv-integral--0bccb21bdd2945d24da8cee7.md) | 101 | `result-track:0bccb21bdd2945d24da8cee7680c404dd0ee64ffe36ceae544457d342b20ccd2` |
| 5 | `theorem` | [first_weighted_second_deriv_integral](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/declarations/first-weighted-second-deriv-integral--98fb61d11922310a36ef7e69.md) | 112 | `result-track:98fb61d11922310a36ef7e69d07fa07313e762125a7212a28341c7e7096e66de` |
| 6 | `theorem` | [differential_moments_zero](../../../../../mathematics/Analysis/RealAnalysis/Integration/CompactWeightedDerivativeMoments.lean/declarations/differential-moments-zero--a58390bcc0db328e0b40be04.md) | 124 | `result-track:a58390bcc0db328e0b40be0473b6521296858374633ab59346e964d142718f99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
