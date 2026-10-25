# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Dyadic.Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31bee7f6e4d09206262936954590a9be38def46f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31bee7f6e4d09206262936954590a9be38def46f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Birthday` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Surreal.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf--3e419ec15d28165a48cd2f19.md) | 48 | `declaration-track:3e419ec15d28165a48cd2f194e46bb086bdc72230cdba974ac006ad07a8513e1` |
| 2 | `theorem` | [powHalf_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-zero--8f7e569a8946cd7dcaee8daf.md) | 54 | `result-track:8f7e569a8946cd7dcaee8daff9b2d796c6d27467ffaf6430c02b6cc496cf2439` |
| 3 | `theorem` | [powHalf_leftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-leftmoves--fb0c1d30ae57618d8ad688d1.md) | 58 | `result-track:fb0c1d30ae57618d8ad688d143f880c4a4aa7c816a17f14d2d9327fb17e72515` |
| 4 | `theorem` | [powHalf_zero_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-zero-rightmoves--6c3ffee56ed917d15761cc8e.md) | 61 | `result-track:6c3ffee56ed917d15761cc8e12ff5e88ab9bbc6d865a783bc729a729aa25b5ad` |
| 5 | `theorem` | [powHalf_succ_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-succ-rightmoves--2abcb7b8adbf903ed53093de.md) | 65 | `result-track:2abcb7b8adbf903ed53093dea3271695efbfdff90dfc867b7eb250af9e840684` |
| 6 | `theorem` | [powHalf_moveLeft](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-moveleft--bed9ae0e59fd4932303b7bfe.md) | 70 | `result-track:bed9ae0e59fd4932303b7bfe73118b8489753536ebd7829e39df3cbdb17caf44` |
| 7 | `theorem` | [powHalf_succ_moveRight](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-succ-moveright--1097f0fec99c6931b27fd71c.md) | 74 | `result-track:1097f0fec99c6931b27fd71cc4ff349325d177e066f134d19da73691b667c526` |
| 8 | `instance` | [uniquePowHalfLeftMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/uniquepowhalfleftmoves--d2e97f062414bdcde8c9d64d.md) | 78 | `declaration-track:d2e97f062414bdcde8c9d64d8e7ea3019bee06907fe2ddb544852fefded97713` |
| 9 | `instance` | [isEmpty_powHalf_zero_rightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/isempty-powhalf-zero-rightmoves--dc6ae024bb1821eb15d3dceb.md) | 82 | `declaration-track:dc6ae024bb1821eb15d3dceb81bf77a503140beccb23ab621b309fb8f3b333c3` |
| 10 | `instance` | [uniquePowHalfSuccRightMoves](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/uniquepowhalfsuccrightmoves--5c2dd3b6c51f0494fce77037.md) | 86 | `declaration-track:5c2dd3b6c51f0494fce77037598d40a8b21e243189c531dba96d3020692dca93` |
| 11 | `theorem` | [birthday_half](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/birthday-half--e30ba077a67f95b40c63c315.md) | 91 | `result-track:e30ba077a67f95b40c63c315b43dd99c90078e75626301f7a5f4a0e13809e42c` |
| 12 | `theorem` | [numeric_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/numeric-powhalf--2b9e1802bcd037fb6c2bddf9.md) | 96 | `result-track:2b9e1802bcd037fb6c2bddf9e84546a6575ac6ca9b7316ae4f20654ca09f53fe` |
| 13 | `theorem` | [powHalf_succ_lt_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-succ-lt-powhalf--51e3e957f21ad40bc952f162.md) | 104 | `result-track:51e3e957f21ad40bc952f162e30a21cc09ef7d7037f1ddf32114c19692da63c9` |
| 14 | `theorem` | [powHalf_succ_le_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-succ-le-powhalf--3e5aac8d56c5ca4a331b8e90.md) | 108 | `result-track:3e5aac8d56c5ca4a331b8e90ad8c6a53431b5df83cdbfaa0222253382e10dd6c` |
| 15 | `theorem` | [powHalf_le_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-le-one--455294d3bed22447149c17ef.md) | 112 | `result-track:455294d3bed22447149c17ef4d87e558e351ac789649532a7a2ff18b4726ef22` |
| 16 | `theorem` | [powHalf_succ_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-succ-lt-one--100f874a54b859d1a243c428.md) | 118 | `result-track:100f874a54b859d1a243c42872d01625bd50c8a505c311ddd5aee18f723c5fb1` |
| 17 | `theorem` | [powHalf_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-pos--fdce050005a280f23fb14d16.md) | 122 | `result-track:fdce050005a280f23fb14d16d730cf24f0c315248c181ef9a67a82d023237bd1` |
| 18 | `theorem` | [zero_le_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/zero-le-powhalf--8f38d8e941a2c396d59eb0d0.md) | 126 | `result-track:8f38d8e941a2c396d59eb0d029af9f9645c03f1c0832ba7b29f359870efac2ed` |
| 19 | `theorem` | [add_powHalf_succ_self_eq_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/add-powhalf-succ-self-eq-powhalf--dc3afa3e105fe30793a158b1.md) | 130 | `result-track:dc3afa3e105fe30793a158b1d2093e71d89d6aaefadaaa0eeb620c4c13ed404f` |
| 20 | `theorem` | [half_add_half_equiv_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/half-add-half-equiv-one--8c81477131b101c04b1a9424.md) | 164 | `result-track:8c81477131b101c04b1a9424ad517a719c61c533f3101ed8db1df57c865932ee` |
| 21 | `def` | [powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf--0007d6a11601c5015ba289be.md) | 177 | `declaration-track:0007d6a11601c5015ba289beb93b260c520508f5fbcc812e7e84c4ec06b97d82` |
| 22 | `theorem` | [powHalf_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/powhalf-zero--cae8b7afe0e10c35fdd09aaf.md) | 182 | `result-track:cae8b7afe0e10c35fdd09aafc0a482d9972ac37cd28b1758f4f993581c95b50f` |
| 23 | `theorem` | [double_powHalf_succ_eq_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/double-powhalf-succ-eq-powhalf--ba998336e0f8c486c878ee53.md) | 187 | `result-track:ba998336e0f8c486c878ee53d85caac6dd32f11e7db2271eaedf895654fe260f` |
| 24 | `theorem` | [nsmul_pow_two_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/nsmul-pow-two-powhalf--0f9fb7f9762e1ee8d96f5ffa.md) | 192 | `result-track:0f9fb7f9762e1ee8d96f5ffa52b54d33889a96da8ae80651456953b0cc5bc670` |
| 25 | `theorem` | [nsmul_pow_two_powHalf'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/nsmul-pow-two-powhalf--2f1408adf0a0cdfbb0139bf9.md) | 200 | `result-track:2f1408adf0a0cdfbb0139bf923a32a8739607d5fa3442fde61978c7750b45ab3` |
| 26 | `theorem` | [zsmul_pow_two_powHalf](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/zsmul-pow-two-powhalf--b30e2ffc36d1418f1acdaa4f.md) | 209 | `result-track:b30e2ffc36d1418f1acdaa4f4c6a9524d10c9168bf55f4393badc874f3d14672` |
| 27 | `theorem` | [dyadic_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/dyadic-aux--7c87e508ddeea452d7d12e1f.md) | 217 | `result-track:7c87e508ddeea452d7d12e1f539eb284d81f2fd1d721d99e06c00b8b920da574` |
| 28 | `def` | [dyadicMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/dyadicmap--75687b095ac05cd7c601a2be.md) | 232 | `declaration-track:75687b095ac05cd7c601a2beaeca15706ee377c49b5058083806f0cc41d8b5bc` |
| 29 | `theorem` | [dyadicMap_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/dyadicmap-apply--966b2bed217d26cd873795ba.md) | 268 | `result-track:966b2bed217d26cd873795ba383a0a9ac366519b9f9a1b1b4c62b79127889283` |
| 30 | `theorem` | [dyadicMap_apply_pow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/dyadicmap-apply-pow--c2541c07716de9a83bd22ced.md) | 275 | `result-track:c2541c07716de9a83bd22ced888393f28530c79de6bdc43fabf78c32fe2d68b3` |
| 31 | `theorem` | [dyadicMap_apply_pow'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/dyadicmap-apply-pow--b775ab451554c398c62a637c.md) | 282 | `result-track:b775ab451554c398c62a637c58c183987ec25b17a3d43593ab544839a4ca58bf` |
| 32 | `def` | [dyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Dyadic/Variant41c49fab4326b660d6fdca62bf8b47af598dd7feaa68258cd321ac506db39131.lean/declarations/dyadic--1827003c8be1b3d3a7e409c3.md) | 287 | `declaration-track:1827003c8be1b3d3a7e409c35137800f26de53948a1a98f423a64e0f3fbf0249` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
