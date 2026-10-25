# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Ordinal.Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1981617361820a07c49e162b52755eabd37b2b1b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1981617361820a07c49e162b52755eabd37b2b1b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.SetTheory.Game.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.NaturalOps` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame--efe357d0c596701e6991c7ee.md) | 43 | `declaration-track:efe357d0c596701e6991c7ee7ebddc1d2eb7f98f8ecf95a43fca947a592dfe84` |
| 2 | `theorem` | [toPGame_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-def--5463601137f5af12c6d5eb41.md) | 54 | `result-track:5463601137f5af12c6d5eb4179bc08845bb407e4e5b0417d44a1e757642c710a` |
| 3 | `theorem` | [toPGame_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-leftmoves--4dd7d0b1d0dd605c0d08a8db.md) | 61 | `result-track:4dd7d0b1d0dd605c0d08a8db2c82a05c6f6d4c675137f296a0e71cafcf513238` |
| 4 | `theorem` | [toPGame_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-rightmoves--78f9628a73011f3e98571ebb.md) | 66 | `result-track:78f9628a73011f3e98571ebb43c5d624fd2374b41ee73b47dea9fbd5e0527032` |
| 5 | `instance` | [isEmpty_zero_toPGame_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/isempty-zero-topgame-leftmoves--9f433098fdea2df1c1921854.md) | 70 | `declaration-track:9f433098fdea2df1c192185443552a811831e769fe099a35237c06347f134210` |
| 6 | `instance` | [isEmpty_toPGame_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/isempty-topgame-rightmoves--408853ffdab8e11a04df791d.md) | 74 | `declaration-track:408853ffdab8e11a04df791d58d9ec91bde39af8483cd9b496fbec5438341093` |
| 7 | `def` | [toLeftMovesToPGame](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/toleftmovestopgame--6a9fe51bab6bb77fc9762243.md) | 80 | `declaration-track:6a9fe51bab6bb77fc976224359625c669bb2fce31fa671c8778f00faba2ee718` |
| 8 | `theorem` | [toLeftMovesToPGame_symm_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/toleftmovestopgame-symm-lt--7b27a45979298eaa6f840583.md) | 85 | `result-track:7b27a45979298eaa6f840583ded88c2c52a0342e8d513ca2b147d5aff6d6dc47` |
| 9 | `theorem` | [toPGame_moveLeft_hEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-moveleft-heq--2dc61ef802800b575870575c.md) | 91 | `result-track:2dc61ef802800b575870575c6b6467c2d9b7fcbb94e06f4f3a5134dd4d8c1cef` |
| 10 | `theorem` | [toPGame_moveLeft'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-moveleft--8505e3d6291fbc147201fff8.md) | 99 | `result-track:8505e3d6291fbc147201fff8d132c61aae6c52b79d909c75d6c1fd4dab4a90bf` |
| 11 | `theorem` | [toPGame_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-moveleft--74ebebc1434d5d962a37459f.md) | 104 | `result-track:74ebebc1434d5d962a37459f6a5fbf82a65eafe5316a0ab99afc71155182a9a8` |
| 12 | `def` | [zeroToPgameRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/zerotopgamerelabelling--50693329989d8f9312214018.md) | 109 | `declaration-track:50693329989d8f9312214018745eaacd0642764851432bb3afa22ec276de96ff` |
| 13 | `instance` | [uniqueOneToPgameLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/uniqueonetopgameleftmoves--8940b60a2908030c9fd6eedb.md) | 113 | `declaration-track:8940b60a2908030c9fd6eedb8e48ed3e3c2b2bc58ca9988d784fed5bebeecdaf` |
| 14 | `theorem` | [one_toPGame_leftMoves_default_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/one-topgame-leftmoves-default-eq--c61c0825fd89f8117b0494c8.md) | 118 | `result-track:c61c0825fd89f8117b0494c8a34323a71039a978f6c8514f9049c37a6b654270` |
| 15 | `theorem` | [to_leftMoves_one_toPGame_symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/to-leftmoves-one-topgame-symm--5a3a8b04d24070f221b8928a.md) | 124 | `result-track:5a3a8b04d24070f221b8928aa1e63dd0071f0c67fe62bb50a5d5f3bb83777e7c` |
| 16 | `theorem` | [one_toPGame_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/one-topgame-moveleft--f3c7975d6bade8860b0062ec.md) | 129 | `result-track:f3c7975d6bade8860b0062ecb78f60fa97972c198590179d7acbe7c218d713fd` |
| 17 | `def` | [oneToPGameRelabelling](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/onetopgamerelabelling--77881039ae3eff2869cd7739.md) | 133 | `declaration-track:77881039ae3eff2869cd7739a07ca16cf9c224fd634199fe807b8f914b6aa9ed` |
| 18 | `theorem` | [toPGame_lf](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-lf--ed19f6a7667213c591dfe5cf.md) | 138 | `result-track:ed19f6a7667213c591dfe5cf782f51129e9cccf36c49e63eda4994b316615803` |
| 19 | `theorem` | [toPGame_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-le--8ff306fc8b83f549de84d283.md) | 142 | `result-track:8ff306fc8b83f549de84d283cd86f312951351bc84078ed27cb220056409f7cf` |
| 20 | `theorem` | [toPGame_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-lt--a3299dafb49d4df5759fdc8c.md) | 148 | `result-track:a3299dafb49d4df5759fdc8c7313e5c2714b309b364f68efc6835630305e602a` |
| 21 | `theorem` | [toPGame_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-nonneg--7365edfaa5c516695b830f33.md) | 152 | `result-track:7365edfaa5c516695b830f330fb932630cef1fbbfd390841a722fbdda1772528` |
| 22 | `theorem` | [toPGame_lf_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-lf-iff--99707bca7b1a653646e73633.md) | 157 | `result-track:99707bca7b1a653646e7363372fbf304b3e212a514831fcc3f87df7f1c476391` |
| 23 | `theorem` | [toPGame_le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-le-iff--01dd2af16796f3916c69f406.md) | 162 | `result-track:01dd2af16796f3916c69f406d2c6296447706297d4de5bcf9063e6b5fe0db304` |
| 24 | `theorem` | [toPGame_lt_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-lt-iff--6b22e7f5a2bc9cec3cb50b9a.md) | 167 | `result-track:6b22e7f5a2bc9cec3cb50b9a6713e4aa4b85edf2fcdbbf5d075d8190aaec3bed` |
| 25 | `theorem` | [toPGame_equiv_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-equiv-iff--3a0a1a58fd9d62f373fba012.md) | 172 | `result-track:3a0a1a58fd9d62f373fba01218e357bf47a96077a297458a73edc7acea4a9cbb` |
| 26 | `theorem` | [toPGame_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-injective--1cd21a525828a2cc8cd46000.md) | 178 | `result-track:1cd21a525828a2cc8cd46000fb403b6e03afef6790fbbeba33ad3b4f25208753` |
| 27 | `theorem` | [toPGame_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-eq-iff--b724a0326a57f476d3fa9cdc.md) | 183 | `result-track:b724a0326a57f476d3fa9cdc80fa5a84522080d635caf785be29b88841094ddf` |
| 28 | `def` | [toPGameEmbedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgameembedding--8d63944e5dc2a7a439de89fd.md) | 189 | `declaration-track:8d63944e5dc2a7a439de89fde7df5cfba73ad254aa032cc00fcb168766facccd` |
| 29 | `theorem` | [toPGame_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-add--391355145b9747eb212b1b9f.md) | 196 | `result-track:391355145b9747eb212b1b9fd2a5c9a6f7df106ecee574f14ce7a85c317ae624` |
| 30 | `theorem` | [toPGame_add_mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Varianta83440e213704b29c81252681b93d65668946d92f7d1ce1afe956fe6cb59c22e.lean/declarations/topgame-add-mk--b21bac0e4d5d6faeda465af5.md) | 219 | `result-track:b21bac0e4d5d6faeda465af5ea40e02f85e352f0865990b242c4dd7a8f7ab016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
