# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LocalCountChi.Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df84b60ef63f254661af9bf8ca502acdb66406a8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df84b60ef63f254661af9bf8ca502acdb66406a8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.LGrowth` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.Statement` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Halving` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ReZeroCount` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.StrongPNTPrefix` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gfunL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/declarations/gfunl--5d7e728b5245954aebcd8894.md) | 39 | `declaration-track:5d7e728b5245954aebcd8894d72ec34f14c500c5d040852fef243f66180dc086` |
| 2 | `lemma` | [gfunL_analyticAt](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/declarations/gfunl-analyticat--3b2141a5c1481852014d2b08.md) | 41 | `result-track:3b2141a5c1481852014d2b08deab52552c6e691ade8ad3d65a4b2f9cfff24bab` |
| 3 | `lemma` | [analyticOrderNatAt_gfunL](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/declarations/analyticordernatat-gfunl--0599fdbc363909d90294702e.md) | 50 | `result-track:0599fdbc363909d90294702e61bbe7303f8752fde7a86445990fe8c87b041777` |
| 4 | `theorem` | [localCountChi_uniform_proof](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/declarations/localcountchi-uniform-proof--0e5b09872091a1d66ed1c725.md) | 77 | `result-track:0e5b09872091a1d66ed1c72531946031e96e914d76bc4fd76ed14d0cc9f44094` |
| 5 | `theorem` | [localCountChi](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LocalCountChi/Variant2dc85c4ad63fb6be8944b0426875291c30ee4bf13a673e0cfe0e52b67f94d6e6.lean/declarations/localcountchi--06a786194c3873f4d43fde45.md) | 245 | `result-track:06a786194c3873f4d43fde45ce5cd444a3bb8c641225aa31b7068e0bdf583f0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
