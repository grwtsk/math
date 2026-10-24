# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeDensityLaplace.Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3403f3476f66d59f410f1690197ec72d46c68d75",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3403f3476f66d59f410f1690197ec72d46c68d75`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean/declarations/laplace-integrable--06cb14970041990ed29e1b1c.md) | 14 | `result-track:06cb14970041990ed29e1b1c250e3c266603035161d1c2a1766211a38f1a3caf` |
| 2 | `theorem` | [laplace_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean/declarations/laplace-analytic--c4e5db34825de38fdc486178.md) | 26 | `result-track:c4e5db34825de38fdc486178cbcf3506bcdf0a0f546a287ac580b7d531e9e88e` |
| 3 | `theorem` | [negative_tilt_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean/declarations/negative-tilt-eq--1344a584eb2dd035bb9fa36d.md) | 66 | `result-track:1344a584eb2dd035bb9fa36df3962f82c5996034754485ef51d86df4b6d8a57f` |
| 4 | `theorem` | [negative_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean/declarations/negative-laplace-integrable--e61e3ea2e8ab8b2e65d25681.md) | 76 | `result-track:e61e3ea2e8ab8b2e65d25681315c0aac516ceff12dbdb60ebc7a9db171484d12` |
| 5 | `theorem` | [negative_laplace_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Variant2a196dfccae5a253b8201e8d0556afcbf6bdd8813bbe85ef66e93a3c768416a1.lean/declarations/negative-laplace-analytic--4c7dbd351a1588d3e59e3181.md) | 85 | `result-track:4c7dbd351a1588d3e59e3181f5e3c9850f4d0320061fae5ebe26c307393e746b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
