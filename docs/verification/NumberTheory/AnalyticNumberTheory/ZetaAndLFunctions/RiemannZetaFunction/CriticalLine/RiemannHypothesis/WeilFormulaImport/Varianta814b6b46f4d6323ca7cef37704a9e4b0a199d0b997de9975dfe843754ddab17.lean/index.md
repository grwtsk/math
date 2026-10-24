# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.WeilFormulaImport.Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30de92a91301b718dafe821d495b54f983bea119",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30de92a91301b718dafe821d495b54f983bea119`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.WeilEF.Main` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [carrier_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean/declarations/carrier-eq--3ee60b8a2633c0d2e1ae7290.md) | 39 | `result-track:3ee60b8a2633c0d2e1ae729066504e393a0c3f22c583eeee79fa192a59f6267b` |
| 2 | `theorem` | [multiplicity_eq](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean/declarations/multiplicity-eq--75b6ffccfbea65b6dcbaa28c.md) | 45 | `result-track:75b6ffccfbea65b6dcbaa28c6b4fd4c1b473adc7fad87db652c5c33772fc71de` |
| 3 | `theorem` | [weil_formula](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean/declarations/weil-formula--b18f92ff9cd9afaeff02f5ee.md) | 50 | `result-track:b18f92ff9cd9afaeff02f5ee521ffffc7f1b680acf2c16816a77ad647b44d142` |
| 4 | `theorem` | [paperFT_smoothKernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean/declarations/paperft-smoothkernel--9e844c21149ea8798adc5d90.md) | 61 | `result-track:9e844c21149ea8798adc5d90bdbdb3880eb7ac4b8104dd3a19e5e3fa6a62824e` |
| 5 | `theorem` | [smooth_kernel_literature_formula](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeilFormulaImport/Varianta814b6b46f4d6323ca7cef37704a9e4b0a199d0b997de9975dfe843754ddab17.lean/declarations/smooth-kernel-literature-formula--f824881dbbf19d76005bc352.md) | 67 | `result-track:f824881dbbf19d76005bc352eef16232c847d5d4538c0a27dcc57eb998faf9e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
