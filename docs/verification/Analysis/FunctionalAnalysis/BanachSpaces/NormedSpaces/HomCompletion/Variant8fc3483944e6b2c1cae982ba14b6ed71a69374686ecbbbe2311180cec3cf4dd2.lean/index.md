# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.HomCompletion.Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5984bbdaa48aeb4db3fb453b4db47e74c632e8fb",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5984bbdaa48aeb4db3fb453b4db47e74c632e8fb`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Completion` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NormedAddGroupHom.completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion--c962feb76a2796b0e2307172.md) | 68 | `declaration-track:c962feb76a2796b0e230717250999926f5ef903e21408a34b530cfd41ce84859` |
| 2 | `theorem` | [NormedAddGroupHom.completion_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-def--8b163b91c6ecf61fd22298cb.md) | 72 | `result-track:8b163b91c6ecf61fd22298cbe5b72bae193072a2da48f0f93ab6c0e865c018d2` |
| 3 | `theorem` | [NormedAddGroupHom.completion_coe_to_fun](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-coe-to-fun--a578c21b3bf23a58f6a083cd.md) | 77 | `result-track:a578c21b3bf23a58f6a083cdcc13ac796f5473467c40a95e50d8f30e7d606a9f` |
| 4 | `theorem` | [NormedAddGroupHom.completion_coe](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-coe--d8c9265c727dd5f32681552a.md) | 80 | `result-track:d8c9265c727dd5f32681552ae8f1aeb9ee205ae3dd7d4d01a8b4e63cd3fd59d1` |
| 5 | `theorem` | [NormedAddGroupHom.completion_coe'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-coe--d28816456c4ddf79c1444bda.md) | 85 | `result-track:d28816456c4ddf79c1444bdae5a56e4fc7cd6251172c279396b1cddbf767f16f` |
| 6 | `def` | [normedAddGroupHomCompletionHom](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphomcompletionhom--1a8d5208db089932dd05c57f.md) | 91 | `declaration-track:1a8d5208db089932dd05c57f865e3aafc476e512d5f08e97b17a165afc9cc256` |
| 7 | `theorem` | [NormedAddGroupHom.completion_id](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-id--8a667bfda9bd4bbf52d6a69d.md) | 99 | `result-track:8a667bfda9bd4bbf52d6a69dffb9f8c4c7ad9e4d02919923bc539dee32919a3d` |
| 8 | `theorem` | [NormedAddGroupHom.completion_comp](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-comp--f28d594e988a1c24687117da.md) | 105 | `result-track:f28d594e988a1c24687117dad9b395f13bf08a265615fc66d957b3a529d02396` |
| 9 | `theorem` | [NormedAddGroupHom.completion_neg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-neg--2b661c204bf32cb93bd3d7c6.md) | 113 | `result-track:2b661c204bf32cb93bd3d7c61ebebbe88c2293f80e869f52c155c6b7786c11d9` |
| 10 | `theorem` | [NormedAddGroupHom.completion_add](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-add--9f116184a0d2bed1a60f3e85.md) | 117 | `result-track:9f116184a0d2bed1a60f3e85c3c23292dcbff721fabae9b6ca1c5a57312ce8d1` |
| 11 | `theorem` | [NormedAddGroupHom.completion_sub](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-sub--1037cdd7f640fa5dedbef399.md) | 121 | `result-track:1037cdd7f640fa5dedbef399ac582f7ab5e5b171652e56ba4b6eb5abd88c1dcf` |
| 12 | `theorem` | [NormedAddGroupHom.zero_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-zero-completion--a1e3382ca92fac8709a9fb8c.md) | 126 | `result-track:a1e3382ca92fac8709a9fb8cc7c54376670fcd03a3cf209bc8a2d4a70f6ff8a0` |
| 13 | `def` | [NormedAddCommGroup.toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddcommgroup-tocompl--9687a6152668f1abd49ff6d5.md) | 131 | `declaration-track:9687a6152668f1abd49ff6d52052ec933b7f0733c18a0362a8eb5c33cc85f67e` |
| 14 | `theorem` | [NormedAddCommGroup.norm_toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddcommgroup-norm-tocompl--bc16736a637afcdfd2268df3.md) | 138 | `result-track:bc16736a637afcdfd2268df3905b61b8ca9ce1c1e9edfbb82f17e6189c447f19` |
| 15 | `theorem` | [NormedAddCommGroup.denseRange_toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddcommgroup-denserange-tocompl--41ab49a72966f2daf9968643.md) | 141 | `result-track:41ab49a72966f2daf9968643d119d5b65f662d9386e1d23f41268856f92c0260` |
| 16 | `theorem` | [NormedAddGroupHom.completion_toCompl](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-completion-tocompl--5cedad2ddfdaf034daf9d649.md) | 145 | `result-track:5cedad2ddfdaf034daf9d64949ad834b214e799506f3c416be534305f38a1cce` |
| 17 | `theorem` | [NormedAddGroupHom.norm_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-norm-completion--5bdf70574b5a3d84e702d140.md) | 149 | `result-track:5bdf70574b5a3d84e702d140f576e6f8b2ebfd8011c79ee52630def015ef3ce8` |
| 18 | `theorem` | [NormedAddGroupHom.ker_le_ker_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-ker-le-ker-completion--60c1371511d8dd660d0a0a09.md) | 153 | `result-track:60c1371511d8dd660d0a0a094f4e7a489f05ed55cb41d392a0bd3f0abcf4d9ea` |
| 19 | `theorem` | [NormedAddGroupHom.ker_completion](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-ker-completion--9cc4d713fe0a82c5c608350c.md) | 158 | `result-track:9cc4d713fe0a82c5c608350c1095b6b95c82b29ce144d2347b1a4e54fc2c56d0` |
| 20 | `def` | [NormedAddGroupHom.extension](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-extension--3a2e1293a932448a214b6ddb.md) | 192 | `declaration-track:3a2e1293a932448a214b6ddbb5a71c0e5dadda2ba7654f42e6784228cecdf7e1` |
| 21 | `theorem` | [NormedAddGroupHom.extension_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-extension-def--4411d3f424a82903d8381899.md) | 197 | `result-track:4411d3f424a82903d83818994b56147bd60676662b9a2d77cf93f92be3ddc1ee` |
| 22 | `theorem` | [NormedAddGroupHom.extension_coe](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-extension-coe--f09f75247d8e4eb74fda1dc1.md) | 202 | `result-track:f09f75247d8e4eb74fda1dc1f734951acb46c79c436b7ce2c4cf28d3284cdef8` |
| 23 | `theorem` | [NormedAddGroupHom.extension_coe_to_fun](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-extension-coe-to-fun--73d88d8bb9f4d8006a2e32fc.md) | 205 | `result-track:73d88d8bb9f4d8006a2e32fcbc3d92e3b70ac3bda2576f06e1c1c084e0645fc9` |
| 24 | `theorem` | [NormedAddGroupHom.extension_unique](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant8fc3483944e6b2c1cae982ba14b6ed71a69374686ecbbbe2311180cec3cf4dd2.lean/declarations/normedaddgrouphom-extension-unique--7ffd3e8449c0646d89f43e9f.md) | 209 | `result-track:7ffd3e8449c0646d89f43e9fa0959f7e14c511191e18c797d3ec97ff8ebd03f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
