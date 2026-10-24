# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HurwitzZetaOdd.Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f63abc696aeec59a76ab48157eb9ca4ca6c4505c",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f63abc696aeec59a76ab48157eb9ca4ca6c4505c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.AbstractFuncEq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.JacobiTheta.Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.MellinEqDirichlet` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiTheta₂''](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/jacobitheta--34ecc0bc139e4f405b01ac37.md) | 57 | `declaration-track:34ecc0bc139e4f405b01ac37853d6a559d0a3874466f4564208517d3d9896205` |
| 2 | `lemma` | [jacobiTheta₂''_conj](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/jacobitheta-conj--ee76dce5fa535c011177e8f4.md) | 60 | `result-track:ee76dce5fa535c011177e8f4cd71cd57735591166afe34d6bc91f6d23b509d81` |
| 3 | `lemma` | [jacobiTheta₂''_add_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/jacobitheta-add-left--88f5e70ff6d47c1d42a35d19.md) | 66 | `result-track:88f5e70ff6d47c1d42a35d19dee0d4490089cb9afe169cc4e8ee75e2e6317bc1` |
| 4 | `lemma` | [jacobiTheta₂''_neg_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/jacobitheta-neg-left--8c71839850f5b7f615993991.md) | 78 | `result-track:8c71839850f5b7f615993991f0c3d6a2dc6eada39835e5ac825bfc907f09395e` |
| 5 | `lemma` | [jacobiTheta₂'_functional_equation'](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/jacobitheta-functional-equation--0f4ebebdb919bbab4c80ae5f.md) | 81 | `result-track:0f4ebebdb919bbab4c80ae5fcd7e9bc8806e7948bc3a675046139e6e28cabd67` |
| 6 | `def` | [oddKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/oddkernel--08d6f995d622061317c0a7de.md) | 106 | `declaration-track:08d6f995d622061317c0a7de935e299a6cd7d137580f42466f261d8241a0fe32` |
| 7 | `lemma` | [oddKernel_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/oddkernel-def--5f512e56cadef1f3bca0881f.md) | 110 | `result-track:5f512e56cadef1f3bca0881fcc03b11abee772fbc2dcff8ccf7abbd9ad2fdc0c` |
| 8 | `lemma` | [oddKernel_def'](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/oddkernel-def--e5aed65cd6a4a6149dbebb8e.md) | 113 | `result-track:e5aed65cd6a4a6149dbebb8eee34431304418712c7a49d71878a0dc6f48c7e36` |
| 9 | `lemma` | [oddKernel_undef](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/oddkernel-undef--6e3f535cb3bf460dbe152f95.md) | 118 | `result-track:6e3f535cb3bf460dbe152f95fb536e36261d98caeb3f465ecaac385332675486` |
| 10 | `def` | [sinKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/sinkernel--415672f2af8434a239892fcc.md) | 127 | `declaration-track:415672f2af8434a239892fcc35dd2d9bbce29108a3b6b7e1216d75aafb31756f` |
| 11 | `lemma` | [sinKernel_def](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/sinkernel-def--cd2bca7de4d6d0465cdf4745.md) | 131 | `result-track:cd2bca7de4d6d0465cdf4745d1579b321d3786df4dd42db6746e8bd41a6b936e` |
| 12 | `lemma` | [sinKernel_undef](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/sinkernel-undef--35fe6513137c5ffbe856e0cd.md) | 134 | `result-track:35fe6513137c5ffbe856e0cd84b8fd4de26d5ea6366abce12211141e84f84bc4` |
| 13 | `lemma` | [oddKernel_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/oddkernel-neg--39215a77a346786693c706d4.md) | 138 | `result-track:39215a77a346786693c706d4bd2d6cc0dd67388ee6c7dc489c15c10b198fa5aa` |
| 14 | `lemma` | [oddKernel_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/oddkernel-zero--d146f224cd2a6b5e4991af59.md) | 142 | `result-track:d146f224cd2a6b5e4991af594ecd8b02612e446b1f933dcf42e8d08430c549fe` |
| 15 | `lemma` | [sinKernel_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/sinkernel-neg--338c3e1c1cc6da2a9d25522e.md) | 145 | `result-track:338c3e1c1cc6da2a9d25522e71d3740ed42651e8f16e306cc16a2e25f8765d96` |
| 16 | `lemma` | [sinKernel_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/sinkernel-zero--692f970834c81011235c87f9.md) | 151 | `result-track:692f970834c81011235c87f91ef8e2fa4bf7d86877d9bd1deb8ab41f9865409e` |
| 17 | `lemma` | [continuousOn_oddKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/continuouson-oddkernel--0d4a1c59fc7e67c86352de4a.md) | 155 | `result-track:0d4a1c59fc7e67c86352de4a99cc7024e7913a16fe6cbf56933689ad42460952` |
| 18 | `lemma` | [continuousOn_sinKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/continuouson-sinkernel--4e914c2555a69086f794382d.md) | 169 | `result-track:4e914c2555a69086f794382d9b343e8c3ec34eea8e25f0f141c6d60795c54b46` |
| 19 | `lemma` | [oddKernel_functional_equation](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/oddkernel-functional-equation--9829c3b302035ac68ede830d.md) | 178 | `result-track:9829c3b302035ac68ede830d987afde3bab722a4279d520e9d58fd5055d39a7a` |
| 20 | `lemma` | [hasSum_int_oddKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-int-oddkernel--65ccfd89a4d12e2a4e5ce9bc.md) | 207 | `result-track:65ccfd89a4d12e2a4e5ce9bc429ffd886164c4163a66fcb2396243c1f74be423` |
| 21 | `lemma` | [hasSum_int_sinKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-int-sinkernel--7e471d82a1ccfae2fd338ff4.md) | 222 | `result-track:7e471d82a1ccfae2fd338ff4b46e34c8135cc81ea7d2f47ffe3877bbc6ea6fd6` |
| 22 | `lemma` | [hasSum_nat_sinKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-nat-sinkernel--f65e78113827326aa1187a18.md) | 238 | `result-track:f65e78113827326aa1187a18a20df22006452fb5a3ffec9e7d93469aa192236b` |
| 23 | `lemma` | [isBigO_atTop_oddKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/isbigo-attop-oddkernel--d49aec2ad6e9a1a33f2d76f4.md) | 262 | `result-track:d49aec2ad6e9a1a33f2d76f44994178ae4da7dbdad179d6147c7ddfd5841e434` |
| 24 | `lemma` | [isBigO_atTop_sinKernel](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/isbigo-attop-sinkernel--4e464729098ca2f04968dbe1.md) | 273 | `result-track:4e464729098ca2f04968dbe1bec08cc3cffdca65dad310529afb873ff63e0e52` |
| 25 | `def` | [hurwitzOddFEPair](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hurwitzoddfepair--a30666e8e6d8ffaecdbcf9ad.md) | 298 | `declaration-track:a30666e8e6d8ffaecdbcf9ad2acee9893300e7b4be8c6ac187ace0ecbb07613f` |
| 26 | `def` | [completedHurwitzZetaOdd](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/completedhurwitzzetaodd--331ea92c08fe2db04fe749b8.md) | 333 | `declaration-track:331ea92c08fe2db04fe749b8bd5cdade0849255fb41ff498ef4a1bd775758ec1` |
| 27 | `lemma` | [differentiable_completedHurwitzZetaOdd](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/differentiable-completedhurwitzzetaodd--688c14d16703986e55d4bb13.md) | 336 | `result-track:688c14d16703986e55d4bb13a8b3f07e58685e3626290161ef40c824b73ecb82` |
| 28 | `def` | [completedSinZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/completedsinzeta--12cbd12c985ee11e2398db6a.md) | 345 | `declaration-track:12cbd12c985ee11e2398db6a084a4d931b18eeb0a5c49b0995d2a9fdd3e01765` |
| 29 | `lemma` | [differentiable_completedSinZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/differentiable-completedsinzeta--00125fbf37e70ec00c2eee0c.md) | 348 | `result-track:00125fbf37e70ec00c2eee0c87c3c22bea18111dafe53b24eaa476f77fe78b58` |
| 30 | `lemma` | [completedHurwitzZetaOdd_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/completedhurwitzzetaodd-neg--e3d7adc84f95ac26fd1ee4f6.md) | 357 | `result-track:e3d7adc84f95ac26fd1ee4f62abdef5572c610e5522294c5e557c419670b64bf` |
| 31 | `lemma` | [completedSinZeta_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/completedsinzeta-neg--f0a347b821794abeb63b3fdb.md) | 362 | `result-track:f0a347b821794abeb63b3fdbbac5c9d4aa7134c7671aca78115b44cde428ad7d` |
| 32 | `theorem` | [completedHurwitzZetaOdd_one_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/completedhurwitzzetaodd-one-sub--ac9685fa31e5949ed544a527.md) | 368 | `result-track:ac9685fa31e5949ed544a527281cbf0fa6b0831bce4e984f873eb42a99660226` |
| 33 | `lemma` | [completedSinZeta_one_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/completedsinzeta-one-sub--15ea38c86d13bc8d2d509576.md) | 376 | `result-track:15ea38c86d13bc8d2d509576b57135399fd0015a1d332dbf7ea24fdd6b728715` |
| 34 | `lemma` | [hasSum_int_completedSinZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-int-completedsinzeta--b56fdd7f64590c63752142f6.md) | 386 | `result-track:b56fdd7f64590c63752142f6eb0460a81ecb2f555065abdda281d08704d5929a` |
| 35 | `lemma` | [hasSum_nat_completedSinZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-nat-completedsinzeta--8df10014f82bafae24a57950.md) | 409 | `result-track:8df10014f82bafae24a579507d2bb1eab77f9cc3cbf1166d4e7d361d83d87b40` |
| 36 | `lemma` | [hasSum_int_completedHurwitzZetaOdd](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-int-completedhurwitzzetaodd--c52d47f2fa016c3b42bff68a.md) | 427 | `result-track:c52d47f2fa016c3b42bff68a691bdd8c9aa24024fcae35f486b812b93319827a` |
| 37 | `def` | [hurwitzZetaOdd](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hurwitzzetaodd--e76758f72a2f9d0dd8f9c13b.md) | 450 | `declaration-track:e76758f72a2f9d0dd8f9c13b5ff37d85cbde22ef02961f74f5d81f9874cd7f7b` |
| 38 | `lemma` | [hurwitzZetaOdd_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hurwitzzetaodd-neg--2b717e7f49532de0c690871c.md) | 453 | `result-track:2b717e7f49532de0c690871c5d03b05b3682d94a35f2d00f0bcfd8dd2050de64` |
| 39 | `lemma` | [differentiable_hurwitzZetaOdd](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/differentiable-hurwitzzetaodd--985e34a3214b220975126e99.md) | 458 | `result-track:985e34a3214b220975126e9903a2aaa16b3236792200ebc0e938ccc7c36c50a7` |
| 40 | `def` | [sinZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/sinzeta--b44562df1fed3ef8fd0b4642.md) | 465 | `declaration-track:b44562df1fed3ef8fd0b4642f3fd9ae309ac9fb0fce10e51375d5632fb716028` |
| 41 | `lemma` | [sinZeta_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/sinzeta-neg--187e3c28336ab6867c8e7b9a.md) | 468 | `result-track:187e3c28336ab6867c8e7b9a8f2379d7d765fde40bcc3658d842074a161619ac` |
| 42 | `lemma` | [differentiableAt_sinZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/differentiableat-sinzeta--35a59c033881c8dd5f63785d.md) | 473 | `result-track:35a59c033881c8dd5f63785d0bd339bfcb2b038377c0fae5cd606f8159cb6d19` |
| 43 | `theorem` | [hasSum_int_hurwitzZetaOdd](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-int-hurwitzzetaodd--b55191103e3a6efd618ec414.md) | 479 | `result-track:b55191103e3a6efd618ec41468ab5bb5032eaeb3561c2dbe929b9e12e7c840b0` |
| 44 | `lemma` | [hasSum_nat_hurwitzZetaOdd](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-nat-hurwitzzetaodd--3f3eb2cc1ca8e5745c91defe.md) | 487 | `result-track:3f3eb2cc1ca8e5745c91defe64f039439ac9bfa355c724810fedd03be01a2940` |
| 45 | `lemma` | [hasSum_nat_hurwitzZetaOdd_of_mem_Icc](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-nat-hurwitzzetaodd-of-mem-icc--543d37f3d0447b8907f5d3ae.md) | 497 | `result-track:543d37f3d0447b8907f5d3ae1a73e30c7245a111e7915064a07657de04ac69d3` |
| 46 | `theorem` | [hasSum_int_sinZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-int-sinzeta--0b8b30582b6ce06f7cbdf274.md) | 511 | `result-track:0b8b30582b6ce06f7cbdf274aba1699d574c0a180bf26492799de0e589128194` |
| 47 | `lemma` | [hasSum_nat_sinZeta](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hassum-nat-sinzeta--b349cde7c9173b560d6422b8.md) | 520 | `result-track:b349cde7c9173b560d6422b8ad394962c0363fd3f39f7d6eb78abec86ea9171a` |
| 48 | `lemma` | [LSeriesHasSum_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/lserieshassum-sin--46b28aad8d96fba7d8999e55.md) | 534 | `result-track:46b28aad8d96fba7d8999e55a4d0908dcee4e29c1000af74ef1281cb5b7e0441` |
| 49 | `theorem` | [hurwitzZetaOdd_neg_two_mul_nat_sub_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hurwitzzetaodd-neg-two-mul-nat-sub-one--b2dcf2e636b649e963782ea3.md) | 539 | `result-track:b2dcf2e636b649e963782ea3cb1b76ebe71b6303b07798e6d494d4ce30ea027d` |
| 50 | `theorem` | [sinZeta_neg_two_mul_nat_sub_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/sinzeta-neg-two-mul-nat-sub-one--e5374cb69e9541cc947174a3.md) | 544 | `result-track:e5374cb69e9541cc947174a38d7fc5dd17bfc3a2caefe626ec84c9c19add57e0` |
| 51 | `lemma` | [hurwitzZetaOdd_one_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/hurwitzzetaodd-one-sub--7281fd9786a39fc50accea7f.md) | 550 | `result-track:7281fd9786a39fc50accea7f3379946626c99efa3a177c0b257d8f7cf49a02de` |
| 52 | `lemma` | [sinZeta_one_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/HurwitzZetaOdd/Variant083c64a2ec71da6c958325b97c9baa80d15284f1e35a5d15e400c530bf20df03.lean/declarations/sinzeta-one-sub--6accc40520d23d6793ae1233.md) | 558 | `result-track:6accc40520d23d6793ae1233074b6561164a44212222ac614b6d7e366c540f7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
