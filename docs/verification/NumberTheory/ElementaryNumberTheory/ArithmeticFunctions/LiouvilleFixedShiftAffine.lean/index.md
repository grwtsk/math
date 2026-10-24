# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleFixedShiftAffine

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f3ce4b8553de27d257a4c3b8f04fe0f56c14621",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f3ce4b8553de27d257a4c3b8f04fe0f56c14621`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicAffineBridge`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleDyadicAffineBridge.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Order.Interval.Finset.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fixedShiftTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/fixedshiftterm--a8165600068922f6807682b6.md) | 41 | `declaration-track:a8165600068922f6807682b68953c6f0fbad5bbe7b315a6baadf7b20c6665683` |
| 2 | `def` | [oddAffineLeftTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/oddaffineleftterm--a0f15a1e44166a4abd111a00.md) | 46 | `declaration-track:a0f15a1e44166a4abd111a001f43a399697464b05d02211f1df6399228fe54c8` |
| 3 | `def` | [oddAffineRightTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/oddaffinerightterm--4795aa275cd9d86be3ce1a59.md) | 51 | `declaration-track:4795aa275cd9d86be3ce1a59f36960988845f8a8ff4f8351ca7932ccd503a62b` |
| 4 | `def` | [evenAffineLeftTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/evenaffineleftterm--e192e2d09b7ce46cd35bd391.md) | 56 | `declaration-track:e192e2d09b7ce46cd35bd391d8b5a978c289dee79dc8294f2df619815703e61a` |
| 5 | `def` | [evenAffineRightTerm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/evenaffinerightterm--a37bd3fe7dc0ebf2be63b212.md) | 61 | `declaration-track:a37bd3fe7dc0ebf2be63b2126f7903ed9c76eab56b1e61261715c78fe7946ec1` |
| 6 | `theorem` | [oddShift_evenRoot](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/oddshift-evenroot--37f6ee2ca0775c4ebfca8e89.md) | 67 | `result-track:37f6ee2ca0775c4ebfca8e89c4607605b60d2e7d36f4f51d4297aefa5249e510` |
| 7 | `theorem` | [oddShift_oddRoot](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/oddshift-oddroot--d4187d12c36f85b259784e7e.md) | 77 | `result-track:d4187d12c36f85b259784e7ed5661e53907907d73b2dd2028bfeeb3e536d7a48` |
| 8 | `theorem` | [oddShift_pair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/oddshift-pair--8f5284ad6e606455a918d92b.md) | 88 | `result-track:8f5284ad6e606455a918d92bd161f2ece56431d6ddc823db32424fb8d07129a5` |
| 9 | `theorem` | [evenShift_evenRoot](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/evenshift-evenroot--bda0b5b0f7dd51455dcb4439.md) | 96 | `result-track:bda0b5b0f7dd51455dcb4439460e4e6681dd6e5d93b357b675ec06c824973480` |
| 10 | `theorem` | [evenShift_oddRoot](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/evenshift-oddroot--6e8fa02360a672aa20a14d62.md) | 105 | `result-track:6e8fa02360a672aa20a14d62bd5e7d04d127c33b21c33b1196b54db04801fc0a` |
| 11 | `theorem` | [evenShift_pair](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/evenshift-pair--ce3b5fa9f563108a6ef86415.md) | 116 | `result-track:ce3b5fa9f563108a6ef864157161c949ac26a3bbaf99716aed68a2928883508a` |
| 12 | `theorem` | [oddShift_prefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/oddshift-prefix--30429d3dae8c215c110f475b.md) | 124 | `result-track:30429d3dae8c215c110f475bc851135f0ca75e02da7a2cfb948fbf3dd7a200e5` |
| 13 | `theorem` | [evenShift_prefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/evenshift-prefix--dbbe237f2830c95b6aeee89e.md) | 142 | `result-track:dbbe237f2830c95b6aeee89e421c88810b3d4d5a8540346f862504e091768fe4` |
| 14 | `theorem` | [zeroShift_term](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/zeroshift-term--4ca1a3293665e22675bcc19d.md) | 160 | `result-track:4ca1a3293665e22675bcc19d41a6445afdb168e6dbab6fcd5163f26265b6a42d` |
| 15 | `theorem` | [zeroShift_prefix](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/zeroshift-prefix--e7ef147a8cf1f0fd85817fb3.md) | 165 | `result-track:e7ef147a8cf1f0fd85817fb35dcccd608daeb188e40fe15aaf3ddf0577003794` |
| 16 | `theorem` | [range_head_add_Icc](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/range-head-add-icc--eb7d8c13826e3cb22e4cdfb0.md) | 177 | `result-track:eb7d8c13826e3cb22e4cdfb03568538c404a63a06eb60a78779fc80141532638` |
| 17 | `theorem` | [oddShift_Icc_comparator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/oddshift-icc-comparator--f75df5b611371f28d4e51ce1.md) | 192 | `result-track:f75df5b611371f28d4e51ce1f3eaffa3a294733ee999f90e8605959acb9be43a` |
| 18 | `theorem` | [evenShift_Icc_comparator](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/evenshift-icc-comparator--1e2f181d49f6ce502c969137.md) | 203 | `result-track:1e2f181d49f6ce502c9691375c475af4da1863c9ac474fb3c18c65a5fc2e4bbb` |
| 19 | `theorem` | [oddShift_affine_determinants](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/oddshift-affine-determinants--d4d177153d671dc8844ae5fb.md) | 215 | `result-track:d4d177153d671dc8844ae5fbd74c4a2d4531790aa8b914c26c9690bad1a2d223` |
| 20 | `theorem` | [evenShift_affine_determinants](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/evenshift-affine-determinants--fa9d9ce30a01c25c8b247fa6.md) | 227 | `result-track:fa9d9ce30a01c25c8b247fa6f0304d02f04bd84854e2d58451da903c2b47ae51` |
| 21 | `theorem` | [oddShift_Icc_triangle](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/oddshift-icc-triangle--d3261fe6f90e9ce826f332b1.md) | 240 | `result-track:d3261fe6f90e9ce826f332b10d1db9599d1024e5ca6ece29512db4ce34d7bddd` |
| 22 | `theorem` | [evenShift_Icc_triangle](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/evenshift-icc-triangle--244a4338ee5406b737cd255d.md) | 264 | `result-track:244a4338ee5406b737cd255d61a4dead2f4ee3bef86bbbd099b1c3c95fdde3b2` |
| 23 | `theorem` | [fixedShift_oddCutoff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedShiftAffine.lean/declarations/fixedshift-oddcutoff--57252c2ea9e7af92c0cfb412.md) | 288 | `result-track:57252c2ea9e7af92c0cfb412353aea8b41d847bb5beae128a84b0deb0eaed42b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
