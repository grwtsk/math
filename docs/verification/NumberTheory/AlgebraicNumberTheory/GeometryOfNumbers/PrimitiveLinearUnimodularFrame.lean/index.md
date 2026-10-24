# Verification target: GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8567890d0a5b1f8fde59ea36ca8ffef1318fafca",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8567890d0a5b1f8fde59ea36ca8ffef1318fafca`.

Source path: `GRWTSK/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel`](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearKernel.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.LinearAlgebra.CrossProduct` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairGcd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/pairgcd--785a3177cf10ed177688e762.md) | 45 | `declaration-track:785a3177cf10ed177688e762738b556f3f55c89424ce5dd35445d675a37e5bc2` |
| 2 | `theorem` | [pairGcd_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/pairgcd-pos--411f83d46c640da044713bf0.md) | 48 | `result-track:411f83d46c640da044713bf09d35e27bdf247b346dc2cfe80afb6ad62e769f33` |
| 3 | `def` | [reducedA](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/reduceda--8c691484517ebcef9d4a84c3.md) | 52 | `declaration-track:8c691484517ebcef9d4a84c33f9fa871fdf8509fd154139cffe8f56987914d32` |
| 4 | `def` | [reducedB](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/reducedb--c8d41142b045c7d7e6a080be.md) | 55 | `declaration-track:c8d41142b045c7d7e6a080bee2bdcced35d9e6aec8d810544e5635bc33315528` |
| 5 | `theorem` | [reducedA_mul_pairGcd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/reduceda-mul-pairgcd--1e48711a6bedc6437a065716.md) | 58 | `result-track:1e48711a6bedc6437a065716f8c90f7c3887e49f2a3c000e92b0f7a8da71c246` |
| 6 | `theorem` | [reducedB_mul_pairGcd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/reducedb-mul-pairgcd--bf52bcd329f8dd3d68fd61d4.md) | 63 | `result-track:bf52bcd329f8dd3d68fd61d4cbe4cdc80bce44bdee5015584da4e75901aa53a0` |
| 7 | `theorem` | [reduced_coprime](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/reduced-coprime--0f58d6011ff7cf114d7f538b.md) | 68 | `result-track:0f58d6011ff7cf114d7f538b56936ba0f466e7820dbf44b1c69e6b49f32f8a6e` |
| 8 | `theorem` | [reduced_bezout_identity](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/reduced-bezout-identity--c3efd3ed60ad0a3770dbd21f.md) | 73 | `result-track:c3efd3ed60ad0a3770dbd21f394f84d40cc7290c0df74908ee0f93ae7f2c5f64` |
| 9 | `theorem` | [cast_a_eq_reduced_mul_gcd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/cast-a-eq-reduced-mul-gcd--7e2ac21ba593af5fa0ec36ca.md) | 84 | `result-track:7e2ac21ba593af5fa0ec36ca2ede5a0606e95215a1a983818fa1d979882fa30f` |
| 10 | `theorem` | [cast_b_eq_reduced_mul_gcd](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/cast-b-eq-reduced-mul-gcd--beaebb7a5c421c4898d6a363.md) | 89 | `result-track:beaebb7a5c421c4898d6a3634d5de31d50725f24a9853c931e4160359bb87354` |
| 11 | `def` | [normalVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/normalvector--281f0df525f70f965a2a2860.md) | 96 | `declaration-track:281f0df525f70f965a2a2860f00fd35eb4808a8e79b6c0be8bca75444bc6a915` |
| 12 | `def` | [firstKernelVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/firstkernelvector--a6df552a113f6a17284e34ca.md) | 100 | `declaration-track:a6df552a113f6a17284e34ca99824f956c34636c9532eb015ec9571c0ef3ec39` |
| 13 | `def` | [secondKernelVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/secondkernelvector--5377069d9f6aa970acae59fe.md) | 104 | `declaration-track:5377069d9f6aa970acae59feeed0253f907e6ee0b9ef882c3f556aa4d9ebce57` |
| 14 | `def` | [vectorOfIntPoint](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/vectorofintpoint--825000175f113e684ae19253.md) | 110 | `declaration-track:825000175f113e684ae19253fd094176cce018e9f2f6af42a6d931f23399f517` |
| 15 | `def` | [intPointOfVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/intpointofvector--921cdd34586bb55f3f1e1be3.md) | 114 | `declaration-track:921cdd34586bb55f3f1e1be329d3e7d31613abfe0aa7ec0c1c7e67292f8bab9f` |
| 16 | `def` | [complementVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/complementvector--f1001e3594b347dab503cfe1.md) | 119 | `declaration-track:f1001e3594b347dab503cfe1b2d037ac0302399000cc7508a945ee9eb4b1578d` |
| 17 | `theorem` | [normal_dot_vectorOfIntPoint](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/normal-dot-vectorofintpoint--138758e308550ae214fa64d9.md) | 124 | `result-track:138758e308550ae214fa64d9c968d187609d5d529e61e6b5fc86177efedf7879` |
| 18 | `theorem` | [normal_dot_firstKernelVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/normal-dot-firstkernelvector--aff34517e0b2fa886816bb2b.md) | 133 | `result-track:aff34517e0b2fa886816bb2b7d9798713f5f713670eb6b9c931b0e8722d89f36` |
| 19 | `theorem` | [normal_dot_secondKernelVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/normal-dot-secondkernelvector--df7d994a7b8f271cf40c127d.md) | 142 | `result-track:df7d994a7b8f271cf40c127db9163aca698bcefb94c845384fb776882c9f0c45` |
| 20 | `theorem` | [normal_dot_complementVector](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/normal-dot-complementvector--3da659dbe8530c48126cb1e5.md) | 161 | `result-track:3da659dbe8530c48126cb1e5becd00af1d1fa9a35719cfe0f4e38fb789a28f4b` |
| 21 | `theorem` | [firstKernelVector_mem_linearKernel](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/firstkernelvector-mem-linearkernel--a586b0d146917c1e18c30b96.md) | 167 | `result-track:a586b0d146917c1e18c30b96987c56f34f3680fc1da0a056759ac00265f5fa77` |
| 22 | `theorem` | [secondKernelVector_mem_linearKernel](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/secondkernelvector-mem-linearkernel--485bb124c1fe0baadfa17493.md) | 175 | `result-track:485bb124c1fe0baadfa174936cf21cf8640e53115e41aae56f455a64e54011e7` |
| 23 | `theorem` | [first_cross_second](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/first-cross-second--39092d09c4ad8ecf2d8ff7e6.md) | 184 | `result-track:39092d09c4ad8ecf2d8ff7e68796782720f51274d07d624ddd852e0b9403cff0` |
| 24 | `def` | [kernelFrameMatrix](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/kernelframematrix--9dc9cf0a360a49e39161c21e.md) | 209 | `declaration-track:9dc9cf0a360a49e39161c21eab3c0c957d369df610a7acd2a11554b3bb761d7e` |
| 25 | `theorem` | [kernelFrameMatrix_det](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/kernelframematrix-det--7459fbbf3cfe6d9da17cefcc.md) | 213 | `result-track:7459fbbf3cfe6d9da17cefcca80caf3b904db3c24cd2cfa8931f246bd7a05734` |
| 26 | `theorem` | [kernelFrameMatrix_det_isUnit](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/kernelframematrix-det-isunit--71568b9afbde1550951f936b.md) | 223 | `result-track:71568b9afbde1550951f936bc985b27b1c7a71b54a0f17e7757c49f8319c408b` |
| 27 | `structure` | [UnimodularKernelFrame](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/unimodularkernelframe--d4c1af0c445f515134e68fc9.md) | 230 | `declaration-track:d4c1af0c445f515134e68fc9083153dcdf9379ffcfed7412830453348ee7018c` |
| 28 | `def` | [canonicalUnimodularKernelFrame](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/canonicalunimodularkernelframe--3dd31cd14cee15550f94bbd2.md) | 240 | `declaration-track:3dd31cd14cee15550f94bbd2816cac5075becd18bd2df76b57077412f4ca1204` |
| 29 | `theorem` | [canonicalFrame_det_ne_zero](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/declarations/canonicalframe-det-ne-zero--5da3932ca08c5d9f2a506d22.md) | 252 | `result-track:5da3932ca08c5d9f2a506d22039b19b97059d62022505935eda6d9e6fc6935e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
