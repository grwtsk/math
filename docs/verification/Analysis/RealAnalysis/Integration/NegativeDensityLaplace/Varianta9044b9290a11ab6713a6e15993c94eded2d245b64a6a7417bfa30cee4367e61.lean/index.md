# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NegativeDensityLaplace.Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f76ebc2a7f0fb2d3f50c0fbf323b500aa4452b37",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f76ebc2a7f0fb2d3f50c0fbf323b500aa4452b37`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.NegativePartIntegrability` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean/declarations/laplace-integrable--238a81cb02032dc890d696d6.md) | 22 | `result-track:238a81cb02032dc890d696d6e03e6cd8df0322b4701577e555f19ecae23c6d35` |
| 2 | `theorem` | [laplace_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean/declarations/laplace-analytic--8041f3d82796846c33172611.md) | 34 | `result-track:8041f3d82796846c33172611254bc1611d9b9c686ee9e1e72e054a56ef8e8e96` |
| 3 | `theorem` | [negative_tilt_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean/declarations/negative-tilt-eq--d33228989d0a48bb09051c6d.md) | 74 | `result-track:d33228989d0a48bb09051c6db226842b5f5d4af56c88f8f5129d7ada31f5ef99` |
| 4 | `theorem` | [negative_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean/declarations/negative-laplace-integrable--139f2a874d42f6406566b372.md) | 84 | `result-track:139f2a874d42f6406566b372ec8be520b3d25081f70189b245f86d7f10f8d370` |
| 5 | `theorem` | [negative_laplace_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NegativeDensityLaplace/Varianta9044b9290a11ab6713a6e15993c94eded2d245b64a6a7417bfa30cee4367e61.lean/declarations/negative-laplace-analytic--aa31ab7706acd49d146d0c8f.md) | 93 | `result-track:aa31ab7706acd49d146d0c8fa30714f34164948fbe92c974ef910308d4287d5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
