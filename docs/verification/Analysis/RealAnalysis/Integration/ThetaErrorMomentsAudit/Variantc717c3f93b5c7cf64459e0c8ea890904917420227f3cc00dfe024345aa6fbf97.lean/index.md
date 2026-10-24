# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaErrorMomentsAudit.Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "458d3cea58c3c90030655c2e99138b7d1862ea68",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `458d3cea58c3c90030655c2e99138b7d1862ea68`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePrimePrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/sourceprimeprefix--ca32bd12407292f026bda989.md) | 15 | `declaration-track:ca32bd12407292f026bda989d246634b5962d8de81c7a1bc8eb23b9252e5a23a` |
| 2 | `theorem` | [sourcePrimePrefix_eq_theta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/sourceprimeprefix-eq-theta--ce48e34d8ffa48d6c0709d79.md) | 18 | `result-track:ce48e34d8ffa48d6c0709d79348fb23d241824e79fcd537c33e19d9a7154028f` |
| 3 | `def` | [thetaLogError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror--26da3133ce0439e10c8eb118.md) | 38 | `declaration-track:26da3133ce0439e10c8eb1186b34e6184141bfff949bd51dc9c1a97159b6a54c` |
| 4 | `theorem` | [thetaLogError_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-eq--9b4efde794ba727152ae1de7.md) | 41 | `result-track:9b4efde794ba727152ae1de739d82068cd9ba1879b3fdf8bcba3d4ecaffbf045` |
| 5 | `theorem` | [thetaLogError_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-measurable--94ac31e3d2180bb3cb14b9ad.md) | 45 | `result-track:94ac31e3d2180bb3cb14b9ad671122b9f1fede6f97b931609ebf221741e11c22` |
| 6 | `theorem` | [thetaLogError_abs_le_global](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-abs-le-global--ff44a270002b749e878892ad.md) | 54 | `result-track:ff44a270002b749e878892ad35387433e8ba1b8be838bffc13c39e7cb28c0438` |
| 7 | `theorem` | [thetaLogError_abs_le_psi_error](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-abs-le-psi-error--2dc06dea8a3dda4b7c4721cf.md) | 70 | `result-track:2dc06dea8a3dda4b7c4721cf7ead48abae4d05c907a693423cd3bbd7b509312c` |
| 8 | `theorem` | [thetaLogError_eventual_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-eventual-bound--55af54bf132b1b51d9cf58ca.md) | 97 | `result-track:55af54bf132b1b51d9cf58cad74b4db72461ff201a354ce3bf062e9cdd56c07b` |
| 9 | `theorem` | [polynomial_stretched_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/polynomial-stretched-integrable--c0e5f13a134b1986fe263a3e.md) | 113 | `result-track:c0e5f13a134b1986fe263a3e6f4eca3ebe289b2ce25e0d97213ada5e3bd50baf` |
| 10 | `theorem` | [thetaLogError_moment_prefix_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-moment-prefix-integrable--b0a7d91e2639043cdc39c426.md) | 122 | `result-track:b0a7d91e2639043cdc39c426ab1502a6a8bf786c2e624eb740ff697d431c94fb` |
| 11 | `theorem` | [thetaLogError_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-moment-integrable--b990f9b80d436a79c9adc129.md) | 135 | `result-track:b990f9b80d436a79c9adc129ca248992ad339749081b4abb4e8321000a936752` |
| 12 | `theorem` | [thetaLogError_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-integrable--fad49db2e4a9874ec9a4fb21.md) | 179 | `result-track:fad49db2e4a9874ec9a4fb213ef52161319d710e4d6dfa6a053b801e7179bec4` |
| 13 | `theorem` | [thetaLogError_first_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-first-moment-integrable--fd8dcb178d83bab093ff8096.md) | 182 | `result-track:fd8dcb178d83bab093ff8096a835cb371d8af2d62c23e1a92e16bc0f4878eedf` |
| 14 | `theorem` | [thetaLogError_second_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/thetalogerror-second-moment-integrable--ed3ecdbdf981eb2cd77af4b0.md) | 186 | `result-track:ed3ecdbdf981eb2cd77af4b0a2e75ab986b700b0f971cf0cfcd069f178ac5df4` |
| 15 | `theorem` | [theta_error_logarithmic_moment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaErrorMomentsAudit/Variantc717c3f93b5c7cf64459e0c8ea890904917420227f3cc00dfe024345aa6fbf97.lean/declarations/theta-error-logarithmic-moment-integrable--8d674818f9936dcb093cdf64.md) | 191 | `result-track:8d674818f9936dcb093cdf64e35a95da1e5b8a6b32814a968c5f5bdfbaf5d04a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
