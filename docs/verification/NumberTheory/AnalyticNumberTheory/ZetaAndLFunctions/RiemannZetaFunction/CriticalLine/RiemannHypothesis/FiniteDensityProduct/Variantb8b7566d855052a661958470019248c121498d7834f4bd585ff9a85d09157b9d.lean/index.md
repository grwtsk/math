# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteDensityProduct.Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edb0e025274ad41341c9accd1d50a45190f3949b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edb0e025274ad41341c9accd1d50a45190f3949b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean.json)

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
| 1 | `def` | [primeDensityFactor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean/declarations/primedensityfactor--dc2be852a3f3eb9555b6b096.md) | 13 | `declaration-track:dc2be852a3f3eb9555b6b096bf16a232d48c1bdc6412178189de840bf28c232a` |
| 2 | `theorem` | [primeDensityFactor_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean/declarations/primedensityfactor-eq--430cb90fe6eb3cd272d17ab0.md) | 15 | `result-track:430cb90fe6eb3cd272d17ab00f987d68758e1274300b337352e3f5b87e9614d0` |
| 3 | `theorem` | [primeDensityFactor_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean/declarations/primedensityfactor-nonneg--bd60749aed1400803d5a1a2d.md) | 23 | `result-track:bd60749aed1400803d5a1a2d96fbccedab00bcdb733d442f03c245b0e88ff0ca` |
| 4 | `theorem` | [primeDensityFactor_le_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean/declarations/primedensityfactor-le-exp--f2f6acdcfac7f3662255efc6.md) | 28 | `result-track:f2f6acdcfac7f3662255efc6b12bc81271306e1dc17673054a3871e031bd9e83` |
| 5 | `theorem` | [finite_prime_density_product_le_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean/declarations/finite-prime-density-product-le-exp--bd35613f6e4542d0eaf49cb7.md) | 42 | `result-track:bd35613f6e4542d0eaf49cb774499e6c5d79b1f6d9c8ceafcd3b284309b1e291` |
| 6 | `theorem` | [ordered_density_assignment_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantb8b7566d855052a661958470019248c121498d7834f4bd585ff9a85d09157b9d.lean/declarations/ordered-density-assignment-product--688d2709828eeb908b52c27e.md) | 55 | `result-track:688d2709828eeb908b52c27e82f3db8d3b7115b546aee2c88987de962c7a96ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
