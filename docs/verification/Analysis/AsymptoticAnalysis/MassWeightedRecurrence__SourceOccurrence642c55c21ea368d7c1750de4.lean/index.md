# Verification target: GRWTSK.Analysis.Asymptotics.MassWeightedRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Asymptotics/MassWeightedRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence642c55c21ea368d7c1750de4.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence642c55c21ea368d7c1750de4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5`.

Source path: `GRWTSK/Analysis/Asymptotics/MassWeightedRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Asymptotics/MassWeightedRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mass](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence642c55c21ea368d7c1750de4.lean/declarations/mass--4b8d691d59754aaa823712ff.md) | 14 | `declaration-track:4b8d691d59754aaa823712ff922aba3643dcdfbe06a92c805016cc1119a2f357` |
| 2 | `theorem` | [mass_zero](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence642c55c21ea368d7c1750de4.lean/declarations/mass-zero--eeb97af030556365ec12828e.md) | 17 | `result-track:eeb97af030556365ec12828e6212e8f69bf649f0381eb004096bd54bf4b0375e` |
| 3 | `theorem` | [mass_succ](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence642c55c21ea368d7c1750de4.lean/declarations/mass-succ--45cf96298f643a1b052567fb.md) | 18 | `result-track:45cf96298f643a1b052567fb1504ca20af4fa258743988a7450be86ff4ad5257` |
| 4 | `theorem` | [mass_nonneg](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence642c55c21ea368d7c1750de4.lean/declarations/mass-nonneg--37bb62d61be4e76be07add7d.md) | 20 | `result-track:37bb62d61be4e76be07add7d53e6c7d615866f7aa7332058bc08a6b7579d193e` |
| 5 | `theorem` | [amortized_iteration](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence642c55c21ea368d7c1750de4.lean/declarations/amortized-iteration--876980291a5950054e30c671.md) | 28 | `result-track:876980291a5950054e30c67152efe8ef9231d844fc5db520f59eae51c66d2392` |
| 6 | `theorem` | [terminal_transfer](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence642c55c21ea368d7c1750de4.lean/declarations/terminal-transfer--14dd68ae149022d12eb7d4c4.md) | 75 | `result-track:14dd68ae149022d12eb7d4c45d8694e8977d4564b23038e62cec88997b58aceb` |
| 7 | `theorem` | [shifted_homogeneous_iteration](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence642c55c21ea368d7c1750de4.lean/declarations/shifted-homogeneous-iteration--dab43eecd02c9960654c0f28.md) | 82 | `result-track:dab43eecd02c9960654c0f2825c5e737505a403b388f5f87e98ab857e885aece` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
