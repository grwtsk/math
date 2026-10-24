# Verification target: GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4daee721caadc02e796fe93d2f30b4799b0a80db",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicLineSectionMultiplier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4daee721caadc02e796fe93d2f30b4799b0a80db`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicLineSectionMultiplier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicLineSectionMultiplier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicLineSectionBounded`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionBounded.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Operator.HolomorphicLinePort`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLinePort.lean/index.md) — import line 2; pinned internal source present.
- `Mathlib.Analysis.Complex.Norm` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundedMultiplier](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/boundedmultiplier--275731c1a27833df4b916601.md) | 40 | `declaration-track:275731c1a27833df4b916601700ad4ac14cb3bccec8ae7f4ff992a2cd3f199fd` |
| 2 | `def` | [const](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/const--e74b3f3c7a0836c93461fff2.md) | 48 | `declaration-track:e74b3f3c7a0836c93461fff2e555ac589337a88425cc844e8184e95d9be0c3f2` |
| 3 | `def` | [mul](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/mul--69f96f0e0418fdae72f80822.md) | 54 | `declaration-track:69f96f0e0418fdae72f808223aad64162b92dcadd83d006c90d8029b60b30362` |
| 4 | `def` | [sectionMultiply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/sectionmultiply--29e3c297acd7ce9841cd2a81.md) | 66 | `declaration-track:29e3c297acd7ce9841cd2a81b13c7ee50e672fb5394f0070d5a0d2833d082956` |
| 5 | `theorem` | [sectionMultiply_value](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/sectionmultiply-value--ffe7c2f8ebaed8543e03768b.md) | 71 | `result-track:ffe7c2f8ebaed8543e03768b9e46be915a9bf8994cc2618333e1f5b985d6090e` |
| 6 | `theorem` | [density_multiply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/density-multiply--101f80c45e22794c157130db.md) | 76 | `result-track:101f80c45e22794c157130dbc9ac6a1f374845b8de2d59a49a49ba33a4b4bff9` |
| 7 | `theorem` | [density_multiply_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/density-multiply-le--c626e2fff9954a9fb542118f.md) | 89 | `result-track:c626e2fff9954a9fb542118f3340bb3f5c34fba6ec7211cde1d9d3d4e2e32a60` |
| 8 | `theorem` | [energy_multiply_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/energy-multiply-le--c11b36282541797daa443e5b.md) | 100 | `result-track:c11b36282541797daa443e5b70f3f1895357d1dcf6e2732db9b4ae7777650116` |
| 9 | `def` | [finiteMultiply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/finitemultiply--98e298b196553bdcab0e09f7.md) | 111 | `declaration-track:98e298b196553bdcab0e09f73c15bda9e3b83e3550a98c2143ad255cb7b708bf` |
| 10 | `theorem` | [aeEqual_multiply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/aeequal-multiply--83749cf670100767b4d334c8.md) | 117 | `result-track:83749cf670100767b4d334c88ef63cb130309df09a019baff687c70ed9579521` |
| 11 | `def` | [quotientMultiply](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientmultiply--1fdd49317e422b75c8996b9a.md) | 124 | `declaration-track:1fdd49317e422b75c8996b9a412d0b8a2b38d131fa737cffec97ed0895c70282` |
| 12 | `theorem` | [quotientMultiply_classOf](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientmultiply-classof--50c31e28413824763fb88081.md) | 131 | `result-track:50c31e28413824763fb8808130c7a80711b66c3029c186c27381416efb69d627` |
| 13 | `def` | [multiplierLinearMap](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/multiplierlinearmap--b2348df6baa99817ec3aff19.md) | 137 | `declaration-track:b2348df6baa99817ec3aff1928a8b10ff97decfed05b9be388b653c080388f99` |
| 14 | `theorem` | [quotientEnergy_multiply_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientenergy-multiply-le--201b4d8ec308b2d346bc4d96.md) | 158 | `result-track:201b4d8ec308b2d346bc4d96c155b4a4c40e332317d0879f425859ed44de12aa` |
| 15 | `theorem` | [quotientMultiply_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientmultiply-norm-le--baeb92bbc34fc91125ece3eb.md) | 167 | `result-track:baeb92bbc34fc91125ece3eba34bd800aa8a3036612b80460d51ddb5d83117fa` |
| 16 | `def` | [quotientOperator](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientoperator--5b58876030cdf442cbe123bf.md) | 178 | `declaration-track:5b58876030cdf442cbe123bf5de2dcba38a6f9a8e3a8518d6b5b583a8c85d9a8` |
| 17 | `theorem` | [quotientOperator_classOf](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientoperator-classof--c063fddddc39ec301b0daaf5.md) | 184 | `result-track:c063fddddc39ec301b0daaf5ed753c6b79f6cbf2f69fdd62b1c1d609b3691714` |
| 18 | `theorem` | [quotientOperator_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientoperator-norm-le--9cd6e99012e70c5dc72c7bad.md) | 189 | `result-track:9cd6e99012e70c5dc72c7bad16f31c4821e09b30d3c56692aa6033d40945eb30` |
| 19 | `theorem` | [quotientOperator_congr_ae](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientoperator-congr-ae--db2ffdb053cff0a614b3d8ee.md) | 195 | `result-track:db2ffdb053cff0a614b3d8ee55510eba48757ec19ce5d0d9bd716e47903d5075` |
| 20 | `theorem` | [quotientOperator_const](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientoperator-const--31e4ba0d68a9292f61c0e24a.md) | 207 | `result-track:31e4ba0d68a9292f61c0e24aae356d318a4881bd72c0143885a0b7fbdc80c11a` |
| 21 | `theorem` | [quotientOperator_mul](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientoperator-mul--1019751ecde6c82170acdaa6.md) | 218 | `result-track:1019751ecde6c82170acdaa6271379ce856c0ea6f0b70615e28c724cefbd4d41` |
| 22 | `theorem` | [quotientOperator_gauge](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/quotientoperator-gauge--739bbfe572985f3861952c2c.md) | 230 | `result-track:739bbfe572985f3861952c2c324ddf5b1f96c73e8346094d0b7c800f52de3ac1` |
| 23 | `theorem` | [multiplier_gaugeDefect_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/multiplier-gaugedefect-zero--62f33acbd8b31909355283ae.md) | 244 | `result-track:62f33acbd8b31909355283ae5f027bc5bd14148a74dea4b860911b66d9d2857f` |
| 24 | `def` | [completedOperator](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/completedoperator--279b797107e9a97ca6c402fa.md) | 252 | `declaration-track:279b797107e9a97ca6c402fa55dcedf9a92e6a4cd6bfc5fcc0e164dcd5f7392d` |
| 25 | `theorem` | [completedOperator_toCompletion](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/completedoperator-tocompletion--2289924c05f62203789e5c40.md) | 257 | `result-track:2289924c05f62203789e5c407bb40197a37b44d32f1d0f8821baa76d4febea68` |
| 26 | `theorem` | [completedOperator_norm_le](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/completedoperator-norm-le--509e2b3ba9b3bc199273645e.md) | 263 | `result-track:509e2b3ba9b3bc199273645eef5f56ae89084b613eaef82aa391e4d34efe7318` |
| 27 | `theorem` | [completedOperator_mul](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/completedoperator-mul--249fad6a8a477c5aef3223ff.md) | 269 | `result-track:249fad6a8a477c5aef3223ff9da28d8fca6bb5386c5b407c0b46617a30ad43b8` |
| 28 | `theorem` | [completedOperator_gauge](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/completedoperator-gauge--3100f247a789939c44c1281e.md) | 275 | `result-track:3100f247a789939c44c1281e2341bdd18446cfe684020c9be7b572d0430f1bb1` |
| 29 | `theorem` | [completedOperator_adjoint_gauge](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/completedoperator-adjoint-gauge--6b968d39ec43fa5c813768dc.md) | 282 | `result-track:6b968d39ec43fa5c813768dc013f9850f695c623a57c6ddb6a212b7e92ffe1a8` |
| 30 | `def` | [disk](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/disk--613e1daacedcc73ff0edd158.md) | 291 | `declaration-track:613e1daacedcc73ff0edd158cb24743b5e8da3bc289d14d13b3d24915aa8976e` |
| 31 | `def` | [diskCover](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/diskcover--f95edb713735ae06cc1eee4b.md) | 293 | `declaration-track:f95edb713735ae06cc1eee4b3f1dfff31ddb25edb42e6098c80d3f1c6ef650e3` |
| 32 | `theorem` | [diskCover_isOpen](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/diskcover-isopen--3c17e2a9b09347a29ee82192.md) | 299 | `result-track:3c17e2a9b09347a29ee82192d141aa2b3c34d095b74498ffa1a4162ffb96511a` |
| 33 | `def` | [diskCoordinate](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/diskcoordinate--6b0451f24f86fcfecedc3262.md) | 302 | `declaration-track:6b0451f24f86fcfecedc326252a3d669beaa5aae36825b70fb586c94bc037697` |
| 34 | `def` | [center](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/center--1d15aba739a84df5ce2435cb.md) | 307 | `declaration-track:1d15aba739a84df5ce2435cb6cd3eec6eddf08ac435ce1584462aada94bec270` |
| 35 | `def` | [halfPoint](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/halfpoint--f86e2f5022fdb31588bd5e14.md) | 308 | `declaration-track:f86e2f5022fdb31588bd5e14d50b05f2b02f989db34d3e32003f6370b3861ed8` |
| 36 | `theorem` | [diskCoordinate_nonconstant](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/diskcoordinate-nonconstant--56f0a2e0ec4b760aa4f791ab.md) | 310 | `result-track:56f0a2e0ec4b760aa4f791ab6afb16a71ee7428b30bae39da5859dec5d519d05` |
| 37 | `theorem` | [diskCoordinate_operator_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/diskcoordinate-operator-zero--149d006f77241a0f3072ad65.md) | 318 | `result-track:149d006f77241a0f3072ad65df90ffbe1b39e8c2f4a049fd3df1d8efaa84a597` |
| 38 | `theorem` | [diskCoordinate_norm_strict](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/diskcoordinate-norm-strict--591cec409d08109e7ca3c9ae.md) | 332 | `result-track:591cec409d08109e7ca3c9aed938163513edfa92d4277e5d75b01cb7a8062260` |
| 39 | `theorem` | [diskCoordinate_operator_ne_zero_at_half](../../../../mathematics/Analysis/OperatorTheory/HolomorphicLineSectionMultiplier.lean/declarations/diskcoordinate-operator-ne-zero-at-half--989b161e4d904955c511e591.md) | 342 | `result-track:989b161e4d904955c511e5912c8f2eb31451770d7e9cf6044c45140d75ace8dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
