# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ChebyshevFunctions.Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9866937cfbda9bbcfd3a690e9e3004e87d20777",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9866937cfbda9bbcfd3a690e9e3004e87d20777`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeCounting](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/declarations/primecounting--c6b6120d57961f00930a44a3.md) | 16 | `declaration-track:c6b6120d57961f00930a44a37e8d4955d003cfc8b710d8a7a003d7fb501cbbbd` |
| 2 | `def` | [chebyshevTheta](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/declarations/chebyshevtheta--45fb26062ee7a579b23d8cef.md) | 20 | `declaration-track:45fb26062ee7a579b23d8cefa04ae143267761d4d685db16f3c4b29416855905` |
| 3 | `theorem` | [primeCounting_eq_card_primesUpTo](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/declarations/primecounting-eq-card-primesupto--0195f850e0c8782837c3693c.md) | 24 | `result-track:0195f850e0c8782837c3693ce06e2499cc50ee961d2e4a139a6bc83c0eb17d91` |
| 4 | `theorem` | [chebyshevTheta_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/declarations/chebyshevtheta-nonneg--535e3b16ceed51a06628f68b.md) | 29 | `result-track:535e3b16ceed51a06628f68b7a3a87ab7df6e98f4f172ff012b0bd139540e516` |
| 5 | `theorem` | [chebyshevTheta_mono](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/declarations/chebyshevtheta-mono--3f7d02a103113ccb362e5e97.md) | 39 | `result-track:3f7d02a103113ccb362e5e979524e96b8a980358efb8612abc5638309e7470d4` |
| 6 | `theorem` | [chebyshevTheta_le_primeCounting_mul_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/declarations/chebyshevtheta-le-primecounting-mul-log--ffd6efffd329576db006da3c.md) | 50 | `result-track:ffd6efffd329576db006da3c495f746c52cea40a4ee94e7b499a6caf8a87ebfc` |
| 7 | `theorem` | [primeCounting_mul_log_two_le_chebyshevTheta](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/declarations/primecounting-mul-log-two-le-chebyshevtheta--e3af9d861f9af37985930d22.md) | 66 | `result-track:e3af9d861f9af37985930d22cdb15caa5426daca40b8940651edb87d8b26598c` |
| 8 | `def` | [ChebyshevThetaUpperBoundTarget](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/declarations/chebyshevthetaupperboundtarget--93af2d0b30d2a5daa853d91c.md) | 83 | `declaration-track:93af2d0b30d2a5daa853d91c8b9718a65f812ef6e44b7e82f3b13c238075c347` |
| 9 | `def` | [ChebyshevPrimeCountingBoundsTarget](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ChebyshevFunctions/Variant9544227f4603e2beb08d9372203f4c4b154073590b8eb329d5f3fbcd0def9c0e.lean/declarations/chebyshevprimecountingboundstarget--e8da01b5b18c322987ce91b3.md) | 87 | `declaration-track:e8da01b5b18c322987ce91b3a8d51586ef13a658cae54025ba2685ca3e6477cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
