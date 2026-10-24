# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta.Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "750d168c84f4b3d56dcba3ddd3dc30ae681463df",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `750d168c84f4b3d56dcba3ddd3dc30ae681463df`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [betaIntegral_nat_factorials](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean/declarations/betaintegral-nat-factorials--dfe5c6bd39651a2dd5c0cf81.md) | 10 | `result-track:dfe5c6bd39651a2dd5c0cf81afa0cf83b622d41eaa54befe67a521690904a0ef` |
| 2 | `theorem` | [integral_pow_mul_sub_pow_nat](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean/declarations/integral-pow-mul-sub-pow-nat--5f4bc464d9fd244a1d6b531e.md) | 24 | `result-track:5f4bc464d9fd244a1d6b531e2fb3e670b6dfe2498813c65893514d06ca09d99c` |
| 3 | `theorem` | [beta_evenBasis_tailKernel_mul](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0bBeta/Variant08c22ee5db04cb846172e201994d5a331c01d576f8a732d5148cd83d6c2eff0b.lean/declarations/beta-evenbasis-tailkernel-mul--bd18ed48be6ad80221a7ae5b.md) | 47 | `result-track:bd18ed48be6ad80221a7ae5bc095e7e1b017c1ab079a062d2eb41de5e1fe91c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
