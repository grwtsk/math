# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Norm.Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32cb8574707a0de4c52469ba3cd6340ab4fdf8d3",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32cb8574707a0de4c52469ba3cd6340ab4fdf8d3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/normseminorm--79681d985eb651354ce99175.md) | 40 | `declaration-track:79681d985eb651354ce99175f378e8399569db7a84af0326c733c4c3a6a1257c` |
| 2 | `theorem` | [coe_normSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/coe-normseminorm--4bb492e04b2e62eec8f62d4b.md) | 46 | `result-track:4bb492e04b2e62eec8f62d4b3088ed232ef17cce17287ba472a204aa60a2afcf` |
| 3 | `theorem` | [ball_normSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/ball-normseminorm--c91b991f8914e0f5e774b208.md) | 49 | `result-track:c91b991f8914e0f5e774b2082458e5fd44f68ff72d13533b050d37975368ec1e` |
| 4 | `theorem` | [closedBall_normSeminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/closedball-normseminorm--5e905f6eaf71a8189e8f2022.md) | 54 | `result-track:5e905f6eaf71a8189e8f2022d7f6b2c48e373ade19159aa9ca3872da5b4387e6` |
| 5 | `theorem` | [absorbent_ball_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/absorbent-ball-zero--987422751c5650ab688f299f.md) | 61 | `result-track:987422751c5650ab688f299f953a06f6287a05f6fc40ed4954cb6eb4022cf3f2` |
| 6 | `theorem` | [absorbent_ball](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/absorbent-ball--0a7a7687d2d0280df3c26210.md) | 66 | `result-track:0a7a7687d2d0280df3c26210321697bd2eac623428cc19bf198ce9ad9fa544ce` |
| 7 | `theorem` | [balanced_ball_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/balanced-ball-zero--8159bd95abd5626a43147549.md) | 71 | `result-track:8159bd95abd5626a43147549444cdd4aa63c663aa9351e9774198a28b803abaa` |
| 8 | `theorem` | [balanced_closedBall_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/balanced-closedball-zero--2ae4df4905b3bbffae7bec35.md) | 76 | `result-track:2ae4df4905b3bbffae7bec3508bf904ed462b4cefc76a205609e1dba99b682d2` |
| 9 | `lemma` | [rescale_to_shell_semi_normed_zpow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/rescale-to-shell-semi-normed-zpow--739b3bdf6feb2acd46bb92f3.md) | 83 | `result-track:739b3bdf6feb2acd46bb92f36958bdfa18f845199f352b00d979e038b50af0b3` |
| 10 | `lemma` | [rescale_to_shell_semi_normed](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/rescale-to-shell-semi-normed--de79003673271c9ba7556409.md) | 91 | `result-track:de79003673271c9ba75564093e6d46ad22646b03b1fdd3b615f3c6a348e4aa36` |
| 11 | `lemma` | [rescale_to_shell_zpow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/rescale-to-shell-zpow--d5f9b73cb64641e5534fdcdf.md) | 102 | `result-track:d5f9b73cb64641e5534fdcdf9e0cd30e1e5194c412d41acccd763ff35b2e8ea8` |
| 12 | `lemma` | [rescale_to_shell](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Norm/Variant2088e1b52c7bb5e410ca58f258300f9c234ca202e4ebfa56ee30a44fc71668af.lean/declarations/rescale-to-shell--a096b9718d014d46989952d2.md) | 110 | `result-track:a096b9718d014d46989952d2cfe079dd713524302e69509da374fb6d50ebab14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
