# Verification target: GRWTSK.Algebra.LinearAlgebra.IsPoly.Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3acc052bd2dcfabb94505ad1e33a76fbb24123d8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3acc052bd2dcfabb94505ad1e33a76fbb24123d8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.ULift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.WittVector.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Funext` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq'](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/poly-eq-of-wittpolynomial-bind-eq--13dce33d620355f1f2b5b3bf.md) | 114 | `result-track:13dce33d620355f1f2b5b3bf942326945146e5e9ea725f1509e8297bb42af68c` |
| 2 | `theorem` | [poly_eq_of_wittPolynomial_bind_eq](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/poly-eq-of-wittpolynomial-bind-eq--02bbc878abc8691596c0b8c9.md) | 125 | `result-track:02bbc878abc8691596c0b8c94c154e28a62b282ac775d419fa4e4986617ec13f` |
| 3 | `class` | [IsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/ispoly--1f87fdd92938d04d8afcaa34.md) | 150 | `declaration-track:1f87fdd92938d04d8afcaa34cd657e24fe0423123d54f9b38e23d734fe2af338` |
| 4 | `instance` | [idIsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/idispoly--fd59a2f68b1de5adfd4f47fa.md) | 157 | `declaration-track:fd59a2f68b1de5adfd4f47fa4618bfe748e9d3f91e78b6ee02a28248ea262c49` |
| 5 | `instance` | [idIsPolyI'](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/idispolyi--f1deb3463750cf1d1dcbac59.md) | 161 | `declaration-track:f1deb3463750cf1d1dcbac59b1548fdd0ac2aeb7f1c20d7272a903b1c8b51113` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/instance--2e70233879e58a6d43497fbc.md) | 167 | `declaration-track:2e70233879e58a6d43497fbc6dce1ada68f86b722a4ad25ea7b62273ad24ae8e` |
| 7 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/ext--931f324af9a41fbc49daac25.md) | 172 | `result-track:931f324af9a41fbc49daac255d4bb4435cd1fccfc498d9f735d65dab5927919a` |
| 8 | `instance` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/comp--197d8538fedb800e568f0eac.md) | 201 | `declaration-track:197d8538fedb800e568f0eace9ab789e9f04adc3f20f401b98c619ff3478e254` |
| 9 | `class` | [IsPoly₂](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/ispoly--b485170c65453add222aad9b.md) | 223 | `declaration-track:b485170c65453add222aad9bd43adb937998df69e787fa7d9400680f9ca57a93` |
| 10 | `instance` | [IsPoly₂.comp](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/ispoly-comp--f739b8327bdd0860d2551560.md) | 233 | `declaration-track:f739b8327bdd0860d2551560a84c7fe9a91993fe36bc3ec72552c24fcb67f00c` |
| 11 | `instance` | [IsPoly.comp₂](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/ispoly-comp--e2c75c9866b6164fdfdd9124.md) | 259 | `declaration-track:e2c75c9866b6164fdfdd9124c5293036dbda6715e47336dd12b472c85f4e6b47` |
| 12 | `instance` | [IsPoly₂.diag](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/ispoly-diag--39bce0138e22f6deb481a880.md) | 270 | `declaration-track:39bce0138e22f6deb481a8801e6f3fb0b0fb6e4ff3291a4f5eb7ba36fea86cb0` |
| 13 | `instance` | [negIsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/negispoly--b234a363e987cf4521324247.md) | 291 | `declaration-track:b234a363e987cf45213242477b25703a7f6d0895bd77b3dea517da394aa914d7` |
| 14 | `instance` | [zeroIsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/zeroispoly--34b565f87ed304e24bf83136.md) | 304 | `declaration-track:34b565f87ed304e24bf83136ef412376860e379eef970c3cddc1455e2babd82f` |
| 15 | `theorem` | [bind₁_zero_wittPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/bind-zero-wittpolynomial--26524f86391626e68a503576.md) | 309 | `result-track:26524f86391626e68a503576f43e1750b6c2568c4e5a7ca9d1093485ca7a1d0c` |
| 16 | `def` | [onePoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/onepoly--3b6c5cc392b89814c7b5162a.md) | 315 | `declaration-track:3b6c5cc392b89814c7b5162a78bdd9c9218d0cec4e0a312084c3c657fc3edf5a` |
| 17 | `theorem` | [bind₁_onePoly_wittPolynomial](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/bind-onepoly-wittpolynomial--692b60260ffd5afc187a835d.md) | 320 | `result-track:692b60260ffd5afc187a835d0b84d0baef5d9a92a121f90773d1481240e64bc5` |
| 18 | `instance` | [oneIsPoly](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/oneispoly--89c75778504ecc35a70157da.md) | 336 | `declaration-track:89c75778504ecc35a70157dadcde728e0c664a1e942b36aebb2f29ef171bf513` |
| 19 | `instance` | [addIsPoly₂](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/addispoly--51a60e5f42decfaf1e13b23e.md) | 351 | `declaration-track:51a60e5f42decfaf1e13b23eac536ce371e81e54b0a775ca921c6a1f83e30d4a` |
| 20 | `instance` | [mulIsPoly₂](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/mulispoly--8d91a2dca7920eb11ae628b8.md) | 359 | `declaration-track:8d91a2dca7920eb11ae628b82cff233f335a06da606b599e4c21f414ba8b9d4c` |
| 21 | `theorem` | [IsPoly.map](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/ispoly-map--f30d8ae90ecf375f62d41b84.md) | 366 | `result-track:f30d8ae90ecf375f62d41b8410bdcb971be0cd5e5acb889c499b5dcaa0042c69` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/instance--af5c3c3c72aa1c40f688aa51.md) | 382 | `declaration-track:af5c3c3c72aa1c40f688aa5183df0c4678447e327348bf47a927910ff68d69ed` |
| 23 | `theorem` | [compLeft](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/compleft--d98c737cb71907bda2f42067.md) | 388 | `result-track:d98c737cb71907bda2f42067cc95e6d014819ceb75f5694cdba96cd569d506a1` |
| 24 | `theorem` | [compRight](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/compright--7e6d02fae4952fe4e02e9c8d.md) | 396 | `result-track:7e6d02fae4952fe4e02e9c8d1c190af4093aa6ab9e98d07becd6b05c8a09417e` |
| 25 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/ext--c527b11d704c05b769280795.md) | 401 | `result-track:c527b11d704c05b769280795cfd177b7c76d6d6b00823a8db5736a276feaabc8` |
| 26 | `theorem` | [map](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/map--47de0f50463909527b8062d6.md) | 431 | `result-track:47de0f50463909527b8062d6d1199547935c12b81b03ca49b1ed6a3a840974ae` |
| 27 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/syntax--24259285cc80d1728fe6d992.md) | 462 | `declaration-track:24259285cc80d1728fe6d9925320681a15cbd775d4628d8a99d5bd1ad667fe47` |
| 28 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/macro-rules--74170148cf3e8f5be8aff1d9.md) | 464 | `declaration-track:74170148cf3e8f5be8aff1d96031ece0f7fa3de85cb40740efe41a06d85c0b10` |
| 29 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/syntax--465e5a91de27dbd67243fc20.md) | 494 | `declaration-track:465e5a91de27dbd67243fc20d40cfa9b0a1d80209c521aaeffce87c03fcbcfa3` |
| 30 | `def` | [runIntro](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/runintro--a0b9db8fe9c1f150a42413c2.md) | 496 | `declaration-track:a0b9db8fe9c1f150a42413c28d9c43540f31db1b0f0efcc822e7b0c3286addab` |
| 31 | `def` | [getLocalOrIntro](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/getlocalorintro--7cbf91463ad1db545664088a.md) | 504 | `declaration-track:7cbf91463ad1db545664088a50cfcf4fa9e9742b3980d313b9cda95826870b58` |
| 32 | `elab_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsPoly/Variant66b2a5c3d369899a33ae0ff25fd8224f133401ff11b1d9a24518f5bcb3d3259a.lean/declarations/elab-rules--2181e1a9fd018ed6c614b7f4.md) | 510 | `declaration-track:2181e1a9fd018ed6c614b7f40896d6ce2c48c06bafb981879beb7fced83ae2ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
