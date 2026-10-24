# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9266b2056849443f63ed4481849af00e5f74bd01",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9266b2056849443f63ed4481849af00e5f74bd01`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRatioTwo` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaIntegralTailLogSlope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [differentiable_thetaTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean/declarations/differentiable-thetatail--4c62f367f5bc39948ebffbeb.md) | 29 | `result-track:4c62f367f5bc39948ebffbeb9936ea4f15153f5b81928d511421cff2a38247cc` |
| 2 | `theorem` | [deriv_thetaTail_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean/declarations/deriv-thetatail-integrableon--52fb41526f88b47fe41f036c.md) | 35 | `result-track:52fb41526f88b47fe41f036c91846de49ed2cc58524ef422f24f4db91de47d0d` |
| 3 | `theorem` | [thetaTail_succ_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean/declarations/thetatail-succ-eq-integral--4c7714d973ab4f4b1dc29c67.md) | 44 | `result-track:4c7714d973ab4f4b1dc29c671fdd5c2f0bfe1ab8e63cff22338b8f852b72bf55` |
| 4 | `theorem` | [thetaTail_succ_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean/declarations/thetatail-succ-integral-add--d6dd499685072990b2d265e3.md) | 55 | `result-track:d6dd499685072990b2d265e35d8ae3643408cf0b6956450ed5a0b960b23115f8` |
| 5 | `theorem` | [thetaTail_logSlope_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean/declarations/thetatail-logslope-antitone--b2da3f4f26b29b17c57222ab.md) | 61 | `result-track:b2da3f4f26b29b17c57222ab7c2afa98463d87b0ad7f15bffe6eacdbecbf3578` |
| 6 | `theorem` | [thetaTail_succ_div_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant743328261013a28c38de6a953679b14c8eccb7376b90fb4997b25da8033369a5.lean/declarations/thetatail-succ-div-antitone--82303c6fd25b3c5173347f20.md) | 82 | `result-track:82303c6fd25b3c5173347f2048bf3cd0747af94cea5936481e8799efc03ef9c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
