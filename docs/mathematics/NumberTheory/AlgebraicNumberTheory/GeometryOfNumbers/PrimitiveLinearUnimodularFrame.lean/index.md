# GRWTSK.GeometryOfNumbers.PrimitiveLinearUnimodularFrame

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8567890d0a5b1f8fde59ea36ca8ffef1318fafca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AlgebraicNumberTheory/GeometryOfNumbers/PrimitiveLinearUnimodularFrame.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pairGcd](declarations/pairgcd--785a3177cf10ed177688e762.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [pairGcd_pos](declarations/pairgcd-pos--411f83d46c640da044713bf0.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [reducedA](declarations/reduceda--8c691484517ebcef9d4a84c3.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [reducedB](declarations/reducedb--c8d41142b045c7d7e6a080be.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [reducedA_mul_pairGcd](declarations/reduceda-mul-pairgcd--1e48711a6bedc6437a065716.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [reducedB_mul_pairGcd](declarations/reducedb-mul-pairgcd--bf52bcd329f8dd3d68fd61d4.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [reduced_coprime](declarations/reduced-coprime--0f58d6011ff7cf114d7f538b.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [reduced_bezout_identity](declarations/reduced-bezout-identity--c3efd3ed60ad0a3770dbd21f.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [cast_a_eq_reduced_mul_gcd](declarations/cast-a-eq-reduced-mul-gcd--7e2ac21ba593af5fa0ec36ca.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cast_b_eq_reduced_mul_gcd](declarations/cast-b-eq-reduced-mul-gcd--beaebb7a5c421c4898d6a363.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [normalVector](declarations/normalvector--281f0df525f70f965a2a2860.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [firstKernelVector](declarations/firstkernelvector--a6df552a113f6a17284e34ca.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [secondKernelVector](declarations/secondkernelvector--5377069d9f6aa970acae59fe.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [vectorOfIntPoint](declarations/vectorofintpoint--825000175f113e684ae19253.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [intPointOfVector](declarations/intpointofvector--921cdd34586bb55f3f1e1be3.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [complementVector](declarations/complementvector--f1001e3594b347dab503cfe1.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normal_dot_vectorOfIntPoint](declarations/normal-dot-vectorofintpoint--138758e308550ae214fa64d9.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normal_dot_firstKernelVector](declarations/normal-dot-firstkernelvector--aff34517e0b2fa886816bb2b.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normal_dot_secondKernelVector](declarations/normal-dot-secondkernelvector--df7d994a7b8f271cf40c127d.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [normal_dot_complementVector](declarations/normal-dot-complementvector--3da659dbe8530c48126cb1e5.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [firstKernelVector_mem_linearKernel](declarations/firstkernelvector-mem-linearkernel--a586b0d146917c1e18c30b96.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [secondKernelVector_mem_linearKernel](declarations/secondkernelvector-mem-linearkernel--485bb124c1fe0baadfa17493.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [first_cross_second](declarations/first-cross-second--39092d09c4ad8ecf2d8ff7e6.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [kernelFrameMatrix](declarations/kernelframematrix--9dc9cf0a360a49e39161c21e.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [kernelFrameMatrix_det](declarations/kernelframematrix-det--7459fbbf3cfe6d9da17cefcc.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [kernelFrameMatrix_det_isUnit](declarations/kernelframematrix-det-isunit--71568b9afbde1550951f936b.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [UnimodularKernelFrame](declarations/unimodularkernelframe--d4c1af0c445f515134e68fc9.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [canonicalUnimodularKernelFrame](declarations/canonicalunimodularkernelframe--3dd31cd14cee15550f94bbd2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [canonicalFrame_det_ne_zero](declarations/canonicalframe-det-ne-zero--5da3932ca08c5d9f2a506d22.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
