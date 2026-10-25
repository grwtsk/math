# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Fix.Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff283b262d1541a6a5351960ecd90d922896958c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff283b262d1541a6a5351960ecd90d922896958c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean.json)

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
| 1 | `def` | [recF](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/recf--d5b331347b85cf4280210b4e.md) | 67 | `declaration-track:d5b331347b85cf4280210b4e04d041e8c7041ee7f3713fe87cd7c86b01025bbd` |
| 2 | `theorem` | [recF_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/recf-eq--9b63d752a2a9a50287af96a6.md) | 72 | `result-track:9b63d752a2a9a50287af96a6bdc9148f8ab3c35f845b6d2d414c19f402cd0f08` |
| 3 | `theorem` | [recF_eq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/recf-eq--5e6fe49283f983d3f85193d2.md) | 79 | `result-track:5e6fe49283f983d3f85193d20f728ca90b5af8797b6d44a9ea3a5191167e6693` |
| 4 | `inductive` | [WEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/wequiv--f05ca45c96694321c4319799.md) | 89 | `declaration-track:f05ca45c96694321c4319799390ff2ed7da4dfa0f67936896ed9f60a6e1b5395` |
| 5 | `theorem` | [recF_eq_of_wEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/recf-eq-of-wequiv--c7a495f80a605106c9ece91b.md) | 100 | `result-track:c7a495f80a605106c9ece91bbee86077a3a52a035908401a87cc480357f5daec` |
| 6 | `theorem` | [wEquiv.abs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/wequiv-abs--428a595ac22d3d0198a1a29c.md) | 116 | `result-track:428a595ac22d3d0198a1a29ccb0f4efcf6f2937602641ac19b245caec6e5da03` |
| 7 | `theorem` | [wEquiv.refl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/wequiv-refl--131b0600c186b78ea9a85321.md) | 128 | `result-track:131b0600c186b78ea9a85321de8b689fe9f8fc2f181df7f15815f7d209a3b83e` |
| 8 | `theorem` | [wEquiv.symm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/wequiv-symm--42e570e9c07a8328c8b7fe3d.md) | 133 | `result-track:42e570e9c07a8328c8b7fe3d41a941b0880c6062f80f594185c9f2669fd073ca` |
| 9 | `def` | [wrepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/wrepr--ed34f2fe1493f900c5ed0a63.md) | 142 | `declaration-track:ed34f2fe1493f900c5ed0a63afb5f0ffba22993b1758588a9c4d6594a611cb69` |
| 10 | `theorem` | [wrepr_wMk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/wrepr-wmk--31b9925ea33fa62f186616a9.md) | 147 | `result-track:31b9925ea33fa62f186616a90c6b9f867c431a41801f1cd32bd98082d3568c92` |
| 11 | `theorem` | [wrepr_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/wrepr-equiv--909b2f45606fa6ca0bb91106.md) | 155 | `result-track:909b2f45606fa6ca0bb9110690ef331a3fb244fabbfdf10f896a930a8d9d6267` |
| 12 | `theorem` | [wEquiv_map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/wequiv-map--17a2acb78739c61efef53199.md) | 165 | `result-track:17a2acb78739c61efef53199d38be9b7dd67ea57aa763f03b42ee9093b7c825d` |
| 13 | `def` | [wSetoid](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/wsetoid--1d8118ec28f2a45cbfeedb71.md) | 182 | `declaration-track:1d8118ec28f2a45cbfeedb71df3670f05069e3b24fbbd160fd4f7cecc0bf5532` |
| 14 | `def` | [Fix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix--b4601cf7cf6d167d15212c60.md) | 196 | `declaration-track:b4601cf7cf6d167d15212c607d75424da017e4f1cf8b3d00b78529c76733af96` |
| 15 | `def` | [Fix.map](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-map--67c33fb044f6710bf9fdf9fc.md) | 203 | `declaration-track:67c33fb044f6710bf9fdf9fc046fabd55ff503a973a9b24810d3a1d6434bb6fc` |
| 16 | `instance` | [Fix.mvfunctor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-mvfunctor--dd3313a4471bd4df61efa036.md) | 207 | `declaration-track:dd3313a4471bd4df61efa03628b516e3a1fb2b016a9f9570a60efa77ad758e5c` |
| 17 | `def` | [Fix.rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-rec--e850d434707985514537ba8d.md) | 213 | `declaration-track:e850d434707985514537ba8db25f2f10b80dcb90654ab8bee31ecb0c02cef735` |
| 18 | `def` | [fixToW](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fixtow--ccd6a2b0f04155ccd504e50a.md) | 218 | `declaration-track:ccd6a2b0f04155ccd504e50a8deae6ccc5c65e4b72bd3ec33837edb59c49ee22` |
| 19 | `def` | [Fix.mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-mk--a8f2dde6a2c02ab82630b5bd.md) | 224 | `declaration-track:a8f2dde6a2c02ab82630b5bd2d9dc0989486c2492d432806d3b082fe1291be69` |
| 20 | `def` | [Fix.dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-dest--1227c219f1eb682d043dbaa1.md) | 229 | `declaration-track:1227c219f1eb682d043dbaa11b1916505190a32adcebff0d06e91439c2124285` |
| 21 | `theorem` | [Fix.rec_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-rec-eq--c5e3b2b323e7f73bfca17ca7.md) | 233 | `result-track:c5e3b2b323e7f73bfca17ca7ceb8c8d7f781d8371dab5e85b7ce393bde384eeb` |
| 22 | `theorem` | [Fix.ind_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-ind-aux--b9ff4cc6939c64477defe456.md) | 250 | `result-track:b9ff4cc6939c64477defe456174f5e8fbcfe60d321c49aa02091c1b978d7a7da` |
| 23 | `theorem` | [Fix.ind_rec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-ind-rec--18dd25ee16f0ba7ed241a41e.md) | 266 | `result-track:18dd25ee16f0ba7ed241a41eddae96a62b98392ee1839b80a3aa9a9bbc026d4d` |
| 24 | `theorem` | [Fix.rec_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-rec-unique--fc631474f84c280cf3eeca7e.md) | 287 | `result-track:fc631474f84c280cf3eeca7e1d6ba75019dab5aaa1e08029d241d5c8216f2ca9` |
| 25 | `theorem` | [Fix.mk_dest](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-mk-dest--0ecabb5e811cbaba8cb79069.md) | 295 | `result-track:0ecabb5e811cbaba8cb79069e5d23f4b9f0d90808106f4ca960e05ce849cc7cc` |
| 26 | `theorem` | [Fix.dest_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-dest-mk--c9298c986b45208c8cbfb290.md) | 305 | `result-track:c9298c986b45208c8cbfb290f328e3db7644fb17315de8338eebd79c79ba87cd` |
| 27 | `theorem` | [Fix.ind](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-ind--bcf4aa3e397821d0d28944fa.md) | 318 | `result-track:bcf4aa3e397821d0d28944fa4af8dd2a23031e3e2189657fc04255c71c890bb4` |
| 28 | `instance` | [mvqpfFix](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/mvqpffix--aed525d58e898bb1ba5d2239.md) | 334 | `declaration-track:aed525d58e898bb1ba5d2239e3ca12a44642985869c76a580593aed27c4a913d` |
| 29 | `def` | [Fix.drec](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8898dc6c1e434bc8cb389de0b75e32004a65d73d68bd6d1a0184bf109ab68c49.lean/declarations/fix-drec--aa24d84463362d080d969d17.md) | 352 | `declaration-track:aa24d84463362d080d969d17456d597de2b632312fb7bb731103354c06c5f5a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
