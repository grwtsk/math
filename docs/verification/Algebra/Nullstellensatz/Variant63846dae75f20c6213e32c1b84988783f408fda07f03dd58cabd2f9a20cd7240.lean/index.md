# Verification target: GRWTSK.Algebra.Nullstellensatz.Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d907a355ef948ae520dc5f725fb9fee480a0012",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/index.md) · [Full source](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d907a355ef948ae520dc5f725fb9fee480a0012`.

Source path: `GRWTSK/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Jacobson` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.MvPolynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PrimeSpectrum.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/zerolocus--8ca15a939051b162a2367063.md) | 49 | `declaration-track:8ca15a939051b162a236706378767dea2469d554be6f3142cf0500db5edb2fc0` |
| 2 | `theorem` | [mem_zeroLocus_iff](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/mem-zerolocus-iff--a6295e16585351b6a7c9fd7d.md) | 54 | `result-track:a6295e16585351b6a7c9fd7dbf8ac8b9f65a4b8c821867391a668fa5aa208b83` |
| 3 | `theorem` | [zeroLocus_anti_mono](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/zerolocus-anti-mono--b04e71aae3153373fd3f7090.md) | 59 | `result-track:b04e71aae3153373fd3f70902dffd7db393d75d1851172380d4c7c5e28249790` |
| 4 | `theorem` | [zeroLocus_bot](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/zerolocus-bot--b2b34d3b2d3fe772438a3308.md) | 64 | `result-track:b2b34d3b2d3fe772438a33089c8b564fd94a572473b6a399ddf40eeea2df71ad` |
| 5 | `theorem` | [zeroLocus_top](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/zerolocus-top--b155ebb04e8fd1e155845cd8.md) | 69 | `result-track:b155ebb04e8fd1e155845cd874929bc22b59db1bdf59ac59022e140244dd3080` |
| 6 | `def` | [vanishingIdeal](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/vanishingideal--ec625682ef648258dc935f98.md) | 74 | `declaration-track:ec625682ef648258dc935f98a3fbb063d59ae7614be91a58488b06a030c720f3` |
| 7 | `theorem` | [mem_vanishingIdeal_iff](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/mem-vanishingideal-iff--25e29e8ec6936afc455a5e09.md) | 83 | `result-track:25e29e8ec6936afc455a5e097791dcfce0a9917f4c38af32ed59514a44f4a314` |
| 8 | `theorem` | [vanishingIdeal_anti_mono](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/vanishingideal-anti-mono--42d5c2701de8f45ed6a2a6a9.md) | 88 | `result-track:42d5c2701de8f45ed6a2a6a95be48472336a7c8fe9e5e8cf861374828f4cfb89` |
| 9 | `theorem` | [vanishingIdeal_empty](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/vanishingideal-empty--f65169b79996fcb6a7d4add9.md) | 92 | `result-track:f65169b79996fcb6a7d4add9851bd23645ff49f7a7067f369f9ecff01e398938` |
| 10 | `theorem` | [le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/le-vanishingideal-zerolocus--5b3b31eb3f3d1a4da22767d8.md) | 96 | `result-track:5b3b31eb3f3d1a4da22767d86b6dc4add20024ede8006d13b89de455ac25932f` |
| 11 | `theorem` | [zeroLocus_vanishingIdeal_le](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/zerolocus-vanishingideal-le--695a9a3a9f5169be76f4c1e1.md) | 100 | `result-track:695a9a3a9f5169be76f4c1e1b020f45192aeb6d439538d8f786649707ba6b131` |
| 12 | `theorem` | [zeroLocus_vanishingIdeal_galoisConnection](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/zerolocus-vanishingideal-galoisconnection--0495237839ec03d20fdb7382.md) | 104 | `result-track:0495237839ec03d20fdb7382d6c23d72e0d4864a39086610135397caf7d997b1` |
| 13 | `theorem` | [le_zeroLocus_iff_le_vanishingIdeal](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/le-zerolocus-iff-le-vanishingideal--c48ad6985964e312daf30c69.md) | 110 | `result-track:c48ad6985964e312daf30c698e08dda289e3aecde008399c079bb975bab0be8d` |
| 14 | `theorem` | [zeroLocus_span](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/zerolocus-span--1ba9cac4a69f4bdefcb7cfdc.md) | 114 | `result-track:1ba9cac4a69f4bdefcb7cfdc74400822fe37b7d12e838158b9b0d49ea5955c76` |
| 15 | `theorem` | [mem_vanishingIdeal_singleton_iff](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/mem-vanishingideal-singleton-iff--32791421198b6e1a6f67c871.md) | 119 | `result-track:32791421198b6e1a6f67c871cec810b967d78dc8d8aa2fefd19b0cf8adf573c3` |
| 16 | `instance` | [vanishingIdeal_singleton_isMaximal](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/vanishingideal-singleton-ismaximal--c4aef683e4f86d20423bc91e.md) | 124 | `declaration-track:c4aef683e4f86d20423bc91ed2ce6b6e7af840bb1272ccf13e869b10649bb2f5` |
| 17 | `theorem` | [radical_le_vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/radical-le-vanishingideal-zerolocus--879edb0d66cc0366b69e108b.md) | 140 | `result-track:879edb0d66cc0366b69e108b7b7b75f87d4434b0acac38304b02bc35fb7fe37d` |
| 18 | `def` | [pointToPoint](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/pointtopoint--3dffd2c5f1af26aa9f38a25b.md) | 153 | `declaration-track:3dffd2c5f1af26aa9f38a25b13a56b74c5f4bf1fc07f99e07c997a1c2ef63a0f` |
| 19 | `theorem` | [vanishingIdeal_pointToPoint](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/vanishingideal-pointtopoint--b14ad8136000be6ba674c0d2.md) | 158 | `result-track:b14ad8136000be6ba674c0d2b7508d7507ff5141969348e67fad4374ce984168` |
| 20 | `theorem` | [pointToPoint_zeroLocus_le](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/pointtopoint-zerolocus-le--898cf14fea96d6f24e4f1d24.md) | 171 | `result-track:898cf14fea96d6f24e4f1d24ad6327678aaf48298a85b746c8c6abb8445c49c5` |
| 21 | `theorem` | [isMaximal_iff_eq_vanishingIdeal_singleton](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/ismaximal-iff-eq-vanishingideal-singleton--3c7e6ec27ab070c23e25a81a.md) | 181 | `result-track:3c7e6ec27ab070c23e25a81ac629d2e9e50acda64be9d4d00399d6ba773491de` |
| 22 | `theorem` | [vanishingIdeal_zeroLocus_eq_radical](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/vanishingideal-zerolocus-eq-radical--496cb83c470b6c7df94a8bf8.md) | 208 | `result-track:496cb83c470b6c7df94a8bf806c3a2b1f98dc9af10d9bec858d3ec70fe211ab0` |
| 23 | `theorem` | [IsPrime.vanishingIdeal_zeroLocus](../../../../mathematics/Algebra/Nullstellensatz/Variant63846dae75f20c6213e32c1b84988783f408fda07f03dd58cabd2f9a20cd7240.lean/declarations/isprime-vanishingideal-zerolocus--d960ece43c4ce8b84a2cc4d8.md) | 225 | `result-track:d960ece43c4ce8b84a2cc4d86f27cf7cb994957e70ed384ddd210d76fbd4f040` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
