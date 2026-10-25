# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Fix.Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d59979fbeed69094a0240dd29f6404336a9e990e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d59979fbeed69094a0240dd29f6404336a9e990e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.W` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [recF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/recf--0ad34fcb40e9d858957d1088.md) | 65 | `declaration-track:0ad34fcb40e9d858957d1088df07015dc8fe62e6f306267897760de3dca9f047` |
| 2 | `theorem` | [recF_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/recf-eq--f81da27dd9ed34f6f613d7ef.md) | 68 | `result-track:f81da27dd9ed34f6f613d7ef4d67887ae9c816b8b00139d758ed216a7849c2bb` |
| 3 | `theorem` | [recF_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/recf-eq--0c05b65136a46546ad9eff97.md) | 73 | `result-track:0c05b65136a46546ad9eff97a2d9fb0c4506c1c40ca1b54949b4132f063f2fb3` |
| 4 | `inductive` | [WEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/wequiv--c69e7c3cdaf39695a6640b39.md) | 81 | `declaration-track:c69e7c3cdaf39695a6640b39b8fe61ae69297f25c01c7108c36401b46c8eea8d` |
| 5 | `theorem` | [recF_eq_of_wEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/recf-eq-of-wequiv--e45c6c77af4e940a357cc77e.md) | 90 | `result-track:e45c6c77af4e940a357cc77e2077dc45a3a4bb36ba27dede0b60bc36a5c45783` |
| 6 | `theorem` | [wEquiv.abs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/wequiv-abs--9fce9705641b698093feedde.md) | 104 | `result-track:9fce9705641b698093feedde5f1b8bcc212bdb0f48930d1617685e930a418eba` |
| 7 | `theorem` | [wEquiv.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/wequiv-refl--2cf1952045b68b5b8e7bd11a.md) | 114 | `result-track:2cf1952045b68b5b8e7bd11a1187c3ed5a0d4a4625a2fa2bffa8ff6a79219f55` |
| 8 | `theorem` | [wEquiv.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/wequiv-symm--67ec96c5faff0ec94c774270.md) | 117 | `result-track:67ec96c5faff0ec94c774270e7c573bfab1bb1113bd2766400bdb075f71f6fdd` |
| 9 | `def` | [wrepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/wrepr--977b32d46df410d51c1b3553.md) | 124 | `declaration-track:977b32d46df410d51c1b355398db91705d199a88b408ad7e5665c1dcfe45d27d` |
| 10 | `theorem` | [wrepr_wMk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/wrepr-wmk--9dd619da5d543c6ae00d6905.md) | 127 | `result-track:9dd619da5d543c6ae00d6905eef6144c759ec09ed6dc9df110c8e89c27c33b56` |
| 11 | `theorem` | [wrepr_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/wrepr-equiv--88713fcf711f335988ef10b8.md) | 133 | `result-track:88713fcf711f335988ef10b882050d9689ba63dd0d0cc53f86395c7e7ac4370a` |
| 12 | `theorem` | [wEquiv_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/wequiv-map--43d074bafc55634765e6fd8a.md) | 141 | `result-track:43d074bafc55634765e6fd8a8ed45b0aa711a0aad821206c0a47a5b9442488ee` |
| 13 | `def` | [wSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/wsetoid--e74eee495c6d0e9d9c113723.md) | 158 | `declaration-track:e74eee495c6d0e9d9c113723e14985c9561c00c34462d18c5d7cc24a48b4fa69` |
| 14 | `def` | [Fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix--a6e0c0798984bb33c492fc02.md) | 170 | `declaration-track:a6e0c0798984bb33c492fc025af7e2947e0d6902099064e3cb4bfccbf7942bba` |
| 15 | `def` | [Fix.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-map--e4536c1d1c45ae59f52acd30.md) | 174 | `declaration-track:e4536c1d1c45ae59f52acd30ae744a7719282242b0769fb89dd8d8a5768db9ea` |
| 16 | `instance` | [Fix.mvfunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-mvfunctor--ee1e38b49395525dd2a331a2.md) | 177 | `declaration-track:ee1e38b49395525dd2a331a2962008fc1048d74ba1e87321dccd640594683908` |
| 17 | `def` | [Fix.rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-rec--c8c1b3a861a9d7da8eb9cd54.md) | 182 | `declaration-track:c8c1b3a861a9d7da8eb9cd543cb9bd36cbe61510d7dbc1f25067ab95da5778aa` |
| 18 | `def` | [fixToW](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fixtow--8de6ee97e32edd9200b2df77.md) | 186 | `declaration-track:8de6ee97e32edd9200b2df77e68c95ebc337dbec5abc75f100960e250fbf9773` |
| 19 | `def` | [Fix.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-mk--edafc18fa997d8dc961e8815.md) | 190 | `declaration-track:edafc18fa997d8dc961e8815d0a418e2a20a31d4a11e6bb1f53fd418bd3dfcd7` |
| 20 | `def` | [Fix.dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-dest--81598f278be7abe31125969b.md) | 194 | `declaration-track:81598f278be7abe31125969b9a5dda52832abe979734f4902fa7331671690495` |
| 21 | `theorem` | [Fix.rec_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-rec-eq--ae8d462dcf5a34bb42edd1f9.md) | 197 | `result-track:ae8d462dcf5a34bb42edd1f9805d6230fcb6c48f5a5511dd2523439a9298da85` |
| 22 | `theorem` | [Fix.ind_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-ind-aux--9bfbb881edeedce47a4ebf6a.md) | 213 | `result-track:9bfbb881edeedce47a4ebf6a2997c1c74f5dff0d4c98259df13f8601257be06c` |
| 23 | `theorem` | [Fix.ind_rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-ind-rec--cc66588fe5eff76fdde7a73c.md) | 228 | `result-track:cc66588fe5eff76fdde7a73c14f7318e88a753dd8f401fb3017d4dacc246bc9b` |
| 24 | `theorem` | [Fix.rec_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-rec-unique--147d4dd437ae9b5bcac43c8e.md) | 248 | `result-track:147d4dd437ae9b5bcac43c8e04c5d991dc6f6f05b8a69445dd366e594c6f5717` |
| 25 | `theorem` | [Fix.mk_dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-mk-dest--86eee67f72f2a2cf526ef2aa.md) | 255 | `result-track:86eee67f72f2a2cf526ef2aaea9f78eed9a324eecd25873165454e1334b2ea11` |
| 26 | `theorem` | [Fix.dest_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-dest-mk--955221e74299a8522a886e5c.md) | 264 | `result-track:955221e74299a8522a886e5c4aeda816f3fe55e49627a16d4563f315243d614c` |
| 27 | `theorem` | [Fix.ind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-ind--4d750e166734a53e2df82978.md) | 276 | `result-track:4d750e166734a53e2df829788e0665dd9e77c1991b0af14e53b172d029dcce44` |
| 28 | `instance` | [mvqpfFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/mvqpffix--e59512066dad0988b64d35db.md) | 291 | `declaration-track:e59512066dad0988b64d35db9a6931e4ac8ecca01720b8886544c1771f136d37` |
| 29 | `def` | [Fix.drec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variantd3c1f8561106c2eda8b8c810c6ca9a62a2b7ca77d1c1756c4f17fe4b968b8ed8.lean/declarations/fix-drec--016b8d1a774eeca23b6f9138.md) | 309 | `declaration-track:016b8d1a774eeca23b6f913811ec64f25f4cc2de860a9ff638bfe96ffe058fdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
