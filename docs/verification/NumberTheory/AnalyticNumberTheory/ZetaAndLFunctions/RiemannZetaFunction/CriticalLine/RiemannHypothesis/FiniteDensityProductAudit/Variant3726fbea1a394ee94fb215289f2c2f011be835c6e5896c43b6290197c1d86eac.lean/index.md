# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteDensityProductAudit.Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14a95ea8125f8286b7638fee1534b2e7570d178d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14a95ea8125f8286b7638fee1534b2e7570d178d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeRatioProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeDensityFactor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean/declarations/primedensityfactor--152a750aef92ea00443b1d9b.md) | 21 | `declaration-track:152a750aef92ea00443b1d9bf07c890e95d3db7e47802f84a0b1b4c30cacc77a` |
| 2 | `theorem` | [primeDensityFactor_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean/declarations/primedensityfactor-eq--1c2093d1f39550c8ceac62fe.md) | 23 | `result-track:1c2093d1f39550c8ceac62feb6de8ef41c399f92588875646bef4eea9d3f34da` |
| 3 | `theorem` | [primeDensityFactor_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean/declarations/primedensityfactor-nonneg--d45dfe75ec8a3deddf9fc43c.md) | 31 | `result-track:d45dfe75ec8a3deddf9fc43c35ccd203768464c40b95679d455f682af96ada26` |
| 4 | `theorem` | [primeDensityFactor_le_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean/declarations/primedensityfactor-le-exp--c736627676c8786cc3eabd76.md) | 36 | `result-track:c736627676c8786cc3eabd76e0b745d2458816282cc677c2fa60645d7911514f` |
| 5 | `theorem` | [finite_prime_density_product_le_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean/declarations/finite-prime-density-product-le-exp--08c6d8125299b9cd7f14f7ab.md) | 50 | `result-track:08c6d8125299b9cd7f14f7ab27a3e5ec07ba1c24702a6c885477a52e919a2aa5` |
| 6 | `theorem` | [ordered_density_assignment_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant3726fbea1a394ee94fb215289f2c2f011be835c6e5896c43b6290197c1d86eac.lean/declarations/ordered-density-assignment-product--c59d4b7c811406c8a4d4bce7.md) | 63 | `result-track:c59d4b7c811406c8a4d4bce7093253f663cb833908dc150f886ef70f6501c202` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
