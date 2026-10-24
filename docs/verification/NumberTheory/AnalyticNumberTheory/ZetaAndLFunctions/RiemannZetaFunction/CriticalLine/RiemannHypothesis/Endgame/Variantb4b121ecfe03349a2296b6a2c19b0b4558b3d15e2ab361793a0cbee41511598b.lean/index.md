# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Endgame.Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "703aede5f80c64d8db061d84412ac27e903e78d1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `703aede5f80c64d8db061d84412ac27e903e78d1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Assembly` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.AssemblyD` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.ParamsD` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thmD_abstract](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean/declarations/thmd-abstract--cfe73507a0c8cd595e5c97d0.md) | 53 | `result-track:cfe73507a0c8cd595e5c97d0127ec787f54cadda540d3115a3f376183cf97d06` |
| 2 | `theorem` | [thmD_BC_core](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean/declarations/thmd-bc-core--92fb3a1705cc18b0720dee38.md) | 216 | `result-track:92fb3a1705cc18b0720dee38fe28a16c09ed6a9ba98e65bf3b07d026484650d9` |
| 3 | `theorem` | [thmD_simple_abstract](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean/declarations/thmd-simple-abstract--b6efc765f5c918c0cf37c1c0.md) | 390 | `result-track:b6efc765f5c918c0cf37c1c0fb3b2865039b46f945cc7017f010099ff65105d6` |
| 4 | `theorem` | [thmD_dist_abstract](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Endgame/Variantb4b121ecfe03349a2296b6a2c19b0b4558b3d15e2ab361793a0cbee41511598b.lean/declarations/thmd-dist-abstract--a41c8b17dfe2e1046fd45f56.md) | 413 | `result-track:a41c8b17dfe2e1046fd45f563168441a4dc02a70106f866f1cd7b2f8c29c20d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
