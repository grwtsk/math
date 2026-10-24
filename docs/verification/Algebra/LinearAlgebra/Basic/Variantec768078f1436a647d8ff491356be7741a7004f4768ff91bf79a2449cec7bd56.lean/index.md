# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a4b3f8556ca2e41bde93bfbad9dbe0b385f8ead",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a4b3f8556ca2e41bde93bfbad9dbe0b385f8ead`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [repr_range](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/repr-range--4a9beb8d7a42d134c2834da7.md) | 47 | `result-track:4a9beb8d7a42d134c2834da7c026c75bbd1742ebae0f0687873987bfb0edd7fd` |
| 2 | `theorem` | [mem_span_repr_support](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/mem-span-repr-support--996f227a666a08c8d5eb2f09.md) | 50 | `result-track:996f227a666a08c8d5eb2f09878bc5e8cadf0c4b8ae1be1200c12c257048c9cb` |
| 3 | `theorem` | [repr_support_subset_of_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/repr-support-subset-of-mem-span--9edde5eba69db8c9d3f44d37.md) | 54 | `result-track:9edde5eba69db8c9d3f44d37cda2a4ce9821f9c8d95f58ed567f54e54da71222` |
| 4 | `theorem` | [mem_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/mem-span-image--01fd832b298746171e568253.md) | 59 | `result-track:01fd832b298746171e568253cb04058e54513c728eff8073066fc1833dbb5d9f` |
| 5 | `theorem` | [self_mem_span_image](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/self-mem-span-image--94ece3440f672536cc67dfd8.md) | 64 | `result-track:94ece3440f672536cc67dfd841e526c69fbfec38e5b3c77d2966a17048238a0f` |
| 6 | `theorem` | [mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/mem-span--2f87167f9cd1737b741afcbd.md) | 68 | `result-track:2f87167f9cd1737b741afcbd7588db9ba143fa83233abd74e22f05790da10125` |
| 7 | `theorem` | [span_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/span-eq--9673fc3f3b3a10c22a28642c.md) | 72 | `result-track:9673fc3f3b3a10c22a28642c3b4d863b61b000ccc7b13504a2fb77ecc811e09d` |
| 8 | `theorem` | [_root_.Submodule.eq_top_iff_forall_basis_mem](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/root-submodule-eq-top-iff-forall-basis-mem--f4c37364ddf8be5da1967c27.md) | 75 | `result-track:f4c37364ddf8be5da1967c2715306535a95340d0239bc4f3b966b6a09962b5d6` |
| 9 | `theorem` | [index_nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/index-nonempty--9701c0cf1ae2c4d6ff032463.md) | 81 | `result-track:9701c0cf1ae2c4d6ff032463a3c982ec44996dd03d62d21c160189e1bbea09f6` |
| 10 | `theorem` | [linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/linearindependent--31d85e995f23f22cc0007e22.md) | 86 | `result-track:31d85e995f23f22cc0007e225ba56fb38ef9c37d4736d8ba9c8d8d128d805301` |
| 11 | `lemma` | [linearIndepOn](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/linearindepon--deff7223a962fac90270f3de.md) | 90 | `result-track:deff7223a962fac90270f3de61be524cd5c00dc6d801ef922fbd9286c00f3419` |
| 12 | `theorem` | [ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/ne-zero--eeba80d016eeed71539e5e8c.md) | 93 | `result-track:eeba80d016eeed71539e5e8c5818f73c1c7a19bcc00fe20fbc3d43b84cc0a5df` |
| 13 | `theorem` | [injective_constr_of_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/injective-constr-of-linearindependent--494d19ee81e074364c2adb4f.md) | 96 | `result-track:494d19ee81e074364c2adb4ffee5a1988585d623a0bd14b9e7376eabb9fcdd6d` |
| 14 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/mk--c939b64cb4526301436fefd6.md) | 111 | `declaration-track:c939b64cb4526301436fefd6af9df7febe50a0f95933efd1450c03cf3bb63409` |
| 15 | `theorem` | [mk_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/mk-repr--475370520bce289d8222dce6.md) | 119 | `result-track:475370520bce289d8222dce6f29894c808f45a7fd25fe628ab5614c1676100ac` |
| 16 | `theorem` | [mk_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/mk-apply--c5661d4fe17872ed8adf0d34.md) | 122 | `result-track:c5661d4fe17872ed8adf0d348d70f58547c5e9d760f5281e429fb194266d8861` |
| 17 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/coe-mk--02aa03e1c1492e91f0cbf111.md) | 126 | `result-track:02aa03e1c1492e91f0cbf11173e8f4d1c751c2d8c2481e538ac2b4e42b5780c1` |
| 18 | `theorem` | [linearIndependent_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/linearindependent-coord--b93cef878177d517e6c4210c.md) | 134 | `result-track:b93cef878177d517e6c4210c3baaece49426d0ed3404a5a0fc4501bd7161f4bc` |
| 19 | `theorem` | [mk_coord_apply_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/mk-coord-apply-eq--f9593881d32c0cea27054cb6.md) | 146 | `result-track:f9593881d32c0cea27054cb603e0d9543fa979eca62b7a80b45ba069ca6118fd` |
| 20 | `theorem` | [mk_coord_apply_ne](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/mk-coord-apply-ne--759c02cbee3815ff7d5773ec.md) | 151 | `result-track:759c02cbee3815ff7d5773ecbfc4a4c402fad3fa1875f06694af48cc7a134ae4` |
| 21 | `theorem` | [mk_coord_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/mk-coord-apply--01abd4e33ac08d31420c2de4.md) | 157 | `result-track:01abd4e33ac08d31420c2de4da2fe76e5caced4c0e8eed963c1454e7142ab170` |
| 22 | `def` | [span](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/span--30d6bbefc7c82b688bd55309.md) | 170 | `declaration-track:30d6bbefc7c82b688bd553095f91cfd9a2560ce550da4aabd45fe7700fff7e04` |
| 23 | `theorem` | [span_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/span-apply--f8c68d35756304b015bb7897.md) | 191 | `result-track:f8c68d35756304b015bb78972f173de3f43a557f163fe6acfeca36ca75029254` |
| 24 | `theorem` | [coe_span_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/coe-span-apply--2133fc740912f9745545e090.md) | 196 | `result-track:2133fc740912f9745545e0901018dc1217319faae9a19ee4c71a24aa60e8d2f0` |
| 25 | `theorem` | [span_repr_eq_single](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/span-repr-eq-single--51b8e74dfe068afa1ee0d7ff.md) | 199 | `result-track:51b8e74dfe068afa1ee0d7ff1df8841e04d4da555c886b78761b6d1f2fa74201` |
| 26 | `lemma` | [span_neg](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/span-neg--7d46118e588308895a081aa8.md) | 205 | `result-track:7d46118e588308895a081aa8f7b50415f65bdbba06db1c534e0c7c6b73d2e0ce` |
| 27 | `theorem` | [maximal](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/maximal--f4f77bf2455420f91af2a31d.md) | 216 | `result-track:f4f77bf2455420f91af2a31d2b0ccce9e7dcfdcbdd7e186c9dd2df0918615767` |
| 28 | `instance` | [uniqueBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/uniquebasis--a3461e4e176d266f09fc0d6f.md) | 240 | `declaration-track:a3461e4e176d266f09fc0d6f100ec301176ffa7f21291e71571e24e6ceba2f67` |
| 29 | `def` | [singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/singleton--595d51c373e152171bca25c8.md) | 248 | `declaration-track:595d51c373e152171bca25c8282901bfffb4d4e4e18d75086affbc3e3673f3f2` |
| 30 | `theorem` | [singleton_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/singleton-apply--16ce687a23f90523fbca51ef.md) | 258 | `result-track:16ce687a23f90523fbca51efa920f85f873a9462f27496c4d0c2e80d4e80c0ce` |
| 31 | `theorem` | [singleton_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/singleton-repr--09910fc8d0d7f650ea38a49b.md) | 262 | `result-track:09910fc8d0d7f650ea38a49b3b232a2e404512c291549a9b965fc15367942c08` |
| 32 | `theorem` | [coe_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/coe-singleton--044397f84c8805cedfb57517.md) | 266 | `result-track:044397f84c8805cedfb57517e726f59a6bf5fa3192ad7ffa28d714f66a250016` |
| 33 | `def` | [empty](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/empty--22976d9e534e4d6672848053.md) | 277 | `declaration-track:22976d9e534e4d6672848053441743ec7f6fe5d19bd219cba0e1d511b8ec6107` |
| 34 | `instance` | [emptyUnique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/emptyunique--ca1add68d236fcf1893fe733.md) | 280 | `declaration-track:ca1add68d236fcf1893fe733deeaf0df8c736589a9be52db44f22e6342613e06` |
| 35 | `lemma` | [isTorsionFree](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/istorsionfree--e57c39ffe3fb810254b5e8f5.md) | 289 | `result-track:e57c39ffe3fb810254b5e8f5a62ec7159fa5edc7fabad29a7cb1b825366d7b4f` |
| 36 | `theorem` | [smul_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/smul-eq-zero--fa3dea09e5548e422531eebc.md) | 292 | `result-track:fa3dea09e5548e422531eebc81a8eddf0c6727171d0e7728aeef1932e05e4782` |
| 37 | `theorem` | [basis_singleton_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/basis-singleton-iff--6da7bd4d75b11a63d5856f09.md) | 299 | `result-track:6da7bd4d75b11a63d5856f09dc0cf2f25e50de2d796f38bf2163aaa1ae2493ab` |
| 38 | `lemma` | [card_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantec768078f1436a647d8ff491356be7741a7004f4768ff91bf79a2449cec7bd56.lean/declarations/card-fintype--820c8e0b99e5b7a6951bdacd.md) | 327 | `result-track:820c8e0b99e5b7a6951bdacd67a4016a2ae4a637e0cd98b5e715b705c4b42a71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
