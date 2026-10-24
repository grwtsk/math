# Verification target: GRWTSK.Analysis.Dual.Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0742335c3f20d554fa9f1b6c3adfcb3242ff6ea4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/index.md) · [Full source](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0742335c3f20d554fa9f1b6c3adfcb3242ff6ea4`.

Source path: `GRWTSK/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDualMap](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/todualmap--87d2114e78ea1f2d5049029b.md) | 76 | `declaration-track:87d2114e78ea1f2d5049029b436c9a93a6f1034b99f6f92bd15a5a4a101ae94e` |
| 2 | `theorem` | [toContinuousLinearMap_toDualMap](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/tocontinuouslinearmap-todualmap--044dfffd7c1b02ca7fcad6d2.md) | 82 | `result-track:044dfffd7c1b02ca7fcad6d272948e16f50e1f80ab04f51817a54c7e6ebe2a51` |
| 3 | `theorem` | [toDualMap_apply_apply](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/todualmap-apply-apply--fe465525f22a28cf21eb8504.md) | 86 | `result-track:fe465525f22a28cf21eb85047b765b280bf83fdbb1d215b26848c18750abacf1` |
| 4 | `theorem` | [_root_.GRWTSK.Analysis.ToDualMap.Variant08b322e273f407797546852f889b1ebd52af30616fd07cfb005e0e2a0916594c.innerSL_inj](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/root-grwtsk-analysis-todualmap-variant08b322e273f407797546852f889b1ebd52--feae6415beed220d03186069.md) | 90 | `result-track:feae6415beed220d03186069778d5ca9631e6031e5ae48a29eee2e29673d30da` |
| 5 | `lemma` | [nullSubmodule_le_ker_toDualMap_right](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/nullsubmodule-le-ker-todualmap-right--b98eaf0ac8b6b8d4be0cac86.md) | 99 | `result-track:b98eaf0ac8b6b8d4be0cac86c4e10b488d7be76d91d924282e68f6fab7cf5e9f` |
| 6 | `lemma` | [nullSubmodule_le_ker_toDualMap_left](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/nullsubmodule-le-ker-todualmap-left--2738fe42afdfe4482c7bf7d7.md) | 103 | `result-track:2738fe42afdfe4482c7bf7d747798b2f467ca5dab28365e33044c67f480cee09` |
| 7 | `theorem` | [innerSL_norm](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/innersl-norm--3281449fcb5a93bb6faa05d1.md) | 117 | `result-track:3281449fcb5a93bb6faa05d1c120fbb8ffebc7e1dc7f14d38787787d40b26e99` |
| 8 | `theorem` | [ext_inner_left_basis](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/ext-inner-left-basis--8945ef31ad73b222d03cc117.md) | 122 | `result-track:8945ef31ad73b222d03cc117a5e3852affa4a624938edd940910b2ef02956a5c` |
| 9 | `theorem` | [ext_inner_right_basis](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/ext-inner-right-basis--e0ab36fce30dfe29ecfe7f2f.md) | 132 | `result-track:e0ab36fce30dfe29ecfe7f2f9211ec18129efc3c363e13ced489d69a1bc0c5dd` |
| 10 | `def` | [toDual](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/todual--81f2deb2ea0a71a7398b81b5.md) | 145 | `declaration-track:81f2deb2ea0a71a7398b81b5e9f829e80ddd458153bc65fc47b2419c96f6e2e8` |
| 11 | `theorem` | [toDual_apply_apply](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/todual-apply-apply--c37b9fe15d35de037a2d4242.md) | 184 | `result-track:c37b9fe15d35de037a2d4242dcd55422082298c479d4ef68873f14da568594cc` |
| 12 | `theorem` | [toDual_symm_apply](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/todual-symm-apply--6cbb1052a5f839d400ba5e0e.md) | 187 | `result-track:6cbb1052a5f839d400ba5e0e3fbe9b9bda74e777467fbad56e782d885623438a` |
| 13 | `lemma` | [toLinearIsometry_toDual](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/tolinearisometry-todual--97d1a7f65af4bb92c9ae09b2.md) | 192 | `result-track:97d1a7f65af4bb92c9ae09b25708b5e2999251c66d55b30ee8020626b9d29acc` |
| 14 | `lemma` | [toDual_apply_eq_toDualMap_apply](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/todual-apply-eq-todualmap-apply--0acb4d44a3b9925cbcacc68c.md) | 195 | `result-track:0acb4d44a3b9925cbcacc68c59cb517e52935b3f2ce68388809f7ceb9609600a` |
| 15 | `def` | [continuousLinearMapOfBilin](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/continuouslinearmapofbilin--bbf0ea451f37579484ddf79c.md) | 202 | `declaration-track:bbf0ea451f37579484ddf79c7d149d654870c48f7f2bea2d30ba67bab72e3ba0` |
| 16 | `theorem` | [continuousLinearMapOfBilin_zero](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/continuouslinearmapofbilin-zero--5082729120bfb6cd85a06c61.md) | 210 | `result-track:5082729120bfb6cd85a06c61d75da0f7194dd0cb158f6d596839db032209fdf5` |
| 17 | `theorem` | [continuousLinearMapOfBilin_apply](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/continuouslinearmapofbilin-apply--d7069966f4d258e5099ced88.md) | 214 | `result-track:d7069966f4d258e5099ced883e2a863ce0d1b6d79665f65aac478ffbe661ae74` |
| 18 | `theorem` | [unique_continuousLinearMapOfBilin](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/unique-continuouslinearmapofbilin--2f7af6963ca62fa844973ea7.md) | 217 | `result-track:2f7af6963ca62fa844973ea76cada75575daa250a0403a51243dccb1910c95e7` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/instance--fe6d1524b824b7640abbddd3.md) | 226 | `declaration-track:fe6d1524b824b7640abbddd32ea1ff4f23972a5a9e59362062e853c70c0fc0ce` |
| 20 | `lemma` | [rank_rankOne](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/rank-rankone--f2ff0326376ecab2af422504.md) | 236 | `result-track:f2ff0326376ecab2af422504b864b9ccb5d712d80665ff931d29222931c05fd2` |
| 21 | `lemma` | [OrthonormalBasis.norm_dual](../../../../mathematics/Analysis/Dual/Variant7cdd0d175a7016e26d8bb31816edcc7d3c2fcfc866d585afbe4bdaa49b89ab2c.lean/declarations/orthonormalbasis-norm-dual--c7b790f93bdbfc111936766a.md) | 245 | `result-track:c7b790f93bdbfc111936766aa33695a777e8674590938039ae4132141825c3e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
