# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteDensityProductAudit.Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97612452108d954148753d6de71ea73e66200f26",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97612452108d954148753d6de71ea73e66200f26`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeRatioProduct` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeDensityFactor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/declarations/primedensityfactor--a5893fcc8d9e6ee82afd4bf8.md) | 13 | `declaration-track:a5893fcc8d9e6ee82afd4bf87926a2e522f9ac6e92f6b2c0f149dda7168e2153` |
| 2 | `theorem` | [primeDensityFactor_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/declarations/primedensityfactor-eq--f7180cf185a45d91668c2dfb.md) | 15 | `result-track:f7180cf185a45d91668c2dfb77d33c481659cff49c8cc7fa03df82a1d124a5d3` |
| 3 | `theorem` | [primeDensityFactor_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/declarations/primedensityfactor-nonneg--4264ad9aed3106e0f79e0189.md) | 23 | `result-track:4264ad9aed3106e0f79e0189683ddf3c687b9b7c9f6de306ba00cc59e6af46be` |
| 4 | `theorem` | [primeDensityFactor_le_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/declarations/primedensityfactor-le-exp--1842d37b860130c156ed11ac.md) | 28 | `result-track:1842d37b860130c156ed11acb5a62aa2b043b9c112e19badcb34c84579aa1ec2` |
| 5 | `theorem` | [finite_prime_density_product_le_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/declarations/finite-prime-density-product-le-exp--dbbfc40ff1d57c239020eff2.md) | 42 | `result-track:dbbfc40ff1d57c239020eff29b938cc745efca5e92e6186c872c8f169955ce9b` |
| 6 | `theorem` | [ordered_density_assignment_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProductAudit/Variant6e55e34a14375bbe79a16e1ba59337f6d2a29b9fd44bf99ccdcd3474625ac02d.lean/declarations/ordered-density-assignment-product--dd5e15ce3c4a2d4eab788be5.md) | 55 | `result-track:dd5e15ce3c4a2d4eab788be58ac538049be094e423dd472b06f7abacbe3c4837` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
