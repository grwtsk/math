# Verification target: GRWTSK.Algebra.NegOnePow.Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "194d23e68cc1a42aabbcc711f1308b626c07eb62",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/index.md) · [Full source](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `194d23e68cc1a42aabbcc711f1308b626c07eb62`.

Source path: `GRWTSK/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Int.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.IntUnitsPower` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [negOnePow](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow--cc2284466769ddc8f88855d1.md) | 26 | `declaration-track:cc2284466769ddc8f88855d1019763d4081dd354704ca6fbd370a465ed90adea` |
| 2 | `lemma` | [negOnePow_def](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-def--00f0b07c7b3b7f6abeae4015.md) | 28 | `result-track:00f0b07c7b3b7f6abeae40159227ac37e33861c57fed89b0b1086122beb0ec5e` |
| 3 | `lemma` | [negOnePow_add](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-add--e1e4f55adb2c63a805ed96ca.md) | 30 | `result-track:e1e4f55adb2c63a805ed96ca83c92321d32431090152a851e2693a550b2dda91` |
| 4 | `lemma` | [negOnePow_zero](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-zero--446e1e88c3c76eb8f87b14b0.md) | 35 | `result-track:446e1e88c3c76eb8f87b14b0d135bc796d929071f2fa8c2c96562003fb826b45` |
| 5 | `lemma` | [negOnePow_one](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-one--76197d24d6a17be283169661.md) | 38 | `result-track:76197d24d6a17be2831696611771ec13c4925f757cf6ef50b9671877c6be7b04` |
| 6 | `lemma` | [negOnePow_succ](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-succ--ba9605421a1bf28b76e271d1.md) | 40 | `result-track:ba9605421a1bf28b76e271d1244b9fc78e25f65cb746dc93f1b8aa656c3cb3e6` |
| 7 | `lemma` | [negOnePow_even](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-even--af1fcf06d4f2fad1e26d6657.md) | 43 | `result-track:af1fcf06d4f2fad1e26d6657f106ae35bdf62f44214b2ac8f1910a1c46ab480f` |
| 8 | `lemma` | [negOnePow_two_mul](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-two-mul--6f9b0a6c8395a0e187b19dad.md) | 48 | `result-track:6f9b0a6c8395a0e187b19dadccb20e55e86d57b46570f249317d6a4518256c02` |
| 9 | `lemma` | [negOnePow_odd](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-odd--0d7dbec9f25e6c0df048b7df.md) | 51 | `result-track:0d7dbec9f25e6c0df048b7dfd660ccb4f35176c2e836be097342fda058d4c492` |
| 10 | `lemma` | [negOnePow_two_mul_add_one](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-two-mul-add-one--aa015da846d9064aa53a7717.md) | 56 | `result-track:aa015da846d9064aa53a77170a7bcf58ebde758682b0ab21f59e5490e8f218b6` |
| 11 | `lemma` | [negOnePow_eq_one_iff](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-eq-one-iff--864c4143c8ccab42e5e4848a.md) | 59 | `result-track:864c4143c8ccab42e5e4848a79c9d1d76c8ed36d6c99fc0b74a61ddd15da22f9` |
| 12 | `lemma` | [negOnePow_eq_neg_one_iff](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-eq-neg-one-iff--625483db985efdb0e3b7c491.md) | 68 | `result-track:625483db985efdb0e3b7c49174d9899308455abd4ef22c1e81b6d4b1204692fc` |
| 13 | `theorem` | [abs_negOnePow](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/abs-negonepow--d2314ac7027e46798fc7b706.md) | 78 | `result-track:d2314ac7027e46798fc7b706462d5e9b097f3e376fe8110ac2381803afbf5285` |
| 14 | `lemma` | [negOnePow_neg](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-neg--42aff0e5e8d7313484c0659f.md) | 82 | `result-track:42aff0e5e8d7313484c0659f2424c16eb78429373e2f125406cfff572e120079` |
| 15 | `lemma` | [negOnePow_abs](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-abs--43aefab831a3c92f8991c3ca.md) | 87 | `result-track:43aefab831a3c92f8991c3ca5bc43cd579642e8793f5a62d4e5e40bdcb34d426` |
| 16 | `lemma` | [negOnePow_sub](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-sub--d255241328a19ae3c307dcdf.md) | 90 | `result-track:d255241328a19ae3c307dcdf1d132b39aba411e9b8a1ffd0d574cdc390f5fc4d` |
| 17 | `lemma` | [negOnePow_eq_iff](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-eq-iff--e2c546669d951bcd401af02e.md) | 94 | `result-track:e2c546669d951bcd401af02e85b7fa5eb9ecbf5e6015b89e9d84b06c1cc0635f` |
| 18 | `lemma` | [negOnePow_mul_self](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/negonepow-mul-self--7d038e27a50b2e01c0bbc2a6.md) | 105 | `result-track:7d038e27a50b2e01c0bbc2a6dd1f940b4b0d64286915eb6891e9945d21e58ab9` |
| 19 | `lemma` | [cast_negOnePow_natCast](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/cast-negonepow-natcast--0a594556797fbc0033e69bb6.md) | 108 | `result-track:0a594556797fbc0033e69bb6e73fbb8c7d9b20c52f66c31a5246d32dfa6b1b4b` |
| 20 | `lemma` | [coe_negOnePow_natCast](../../../../mathematics/Algebra/NegOnePow/Variantef1a4f09392cf3c572e3067e14373bc1b4e5eeaab3a97abc859154e774b7ee30.lean/declarations/coe-negonepow-natcast--5b72903714fd7a90d3f91dd4.md) | 111 | `result-track:5b72903714fd7a90d3f91dd45637286818a1d0c12f35cbba80ef4a14cc776b31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
