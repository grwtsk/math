# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.PrimeSums.Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86b70c2c71a619fceb4266c9d678bde7fc968e92",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86b70c2c71a619fceb4266c9d678bde7fc968e92`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.NonSquarefree` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mertens_monomial](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/declarations/mertens-monomial--a6dac95bd0439d89bf3c128d.md) | 33 | `result-track:a6dac95bd0439d89bf3c128dd02868c84ba50b686573a2d446c3ed7ef197cfa1` |
| 2 | `lemma` | [sum_not_prime_lam_logpow_div_le](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/declarations/sum-not-prime-lam-logpow-div-le--b50db4b23a22849c078691e0.md) | 72 | `result-track:b50db4b23a22849c078691e0ee02e5d180b9de9ddff762c2e1e3ed8ea389242e` |
| 3 | `lemma` | [sum_prime_logpow_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/declarations/sum-prime-logpow-eq--8f33ccfdf4190f34f4863734.md) | 108 | `result-track:8f33ccfdf4190f34f48637340e1d620243a0e98e3307608d2a766eadb48772d0` |
| 4 | `theorem` | [prime_logpow_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeSums/Variantcc366a5f1030de608897e21b1139a67604bda19a3f19ae74d3e0fee23aa9bfb3.lean/declarations/prime-logpow-sum--5ae17af9b4d365bf57ee6ba9.md) | 120 | `result-track:5ae17af9b4d365bf57ee6ba975641fd1ecfc534947c1e081e373ef01db748846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
