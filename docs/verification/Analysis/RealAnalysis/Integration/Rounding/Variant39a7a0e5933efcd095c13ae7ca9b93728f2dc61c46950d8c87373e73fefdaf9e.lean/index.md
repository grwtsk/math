# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Rounding.Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b30086ab11a080428c64eda3abd9aaea19adf225",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b30086ab11a080428c64eda3abd9aaea19adf225`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Homology.GramField` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RoundingSet](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/declarations/roundingset--d3c96844fcedafea1dcd0457.md) | 27 | `declaration-track:d3c96844fcedafea1dcd0457d0fbaab2e9717aa57aace01e676da949e0d23465` |
| 2 | `def` | [OnVoronoiWall](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/declarations/onvoronoiwall--82a5a016de9bd9a5e9e96316.md) | 39 | `declaration-track:82a5a016de9bd9a5e9e9631682d83185da35f677ccbafe943e8d480f6bd90e1f` |
| 3 | `structure` | [RoundingExistenceCertificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/declarations/roundingexistencecertificate--799c9cf5c61ce686a91e47b6.md) | 50 | `declaration-track:799c9cf5c61ce686a91e47b62ca715b10ee0acd571dd7480466261889753f81e` |
| 4 | `structure` | [FiniteRoundingCertificate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/declarations/finiteroundingcertificate--58350e7b7d995d580bf6fab5.md) | 59 | `declaration-track:58350e7b7d995d580bf6fab533af653c975a6d8367e0ad72278d287240a00aba` |
| 5 | `structure` | [RoundedBranch](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/declarations/roundedbranch--fb896f6f8aa5fa11677cbd8b.md) | 73 | `declaration-track:fb896f6f8aa5fa11677cbd8be0f36f810dc814d51b5573f2fb18abc5f3640800` |
| 6 | `def` | [residue](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/declarations/residue--a20c007108846d39289a3306.md) | 92 | `declaration-track:a20c007108846d39289a3306a3df3573d98d4f001a624aa852001899c87a6cd6` |
| 7 | `theorem` | [integral_add_residue](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/declarations/integral-add-residue--6b798d42a50d565cfc743d53.md) | 96 | `result-track:6b798d42a50d565cfc743d53d78fa54ee6d526f8692b0f56e8b285e85a3941bb` |
| 8 | `theorem` | [equal_cost](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Rounding/Variant39a7a0e5933efcd095c13ae7ca9b93728f2dc61c46950d8c87373e73fefdaf9e.lean/declarations/equal-cost--90f51fe628055047db1f9083.md) | 101 | `result-track:90f51fe628055047db1f908377ae2d33dcba2766a81e0714e5de85ce238d1d0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
