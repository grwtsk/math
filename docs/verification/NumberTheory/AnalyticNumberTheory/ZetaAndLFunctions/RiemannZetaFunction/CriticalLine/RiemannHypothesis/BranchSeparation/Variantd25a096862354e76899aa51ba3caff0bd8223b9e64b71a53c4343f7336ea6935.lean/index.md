# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BranchSeparation.Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80809b73cc2f0594775f7f282cf32aeddb0d4b39",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80809b73cc2f0594775f7f282cf32aeddb0d4b39`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.MobiusOntology.ArithmeticSecurityBridge` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.SquareRootNorm` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.MobiusOntology.QueryToWork` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ProofDomain](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean/declarations/proofdomain--e887eb9376fa55515dffdf30.md) | 14 | `declaration-track:e887eb9376fa55515dffdf30252c7ed3e95c6bbc866fa6df58d970ad48326230` |
| 2 | `inductive` | [DomainTransition](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean/declarations/domaintransition--d1fcd707c202bba41e343714.md) | 21 | `declaration-track:d1fcd707c202bba41e343714424667c27124898bc957ca0b9a41d201a567240c` |
| 3 | `theorem` | [no_analytic_to_security_without_bridge](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean/declarations/no-analytic-to-security-without-bridge--15db1be08d845fd71e178493.md) | 37 | `result-track:15db1be08d845fd71e178493cc9e34c0cc3fcd41de5f522e1995e232acf263d0` |
| 4 | `inductive` | [ProhibitedCrossBranchInference](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean/declarations/prohibitedcrossbranchinference--c3f00b8feb3e8bb2421e21d3.md) | 42 | `declaration-track:c3f00b8feb3e8bb2421e21d3e51991c081ee79149844eb65128cb910baba5d0c` |
| 5 | `def` | [ProhibitedCrossBranchInference.admissible](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean/declarations/prohibitedcrossbranchinference-admissible--a4b33546bca02f08b0006988.md) | 52 | `declaration-track:a4b33546bca02f08b0006988d3ad7ba2775d1b11e0bcead27d0514d7389fe55b` |
| 6 | `theorem` | [prohibitedCrossBranchInference_rejected](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchSeparation/Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935.lean/declarations/prohibitedcrossbranchinference-rejected--a4ae4c9ee63618303301a780.md) | 56 | `result-track:a4ae4c9ee63618303301a7802156c91479e76d17f46b5783d71c404a199e8bad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
