# Verification target: GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239QuinticFareyBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "665105c6e0ad86bbb8647bc89f0980bfc735aae8",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `665105c6e0ad86bbb8647bc89f0980bfc735aae8`.

Source path: `GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239Curve`](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239Curve.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Farey.ResolvableQuintic`](../../../../../mathematics/NumberTheory/Farey/ResolvableQuintic.lean/index.md) — import line 14; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completedSquareLower](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/completedsquarelower--878609956193e1ac16a1d2a5.md) | 50 | `declaration-track:878609956193e1ac16a1d2a5ae34d42b8a63442647d3c61859d8daf18f72472e` |
| 2 | `def` | [completedSquareCubic](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/completedsquarecubic--ecd02212147d9808f9406f04.md) | 54 | `declaration-track:ecd02212147d9808f9406f04beb439997bc0847237fa85cabbfc05c76807ea7e` |
| 3 | `def` | [positiveQuadratic](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/positivequadratic--3a76cb1da3ea99b1be4242fb.md) | 58 | `declaration-track:3a76cb1da3ea99b1be4242fb344089eb6b869d96d27ab0e22c38f5f0422340c7` |
| 4 | `def` | [rank32Quintic](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/rank32quintic--29a384777102e867b2c398c1.md) | 61 | `declaration-track:29a384777102e867b2c398c1bd02246957a36e52da416dd55121ef5abdbdf083` |
| 5 | `theorem` | [eval_completedSquareCubic](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/eval-completedsquarecubic--432df7c7b9206860b566452c.md) | 64 | `result-track:432df7c7b9206860b566452ca8b0e56234bd41d990ec8807f42a899cef502f29` |
| 6 | `theorem` | [eval_positiveQuadratic](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/eval-positivequadratic--fb4f7b297b4f2f49c916fc30.md) | 70 | `result-track:fb4f7b297b4f2f49c916fc30f0e0e13ba0d659f4719a2e9270d2dd21a0bda83e` |
| 7 | `theorem` | [positiveQuadratic_eval_pos](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/positivequadratic-eval-pos--73ea6db940033de801225b00.md) | 75 | `result-track:73ea6db940033de801225b002be54f3881c69c351e4cb1dbc994793ebd8bf5c9` |
| 8 | `theorem` | [eval_rank32Quintic](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/eval-rank32quintic--6321c64dcea096431a9dc278.md) | 80 | `result-track:6321c64dcea096431a9dc278e355ba86b029ebfc26b5e7629fc15533d93e5a6c` |
| 9 | `theorem` | [completedSquareCubic_at_published_point](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/completedsquarecubic-at-published-point--baba3340568fbb11ec19b27c.md) | 86 | `result-track:baba3340568fbb11ec19b27cd383d9a5019fd189c298aef79aa85bbbd31073d0` |
| 10 | `theorem` | [rank32Quintic_at_published_point](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/rank32quintic-at-published-point--986d331e978ad99649980850.md) | 96 | `result-track:986d331e978ad996499808503fa6b2662577927571f8434175ce854850d0c4e2` |
| 11 | `theorem` | [rank32Quintic_at_published_point_nonneg](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/rank32quintic-at-published-point-nonneg--793cdda651b2b9a1b680a459.md) | 102 | `result-track:793cdda651b2b9a1b680a4598953677b91778434273816c58b56ffb73027e276` |
| 12 | `theorem` | [eval_rank32Quintic_eq_zero_iff](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/eval-rank32quintic-eq-zero-iff--8489121f60926eaef28ffa1f.md) | 108 | `result-track:8489121f60926eaef28ffa1fc98da57679baefe0f10ffdc125f185ee95b2d086` |
| 13 | `theorem` | [eval_rank32Quintic_nonpos_iff](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/eval-rank32quintic-nonpos-iff--f3526238820a6a4576665c90.md) | 115 | `result-track:f3526238820a6a4576665c90295d7b34e42fb29758496785c306ce0d07294db5` |
| 14 | `theorem` | [eval_rank32Quintic_nonneg_iff](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/eval-rank32quintic-nonneg-iff--af96f077f335afd80c865eb2.md) | 122 | `result-track:af96f077f335afd80c865eb2bdfd1648685aa86ce263ffe82214ed419cc314c1` |
| 15 | `theorem` | [resolvableEye_rank32Quintic_iff](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/resolvableeye-rank32quintic-iff--06b4ec987e56d819e5367215.md) | 129 | `result-track:06b4ec987e56d819e536721587f51ab01f58b6136de0555bc7ee4905f88f8147` |
| 16 | `theorem` | [resolvableEye_rank32Quintic_refine](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/resolvableeye-rank32quintic-refine--49b4b3c7aabea88bdc2fa7b6.md) | 137 | `result-track:49b4b3c7aabea88bdc2fa7b6760cb8e579f748d41e052e2f211da403147258d2` |
| 17 | `theorem` | [completedSquareLower_natDegree_le](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/completedsquarelower-natdegree-le--e35887b5e20fd509751a36e0.md) | 145 | `result-track:e35887b5e20fd509751a36e020bd0aabe2b15033f837acd1c482e04b440d05d9` |
| 18 | `theorem` | [positiveQuadratic_natDegree](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/positivequadratic-natdegree--3e514727bd4b7e83cf8bca7d.md) | 159 | `result-track:3e514727bd4b7e83cf8bca7d6e1b994c582e2eeee5b3bca1535173d44b607459` |
| 19 | `theorem` | [completedSquareCubic_natDegree](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/completedsquarecubic-natdegree--f9dcd3830b318378cc4652d1.md) | 168 | `result-track:f9dcd3830b318378cc4652d1b43dfc81deb9306a0fd11a3c54d594552a5ed886` |
| 20 | `theorem` | [positiveQuadratic_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/positivequadratic-ne-zero--8c4db5e97ea568ec9c0d8671.md) | 183 | `result-track:8c4db5e97ea568ec9c0d8671108f7c1765f2032e91d5d3eba90b732e42693c6c` |
| 21 | `theorem` | [completedSquareCubic_ne_zero](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/completedsquarecubic-ne-zero--ce8e62687795a9ae05ecc1ba.md) | 190 | `result-track:ce8e62687795a9ae05ecc1ba8ad684fe8ea95cd5af9170515374f7a66dfb3180` |
| 22 | `theorem` | [rank32Quintic_natDegree](../../../../../mathematics/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239QuinticFareyBridge.lean/declarations/rank32quintic-natdegree--57f9a0cba859a7da5ff2ba4d.md) | 197 | `result-track:57f9a0cba859a7da5ff2ba4da55aa8fcb987eef0cbc2e4682717ce20fe8ffecb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
