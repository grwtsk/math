# Verification target: GRWTSK.Algebra.LinearAlgebra.Attempt03.Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7537493af6af3a259b3d8211cd565e931b2b0d8",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7537493af6af3a259b3d8211cd565e931b2b0d8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramplus--57ef6bd76761c70d2fa2db2a.md) | 21 | `declaration-track:57ef6bd76761c70d2fa2db2a25e1f8606d9d2d1552f4f27dfd2d74153fa4954c` |
| 2 | `def` | [gramMinus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramminus--11d0be53677330184371eb9d.md) | 23 | `declaration-track:11d0be53677330184371eb9d48f54f734d6945ddbc9122488d1b6e6370bcf567` |
| 3 | `def` | [pairwiseProfile](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/pairwiseprofile--9795e1a6ac5a8bcbd16a3e46.md) | 25 | `declaration-track:9795e1a6ac5a8bcbd16a3e46d2f0e3f3d490d3cfaae53cddd27653bd29166736` |
| 4 | `def` | [tripleCycle](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/triplecycle--e1841f125bf67c82f01bb084.md) | 27 | `declaration-track:e1841f125bf67c82f01bb084e4384f8e1baeff544cb212a5efd464b2180b8a2f` |
| 5 | `theorem` | [gramPlus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramplus-hermitian--3f8a2cf77be2e5656aa54454.md) | 29 | `result-track:3f8a2cf77be2e5656aa54454c44e99abe674f2baa6039c75e6581d272b8a95b1` |
| 6 | `theorem` | [gramMinus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramminus-hermitian--bb621cc2a6fe4b88b8aa44c3.md) | 32 | `result-track:bb621cc2a6fe4b88b8aa44c35b661c9489a52bb014a324db4df94cd6ce695d73` |
| 7 | `theorem` | [gramPlus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramplus-energy--a9765dcdc63209a79b5a9baf.md) | 36 | `result-track:a9765dcdc63209a79b5a9bafae4005cdac12d4549bbbf1e940e0f9c4392db724` |
| 8 | `theorem` | [gramMinus_energy](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramminus-energy--ff555bd524009af1be1a18ac.md) | 42 | `result-track:ff555bd524009af1be1a18ac869313ce64742157fe059f5c78cd405de85719d1` |
| 9 | `theorem` | [sum_sq_pos](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/sum-sq-pos--1014a916a436f455e9c345f5.md) | 49 | `result-track:1014a916a436f455e9c345f55f3a83ff8a114ddbb0320dfcd97884485107855b` |
| 10 | `theorem` | [gramPlus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramplus-posdef--e26a3dc58692c8405efdda70.md) | 61 | `result-track:e26a3dc58692c8405efdda70d218359c46409330b54a871e32b39fa3fcbb7a2b` |
| 11 | `theorem` | [gramMinus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramminus-posdef--2147b6d9e94440e86d634603.md) | 66 | `result-track:2147b6d9e94440e86d63460330951abc6946a370fffbd33aa76d571551690f41` |
| 12 | `theorem` | [positive_gram_factor](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/positive-gram-factor--5319bc93b7cdf3508eae288d.md) | 72 | `result-track:5319bc93b7cdf3508eae288d47948a3cba7813cb0f4d6582e59f2914a9e94891` |
| 13 | `theorem` | [gramPlus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramplus-realizable--82277f32ecb33d8084d53a70.md) | 78 | `result-track:82277f32ecb33d8084d53a7077cc99c5469045e749b37cb0f1772c49e0719eff` |
| 14 | `theorem` | [gramMinus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramminus-realizable--43c70a33eca2528d618a8311.md) | 80 | `result-track:43c70a33eca2528d618a8311c7eecfb26b194d302c8ceb799700055636297633` |
| 15 | `theorem` | [diagonals_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/diagonals-equal--6bd2b4049c46d36aefa1241e.md) | 83 | `result-track:6bd2b4049c46d36aefa1241eeab8b0337e43d67691689f29a3513c563d29e572` |
| 16 | `theorem` | [pairwise_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/pairwise-equal--a3ba4f062fc9a06cc10acbc9.md) | 86 | `result-track:a3ba4f062fc9a06cc10acbc927c462e5351a97e4d7ad536177290a69dfbda822` |
| 17 | `theorem` | [triple_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/triple-plus--31d9d866d274103339ff1049.md) | 89 | `result-track:31d9d866d274103339ff10498b4aca8b3219866dc8248adf83c8aa8434addde9` |
| 18 | `theorem` | [triple_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/triple-minus--0b3a53feb93fef27d4c3421c.md) | 91 | `result-track:0b3a53feb93fef27d4c3421c762dd1a9279cf6a8923e5bf46cf34ece5e07824f` |
| 19 | `theorem` | [triple_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/triple-distinct--f1ea65c13f3f68c688f544fe.md) | 93 | `result-track:f1ea65c13f3f68c688f544fe373a4b0329c6042dec1209736bb20566eb102b4e` |
| 20 | `theorem` | [det_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/det-plus--fb7b154e7846b5cdd13f11ff.md) | 97 | `result-track:fb7b154e7846b5cdd13f11ff04b1c065a8fc32dcde47b99e6bccd6140ef21383` |
| 21 | `theorem` | [det_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/det-minus--49484b870939f922dd099172.md) | 99 | `result-track:49484b870939f922dd099172671d6bab2ff916f211b7dd94a23d1888a39cfce8` |
| 22 | `theorem` | [det_distinct](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/det-distinct--6c1471644b3e746aa6e3195b.md) | 101 | `result-track:6c1471644b3e746aa6e3195b13fccf0ab07d1f2e55469c807e37e96274c7b2e3` |
| 23 | `theorem` | [no_pairwise_triple_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/no-pairwise-triple-decoder--75846bc5d1050fd4e98d3e4f.md) | 105 | `result-track:75846bc5d1050fd4e98d3e4f66abafb16ecaf817b2ea4d44ba3c4ec4ae20d7d4` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/no-pairwise-determinant-decoder--dc1ae1671f7d28729fc7b5bc.md) | 114 | `result-track:dc1ae1671f7d28729fc7b5bcda2fa26fb6598ee0198907ba83fb5a1b89fa4fe3` |
| 25 | `theorem` | [positive_euclidean_gram](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/positive-euclidean-gram--71acec0efbcf75378b59548a.md) | 125 | `result-track:71acec0efbcf75378b59548a6fcd6d0550e5ae04dad5cb9ca15b6d51282e9420` |
| 26 | `theorem` | [gramPlus_euclidean](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramplus-euclidean--2f820936807988be41f14c3e.md) | 133 | `result-track:2f820936807988be41f14c3e21197d60044376cf0fc975d4b15f092106be377c` |
| 27 | `theorem` | [gramMinus_euclidean](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/gramminus-euclidean--d33752312d2924c63e0f9eb0.md) | 137 | `result-track:d33752312d2924c63e0f9eb0e661532f6f1c4d010ed76a0888e932cfce25cf8f` |
| 28 | `theorem` | [pairwiseProfile_eq_norm_sq](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/pairwiseprofile-eq-norm-sq--1d87469a82cf827f0c3155b2.md) | 141 | `result-track:1d87469a82cf827f0c3155b23588373aeeba81ee687395d09db13197e90c16fb` |
| 29 | `theorem` | [first_trace_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/first-trace-equal--b64495602531135de5dc557c.md) | 145 | `result-track:b64495602531135de5dc557c125fa4cad9f6a6842653457fe24aa2f1b4657d78` |
| 30 | `theorem` | [second_trace_equal](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/second-trace-equal--8c1f5ff7149c84a31e26872c.md) | 148 | `result-track:8c1f5ff7149c84a31e26872ca3b867e92c47e6821872840a4d2c7805b4392729` |
| 31 | `theorem` | [third_trace_plus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/third-trace-plus--406535bad4f508d842d99b19.md) | 151 | `result-track:406535bad4f508d842d99b19d796fe71a235146e1f1448227b649a530d254b9e` |
| 32 | `theorem` | [third_trace_minus](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/third-trace-minus--ef4fd192ce1d123c7f662708.md) | 154 | `result-track:ef4fd192ce1d123c7f662708ae6ee1e56e17991bb56b3caf532addfc84f7a38b` |
| 33 | `theorem` | [no_pairwise_third_trace_decoder](../../../../../mathematics/Algebra/LinearAlgebra/Attempt03/Varianta4be41e844a6acfa980d58874086604b199fa5cd7099d693efd29bff8d545341.lean/declarations/no-pairwise-third-trace-decoder--f8ec60b7b24e29030eec1028.md) | 157 | `result-track:f8ec60b7b24e29030eec10286e98af589eb1b1cbf8fb7af32d7c62c691dad27f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
