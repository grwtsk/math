# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Readiness.Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fd04cae8a467c04270b62d41c95db8f459fda39",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fd04cae8a467c04270b62d41c95db8f459fda39`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Flow.AnalyticPDE` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.Spectral.AnalyticPDEBridge` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticPDEInterfaceReadiness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean/declarations/analyticpdeinterfacereadiness--9d96ebb4a5dfa8e835fc0a06.md) | 43 | `declaration-track:9d96ebb4a5dfa8e835fc0a06bd384970f9cd6d941f229d97d6d9fd267ee2bf48` |
| 2 | `def` | [AnalyticPDEInterfaceReadiness.ready](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean/declarations/analyticpdeinterfacereadiness-ready--4649b8f52e47b3764ad15630.md) | 58 | `declaration-track:4649b8f52e47b3764ad156305b0de3d71c0fb0850c99b7325b2137b8de57670e` |
| 3 | `def` | [AnalyticPDEInterfaceReadiness.theoremReady](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean/declarations/analyticpdeinterfacereadiness-theoremready--8263ff201fdc8c5fdb7478d9.md) | 74 | `declaration-track:8263ff201fdc8c5fdb7478d9426365cec7f085baa397e5b024307dece2656137` |
| 4 | `def` | [currentAnalyticPDEReadiness](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean/declarations/currentanalyticpdereadiness--1a9456d70e542c008d8f5ab1.md) | 88 | `declaration-track:1a9456d70e542c008d8f5ab1cc7db1ff9277504fdf5e20afcdaa47b65f9a6cb2` |
| 5 | `theorem` | [currentAnalyticPDEReadiness_not_theoremReady](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean/declarations/currentanalyticpdereadiness-not-theoremready--912695fefa695eeb278c00a5.md) | 109 | `result-track:912695fefa695eeb278c00a513e70ca3a404fc99607c96cc268148a619ac21a9` |
| 6 | `theorem` | [currentAnalyticPDEReadiness_not_ready](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean/declarations/currentanalyticpdereadiness-not-ready--b04ed2862c7fd680699c9b97.md) | 114 | `result-track:b04ed2862c7fd680699c9b97abc332d1831fb4f74c40ae7d6e1ed772fb3e0f81` |
| 7 | `theorem` | [currentAnalyticPDEReadiness_interfaces_are_not_authority](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Readiness/Variant4d279fb7269e322e3dd36287dd179b85c0e761ca1a239b1193d94bd73d81d844.lean/declarations/currentanalyticpdereadiness-interfaces-are-not-authority--031f9071c44703169823d0b8.md) | 121 | `result-track:031f9071c44703169823d0b841c6f8e0d54fa23faa20cf224e479ddf450d2b0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
