# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ActualLogCellMoment.Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52119f3dbf0014e6f88c536414e35ab8191b14e6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52119f3dbf0014e6f88c536414e35ab8191b14e6`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logCell](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcell--4fea490a456d511094b182a9.md) | 23 | `declaration-track:4fea490a456d511094b182a9a5a4cc60f4a9f0a16881b8e6898f09153b7b6065` |
| 2 | `def` | [logCellSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcellsum--0bb77317a8a0cf39bb95c480.md) | 26 | `declaration-track:0bb77317a8a0cf39bb95c48028184a0c141946f1e90e465fe73cae9fbd98358c` |
| 3 | `theorem` | [logCell_integrable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcell-integrable--adbfbee81dbd6b97b58701f4.md) | 28 | `result-track:adbfbee81dbd6b97b58701f4d124cee143d6433a2256690975759742a23e11fe` |
| 4 | `theorem` | [logCell_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcell-eval--98af2e186a8baf4e8b49e772.md) | 40 | `result-track:98af2e186a8baf4e8b49e7721267224e0f2fb63675abe6ffaec2114bf032e908` |
| 5 | `theorem` | [logCell_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcell-nonneg--4d3f6ddd1172f7a8eb2e009c.md) | 67 | `result-track:4d3f6ddd1172f7a8eb2e009c3d15ec33bb7a2700e4bb09c8a1defef72154cb8e` |
| 6 | `theorem` | [logCellSum_eval](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcellsum-eval--39a8b96c8197f1e93f850874.md) | 75 | `result-track:39a8b96c8197f1e93f85087454f34daa0afc77a7836e5f0baed0e1bd054bc8d3` |
| 7 | `theorem` | [logCellSum_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcellsum-tendsto--74feb6b33ff4333e5a95310d.md) | 89 | `result-track:74feb6b33ff4333e5a95310de1317eef07d857986fd36c073d3329678cfa0755` |
| 8 | `theorem` | [logCell_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcell-hassum--83cf7fdc23e81b5bb2ad6e05.md) | 102 | `result-track:83cf7fdc23e81b5bb2ad6e05dc404d3e8d280e209472b70f714d95e91add3741` |
| 9 | `theorem` | [logCell_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcell-summable--d73480d6cd83235fa8f25540.md) | 108 | `result-track:d73480d6cd83235fa8f25540078cf436f68f32e5f1d348d6d470fe72263741e4` |
| 10 | `theorem` | [logCell_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/ActualLogCellMoment/Variant0c9bdc21384cf7bef4e5474bbe6dfef6dfe64ad9b0768da900cb8e0a194ca4d4.lean/declarations/logcell-tsum--2430b40eed39cc1ccb0b34f8.md) | 111 | `result-track:2430b40eed39cc1ccb0b34f89c209b666b0085451dd06c448193b69abddb190a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
