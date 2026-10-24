# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/MassWeightedRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/index.md) · [Full source](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa1e14a598dd9616dc10c43e51ffa3a5d803c2c5`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/MassWeightedRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/MassWeightedRecurrence.lean.json)

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
| 1 | `def` | [mass](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/declarations/mass--8325b96428f911c6dcb59801.md) | 14 | `declaration-track:8325b96428f911c6dcb5980107bf11768e9fd2deac600da785b20a357bc1a5c9` |
| 2 | `theorem` | [mass_zero](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/declarations/mass-zero--06a502564e26f1e2308c03d8.md) | 17 | `result-track:06a502564e26f1e2308c03d874fd69961dca1adb0a9f8b29a0a46564aa39ae16` |
| 3 | `theorem` | [mass_succ](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/declarations/mass-succ--b49eec870c812c686620b740.md) | 18 | `result-track:b49eec870c812c686620b740c474e03ddc8068016ae71357bb770e63cb657dec` |
| 4 | `theorem` | [mass_nonneg](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/declarations/mass-nonneg--d3397c80a0092e4e6f031e4c.md) | 20 | `result-track:d3397c80a0092e4e6f031e4c3f63beb2eb3f8908c89547397a2ccb855b210440` |
| 5 | `theorem` | [amortized_iteration](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/declarations/amortized-iteration--7e78124bfd8b122a09f530cd.md) | 28 | `result-track:7e78124bfd8b122a09f530cd6d9c901041f7b02c0cae8b998ce698d2e09745f4` |
| 6 | `theorem` | [terminal_transfer](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/declarations/terminal-transfer--db64f8ed2cda42e11187ff81.md) | 75 | `result-track:db64f8ed2cda42e11187ff815025d8854bf48c2f97a283193290b43427c0204b` |
| 7 | `theorem` | [shifted_homogeneous_iteration](../../../../mathematics/Analysis/AsymptoticAnalysis/MassWeightedRecurrence__SourceOccurrence6b5a010a317c4fd5784461e0.lean/declarations/shifted-homogeneous-iteration--e94cc2b858438ed6db763f87.md) | 82 | `result-track:e94cc2b858438ed6db763f87a1f697729b94278fe482c210bd2788053b34cb1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
