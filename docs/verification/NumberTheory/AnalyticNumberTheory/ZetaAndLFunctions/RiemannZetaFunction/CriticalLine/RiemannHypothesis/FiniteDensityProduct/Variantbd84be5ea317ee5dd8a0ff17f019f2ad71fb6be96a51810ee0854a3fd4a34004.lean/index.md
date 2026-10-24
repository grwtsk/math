# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FiniteDensityProduct.Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "098026f567d309a994f362a5461fadff64bd35ad",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `098026f567d309a994f362a5461fadff64bd35ad`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean.json)

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
| 1 | `def` | [primeDensityFactor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean/declarations/primedensityfactor--8f470e40ee62154567754247.md) | 21 | `declaration-track:8f470e40ee62154567754247d0dade8fc88be5b7fd646b6055bdb7f218e30821` |
| 2 | `theorem` | [primeDensityFactor_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean/declarations/primedensityfactor-eq--f4e6427394c1f45d4fa51084.md) | 23 | `result-track:f4e6427394c1f45d4fa51084b2ff6dbd240725ca842a9c7b9088526d33b355b6` |
| 3 | `theorem` | [primeDensityFactor_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean/declarations/primedensityfactor-nonneg--3c8a9d4d8c5f593154cfdb36.md) | 31 | `result-track:3c8a9d4d8c5f593154cfdb36cc530714bca819c6d54fa10124bfa3ddb5c7a13c` |
| 4 | `theorem` | [primeDensityFactor_le_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean/declarations/primedensityfactor-le-exp--793e98506bf972377a504682.md) | 36 | `result-track:793e98506bf972377a504682f1bca63e40b107359b429f3a94001e57fccadf71` |
| 5 | `theorem` | [finite_prime_density_product_le_exp](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean/declarations/finite-prime-density-product-le-exp--4c5b99fade3e96d23d77a307.md) | 50 | `result-track:4c5b99fade3e96d23d77a307c97efae7ce4d74a19862dbd4f97bf09bfd499903` |
| 6 | `theorem` | [ordered_density_assignment_product](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteDensityProduct/Variantbd84be5ea317ee5dd8a0ff17f019f2ad71fb6be96a51810ee0854a3fd4a34004.lean/declarations/ordered-density-assignment-product--4ae61eaa02a53366d2e7fb1b.md) | 63 | `result-track:4ae61eaa02a53366d2e7fb1b0a64850d6c576513132a4d1baeb60c953a006b7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
