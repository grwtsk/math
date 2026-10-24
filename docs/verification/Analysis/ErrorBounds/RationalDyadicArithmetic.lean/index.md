# Verification target: GRWTSK.Analysis.ErrorBounds.RationalDyadicArithmetic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0343df4901aad3635a6f3f4422a62b69a24e6af2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalDyadicArithmetic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/index.md) · [Full source](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0343df4901aad3635a6f3f4422a62b69a24e6af2`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalDyadicArithmetic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalDyadicArithmetic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalNewtonDisk`](../../../../mathematics/Analysis/ErrorBounds/RationalNewtonDisk.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalExpTrace`](../../../../mathematics/Analysis/ErrorBounds/RationalExpTrace.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Data.Rat.Floor` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [denominator](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/denominator--01a8e38cd17ec8d6315c5cc8.md) | 27 | `declaration-track:01a8e38cd17ec8d6315c5cc888dbff863e699af220510bf50d44479cdabad5d2` |
| 2 | `def` | [down](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/down--8846596fed514a71148a2d34.md) | 29 | `declaration-track:8846596fed514a71148a2d34d716c0f785e73c345e328d1d53d9aa12ffeb978d` |
| 3 | `def` | [up](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/up--455f27c09af6593e2ff91584.md) | 31 | `declaration-track:455f27c09af6593e2ff9158434e26c7e47de55d46adb9dcfb37b2b06388b5ac4` |
| 4 | `def` | [rounded](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/rounded--56a3ab29a2693cbc8d5c0ea3.md) | 33 | `declaration-track:56a3ab29a2693cbc8d5c0ea36c87c6abc8a8e3df75aeb360d6f925cddf01c9c4` |
| 5 | `structure` | [Ball](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/ball--0116bfb1991f918ffb9510f7.md) | 36 | `declaration-track:0116bfb1991f918ffb9510f74327c18ee9917b4234e8ede4d564cb78183e7403` |
| 6 | `def` | [Holds](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/holds--a92a048fc3f680d4f099b558.md) | 41 | `declaration-track:a92a048fc3f680d4f099b558fb1772205ff1ec108cf60a008349771b4b574f82` |
| 7 | `def` | [roundBall](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/roundball--1ac195a40c5ea9cd449a93e6.md) | 43 | `declaration-track:1ac195a40c5ea9cd449a93e6c344a82b10b9368f82471a7a20be9eca9011a486` |
| 8 | `def` | [ballAdd](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/balladd--ff2869726af55e23053bae45.md) | 46 | `declaration-track:ff2869726af55e23053bae4509db5158377c1c3fda35ddb959129fd817cf74ef` |
| 9 | `def` | [ballMul](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/ballmul--bd498f5c909af2f566d3a197.md) | 49 | `declaration-track:bd498f5c909af2f566d3a197467d2391ca298c99514918cc8f18304c9d4443e3` |
| 10 | `def` | [ballScale](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/ballscale--828bd2ba69c924c3b11345be.md) | 53 | `declaration-track:828bd2ba69c924c3b11345beabede33f70f78110661edccd21e31f4dc501ebbd` |
| 11 | `theorem` | [denominator_pos](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/denominator-pos--d04e25c951ea8a0566df494d.md) | 56 | `result-track:d04e25c951ea8a0566df494d8bb3e3a1650925825064ebce4473e7af90539fa3` |
| 12 | `theorem` | [down_le](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/down-le--f7d6497d30054555a7874a3e.md) | 61 | `result-track:f7d6497d30054555a7874a3ece9de362fe830c82ed9d5e6290bcd9663cc38efc` |
| 13 | `theorem` | [le_up](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/le-up--6397d24c1e2e165ea4f8d9d4.md) | 65 | `result-track:6397d24c1e2e165ea4f8d9d44dc04d78a1c0cea75968513f2eedfaf1e3eba03e` |
| 14 | `theorem` | [down_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/down-nonneg--712007c600692a7385ef8a01.md) | 69 | `result-track:712007c600692a7385ef8a01e7b34c3182854899dd49e83d851ea99516f7a85a` |
| 15 | `theorem` | [up_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/up-nonneg--1cd239e6b69720bdd45ab3b6.md) | 74 | `result-track:1cd239e6b69720bdd45ab3b6460aa78ee7827833a416df78695088e4d0345608` |
| 16 | `theorem` | [down_zero](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/down-zero--b2276ddde8f2c3edfe03d55e.md) | 77 | `result-track:b2276ddde8f2c3edfe03d55e6985360a0ab35e66f37365d52df5a6b2ce15c7c6` |
| 17 | `theorem` | [up_zero](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/up-zero--20d3e0b8cb61caddd77fa796.md) | 78 | `result-track:20d3e0b8cb61caddd77fa796813ba80f85f1c29e631323705e3745b60aea5357` |
| 18 | `theorem` | [holds_radius_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/holds-radius-nonneg--1860853a08bbd406fad9c812.md) | 80 | `result-track:1860853a08bbd406fad9c8127bfc19f8aa376d05907bbc73fae884e9ea079dec` |
| 19 | `theorem` | [roundBall_sound](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/roundball-sound--49bd2f81cc2d0ff636a2013c.md) | 85 | `result-track:49bd2f81cc2d0ff636a2013ca3ce2dfe080feabd76750ab958006a15004e5696` |
| 20 | `theorem` | [ballAdd_sound](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/balladd-sound--bc37441358f36fb9e069d261.md) | 100 | `result-track:bc37441358f36fb9e069d261c2bc25f4dbd80295c103fa9666efda261e17a107` |
| 21 | `theorem` | [ballMul_sound](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/ballmul-sound--0db17fdbb521d1c29168e611.md) | 111 | `result-track:0db17fdbb521d1c29168e61139a6c3068fab40d48b647add672bfe40d9cac79d` |
| 22 | `theorem` | [ballScale_sound](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/ballscale-sound--358a36cc39a36aedc3d03e0a.md) | 136 | `result-track:358a36cc39a36aedc3d03e0a05177596be442ea9319d819b7892ecaf419751b0` |
| 23 | `def` | [outwardPropagation](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/outwardpropagation--213da8680bdb0a50c1498be7.md) | 145 | `declaration-track:213da8680bdb0a50c1498be751b510b43771b36b288fac61e2564720073cae93` |
| 24 | `theorem` | [propagate_nonneg](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/propagate-nonneg--112e0a4555881c23e90c0029.md) | 150 | `result-track:112e0a4555881c23e90c00296e49a0402dd793f330e89824e8d676c433685b1e` |
| 25 | `theorem` | [propagate_le_outward](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/propagate-le-outward--139721698622c5e884c7fcd6.md) | 163 | `result-track:139721698622c5e884c7fcd6c56edda1faf8775d5e32bfff6656ec6e57948bb1` |
| 26 | `theorem` | [checked_exp_outward_error](../../../../mathematics/Analysis/ErrorBounds/RationalDyadicArithmetic.lean/declarations/checked-exp-outward-error--28e4901579dbc1911fb87ded.md) | 181 | `result-track:28e4901579dbc1911fb87dedb84a6e0deffa4f8b406dd71db971f71686f22e63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
