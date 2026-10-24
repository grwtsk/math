# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellMomentAttempt01.Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9aa29d874b2a1f5868a842741a0a427a089e6b01",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9aa29d874b2a1f5868a842741a0a427a089e6b01`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCell](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcell--cd7ecf46fb88e9df5c792053.md) | 15 | `declaration-track:cd7ecf46fb88e9df5c79205303ea6526690f615bf4781d134d6f1f8c6b38f03f` |
| 2 | `def` | [logCellSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcellsum--38247e72fc5b31388f9f98ba.md) | 18 | `declaration-track:38247e72fc5b31388f9f98bafd3e89d57e72a36b0e7708cc149ed4c99410f5d2` |
| 3 | `theorem` | [logCell_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcell-integrable--178ec3d77d5a39c259b32808.md) | 20 | `result-track:178ec3d77d5a39c259b328083088189f9541746ddfaa3fbd244adfdd19a9a2ad` |
| 4 | `theorem` | [logCell_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcell-eval--eb77b69e95b79f01715aa3ba.md) | 32 | `result-track:eb77b69e95b79f01715aa3ba0977b9b60b10dbee4ee58e0360d2082ec9195b55` |
| 5 | `theorem` | [logCell_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcell-nonneg--9137fabca1d50cc8b1a6d117.md) | 58 | `result-track:9137fabca1d50cc8b1a6d117237a412c341973c92e4446360290ea1769f44c8f` |
| 6 | `theorem` | [logCellSum_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcellsum-eval--766880edcf0df83d018794d2.md) | 66 | `result-track:766880edcf0df83d018794d2cd0d4c3f4969b2724aac97d83bc76ad4293938c8` |
| 7 | `theorem` | [logCellSum_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcellsum-tendsto--e3ca851f71c6ad64e917339c.md) | 80 | `result-track:e3ca851f71c6ad64e917339c0b0a91a798a97a6ff7b4048472a596a9ef114114` |
| 8 | `theorem` | [logCell_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcell-hassum--fefb38ec75f8713abb9fe7d4.md) | 91 | `result-track:fefb38ec75f8713abb9fe7d4790f5d9c1b7cc3545573ecc04b4e75efdfa46028` |
| 9 | `theorem` | [logCell_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcell-summable--2c8313768e1a56cf61ece25c.md) | 97 | `result-track:2c8313768e1a56cf61ece25cbde3ee4a6b5fca1c43266f242fc1ecba0b87a35c` |
| 10 | `theorem` | [logCell_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMomentAttempt01/Variant11bc98c3e1c24999bdd0b51de8d86ceb6325d07361a3020a8da3b1c94a28b62e.lean/declarations/logcell-tsum--38f81ad9b4b95877bb7ab349.md) | 100 | `result-track:38f81ad9b4b95877bb7ab349a0f4d6f8fe1345e0b1ae0b0ce8bc90cccd164c58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
