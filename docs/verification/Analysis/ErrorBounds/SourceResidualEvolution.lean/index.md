# Verification target: GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09e5c858dc3a237531d80e5b663d90449e53587f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/SourceResidualEvolution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09e5c858dc3a237531d80e5b663d90449e53587f`.

Source path: `GRWTSK/Analysis/ErrorBounds/SourceResidualEvolution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/SourceResidualEvolution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget`](../../../../mathematics/Analysis/ErrorBounds/ContractingResidualBudget.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceResidual](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/sourceresidual--f8c1373b7f62ca43988154df.md) | 43 | `declaration-track:f8c1373b7f62ca43988154dff08996c67e4159765222d37d69396a49f0f0865a` |
| 2 | `def` | [stageDefect](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/stagedefect--9984d3fdf60caf18e68495f2.md) | 47 | `declaration-track:9984d3fdf60caf18e68495f27212da3b6b05842626bd7bdfa6f00c891f33cc8c` |
| 3 | `def` | [residualForcing](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/residualforcing--c2cb70dfa7e3751d92cb8e1f.md) | 52 | `declaration-track:c2cb70dfa7e3751d92cb8e1f49f8176cf26a71dfe501dc72ab8d96c874309a90` |
| 4 | `theorem` | [sourceResidual_evolution](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/sourceresidual-evolution--af6ee08172e04930eb5588ee.md) | 57 | `result-track:af6ee08172e04930eb5588ee65cde70de55d919d4272b98831045074f8c141bd` |
| 5 | `theorem` | [source_readout_difference](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/source-readout-difference--0c283a6adbadc59e84a44d24.md) | 68 | `result-track:0c283a6adbadc59e84a44d24d7ca0471d945dd297c039f5995eb80fdd2cb3a06` |
| 6 | `theorem` | [channelMass_sub_le](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/channelmass-sub-le--5970eb3c3a425d6d39c3888e.md) | 77 | `result-track:5970eb3c3a425d6d39c3888e7c85842b959e6d34e94968725f30827c93feaec6` |
| 7 | `theorem` | [source_residual_budget_step](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/source-residual-budget-step--4d6c8a84df4600e20168b5d0.md) | 93 | `result-track:4d6c8a84df4600e20168b5d05ee844de2bf6909e157794a9b61da605a9f5aaae` |
| 8 | `theorem` | [net_forcing_vanishes_of_separate_defects](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/net-forcing-vanishes-of-separate-defects--13e1e4740524e3af63884dcd.md) | 107 | `result-track:13e1e4740524e3af63884dcd60cf2522d62e3eae204890c93cea585214183f11` |
| 9 | `theorem` | [matched_injection_forcing](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/matched-injection-forcing--9c599bd7171bce772d99e6c1.md) | 129 | `result-track:9c599bd7171bce772d99e6c1cb4c456c8927e01fe9bb4989bba5cb5176a8169f` |
| 10 | `theorem` | [no_fixed_negative_of_source_defects](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/no-fixed-negative-of-source-defects--b288e8702de4fa1e16cfe800.md) | 143 | `result-track:b288e8702de4fa1e16cfe800e6cca9d50d7d5188e463b7e234261523b0997a78` |
| 11 | `theorem` | [fixed_residual_forces_defect](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/fixed-residual-forces-defect--c4d6fdf694e86f394abde773.md) | 169 | `result-track:c4d6fdf694e86f394abde773cbab1a383f0bd7d13a72737e0728386b8e912d6e` |
| 12 | `theorem` | [fixed_readout_forces_defect](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/fixed-readout-forces-defect--0384580c3d465228e063268b.md) | 183 | `result-track:0384580c3d465228e063268b44620b0d06f6c19392e652012265f92115f8520a` |
| 13 | `def` | [unitSource](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/unitsource--cb1ee7d5132f614c1913afb2.md) | 199 | `declaration-track:cb1ee7d5132f614c1913afb23e4ed6e1933cab2fa9cd0de164870255d0a69e1c` |
| 14 | `def` | [zeroModel](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/zeromodel--343901fa42264f28bcfbee1f.md) | 201 | `declaration-track:343901fa42264f28bcfbee1fb06ab803518f1df06fb93c30353573584bbbcc4c` |
| 15 | `def` | [halfGain](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/halfgain--db37a835188128f2f1a5d1ef.md) | 203 | `declaration-track:db37a835188128f2f1a5d1ef44ef786d06caf26937c09ead52dd8bfd468d87d6` |
| 16 | `theorem` | [persistent_source_fixture](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/persistent-source-fixture--1259051e2d8037d2c7902e3e.md) | 206 | `result-track:1259051e2d8037d2c7902e3e0fd94cde50d0c5e5fbd4375624edf86a8cfdbebf` |
| 17 | `theorem` | [persistent_source_defect_not_vanishing](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/persistent-source-defect-not-vanishing--c204ee688340d81bbdb2566c.md) | 214 | `result-track:c204ee688340d81bbdb2566cb72860493babb2ca74afd205ab27abbf2cb7ae01` |
| 18 | `theorem` | [matching_persistent_defects_fixture](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/matching-persistent-defects-fixture--aee229f8cd5f941e332e2453.md) | 222 | `result-track:aee229f8cd5f941e332e2453ad2a560628da496fabef404b5ac94dcc8380dca7` |
| 19 | `theorem` | [affine_tracking_fixture](../../../../mathematics/Analysis/ErrorBounds/SourceResidualEvolution.lean/declarations/affine-tracking-fixture--4d5e6074c7425daf5f68ac1f.md) | 231 | `result-track:4d5e6074c7425daf5f68ac1f03cb58911304834cc07e14377ae4aaf5e5de7a79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
